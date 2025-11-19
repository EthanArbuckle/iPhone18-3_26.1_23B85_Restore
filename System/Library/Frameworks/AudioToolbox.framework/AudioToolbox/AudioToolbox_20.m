id AUToneMeisterParameterImporter::filterTypeStrings(AUToneMeisterParameterImporter *this)
{
  v1 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 25; ++i)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_ZGRN6DspLib11ToneMeister10ParametersL16kFilterTypeNamesE__4483[i]];
    [v1 addObject:v3];
  }

  return v1;
}

uint64_t AUToneMeisterParameterImporter::setValueForAutomationParameter(AUToneMeisterParameterImporter *this, float a2, unsigned int a3, unsigned int a4)
{
  v17 = 0;
  v8 = a4;
  v9 = (*(**this + 152))(*this, 0);
  if (DspLib::ToneMeister::Parameters::findAutomationForFilter(v8, v9, &v17, v10))
  {
    v11 = v17;
  }

  else
  {
    v11 = 0;
    while (1)
    {
      v12 = (*(**this + 152))(*this, 0);
      if (!vcvtas_u32_f32(*(v12 + 4 * DspLib::ToneMeister::Parameters::automationParameterForSlot(v11, 1))))
      {
        break;
      }

      v11 = (v11 + 1);
      if (v11 == 10)
      {
        v11 = 0;
        while (1)
        {
          v13 = (*(**this + 152))(*this, 0);
          result = DspLib::ToneMeister::Parameters::automationParameterForSlot(v11, 1);
          if (vcvtas_u32_f32(*(v13 + 4 * result)) == 1)
          {
            break;
          }

          v11 = (v11 + 1);
          if (v11 == 10)
          {
            return result;
          }
        }

        break;
      }
    }

    v15 = DspLib::ToneMeister::Parameters::automationParameterForSlot(v11, 0);
    (*(**this + 120))(*this, v15, a4);
  }

  v16 = DspLib::ToneMeister::Parameters::automationParameterForSlot(v11, a3);
  return (*(**this + 120))(*this, v16, a2);
}

uint64_t ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDSPGraph_v1>::Construct(uint64_t a1, OpaqueAudioComponentInstance *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = ausdk::AUBase::AUBase(a1, a2, 1, 1);
  *v3 = &unk_1F59253F0;
  *(v3 + 132) = 0;
  v4 = (v3 + 536);
  *(v3 + 592) = 0;
  *(v3 + 600) = 0;
  *(v3 + 624) = 0;
  v5 = (v3 + 632);
  *(v3 + 632) = 0;
  *(v3 + 656) = 0;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 568) = 0;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 837) = 0u;
  *(v3 + 109) = 0;
  *(v3 + 856) = 0u;
  *(v3 + 110) = 850045863;
  *(v3 + 888) = 0u;
  *(v3 + 904) = 0u;
  *(v3 + 920) = 0u;
  *(v3 + 936) = 0u;
  *(v3 + 119) = v3 + 960;
  *(v3 + 60) = 0u;
  *(v3 + 61) = 0u;
  *(v3 + 62) = 0u;
  *(v3 + 63) = 0u;
  *(v3 + 64) = 0u;
  if (DSPGraph::ABIVersion(v3) != 4)
  {
    ausdk::Throw(0xFFFFD585);
  }

  ausdk::AUBase::CreateElements(a1);
  v19[0] = xmmword_1DE0E9148;
  v19[1] = unk_1DE0E9158;
  v20 = 32;
  Element = ausdk::AUScope::GetElement((a1 + 80), 0);
  if (!Element || ((*(*Element + 56))(Element, v19), (v7 = ausdk::AUScope::GetElement((a1 + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*v7 + 56))(v7, v19);
  std::string::basic_string[abi:ne200100]<0>(&__str, "");
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(v4, &__str);
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    memset(buf, 0, sizeof(buf));
    __t.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v23 = std::chrono::system_clock::to_time_t(&__t);
    v9 = localtime(&v23);
    strftime(buf, 0x40uLL, "%Y%m%d.%H%M%S", v9);
    std::string::basic_string[abi:ne200100]<0>(&v21, buf);
    if (*(a1 + 559) < 0)
    {
      operator delete(v4->__r_.__value_.__l.__data_);
    }

    *&v4->__r_.__value_.__l.__data_ = v21;
    v4->__r_.__value_.__r.__words[2] = v22;
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v10 = *(a1 + 656);
  if (v10 == 1)
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v12 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 655) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315394;
      *&buf[4] = v5;
      *&buf[12] = 2048;
      *&buf[14] = a1;
      v13 = "[%s|%p] constructed";
      v14 = v12;
      v15 = 22;
      goto LABEL_22;
    }
  }

  else
  {
    {
      AU::DSPGraph::GetLog(void)::sLog = os_log_create("com.apple.coreaudio", "AUDSPGraph");
    }

    v16 = AU::DSPGraph::GetLog(void)::sLog;
    if (os_log_type_enabled(AU::DSPGraph::GetLog(void)::sLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = a1;
      v13 = "[%p] constructed";
      v14 = v16;
      v15 = 12;
LABEL_22:
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
    }
  }

  return a1;
}

void sub_1DDCD6E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  applesauce::CF::DictionaryRef::~DictionaryRef((v16 + 1032));
  applesauce::CF::DictionaryRef::~DictionaryRef((v16 + 1024));
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef((v16 + 1016));
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef((v16 + 1008));
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef((v16 + 1000));
  v21 = *(v16 + 976);
  if (v21)
  {
    *(v16 + 984) = v21;
    operator delete(v21);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(v16 + 960));
  applesauce::CF::DictionaryRef::~DictionaryRef((v16 + 944));
  std::mutex::~mutex((v16 + 880));
  std::vector<AU::DSPGraph::MetaParameter>::__destroy_vector::operator()[abi:ne200100](&a16);
  v22 = *(v16 + 824);
  if (v22)
  {
    *(v16 + 832) = v22;
    operator delete(v22);
  }

  v23 = *(v16 + 800);
  if (v23)
  {
    *(v16 + 808) = v23;
    operator delete(v23);
  }

  applesauce::CF::ArrayRef::~ArrayRef((v16 + 792));
  applesauce::CF::ArrayRef::~ArrayRef((v16 + 784));
  applesauce::CF::ArrayRef::~ArrayRef((v16 + 776));
  v24 = *(v16 + 752);
  if (v24)
  {
    *(v16 + 760) = v24;
    operator delete(v24);
  }

  v25 = *(v16 + 728);
  if (v25)
  {
    *(v16 + 736) = v25;
    operator delete(v25);
  }

  v26 = *(v16 + 704);
  if (v26)
  {
    *(v16 + 712) = v26;
    operator delete(v26);
  }

  v27 = *(v16 + 696);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  applesauce::CF::StringRef::~StringRef((v16 + 680));
  applesauce::CF::DictionaryRef::~DictionaryRef((v16 + 672));
  applesauce::CF::DictionaryRef::~DictionaryRef(v18);
  if (*(v16 + 656) == 1 && *(v16 + 655) < 0)
  {
    operator delete(*v19);
  }

  if (*(v16 + 624) == 1 && *(v16 + 623) < 0)
  {
    operator delete(*(v16 + 600));
  }

  if (*(v16 + 592) == 1 && *(v16 + 591) < 0)
  {
    operator delete(*(v16 + 568));
  }

  v28 = *(v16 + 560);
  *(v16 + 560) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  if (*(v16 + 559) < 0)
  {
    operator delete(*v17);
  }

  ausdk::AUBase::~AUBase(v16);
  _Unwind_Resume(a1);
}

AudioComponent ausdk::AUBaseProcessMultipleFactory<AUDSPGraph>::Register(const __CFString *a1, uint64_t a2)
{
  if (_os_feature_enabled_impl())
  {
LABEL_2:

    return MEMORY[0x1EEDEECF8](1635083896, 1685287015, 1634758764, a1, 0x10000, a2);
  }

  else
  {
    if (MGGetBoolAnswer())
    {
      v4 = getenv("FEATUREFLAGS_ENABLED");
      if (v4)
      {
        v5 = v4;
        v6 = strlen(v4);
        if (v6 >= 46)
        {
          v7 = &v5[v6];
          v8 = v5;
          do
          {
            v9 = memchr(v8, 65, v6 - 45);
            if (!v9)
            {
              break;
            }

            v10 = v9;
            if (!memcmp(v9, "AudioDSPGraph/AudioDSPGraphFramework_AudioDSP:", 0x2EuLL))
            {
              if (v10 != v7 && v10 - v5 != -1)
              {
                goto LABEL_2;
              }

              break;
            }

            v8 = v10 + 1;
            v6 = v7 - (v10 + 1);
          }

          while (v6 >= 46);
        }
      }
    }

    qmemcpy(&inDesc, "xfuagpsdlppa", 12);
    inDesc.componentFlags = a2;
    inDesc.componentFlagsMask = 0;
    return AudioComponentRegister(&inDesc, a1, 0x10000u, ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDSPGraph_v1>::Factory);
  }
}

void *ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDSPGraph_v1>::Factory()
{
  result = malloc_type_malloc(0x450uLL, 0x10F30404DEA0F3AuLL);
  *result = ausdk::ComponentBase::AP_Open;
  result[1] = ausdk::ComponentBase::AP_Close;
  result[2] = ausdk::AUBaseProcessMultipleLookup::Lookup;
  result[3] = 0;
  result[4] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDSPGraph_v1>::Construct;
  result[6] = 0;
  result[7] = 0;
  result[5] = ausdk::APFactory<ausdk::AUBaseProcessMultipleLookup,AUDSPGraph_v1>::Destruct;
  return result;
}

void WaveFileReader::read(FILE **this, float *const *a2, unsigned int a3, unsigned int a4)
{
  LODWORD(v4) = a3;
  v28 = *MEMORY[0x1E69E9840];
  if (this[5] && (v7 = *(this + 12)) != 0)
  {
    if (*(this + 11) == a3)
    {
      if (v7 >= a4)
      {
        v8 = a4;
      }

      else
      {
        v8 = v7;
      }

      MEMORY[0x1EEE9AC00](this);
      v10 = &v26[-v9];
      v12 = fread(&v26[-v9], v11, (v8 * v4), this[5]);
      if (*(this + 10) == 3)
      {
        goto LABEL_23;
      }

      MEMORY[0x1EEE9AC00](v12);
      v14 = &v26[-((v13 + 15) & 0x7FFFFFFF0)];
      v15 = *(this + 17);
      switch(v15)
      {
        case 16:
          vDSP_vflt16(v10, 1, v14, 1, (v8 * v4));
          goto LABEL_22;
        case 24:
          vDSP_vflt24(v10, 1, v14, 1, (v8 * v4));
          goto LABEL_22;
        case 32:
          vDSP_vflt32(v10, 1, v14, 1, (v8 * v4));
LABEL_22:
          __B = (1 << (*(this + 17) - 1));
          vDSP_vsdiv(v14, 1, &__B, v10, 1, (v8 * v4));
LABEL_23:
          if (v4)
          {
            v22 = v4;
            do
            {
              v23 = *a2++;
              vDSP_mmov(v10, v23, 1uLL, v8, v4, 1uLL);
              v10 += 2;
              --v22;
            }

            while (v22);
          }

          return;
      }

      if (v4)
      {
        v24 = 4 * v8;
        v4 = v4;
        do
        {
          v25 = *a2++;
          bzero(v25, v24);
          --v4;
        }

        while (v4);
      }
    }

    else if (a3)
    {
      v19 = 4 * a4;
      v20 = a3;
      do
      {
        v21 = *a2++;
        bzero(v21, v19);
        --v20;
      }

      while (v20);
    }
  }

  else if (a3)
  {
    v16 = 4 * a4;
    v17 = a3;
    do
    {
      v18 = *a2++;
      bzero(v18, v16);
      --v17;
    }

    while (v17);
  }
}

uint64_t AUSpatialMixerV2::PropertyChanged(AUSpatialMixerV2 *this, uint64_t a2)
{
  v4 = 0;
  v204 = *MEMORY[0x1E69E9840];
  v5 = this + 9780;
  v6 = this + 5384;
  if (a2 > 3199)
  {
    if (a2 <= 3309)
    {
      v7 = 0;
      switch(a2)
      {
        case 3200:
        case 3201:
          goto LABEL_81;
        case 3202:
        case 3203:
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, this + 4064);
          atomic_store(*buf != 0, v6 + 1414);
          v62 = atomic_load(v5 + 117);
          if ((v62 & 1) == 0)
          {
            goto LABEL_126;
          }

          v63 = *buf;
          if (*buf)
          {
            AUSpatialMixerV2::RefreshXTCTuningParameters(this);
            applesauce::CF::URLRef::URLRef(&v170, v63);
            LOBYTE(v63) = AUSpatialMixerV2::InitializeDynamicXTC(this, &v170);
            applesauce::CF::URLRef::~URLRef(&v170);
          }

          AUSM::IRManager::updateXTCIRAttributes((this + 7088));
          if ((v63 & 1) == 0 && (v64 = atomic_load(this + 958), v64 == 2))
          {
            AUSpatialMixerV2::UpdateCounteractRotationShader(this);
            v7 = AUSpatialMixerV2::PropagateGlobalPropertyChangeToInputElements(this, a2);
            v4 = 1;
            AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, 1, 0);
          }

          else
          {
LABEL_126:
            v4 = 0;
            v7 = 0;
          }

          if (*buf)
          {
            CFRelease(*buf);
          }

          goto LABEL_204;
        case 3206:
        case 3207:
        case 3259:
        case 3260:
          v8 = a2 & 0xFFFFFFFE;
          if ((a2 & 0xFFFFFFFE) == 0xC86)
          {
            v9 = 4424;
          }

          else
          {
            v9 = 4496;
          }

          if (v8 == 3206)
          {
            v10 = 4280;
          }

          else
          {
            v10 = 4352;
          }

          v11 = 4208;
          if (v8 == 3206)
          {
            v11 = 4136;
          }

          AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v169, this + v11);
          v168 = 0;
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + v9, &v168);
          v13 = v169;
          if (v169 && (IR::IRDataLoader::instance(v12), CFRetain(v13), v167[1] = v13, v14 = IR::IRDataLoader::getAudioChannelLayoutTag(), v15 = ChannelLayoutTagIsSupportedHOA(v14), CFRelease(v13), v15))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v16 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              v17 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v17 = *v17;
              }

              *buf = 136315394;
              *&buf[4] = v17;
              v183 = 2080;
              v184 = "PropertyChanged";
              _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "[%s|%s] Early reflections IR is HOA: updating late reverb to use same IR file", buf, 0x16u);
            }

            CFRetain(v13);
            v167[0] = v13;
            AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + v10, v167);
            CFRelease(v13);
          }

          else
          {
            AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v166, this + v10);
            v48 = v166;
            if (v166)
            {
              IR::IRDataLoader::instance(v47);
              CFRetain(v48);
              v165[1] = v48;
              AudioChannelLayoutTag = IR::IRDataLoader::getAudioChannelLayoutTag();
              IsSupportedHOA = ChannelLayoutTagIsSupportedHOA(AudioChannelLayoutTag);
              CFRelease(v48);
              if (IsSupportedHOA)
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v51 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
                {
                  v52 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v52 = *v52;
                  }

                  *buf = 136315394;
                  *&buf[4] = v52;
                  v183 = 2080;
                  v184 = "PropertyChanged";
                  _os_log_impl(&dword_1DDB85000, v51, OS_LOG_TYPE_DEFAULT, "[%s|%s] Clearing late reverb HOA IR", buf, 0x16u);
                }

                v165[0] = 0;
                AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + v10, v165);
                applesauce::CF::URLRef::~URLRef(v165);
              }

              CFRelease(v48);
            }
          }

          if (v8 == 3206 || (std::mutex::lock((this + 8648)), v53 = v6[2224], std::mutex::unlock((this + 8648)), (v53 & 1) == 0))
          {
            AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, 1, 0);
          }

          if (v13)
          {
            CFRelease(v13);
          }

          goto LABEL_203;
        case 3208:
        case 3209:
        case 3261:
        case 3262:
          v24 = a2 & 0xFFFFFFFE;
          if ((a2 & 0xFFFFFFFE) == 0xC88)
          {
            v25 = 4424;
          }

          else
          {
            v25 = 4496;
          }

          if (v24 == 3208)
          {
            v26 = 4136;
          }

          else
          {
            v26 = 4208;
          }

          v27 = 4352;
          if (v24 == 3208)
          {
            v27 = 4280;
          }

          AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v169, this + v27);
          v164 = 0;
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + v25, &v164);
          v29 = v169;
          if (v169 && (IR::IRDataLoader::instance(v28), CFRetain(v29), v163[1] = v29, v30 = IR::IRDataLoader::getAudioChannelLayoutTag(), v31 = ChannelLayoutTagIsSupportedHOA(v30), CFRelease(v29), v31))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v32 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v33 = *v33;
              }

              *buf = 136315394;
              *&buf[4] = v33;
              v183 = 2080;
              v184 = "PropertyChanged";
              _os_log_impl(&dword_1DDB85000, v32, OS_LOG_TYPE_DEFAULT, "[%s|%s] Late IR is HOA: updating early reflections to use same IR file", buf, 0x16u);
            }

            CFRetain(v29);
            v163[0] = v29;
            AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + v26, v163);
            CFRelease(v29);
          }

          else
          {
            AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v166, this + v26);
            v55 = v166;
            if (v166)
            {
              IR::IRDataLoader::instance(v54);
              CFRetain(v55);
              v162[1] = v55;
              v56 = IR::IRDataLoader::getAudioChannelLayoutTag();
              v57 = ChannelLayoutTagIsSupportedHOA(v56);
              CFRelease(v55);
              if (v57)
              {
                if (getAUSMV2Log(void)::onceToken != -1)
                {
                  dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                }

                v58 = getAUSMV2Log(void)::gLog;
                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  v59 = (this + 3752);
                  if (*(this + 3775) < 0)
                  {
                    v59 = *v59;
                  }

                  *buf = 136315394;
                  *&buf[4] = v59;
                  v183 = 2080;
                  v184 = "PropertyChanged";
                  _os_log_impl(&dword_1DDB85000, v58, OS_LOG_TYPE_DEFAULT, "[%s|%s] Clearing early reflections HOA IR", buf, 0x16u);
                }

                v162[0] = 0;
                AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + v26, v162);
                applesauce::CF::URLRef::~URLRef(v162);
              }

              CFRelease(v55);
            }
          }

          if (v24 == 3208 || (std::mutex::lock((this + 8648)), v60 = v6[2224], std::mutex::unlock((this + 8648)), (v60 & 1) == 0))
          {
            AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, 1, 0);
          }

          if (v29)
          {
            CFRelease(v29);
          }

          goto LABEL_203;
        case 3223:
        case 3265:
          goto LABEL_116;
        case 3231:
          v77 = atomic_load(this + 9897);
          if (v77)
          {
            return 4294956447;
          }

          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3456);
          AUSM::TuningManager::ResetReservedGlobalAPACPropertyList((this + 6896));
          v7 = AUSM::Metadata::ingestImmersiveRendererData(*(this + 68));
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
LABEL_230:
          v4 = 0;
          break;
        case 3233:
          goto LABEL_31;
        case 3234:
          v71 = atomic_load(this + 5392);
          if ((v71 & 1) != 0 && (v72 = atomic_load(this + 5393), (v72 & 1) == 0))
          {
            AudioDSP::Core::HeadTracker::RegisterUserChoiceListener((this + 9864));
          }

          else
          {
            AudioDSP::Core::HeadTracker::UnregisterUserChoiceListener((this + 9864));
          }

          goto LABEL_203;
        case 3235:
          v7 = 0;
          atomic_store(1u, this + 9781);
          v61 = this + 3368;
          goto LABEL_255;
        case 3237:
          _X20 = 0;
          _X21 = 0;
          __asm { CASPAL          X20, X21, X20, X21, [X8] }

          v88 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v89 & 1) == 0)
          {
            goto LABEL_269;
          }

          ausdk::AUElement::SetParameter(v88, 0x24u, *&_X20);
          v90 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v91 & 1) == 0)
          {
            goto LABEL_269;
          }

          ausdk::AUElement::SetParameter(v90, 0x25u, *(&_X20 + 1));
          v92 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v93 & 1) == 0)
          {
            goto LABEL_269;
          }

          ausdk::AUElement::SetParameter(v92, 0x26u, 0.0);
LABEL_175:
          v7 = 0;
          v61 = v5 + 2;
          goto LABEL_255;
        case 3238:
          goto LABEL_175;
        case 3239:
          if (*(this + 885))
          {
            v79 = atomic_load(this + 9897);
            if (v79)
            {
              v80 = *(this + 885);
              AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v180, this + 5440);
              AUSM::RoomCongruence::Processor::process(buf, v80, &v180);
              applesauce::CF::DictionaryRef::~DictionaryRef(&v180);
              if (v203)
              {
                if (v202 == 1)
                {
                  v178[0] = 0;
                  v179 = 0;
                  if (v199 == 1)
                  {
                    IR::IRDataAttributes::IRDataAttributes(v178, buf);
                    v179 = 1;
                  }

                  AUSM::IRManager::setRoomCongruenceAttributes(this + 7088, v178);
                  if (v179 == 1)
                  {
                    IR::IRDataAttributes::~IRDataAttributes(v178);
                  }

                  if ((v203 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  AUSM::Properties::setProperty((this + 3744), 3248, &v200, 8, 0);
                  if ((v203 & 1) == 0)
                  {
                    std::__throw_bad_optional_access[abi:ne200100]();
                  }

                  if (v201)
                  {
                    applesauce::CF::DictionaryRef::DictionaryRef(&v177, v201);
                    AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::store(this + 5656, &v177);
                    applesauce::CF::DictionaryRef::~DictionaryRef(&v177);
                  }
                }

                else
                {
                  v176[0] = 0;
                  v176[152] = 0;
                  AUSM::IRManager::setRoomCongruenceAttributes(this + 7088, v176);
                  AUSM::Properties::setProperty((this + 3744), 3248, 0, 8, 0);
                  AUSM::Properties::setProperty((this + 3744), 3249, 0, 8, 0);
                }

                AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, 0, 0);
                if (v203)
                {
                  AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(buf);
                }
              }
            }
          }

          goto LABEL_203;
        case 3240:
          if (*(this + 6856))
          {
            goto LABEL_203;
          }

          v4 = 0;
          v7 = 0;
          v78 = atomic_load(this + 1561);
          atomic_store(v78, this + 2282);
          goto LABEL_204;
        case 3241:
          if (*(this + 6856))
          {
            goto LABEL_203;
          }

          v4 = 0;
          v7 = 0;
          v74 = COERCE_FLOAT(atomic_load(this + 1562));
          v75 = 5.0;
          if (v74 <= 5.0)
          {
            v75 = v74;
          }

          if (v74 >= 0.001)
          {
            v76 = v75;
          }

          else
          {
            v76 = 0.001;
          }

          *(this + 2283) = v76;
          goto LABEL_204;
        case 3243:
          atomic_load(this + 5393);
          AudioDSP::Core::HeadTracker::SetCanAccessHALAPIs((this + 9864));
          goto LABEL_203;
        case 3246:
        case 3247:
          v159 = 0;
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + 4136, &v159);
          v158 = 0;
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + 4280, &v158);
          goto LABEL_125;
        case 3248:
          v99 = atomic_load(this + 9897);
          if (v99)
          {
            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
            AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(buf, this + 5584);
            v100 = *(this + 1239);
            if (*buf)
            {
              if (!v100)
              {
                AUSpatialMixerV2::Output(this);
                v101 = *(AUSpatialMixerV2::Output(this) + 108);
                if (v101 <= 2)
                {
                  v101 = 2;
                }

                LODWORD(v166) = v101;
                LOBYTE(v156) = 1;
                std::make_unique[abi:ne200100]<ParametricFilters,double const&,unsigned int,BOOL,unsigned int const&,0>();
              }

              if (!*(this + 1240))
              {
                AUSpatialMixerV2::Output(this);
                v102 = *(AUSpatialMixerV2::Output(this) + 108);
                if (v102 <= 2)
                {
                  v102 = 2;
                }

                LODWORD(v166) = v102;
                v157 = 1;
                v156 = 6;
                std::make_unique[abi:ne200100]<ParametricFilters,double const&,unsigned int,BOOL,unsigned int,0>();
              }

              v103 = *(this + 1239);
              applesauce::CF::DictionaryRef::DictionaryRef(&v155, *buf);
              ParametricFilters::setParametricFiltersBlocking(v103, &v155, 0);
              applesauce::CF::DictionaryRef::~DictionaryRef(&v155);
              v104 = *(this + 1240);
              applesauce::CF::DictionaryRef::DictionaryRef(&v154, *buf);
              ParametricFilters::setParametricFiltersBlocking(v104, &v154, 1);
              applesauce::CF::DictionaryRef::~DictionaryRef(&v154);
            }

            else
            {
              if (v100)
              {
                ParametricFilters::clear(v100);
              }

              v145 = *(this + 1240);
              if (v145)
              {
                ParametricFilters::toggleParametricFilter(v145, 256, 0);
              }
            }

            applesauce::CF::DictionaryRef::~DictionaryRef(buf);
            caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
          }

          goto LABEL_203;
        case 3249:
          v68 = atomic_load(this + 9897);
          if ((v68 & 1) == 0)
          {
            goto LABEL_203;
          }

          v69 = atomic_load(this + 2929);
          if ((v69 & 1) == 0)
          {
            goto LABEL_203;
          }

          AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(buf, this + 5656);
          if (*buf)
          {
            applesauce::CF::DictionaryRef::DictionaryRef(&v153, *buf);
            IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(this + 2480, 0, &v153, 0);
            applesauce::CF::DictionaryRef::~DictionaryRef(&v153);
            v70 = atomic_load(this + 680);
            if (v70)
            {
              applesauce::CF::DictionaryRef::DictionaryRef(&v152, *buf);
              IR::SharedIRBuses::setParametricFiltersCoeffsBlocking(this + 2480, 2u, &v152, 1);
              applesauce::CF::DictionaryRef::~DictionaryRef(&v152);
            }
          }

          else
          {
            IR::SharedIRBuses::toggleParametricFilterBlocking((this + 2480), 0);
            v151 = atomic_load(this + 680);
            if (v151)
            {
              IR::SharedIRBuses::toggleParametricFilterBlocking((this + 2480), 2u);
            }
          }

          v84 = buf;
          goto LABEL_265;
        case 3252:
          v94 = atomic_load(this + 9897);
          if (v94)
          {
            *buf = this + 3504;
            buf[8] = 1;
            std::__shared_mutex_base::lock_shared((this + 3504));
            v95 = atomic_load(this + 2928);
            if (v95 & 1) != 0 || (v96 = atomic_load(this + 2929), (v96))
            {
              v97 = atomic_load(this + 2928);
              v98 = atomic_load(this + 2929);
              AUSpatialMixerV2::UpdateAutoModeReverb(this, v97 & 1, v98 & 1, -1);
            }

            std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](buf);
          }

          goto LABEL_203;
        case 3254:
          if (!*(this + 885))
          {
            goto LABEL_203;
          }

          v81 = atomic_load(this + 9897);
          if ((v81 & 1) == 0)
          {
            goto LABEL_203;
          }

          v82 = *(this + 885);
          AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v175, this + 5800);
          AUSM::RoomCongruence::Processor::setTuningParameters(v82, &v175);
          applesauce::CF::DictionaryRef::~DictionaryRef(&v175);
          AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(buf, this + 5440);
          v7 = *buf;
          applesauce::CF::DictionaryRef::~DictionaryRef(buf);
          if (!v7)
          {
            goto LABEL_230;
          }

          (*(*this + 592))(this, 3239);
          goto LABEL_203;
        case 3263:
        case 3264:
          v161 = 0;
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + 4208, &v161);
          v160 = 0;
          AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(this + 4352, &v160);
          std::mutex::lock((this + 8648));
          v65 = v6[2224];
          std::mutex::unlock((this + 8648));
          if (v65)
          {
            goto LABEL_203;
          }

LABEL_125:
          v66 = this;
          v67 = 0;
          goto LABEL_202;
        case 3266:
          std::mutex::lock((this + 8648));
          v73 = v6[2224];
          std::mutex::unlock((this + 8648));
          if ((v73 & 1) == 0)
          {
            goto LABEL_138;
          }

          goto LABEL_203;
        case 3267:
          goto LABEL_201;
        case 3279:
          AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(&v169, this + 5872);
          v83 = applesauce::CF::DictionaryRef::operator->(&v169);
          applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(buf, *v83, kOptionalFeatureConvolutionOptimizationParameters);
          if (buf[8] == 1)
          {
            applesauce::CF::DictionaryRef::DictionaryRef(&v166, *buf);
            (*(*this + 96))(this, 3252, 0, 0, &v166, 8);
            applesauce::CF::DictionaryRef::~DictionaryRef(&v166);
          }

          std::optional<applesauce::CF::DictionaryRef>::~optional(buf);
          v84 = &v169;
LABEL_265:
          applesauce::CF::DictionaryRef::~DictionaryRef(v84);
          goto LABEL_203;
        default:
          goto LABEL_204;
      }

      goto LABEL_204;
    }

    if (a2 > 5680)
    {
      if (a2 == 5681)
      {
        AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, this + 5240);
        DynamicProcessorPreset = AUSpatialMixerV2::LoadDynamicProcessorPreset(this, 1667658347, buf);
      }

      else
      {
        if (a2 != 5682)
        {
          v7 = 0;
          if (a2 == 5687)
          {
            v21 = atomic_load(this + 9898);
            if (v21)
            {
              v7 = AUSpatialMixerV2::PropagateGlobalPropertyChangeToInputElements(this, 5687);
              v22 = *(this + 51);
              v23 = *(this + 52);
              while (v22 != v23)
              {
                if (*v22 == 3116)
                {
                  (*(v22 + 8))(*(v22 + 16), *(this + 1), 3116, 0, 0);
                }

                v22 += 24;
              }

              AUSpatialMixerV2::ReloadFactoryPresetIfNecessary(this);
              v141 = atomic_load(this + 958);
              if (v141 == 1)
              {
                AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, 1, 1);
              }

              return v7;
            }

            goto LABEL_203;
          }

LABEL_204:
          if ((v4 & 1) == 0 && !v7)
          {
            return AUSpatialMixerV2::PropagateGlobalPropertyChangeToInputElements(this, a2);
          }

          return v7;
        }

        AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(buf, this + 5312);
        DynamicProcessorPreset = AUSpatialMixerV2::LoadDynamicProcessorPreset(this, 1818521197, buf);
      }

      LODWORD(v7) = DynamicProcessorPreset;
      applesauce::CF::URLRef::~URLRef(buf);
      v4 = 0;
      if (*(this + 17))
      {
        v7 = v7;
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_204;
    }

    if (a2 == 3310)
    {
LABEL_116:
      v7 = 0;
      v61 = this + 9785;
      goto LABEL_255;
    }

    v7 = 0;
    if (a2 != 4600)
    {
      goto LABEL_204;
    }

LABEL_115:
    v7 = 0;
    v61 = this + 9784;
LABEL_255:
    atomic_store(1u, v61);
    return v7;
  }

  if (a2 <= 3101)
  {
    if (a2 <= 3012)
    {
      if (a2 != 10)
      {
        if (a2 != 1005)
        {
          v7 = 0;
          if (a2 != 3010)
          {
            goto LABEL_204;
          }

          goto LABEL_115;
        }

        goto LABEL_201;
      }

LABEL_138:
      AUSpatialMixerV2::UpdateReverbRoomType(this);
LABEL_203:
      v4 = 0;
      v7 = 0;
      goto LABEL_204;
    }

    if (a2 == 3013)
    {
      goto LABEL_115;
    }

    if (a2 == 3100)
    {
      v110 = atomic_load(this + 958);
      if (v110 == 2)
      {
        v111 = atomic_load(this + 9897);
        if (v111)
        {
          AUSpatialMixerV2::UpdateCounteractRotationShader(this);
        }
      }

      (*(*this + 592))(this, 3113);
LABEL_201:
      v66 = this;
      v67 = 1;
LABEL_202:
      AUSpatialMixerV2::UpdateReverbIfNecessary(v66, -1, v67, 0);
      goto LABEL_203;
    }

    v7 = 0;
    if (a2 != 3101)
    {
      goto LABEL_204;
    }

    atomic_store(1u, this + 9783);
    v34 = atomic_load(this + 9897);
    if (v34)
    {
      v35 = atomic_load(this + 958);
      if (v35 == 2)
      {
        v36 = atomic_load(this + 2928);
        if (v36)
        {
          *buf = this + 3504;
          buf[8] = 1;
          std::__shared_mutex_base::lock_shared((this + 3504));
          AUSpatialMixerV2::UpdateAutoModeReverb(this, 1, 0, -1);
          std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](buf);
        }
      }
    }

    return 0;
  }

  if (a2 <= 3112)
  {
    if (a2 == 3102)
    {
      _X0 = 0;
      atomic_store(1u, v5 + 1);
      _X1 = 0;
      __asm { CASPAL          X0, X1, X0, X1, [X8]; this }

      v115 = AUSM::auCoordQuaternionToEuler(_X0, _X0);
      v117 = v116;
      v119 = v118;
      v120 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if ((v121 & 1) == 0 || (ausdk::AUElement::SetParameter(v120, 0x13u, v115), v122 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v123 & 1) == 0) || (ausdk::AUElement::SetParameter(v122, 0x14u, v117), v124 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0), (v125 & 1) == 0))
      {
LABEL_269:
        abort();
      }

      ausdk::AUElement::SetParameter(v124, 0x15u, v119);
      if ((*(this + 6824) & 4) != 0)
      {
        _X22 = 0;
        _X23 = 0;
        __asm { CASPAL          X22, X23, X22, X23, [X8] }

        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v129 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
        {
          v130 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v130 = *v130;
          }

          *buf = 136317186;
          *&buf[4] = v130;
          v183 = 2080;
          v184 = "PropertyChanged";
          v185 = 2048;
          v186 = v115;
          v187 = 2048;
          v188 = v117;
          v189 = 2048;
          v190 = v119;
          v191 = 2048;
          v192 = *&_X22;
          v193 = 2048;
          v194 = *(&_X22 + 1);
          v195 = 2048;
          v196 = 0.0;
          v197 = 2048;
          v198 = 0.0;
          _os_log_impl(&dword_1DDB85000, v129, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSMHeadOrientation: Y: %.2f, P: %.2f, R: %.2f, Quat: (%.4f, %.4f, %.4f, %.4f)", buf, 0x5Cu);
        }
      }

      v7 = 0;
      v61 = this + 3368;
      goto LABEL_255;
    }

    if (a2 != 3107)
    {
      v7 = 0;
      if (a2 != 3111)
      {
        goto LABEL_204;
      }

LABEL_31:
      v18 = atomic_load(this + 9897);
      if ((v18 & 1) == 0)
      {
        goto LABEL_203;
      }

      v19 = atomic_load(v6);
      if (v19)
      {
        AudioDSP::Core::HeadTracker::Initialize();
        if (atomic_load(this + 1347))
        {
          atomic_load(this + 1347);
          AudioDSP::Core::HeadTracker::ConnectRM();
          return 0;
        }

        AudioDSP::Core::HeadTracker::DisconnectRM((this + 9864));
        v146 = *(this + 484);
        _X2 = 0;
        do
        {
          _X5 = *(this + 485);
          __asm { CASPAL          X4, X5, X2, X3, [X8] }

          _ZF = _X4 == v146;
          v146 = _X4;
        }

        while (!_ZF);
      }

      else
      {
        AudioDSP::Core::HeadTracker::DisconnectRM((this + 9864));
        v137 = *(this + 484);
        _X2 = 0;
        do
        {
          _X5 = *(this + 485);
          __asm { CASPAL          X4, X5, X2, X3, [X8] }

          _ZF = _X4 == v137;
          v137 = _X4;
        }

        while (!_ZF);
      }

      v7 = 0;
      v61 = v5 + 1;
      goto LABEL_255;
    }

    v105 = atomic_load(this + 9897);
    if ((v105 & 1) == 0)
    {
      goto LABEL_203;
    }

    v106 = atomic_load(this + 3828);
    if (v106)
    {
      v107 = MEMORY[0x1E69E97D0];
    }

    else
    {
      v107 = MEMORY[0x1E69E9750];
    }

    v108 = *(this + 374);
    v109 = applesauce::CF::StringRef::get_ns(v108);
    v171[0] = MEMORY[0x1E69E9820];
    v171[1] = 3221225472;
    v171[2] = ___ZN16AUSpatialMixerV215PropertyChangedEj_block_invoke;
    v171[3] = &__block_descriptor_40_e5_v8__0l;
    v171[4] = this;
    v107(v109, v171);

    return 0;
  }

  if (a2 == 3113)
  {
    v131 = atomic_load(this + 9897);
    if ((v131 & 1) == 0)
    {
      return 0;
    }

    CanUsePersonalizedHRTF = AUSpatialMixerV2::CanUsePersonalizedHRTF(this);
    if (!CanUsePersonalizedHRTF)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v142 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
      {
        v143 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v143 = *v143;
        }

        *buf = 136315394;
        *&buf[4] = v143;
        v183 = 2080;
        v184 = "PropertyChanged";
        _os_log_impl(&dword_1DDB85000, v142, OS_LOG_TYPE_DEFAULT, "[%s|%s] Configuration does not support personalized HRTF.", buf, 0x16u);
      }

      IR::IRDataLoader::instance(v144);
      std::operator+<char>();
      IR::IRDataLoader::removeFromPersonalizedHRTFCallbackPool();
      if ((v174[23] & 0x80000000) == 0)
      {
        goto LABEL_259;
      }

      v135 = v174;
      goto LABEL_258;
    }

    v133 = atomic_load(this + 1350);
    v134 = v133 - 1;
    IR::IRDataLoader::instance(CanUsePersonalizedHRTF);
    if (v134 > 1)
    {
      std::operator+<char>();
      IR::IRDataLoader::removeFromPersonalizedHRTFCallbackPool();
      if ((v172[23] & 0x80000000) != 0)
      {
        v135 = v172;
        goto LABEL_258;
      }
    }

    else
    {
      std::operator+<char>();
      v181[0] = &unk_1F59203D8;
      v181[1] = this;
      v181[3] = v181;
      IR::IRDataLoader::addToPersonalizedHRTFCallbackPool();
      std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](v181);
      if ((v173[23] & 0x80000000) != 0)
      {
        v135 = v173;
LABEL_258:
        operator delete(*v135);
      }
    }

LABEL_259:
    AUSM::IRManager::updateHRIRAttributes((this + 7088));
    (*(*this + 592))(this, 5687);
    return 0;
  }

  if (a2 == 3114)
  {
LABEL_81:
    v46 = atomic_load(this + 9897);
    if (v46)
    {
      AUSM::IRManager::updateHRIRAttributes((this + 7088));
      (*(*this + 592))(this, 5687);
    }

    return 0;
  }

  v7 = 0;
  if (a2 != 3115)
  {
    goto LABEL_204;
  }

  if ((*(this + 6824) & 8) != 0)
  {
    _X26 = 0;
    _X27 = 0;
    __asm { CASPAL          X26, X27, X26, X27, [X8] }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v44 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v45 = *v45;
      }

      *buf = 136316162;
      *&buf[4] = v45;
      v183 = 2080;
      v184 = "PropertyChanged";
      v185 = 2048;
      v186 = *&_X26;
      v187 = 2048;
      v188 = *(&_X26 + 1);
      v189 = 2048;
      v190 = 0.0;
      _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEFAULT, "[%s|%s] AUSM_PRESENTATION_POS: X (left-right): %.4f, Y (back-front): %.4f, Z (down-up): %.4f", buf, 0x34u);
    }
  }

  v7 = 0;
  atomic_store(1u, v5);
  atomic_store(1u, this + 3368);
  return v7;
}

void sub_1DDCD8CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a69);
  if (LOBYTE(STACK[0x368]) == 1)
  {
    AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(&STACK[0x2B0]);
  }

  _Unwind_Resume(a1);
}

void AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::load(void *a1, uint64_t a2)
{
  std::mutex::lock((a2 + 8));
  v4 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  *a1 = v4;

  std::mutex::unlock((a2 + 8));
}

applesauce::CF::DictionaryRef *applesauce::CF::DictionaryRef::DictionaryRef(applesauce::CF::DictionaryRef *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

{
  *this = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 != CFDictionaryGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return this;
}

{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

void AUSM::AppleSauceCFWithMutex<__CFDictionary const*>::store(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  std::mutex::unlock((a1 + 8));
}

void AUSpatialMixerV2::UpdateReverbIfNecessary(AUSpatialMixerV2 *this, int a2, int a3, int a4)
{
  v115 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(this + 9897);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v102 = this + 9785;
  v104 = (this + 3504);
  std::__shared_mutex_base::lock_shared((this + 3504));
  v8 = 0;
  v103 = 0;
  v9 = 0;
  v10 = 0;
  while (1)
  {
    v11 = *(this + 15);
    if (v11)
    {
      LODWORD(v12) = (*(*v11 + 24))(v11);
    }

    else
    {
      v12 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v8 >= v12)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v8);
    v14 = Element;
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    MustProcessInternalReverb = AUSpatialMixerV2InputElement::MustProcessInternalReverb(Element);
    MustProcessPostProcReverb = AUSpatialMixerV2InputElement::MustProcessPostProcReverb(v14);
    v17 = atomic_load(v14 + 226);
    if (v17 == 7 && AUSpatialMixerV2InputElement::MustProcessInternalReverb(v14))
    {
      LODWORD(v103) = 1;
    }

    else
    {
      v18 = atomic_load(v14 + 226);
      if (v18 == 6)
      {
        HIDWORD(v103) |= AUSpatialMixerV2InputElement::MustProcessInternalReverb(v14);
      }
    }

    v10 |= MustProcessInternalReverb;
    v9 |= MustProcessPostProcReverb;
    ++v8;
  }

  if (a2 == -1)
  {
    v21 = *(this + 15);
    if (v21)
    {
      LODWORD(v19) = (*(*v21 + 24))(v21);
      v20 = 0;
    }

    else
    {
      v20 = 0;
      v19 = (*(this + 13) - *(this + 12)) >> 3;
    }
  }

  else
  {
    LODWORD(v19) = a2 + 1;
    v20 = a2;
  }

  v22 = atomic_load(this + 2928);
  if (!(v103 & 1 | ((v22 & 1) == 0)))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v23 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v95 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v95 = *v95;
      }

      *v111 = 136315394;
      *&v111[4] = v95;
      *&v111[12] = 2080;
      *&v111[14] = "UpdateReverbIfNecessary";
      _os_log_debug_impl(&dword_1DDB85000, v23, OS_LOG_TYPE_DEBUG, "[%s|%s] Resetting auto mode reverb", v111, 0x16u);
    }

    AUSpatialMixerV2::ResetReverbFilters(this, 1);
    if (v20 != v19)
    {
      v24 = v20;
      do
      {
        v25 = ausdk::AUScope::GetElement((this + 80), v24);
        if (!v25)
        {
          ausdk::Throw(0xFFFFD583);
        }

        AUSpatialMixerV2InputElement::ResetReverbProcessors(v25, 1);
        ++v24;
      }

      while (v19 != v24);
    }

    IR::DynamicIRProcessor::reset((this + 2104));
    IR::DynamicIRProcessor::reset((this + 2288));
    caulk::pooled_semaphore_mutex::_lock((this + 2776));
    IR::SharedIRBuses::reset((this + 2480));
    caulk::pooled_semaphore_mutex::_unlock((this + 2776));
  }

  v26 = atomic_load(this + 2929);
  if (!(v9 & 1 | ((v26 & 1) == 0)))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v27 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v96 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v96 = *v96;
      }

      *v111 = 136315394;
      *&v111[4] = v96;
      *&v111[12] = 2080;
      *&v111[14] = "UpdateReverbIfNecessary";
      _os_log_debug_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_DEBUG, "[%s|%s] Resetting post-processing reverb", v111, 0x16u);
    }

    AUSpatialMixerV2::ResetReverbFilters(this, 0);
    for (; v19 != v20; ++v20)
    {
      v28 = ausdk::AUScope::GetElement((this + 80), v20);
      if (!v28)
      {
        ausdk::Throw(0xFFFFD583);
      }

      AUSpatialMixerV2InputElement::ResetReverbProcessors(v28, 0);
    }

    caulk::pooled_semaphore_mutex::_lock((this + 2776));
    IR::SharedIRBuses::reset((this + 2480));
    caulk::pooled_semaphore_mutex::_unlock((this + 2776));
  }

  v29 = v103;
  atomic_store(v103 & 1, this + 2928);
  atomic_store(v9 & 1, this + 2929);
  if ((v29 | v9))
  {
    v30 = ausdk::AUScope::GetElement((this + 128), 0);
    if (v30)
    {
      v31 = *(v30 + 80);
      v32 = atomic_load(this + 958);
      v33 = atomic_load(this + 2472);
      if (v32 != 4)
      {
        if (v33)
        {
          v38 = atomic_load(this + 619);
          if (v38)
          {
            atomic_store(0, this + 2472);
            atomic_store(0, this + 619);
            IR::DynamicIRProcessor::uninitialize((this + 2104));
            IR::DynamicIRProcessor::uninitialize((this + 2288));
          }
        }

        v39 = atomic_load(this + 2724);
        if ((v39 & 1) == 0)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v40 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v100 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v100 = *v100;
            }

            *v111 = 136315394;
            *&v111[4] = v100;
            *&v111[12] = 2080;
            *&v111[14] = "UpdateReverbIfNecessary";
            _os_log_debug_impl(&dword_1DDB85000, v40, OS_LOG_TYPE_DEBUG, "[%s|%s] Initializing auto mode reverb", v111, 0x16u);
          }

          caulk::pooled_semaphore_mutex::_lock((this + 2776));
          v41 = ausdk::AUScope::GetElement((this + 128), 0);
          if (!v41)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v42 = *(v41 + 108);
          if (v42 <= 2)
          {
            v43 = 2;
          }

          else
          {
            v43 = v42;
          }

          v44 = *(this + 84);
          caulk::pooled_semaphore_mutex::_lock((this + 2628));
          atomic_store(0, this + 2624);
          atomic_store(0, this + 2625);
          atomic_store(0, this + 2626);
          *(this + 683) = v31;
          *(this + 680) = 3;
          *(this + 684) = v44;
          *(this + 687) = 1 << -__clz(vcvtas_u32_f32(v31 * 0.0053333) - 1);
          if (v44)
          {
            *(this + 682) = v43;
            v45 = *(this + 332);
            v46 = *(this + 331);
            std::vector<std::vector<float>>::resize(this + 331, v43);
            std::vector<std::vector<float>>::resize(this + 334, v43);
            v47 = -1431655765 * ((v45 - v46) >> 3);
            if (v43 > v47)
            {
              v48 = 24 * v47;
              do
              {
                std::vector<float>::vector[abi:ne200100](v111, *(this + 684));
                v49 = *(this + 331) + v48;
                v50 = *v49;
                if (*v49)
                {
                  *(v49 + 8) = v50;
                  operator delete(v50);
                  *v49 = 0;
                  *(v49 + 8) = 0;
                  *(v49 + 16) = 0;
                }

                *v49 = *v111;
                *(v49 + 16) = *&v111[16];
                std::vector<float>::vector[abi:ne200100](v111, *(this + 684));
                v51 = *(this + 334) + v48;
                v52 = *v51;
                if (*v51)
                {
                  *(v51 + 8) = v52;
                  operator delete(v52);
                  *v51 = 0;
                  *(v51 + 8) = 0;
                  *(v51 + 16) = 0;
                }

                *v51 = *v111;
                *(v51 + 16) = *&v111[16];
                ++v47;
                v48 += 24;
              }

              while (v43 > v47);
            }
          }

          v53 = *(this + 680);
          *v111 = 0;
          *&v111[8] = 0;
          std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::resize(this + 310, v53, v111);
          v54 = *(this + 680);
          *v111 = 0;
          *&v111[8] = 0;
          std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::resize(this + 316, v54, v111);
          v55 = *(this + 680);
          *v111 = 0;
          *&v111[8] = 0;
          std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::resize(this + 322, v55, v111);
          v56 = *(this + 680);
          *v111 = 0;
          std::vector<float>::resize(this + 313, v56, v111, v57);
          v58 = *(this + 680);
          *v111 = 0;
          std::vector<float>::resize(this + 319, v58, v111, v59);
          v60 = *(this + 680);
          *v111 = 0;
          std::vector<float>::resize(this + 325, v60, v111, v61);
          *v111 = 0;
          *&v111[8] = 0;
          std::vector<std::shared_ptr<IR::SharedIRBuses::IRBus>>::resize(this + 337, 4uLL, v111);
          *(this + 2725) = 1;
          atomic_store(1u, this + 2724);
          caulk::pooled_semaphore_mutex::_unlock((this + 2628));
          caulk::pooled_semaphore_mutex::_unlock((this + 2776));
        }

        goto LABEL_67;
      }

      if (v33)
      {
        v34 = atomic_load(this + 619);
        if (v34)
        {
LABEL_67:
          AUSpatialMixerV2::UpdateAutoModeReverb(this, v103 & 1, v9 & 1, a2);
          goto LABEL_68;
        }
      }

      v35 = *(this + 84);
      v36 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v36)
      {
        v37 = *(v36 + 108);
        atomic_store(0, this + 2472);
        atomic_store(0, this + 619);
        IR::DynamicIRProcessor::uninitialize((this + 2104));
        IR::DynamicIRProcessor::uninitialize((this + 2288));
        *v111 = 0x20000000080;
        *&v111[8] = v37;
        IR::DynamicIRProcessor::initialize(this + 2104, v35, v111, v31);
        *v111 = 0x20000000080;
        *&v111[8] = v37;
        IR::DynamicIRProcessor::initialize(this + 2288, v35, v111, v31);
        atomic_store(1u, this + 619);
        atomic_store(1u, this + 2472);
        goto LABEL_67;
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  if (a4)
  {
    AUSpatialMixerV2::ReconfigureSharedBuffers(this, 0, 0);
  }

  if (*(this + 344) != *(this + 345))
  {
    IR::FixedIntegerDelay<float>::reset();
  }

LABEL_68:
  if (a3)
  {
    v62 = atomic_load(this + 2928);
    v63 = atomic_load(this + 2929);
    if (v62 & 1) != 0 && (v63)
    {
      ReverbModelingDelay = AUSM::IRManager::getReverbModelingDelay(this + 7088, 0);
      v65 = AUSM::IRManager::getReverbModelingDelay(this + 7088, 1);
      if (v65 < ReverbModelingDelay)
      {
        ReverbModelingDelay = v65;
      }
    }

    else if (v63 & 1) != 0 || (v62)
    {
      ReverbModelingDelay = AUSM::IRManager::getReverbModelingDelay(this + 7088, (v63 & 1) == 0);
    }

    else
    {
      ReverbModelingDelay = 0;
    }

    std::mutex::lock((this + 8648));
    IR::IRDataAttributes::IRDataAttributes(v111, (this + 7152));
    std::mutex::unlock((this + 8648));
    v67 = IR::IRDataLoader::instance(v66);
    IR::IRDataLoader::getLoadedIR(v105, v67, v111);
    v68 = v105[0];
    if (v105[0])
    {
LABEL_79:
      if (v62 & 1) != 0 || (v63)
      {
        v69 = ReverbModelingDelay - IR::IRData::getModelingDelay(v68);
      }

      else
      {
        v69 = 0;
      }

      v72 = atomic_load((*(this + 886) + 88));
      if (v72 == 1)
      {
        v73 = atomic_load(this + 1781);
      }

      else
      {
        v73 = 0;
      }

      if (*(this + 3268) == v69 && *(this + 3269) == v73)
      {
        goto LABEL_123;
      }

      AUSpatialMixerV2::AlignmentDelay::reset((this + 13024));
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v74 = v73 + (v69 & ~(v69 >> 31));
      v75 = -v69 & (v69 >> 31);
      v76 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v77 = *v77;
        }

        *buf = 136315906;
        *&buf[4] = v77;
        *&buf[12] = 2080;
        *&buf[14] = "UpdateAlignmentDelayLines";
        *&buf[22] = 1024;
        v107 = v73 + (v69 & ~(v69 >> 31));
        v108 = 1024;
        *__p = -v69 & (v69 >> 31);
        _os_log_impl(&dword_1DDB85000, v76, OS_LOG_TYPE_DEFAULT, "[%s|%s] Alignment delay: Direct path = %u samples, Reverb path = %u samples", buf, 0x22u);
      }

      caulk::pooled_semaphore_mutex::_lock((this + 13084));
      *(this + 3268) = v69;
      *(this + 3269) = v73;
      if (v74)
      {
        v78 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v78)
        {
          goto LABEL_184;
        }

        v79 = *(v78 + 108);
        MEMORY[0x1E12BBE20](buf, v74, 1);
        if (v79 <= 2)
        {
          v80 = 2;
        }

        else
        {
          v80 = v79;
        }

        std::vector<IR::FixedIntegerDelay<float>>::resize(this + 1628, v80, buf);
        if (*&__p[2])
        {
          v110 = *&__p[2];
          operator delete(*&__p[2]);
        }

        if (*&buf[8])
        {
          *&buf[16] = *&buf[8];
          operator delete(*&buf[8]);
        }

        atomic_store(1u, v102 + 3295);
      }

      if (!v75)
      {
LABEL_122:
        caulk::pooled_semaphore_mutex::_unlock((this + 13084));
LABEL_123:
        if (v105[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v105[1]);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v113)
        {
          CFRelease(v113);
        }

        if (v112)
        {
          CFRelease(v112);
        }

        if (*v111)
        {
          CFRelease(*v111);
        }

        goto LABEL_133;
      }

      v81 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v81)
      {
        v82 = *(v81 + 108);
        MEMORY[0x1E12BBE20](buf, v75, 1);
        if (v82 <= 2)
        {
          v83 = 2;
        }

        else
        {
          v83 = v82;
        }

        std::vector<IR::FixedIntegerDelay<float>>::resize(this + 1631, v83, buf);
        if (*&__p[2])
        {
          v110 = *&__p[2];
          operator delete(*&__p[2]);
        }

        if (*&buf[8])
        {
          *&buf[16] = *&buf[8];
          operator delete(*&buf[8]);
        }

        atomic_store(1u, v102 + 3296);
        goto LABEL_122;
      }

LABEL_184:
      ausdk::Throw(0xFFFFD583);
    }

    if ((v111[17] & 1) == 0)
    {
      v111[17] = 1;
      v92 = IR::IRDataLoader::instance(0);
      IR::IRDataLoader::getLoadedIR(buf, v92, v111);
      v93 = *buf;
      *buf = 0;
      *&buf[8] = 0;
      v94 = v105[1];
      *v105 = v93;
      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
        }

        v68 = v105[0];
        if (v105[0])
        {
          goto LABEL_79;
        }
      }

      else
      {
        v68 = v93;
        if (v93)
        {
          goto LABEL_79;
        }
      }
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v70 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
    {
      v71 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v71 = *v71;
      }

      *buf = 136315394;
      *&buf[4] = v71;
      *&buf[12] = 2080;
      *&buf[14] = "UpdateAlignmentDelayLines";
      _os_log_impl(&dword_1DDB85000, v70, OS_LOG_TYPE_DEFAULT, "[%s|%s] Could not find active HRTF in cache. Alignment delay remains unchanged.", buf, 0x16u);
    }

    goto LABEL_123;
  }

LABEL_133:
  v84 = atomic_load(this + 680);
  if (!(v10 & 1 | ((v84 & 1) == 0)))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v85 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v85, OS_LOG_TYPE_DEBUG))
    {
      v97 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v97 = *v97;
      }

      *v111 = 136315394;
      *&v111[4] = v97;
      *&v111[12] = 2080;
      *&v111[14] = "UpdateReverbIfNecessary";
      _os_log_debug_impl(&dword_1DDB85000, v85, OS_LOG_TYPE_DEBUG, "[%s|%s] Resetting FDN", v111, 0x16u);
    }

    caulk::pooled_semaphore_mutex::_lock((this + 1968));
    FeedbackDelayNetwork<float>::Reset(this + 43);
    caulk::pooled_semaphore_mutex::_unlock((this + 1968));
  }

  atomic_store(v10 & 1, this + 680);
  v86 = atomic_load(this + 2096);
  if (BYTE4(v103) & 1 | ((v86 & 1) == 0))
  {
    v87 = atomic_load(this + 2096);
    if ((v87 & 1) == 0 && ((HIDWORD(v103) ^ 1) & 1) == 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v88 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        v99 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v99 = *v99;
        }

        *v111 = 136315394;
        *&v111[4] = v99;
        *&v111[12] = 2080;
        *&v111[14] = "UpdateReverbIfNecessary";
        _os_log_debug_impl(&dword_1DDB85000, v88, OS_LOG_TYPE_DEBUG, "[%s|%s] Updating HRTFHQ reverb", v111, 0x16u);
      }

      std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 2032, this + 3472);
      atomic_load(this + 954);
      operator new();
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v89 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      v98 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v98 = *v98;
      }

      *v111 = 136315394;
      *&v111[4] = v98;
      *&v111[12] = 2080;
      *&v111[14] = "UpdateReverbIfNecessary";
      _os_log_debug_impl(&dword_1DDB85000, v89, OS_LOG_TYPE_DEBUG, "[%s|%s] Resetting HRTFHQ reverb", v111, 0x16u);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 2032);
    IR::IRProcessor::reset(*(this + 253));
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 2032);
  }

  v90 = HIDWORD(v103);
  atomic_store(BYTE4(v103) & 1, this + 2096);
  if (((v103 | v90 | v10 | v9) & 1) == 0)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
    v91 = *(this + 1238);
    if (v91)
    {
      ParametricFilters::reset(v91);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
  }

  atomic_store(1u, v102);
  std::__shared_mutex_base::unlock_shared(v104);
}

void sub_1DDCDA0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  caulk::pooled_semaphore_mutex::_unlock((v5 + 2628));
  caulk::pooled_semaphore_mutex::_unlock((v5 + 2776));
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AUSM::RoomCongruence::ProcessingResult::~ProcessingResult(AUSM::RoomCongruence::ProcessingResult *this)
{
  v2 = *(this + 21);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    CFRelease(v3);
  }

  if (*(this + 152) == 1)
  {
    IR::IRDataAttributes::~IRDataAttributes(this);
  }
}

BOOL AUSpatialMixerV2::CanUsePersonalizedHRTF(AUSpatialMixerV2 *this)
{
  v1 = atomic_load(this + 958);
  if (v1 == 1)
  {
    v3 = (this + 3504);
    v13 = (this + 3504);
    std::__shared_mutex_base::lock_shared((this + 3504));
    v4 = *(this + 15);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = (*(this + 13) - *(this + 12)) >> 3;
      if (v5)
      {
LABEL_4:
        v6 = 0;
        v7 = 1;
        do
        {
          Element = ausdk::AUScope::GetElement((this + 80), v6);
          if (!Element)
          {
            ausdk::Throw(0xFFFFD583);
          }

          v9 = atomic_load((Element + 904));
          if (v9 == 7)
          {
            v10 = atomic_load((*(Element + 1416) + 80));
            if (v10 != 1 && (v10 || *(*(Element + 1408) + 108) <= 1u))
            {
              v11 = atomic_load((*(Element + 1416) + 72));
              if (v11 != 5)
              {
                break;
              }
            }
          }

          v7 = ++v6 < v5;
        }

        while (v5 != v6);
        v3 = v13;
        goto LABEL_16;
      }
    }

    v7 = 0;
LABEL_16:
    std::__shared_mutex_base::unlock_shared(v3);
    return v7;
  }

  return 0;
}

uint64_t std::__function::__value_func<void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::~__value_func[abi:ne200100](uint64_t a1)
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

void ___ZN16AUSpatialMixerV215PropertyChangedEj_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v10 = (v1 + 3752);
    if (*(v1 + 3775) < 0)
    {
      v10 = *v10;
    }

    *buf = 136315394;
    v14 = v10;
    v15 = 2080;
    v16 = "PropertyChanged_block_invoke";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] dispatched update for dynamic XTC filter generation #:", buf, 0x16u);
  }

  v3 = atomic_load((v1 + 3008));
  if (v3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v4 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v11 = (v1 + 3752);
      if (*(v1 + 3775) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315394;
      v14 = v11;
      v15 = 2080;
      v16 = "PropertyChanged_block_invoke";
      _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] update dropped", buf, 0x16u);
    }
  }

  else if (*(v1 + 9856))
  {
    v5 = *(v1 + 3408);
    v6 = *(v1 + 3400);
    *(v1 + 3408) = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    if (v5)
    {
      CFRelease(v5);
    }

    v7 = *(v1 + 9856);
    v8 = *(v1 + 3400);
    if (v8)
    {
      CFRetain(*(v1 + 3400));
    }

    AUSpatialMixerV2DynamicXTCFilter::updateParamDictionary(v7, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v9 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v12 = (v1 + 3752);
      if (*(v1 + 3775) < 0)
      {
        v12 = *v12;
      }

      *buf = 136315394;
      v14 = v12;
      v15 = 2080;
      v16 = "PropertyChanged_block_invoke";
      _os_log_debug_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEBUG, "[%s|%s] updating dynamic XTC filters", buf, 0x16u);
    }

    AUSpatialMixerV2DynamicXTCFilter::updateFilters(*(v1 + 9856));
    AUSpatialMixerV2::PropagateGlobalPropertyChangeToInputElements(v1, 3202);
  }
}

void sub_1DDCDA724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

pthread_t AUSpatialMixerV2::UpdateReverbRoomType(AUSpatialMixerV2 *this)
{
  v2 = atomic_load(this + 9897);
  if (v2)
  {
    v3 = atomic_load(this + 2928);
    if (v3 & 1) != 0 || (v4 = atomic_load(this + 2929), (v4))
    {
      v5 = atomic_load(this + 2928);
      v6 = atomic_load(this + 2929);
      AUSpatialMixerV2::UpdateAutoModeReverb(this, v5 & 1, v6 & 1, -1);
    }

    v7 = atomic_load(this + 2096);
    if (v7)
    {
      std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(this + 2032, this + 3472);
      atomic_load(this + 954);
      operator new();
    }
  }

  AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, (*(this + 17) & 1) == 0, 0);
  while (1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 1968));
    if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 3472))
    {
      break;
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 1968));
    sched_yield();
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
    if (caulk::pooled_semaphore_mutex::try_lock((this + 1968)))
    {
      break;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
    sched_yield();
  }

  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v9 = *(Element + 80);
  v10 = atomic_load(this + 954);
  atomic_store(1u, this + 1952);
  v11 = atomic_load(this + 954);
  v12 = 33 * v10;
  switch(v11)
  {
    case 0u:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, 0.002, 0.014, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 0.3, 0.08);
      v13 = 0x3FD3333333333333;
      goto LABEL_30;
    case 1u:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, 0.005, 0.045, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 0.85, 0.3);
      v13 = 0x3FEB333333333333;
      goto LABEL_30;
    case 2u:
      v18 = 0.01;
      v19 = 0.07;
      goto LABEL_20;
    case 3u:
      v14 = 0.01;
      v15 = 0.07;
      goto LABEL_28;
    case 4u:
      v16 = 0.018;
      v17 = 0.1;
      goto LABEL_17;
    case 5u:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, 0.005, 0.045, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 7.0, 2.5);
      v13 = 0x401C000000000000;
      goto LABEL_30;
    case 6u:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, 0.01, 0.028, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 1.2, 0.37);
      v13 = 0x3FF3333333333333;
      goto LABEL_30;
    case 7u:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, 0.01, 0.028, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 2.0, 0.67);
      v13 = 0x4000000000000000;
      goto LABEL_30;
    case 8u:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, 0.03, 0.2, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 9.0, 3.0);
      v13 = 0x4022000000000000;
      goto LABEL_30;
    case 9u:
      v18 = 0.0065;
      v19 = 0.08;
LABEL_20:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, v18, v19, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 1.0, 0.6);
      v13 = 0x3FF0000000000000;
      goto LABEL_30;
    case 0xAu:
      v14 = 0.006;
      v15 = 0.04;
      goto LABEL_28;
    case 0xBu:
      v14 = 0.008;
      v15 = 0.055;
LABEL_28:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, v14, v15, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 2.1, 1.1);
      v13 = 0x4000CCCCCCCCCCCDLL;
      goto LABEL_30;
    case 0xCu:
      v16 = 0.006;
      v17 = 0.04;
LABEL_17:
      FeedbackDelayNetwork<float>::SetDelayTime(this + 688, v12, v16, v17, v9);
      FeedbackDelayNetwork<float>::SetDecayTime(this + 688, 2.9, 2.0);
      v13 = 0x4007333333333333;
LABEL_30:
      *(this + 245) = v13;
      break;
    default:
      atomic_store(0, this + 1952);
      break;
  }

  FeedbackDelayNetwork<float>::Reset(this + 43);
  atomic_store((v9 * (*(this + 245) + *(this + 245))), this + 505);
  caulk::pooled_semaphore_mutex::_unlock((this + 1968));

  return caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
}

void sub_1DDCDAC24(_Unwind_Exception *a1)
{
  MEMORY[0x1E12BD160](v3, 0x10A1C40AF302FDBLL);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v1 + 2032);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v2);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2::UpdateCounteractRotationShader(AUSpatialMixerV2 *this)
{
  v32 = *MEMORY[0x1E69E9840];
  IR::getPresetDataAttributes();
  v2 = atomic_load(this + 3904);
  v23 = (v2 & 1) == 0;
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v4 = *(Element + 80);
  v22 = v4;
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, this + 4064);
  v5 = cf;
  if (cf)
  {
    v6 = v21;
    v21 = cf;
    v5 = CFRetain(cf);
    if (v6)
    {
      CFRelease(v6);
    }
  }

  v7 = this + 6820;
  if (!v21 || (v8 = IR::IRDataLoader::instance(v5), v9 = MEMORY[0x1E12BBBE0](v8, &v21), !v9))
  {
    v14 = atomic_load(v7);
    if (v14)
    {
      goto LABEL_29;
    }

    BooleanFromDictionary = 1;
    goto LABEL_19;
  }

  v10 = IR::IRDataLoader::instance(v9);
  IR::IRDataLoader::getUserData(&v19, v10, &v21);
  v11 = v19;
  if (v19)
  {
    CFRetain(v19);
  }

  v18 = v11;
  std::string::basic_string[abi:ne200100]<0>(buf, "CounteractRotationShader");
  BooleanFromDictionary = IR::IRData::getBooleanFromDictionary();
  if (SHIBYTE(v30) < 0)
  {
    operator delete(*buf);
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  v13 = atomic_load(v7);
  if (BooleanFromDictionary != (v13 & 1))
  {
LABEL_19:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v15 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315650;
      *&buf[4] = v16;
      v28 = 2080;
      v29 = "UpdateCounteractRotationShader";
      if (BooleanFromDictionary)
      {
        v17 = "true";
      }

      else
      {
        v17 = "false";
      }

      v30 = 2080;
      v31 = v17;
      _os_log_impl(&dword_1DDB85000, v15, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting CounteractRotationShader = %s", buf, 0x20u);
    }

    atomic_store(BooleanFromDictionary, v7);
    atomic_store(1u, this + 9783);
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (v21)
  {
    CFRelease(v21);
  }
}

void sub_1DDCDAF0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void AUSpatialMixerV2::UpdateAutoModeReverb(AUSpatialMixerV2 *this, char a2, char a3, int a4)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(this + 9897);
  if (v4)
  {
    v9 = atomic_load(this + 958);
    if (v9 == 4)
    {
      v10 = atomic_load(this + 2472);
      if ((v10 & 1) == 0 || (v11 = atomic_load(this + 619), (v11 & 1) == 0))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v12 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        v13 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v13 = *v13;
        }

        *buf = 136315394;
        *v34 = v13;
        *&v34[8] = 2080;
        *&v34[10] = "UpdateAutoModeReverb";
        v14 = "[%s|%s] hoa reverb processors are not initialized";
        goto LABEL_29;
      }
    }

    else
    {
      v15 = atomic_load(this + 2724);
      if ((v15 & 1) == 0)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v12 = getAUSMV2Log(void)::gLog;
        if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_43;
        }

        v21 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v21 = *v21;
        }

        *buf = 136315394;
        *v34 = v21;
        *&v34[8] = 2080;
        *&v34[10] = "UpdateAutoModeReverb";
        v14 = "[%s|%s] auto mode reverb not initialized";
LABEL_29:
        _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, v14, buf, 0x16u);
LABEL_43:

        return;
      }
    }

    v16 = atomic_load(this + 3904);
    if (v16 & 1) != 0 && ((v17 = atomic_load(this + 958), v17 == 1) || (v22 = atomic_load(this + 958), v22 == 2) && ((*(this + 6797) & 1) != 0 || (v23 = atomic_load(this + 6798), (v23))))
    {
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v19 = *(Element + 108);
      if (v19 <= 2)
      {
        v20 = 2;
      }

      else
      {
        v20 = v19;
      }

      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 345) - *(this + 344)) >> 3) == v20)
      {
        goto LABEL_39;
      }

      caulk::pooled_semaphore_mutex::_lock((this + 2776));
      MEMORY[0x1E12BBE20](buf, 128, 1);
      std::vector<IR::FixedIntegerDelay<float>>::resize(this + 344, v20, buf);
      if (__p)
      {
        v36 = __p;
        operator delete(__p);
      }

      if (*&v34[4])
      {
        *&v34[12] = *&v34[4];
        operator delete(*&v34[4]);
      }
    }

    else
    {
      if (*(this + 345) == *(this + 344))
      {
LABEL_39:
        v26 = atomic_load(this + 3828);
        if (v26)
        {
          v27 = MEMORY[0x1E69E97D0];
        }

        else
        {
          v27 = MEMORY[0x1E69E9750];
        }

        v12 = *(this + 374);
        v28 = applesauce::CF::StringRef::get_ns(v12);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = ___ZN16AUSpatialMixerV220UpdateAutoModeReverbEbbi_block_invoke;
        v29[3] = &__block_descriptor_46_e5_v8__0l;
        v29[4] = this;
        v30 = a4;
        v31 = a2;
        v32 = a3;
        v27(v28, v29);
        goto LABEL_43;
      }

      caulk::pooled_semaphore_mutex::_lock((this + 2776));
      v24 = *(this + 345);
      v25 = *(this + 344);
      while (v24 != v25)
      {
        v24 -= 7;
        std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(v24);
      }

      *(this + 345) = v25;
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 2776));
    goto LABEL_39;
  }
}

void sub_1DDCDB344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  PPUtils::ContiguousArray2D<float>::~ContiguousArray2D(va);
  caulk::pooled_semaphore_mutex::_unlock((v7 + 2776));
  _Unwind_Resume(a1);
}

uint64_t std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    std::__shared_mutex_base::unlock_shared(*a1);
  }

  return a1;
}

uint64_t AUSpatialMixerV2::PropagateGlobalPropertyChangeToInputElements(AUSpatialMixerV2 *this, uint64_t a2)
{
  v2 = atomic_load(this + 9897);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v5 = (this + 3504);
  std::__shared_mutex_base::lock_shared((this + 3504));
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = *(this + 15);
    if (v8)
    {
      LODWORD(v9) = (*(*v8 + 24))(v8);
    }

    else
    {
      v9 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v6 >= v9)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v6);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v11 = (*(*Element + 136))(Element, a2);
    if (v11)
    {
      v7 = v11;
    }

    else
    {
      v7 = v7;
    }

    ++v6;
  }

  std::__shared_mutex_base::unlock_shared(v5);
  return v7;
}

void AUSpatialMixerV2::ReloadFactoryPresetIfNecessary(AUSpatialMixerV2 *this)
{
  v47[1] = *MEMORY[0x1E69E9840];
  if (!ausdk::AUBase::DispatchGetProperty(this, 36, 0, 0, &v37))
  {
    v2 = v37;
    CFRelease(*(&v37 + 1));
    if (v2 == -1 || !*(this + 2462))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v4 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v22 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v22 = *v22;
        }

        *buf = 136315394;
        v39 = v22;
        v40 = 2080;
        *v41 = "ReloadFactoryPresetIfNecessary";
        _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] No headphone factory preset was set.", buf, 0x16u);
      }
    }

    else
    {
      v36 = 0;
      if ((*(*this + 88))(this, 3116, 0, 0, &v36))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v3 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          v23 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v23 = *v23;
          }

          *buf = 136315394;
          v39 = v23;
          v40 = 2080;
          *v41 = "ReloadFactoryPresetIfNecessary";
          _os_log_error_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_ERROR, "[%s|%s] Could not get personalized HRTF status.", buf, 0x16u);
        }
      }

      else
      {
        if (v36)
        {
          v5 = 2;
        }

        else
        {
          v5 = 1;
        }

        if (*(this + 2462) == v5)
        {
          if (getAUSMV2Log(void)::onceToken != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v6 = getAUSMV2Log(void)::gLog;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v24 = (this + 3752);
            if (*(this + 3775) < 0)
            {
              v24 = *v24;
            }

            v25 = *(this + 2462);
            *buf = 136315906;
            v39 = v24;
            v40 = 2080;
            *v41 = "ReloadFactoryPresetIfNecessary";
            *&v41[8] = 1024;
            v42 = v2;
            v43 = 1024;
            v44 = v25;
            _os_log_debug_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_DEBUG, "[%s|%s] FactoryPreset %u of subtype = %u is already loaded.", buf, 0x22u);
          }
        }

        else
        {
          AUSM::FactoryPreset::load(buf, this + 2462, v2, v36 != 0);
          if (*&v41[2])
          {
            v7 = applesauce::CF::DictionaryRef::operator->(&v41[2]);
            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&v34, *v7, AUSM::kFactoryPresetChannelOverridesKey);
            v8 = applesauce::CF::DictionaryRef::operator->(&v41[2]);
            applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&v32, *v8, AUSM::kFactoryPresetGlobalPropertiesKey);
            v9 = objc_opt_new();
            if (v35 == 1)
            {
              v10 = v34;
              applesauce::CF::StringRef::get_ns(v34);
              objc_claimAutoreleasedReturnValue();
              [v9 setObject:v10 forKeyedSubscript:AUSM::kFactoryPresetChannelOverridesKey];
            }

            if (v33 == 1)
            {
              applesauce::CF::ArrayRef::ArrayRef(&v31, v32);
              v11 = applesauce::CF::ArrayRef::operator->(&v31);
              if (applesauce::CF::ArrayRef_proxy::get_size(*v11))
              {
                v12 = applesauce::CF::ArrayRef::operator->(&v31);
                applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&v30, *v12, 0);
                v13 = [v30 mutableCopy];
                v14 = [&unk_1F595D218 stringValue];
                v47[0] = v14;
                v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:1];

                v28 = 0u;
                v29 = 0u;
                v26 = 0u;
                v27 = 0u;
                v16 = [v13 allKeys];
                v17 = [v16 countByEnumeratingWithState:&v26 objects:v46 count:16];
                if (v17)
                {
                  v18 = *v27;
                  do
                  {
                    for (i = 0; i != v17; ++i)
                    {
                      if (*v27 != v18)
                      {
                        objc_enumerationMutation(v16);
                      }

                      v20 = *(*(&v26 + 1) + 8 * i);
                      if (([v15 containsObject:v20] & 1) == 0)
                      {
                        [v13 removeObjectForKey:v20];
                      }
                    }

                    v17 = [v16 countByEnumeratingWithState:&v26 objects:v46 count:16];
                  }

                  while (v17);
                }

                v45 = v13;
                v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
                [v9 setObject:v21 forKeyedSubscript:AUSM::kFactoryPresetGlobalPropertiesKey];

                applesauce::CF::DictionaryRef::~DictionaryRef(&v30);
              }

              applesauce::CF::ArrayRef::~ArrayRef(&v31);
            }

            (*(*this + 288))(this, v9);
            ausdk::AUBase::SetAFactoryPresetAsCurrent(this, buf);

            std::optional<applesauce::CF::ArrayRef>::~optional(&v32);
            std::optional<applesauce::CF::ArrayRef>::~optional(&v34);
            if (*&v41[2])
            {
              CFRelease(*&v41[2]);
            }
          }
        }
      }
    }
  }
}

void sub_1DDCDBA78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, const void *a18, const void *a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  applesauce::CF::DictionaryRef::~DictionaryRef(&a18);
  applesauce::CF::ArrayRef::~ArrayRef(&a19);

  std::optional<applesauce::CF::ArrayRef>::~optional(&a20);
  std::optional<applesauce::CF::ArrayRef>::~optional(&a22);
  std::pair<AUPreset,applesauce::CF::DictionaryRef>::~pair(&a27);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2::RefreshXTCTuningParameters(AUSpatialMixerV2 *this)
{
  v120 = *MEMORY[0x1E69E9840];
  v94 = 0;
  FilterLength = 0;
  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&cf, this + 4064);
  v3 = cf;
  if (cf)
  {
    CFRetain(cf);
    v91 = v3;
    v4 = atomic_load(this + 3904);
    IR::IRDataAttributes::IRDataAttributes(v96, v3, 128, (v4 & 1) == 0, 2, 0, 48000.0);
    CFRelease(v3);
    v6 = IR::IRDataLoader::instance(v5);
    v7 = MEMORY[0x1E12BBBE0](v6, v96);
    if (v7)
    {
      v8 = IR::IRDataLoader::instance(v7);
      IR::IRDataLoader::getUserData(&v115, v8, v96);
      v9 = v94;
      v94 = v115;
      v115 = v9;
      if (v9)
      {
        CFRelease(v9);
      }

      v10 = IR::IRDataLoader::instance(v9);
      FilterLength = IR::IRDataLoader::getFilterLength(v10, v96);
    }

    if (v110[0])
    {
      CFRelease(v110[0]);
    }

    if (v105)
    {
      CFRelease(v105);
    }

    if (v102)
    {
      CFRelease(v102);
    }

    if (v96[0])
    {
      CFRelease(v96[0]);
    }
  }

  else if (*(this + 6797) == 1)
  {
    IR::IRDataLoader::instance(v2);
    UserData = IR::IRDataLoader::getUserData();
    v94 = v96[0];
    IR::IRDataLoader::instance(UserData);
    FilterLength = IR::IRDataLoader::getFilterLength();
  }

  v12 = *(this + 1232);
  if (v12)
  {
    v13 = *(v12 + 784) != 0;
    v14 = *(v12 + 57);
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v15 = v94;
  if (v94)
  {
    v16 = applesauce::CF::details::at_key<__CFString const*>(v94, @"XTCSpeakerSpan");
    if (!v16 || (v17 = applesauce::CF::convert_as<float,0>(v16), !HIDWORD(v17)))
    {
      v18 = *(this + 425);
      if (!v18 || (v19 = applesauce::CF::details::at_key<char const(&)[12]>(v18, "SpeakerSpan")) == 0 || (v17 = applesauce::CF::convert_as<float,0>(v19), !HIDWORD(v17)))
      {
        LODWORD(v17) = 1101004800;
      }
    }

    LODWORD(v115) = v17;
    v29 = applesauce::CF::details::at_key<__CFString const*>(v15, @"XTCRegularization");
    if (!v29 || (v30 = applesauce::CF::convert_as<float,0>(v29), !HIDWORD(v30)))
    {
      v31 = *(this + 425);
      if (!v31 || (v32 = applesauce::CF::details::at_key<char const(&)[15]>(v31, "Regularization")) == 0 || (v30 = applesauce::CF::convert_as<float,0>(v32), !HIDWORD(v30)))
      {
        LODWORD(v30) = 1086324736;
      }
    }

    HIDWORD(v115) = v30;
    v33 = applesauce::CF::details::at_key<__CFString const*>(v15, @"XTCConstraint");
    if (v33 && (v34 = applesauce::CF::convert_as<float,0>(v33), HIDWORD(v34)))
    {
      LODWORD(v116) = v34;
      v38 = v34;
    }

    else
    {
      v35 = *(this + 425);
      if (!v35 || (v36 = applesauce::CF::details::at_key<char const(&)[11]>(v35, "Constraint")) == 0 || (v37 = applesauce::CF::convert_as<float,0>(v36), v38 = v37, !HIDWORD(v37)))
      {
        v38 = 1107296256;
      }

      LODWORD(v116) = v38;
    }

    v39 = applesauce::CF::details::at_key<__CFString const*>(v15, @"XTCPostTimbralFrequency");
    if (v39 && (v40 = applesauce::CF::convert_as<float,0>(v39), HIDWORD(v40)))
    {
      HIDWORD(v116) = v40;
      v44 = v40;
    }

    else
    {
      v41 = *(this + 425);
      if (!v41 || (v42 = applesauce::CF::details::at_key<char const(&)[21]>(v41, "PostTimbralFrequency")) == 0 || (v43 = applesauce::CF::convert_as<float,0>(v42), v44 = v43, !HIDWORD(v43)))
      {
        v44 = 1186693120;
      }

      HIDWORD(v116) = v44;
    }

    v45 = applesauce::CF::details::at_key<__CFString const*>(v15, @"XTCPostTimbralBlend");
    v82 = v14;
    if (v45 && (v46 = applesauce::CF::convert_as<float,0>(v45), HIDWORD(v46)))
    {
      v117 = v46;
      v50 = v46;
    }

    else
    {
      v47 = *(this + 425);
      if (!v47 || (v48 = applesauce::CF::details::at_key<char const(&)[17]>(v47, "PostTimbralBlend")) == 0 || (v49 = applesauce::CF::convert_as<float,0>(v48), v50 = v49, !HIDWORD(v49)))
      {
        v50 = 1120403456;
      }

      v117 = v50;
    }

    v51 = applesauce::CF::details::at_key<__CFString const*>(v15, @"XTCCrossover");
    v81 = v13;
    if (v51 && (v52 = applesauce::CF::convert_as<float,0>(v51), HIDWORD(v52)))
    {
      v118 = v52;
      v56 = v52;
    }

    else
    {
      v53 = *(this + 425);
      if (!v53 || (v54 = applesauce::CF::details::at_key<char const(&)[10]>(v53, "Crossover")) == 0 || (v55 = applesauce::CF::convert_as<float,0>(v54), v56 = v55, !HIDWORD(v55)))
      {
        v56 = 1175232512;
      }

      v118 = v56;
    }

    v57 = applesauce::CF::details::at_key<__CFString const*>(v15, @"XTCPostGain");
    if (v57 && (v58 = applesauce::CF::convert_as<float,0>(v57), HIDWORD(v58)))
    {
      v119 = v58;
      v62 = v58;
    }

    else
    {
      v59 = *(this + 425);
      if (!v59 || (v60 = applesauce::CF::details::at_key<char const(&)[9]>(v59, "PostGain")) == 0 || (v61 = applesauce::CF::convert_as<float,0>(v60), v62 = v61, !HIDWORD(v61)))
      {
        v62 = 0;
      }

      v119 = v62;
    }

    if (applesauce::CF::details::has_key<__CFString const*>(v15, @"CounteractRotationShader"))
    {
      CFRetain(v15);
      v90 = v15;
      std::string::basic_string[abi:ne200100]<0>(v96, "CounteractRotationShader");
      BooleanFromDictionary = IR::IRData::getBooleanFromDictionary();
      if ((v97[7] & 0x80000000) != 0)
      {
        operator delete(v96[0]);
      }

      if (v90)
      {
        CFRelease(v90);
      }
    }

    else
    {
      v63 = *(this + 425);
      if (v63)
      {
        v64 = applesauce::CF::details::find_at_key_or_optional<BOOL,char const(&)[25]>(v63, "CounteractRotationShader");
        v65 = (v64 < 0x100u) | v64;
      }

      else
      {
        v65 = 1;
      }

      BooleanFromDictionary = v65;
    }

    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float &>(v96, "SpeakerSpan", &v115);
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float &>(v97, "Regularization", &v115 + 1);
    applesauce::CF::TypeRef::TypeRef(&v98, "Constraint");
    valuePtr = v38;
    if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    applesauce::CF::TypeRef::TypeRef(&v100, "PostTimbralFrequency");
    valuePtr = v44;
    if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
    {
      v77 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v77, "Could not construct");
    }

    applesauce::CF::TypeRef::TypeRef(&v102, "PostTimbralBlend");
    valuePtr = v50;
    if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
    {
      v78 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v78, "Could not construct");
    }

    applesauce::CF::TypeRef::TypeRef(&v104, "Crossover");
    valuePtr = v56;
    v105 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    if (!v105)
    {
      v79 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v79, "Could not construct");
    }

    applesauce::CF::TypeRef::TypeRef(&v106, "PostGain");
    valuePtr = v62;
    if (!CFNumberCreate(0, kCFNumberFloatType, &valuePtr))
    {
      v80 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v80, "Could not construct");
    }

    applesauce::CF::TypeRef::TypeRef(&v108, "CounteractRotationShader");
    v66 = *MEMORY[0x1E695E4D0];
    v67 = *MEMORY[0x1E695E4C0];
    if (BooleanFromDictionary)
    {
      v68 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v68 = *MEMORY[0x1E695E4C0];
    }

    v109 = v68;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],int &>(v110, &FilterLength);
    applesauce::CF::TypeRef::TypeRef(&v111, "MagicUnicorn");
    if (v82)
    {
      v69 = v66;
    }

    else
    {
      v69 = v67;
    }

    v112 = v69;
    applesauce::CF::TypeRef::TypeRef(v113, "ReferenceData");
    if (v81)
    {
      v70 = v66;
    }

    else
    {
      v70 = v67;
    }

    v114 = v70;
    v89[0] = v96;
    v89[1] = 11;
    CFDictionaryRef = applesauce::CF::details::make_CFDictionaryRef(v89);
    v72 = *(this + 425);
    *(this + 425) = CFDictionaryRef;
    if (v72)
    {
      CFRelease(v72);
    }

    for (i = 0; i != -176; i -= 16)
    {
      v74 = *(&v114 + i);
      if (v74)
      {
        CFRelease(v74);
      }

      v75 = *&v113[i];
      if (v75)
      {
        CFRelease(v75);
      }
    }
  }

  else
  {
    LODWORD(v89[0]) = 1101004800;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float>(v96, v89);
    valuePtr = 1086324736;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float>(v97, &valuePtr);
    v88 = 1107296256;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float>(&v98, &v88);
    v87 = 1186693120;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float>(&v100, &v87);
    v86 = 1120403456;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[17],float>(&v102, "PostTimbralBlend", &v86);
    v85 = 1175232512;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[10],float>(&v104, &v85);
    v84 = 0;
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[9],float>(&v106, &v84);
    applesauce::CF::TypeRef::TypeRef(&v108, "CounteractRotationShader");
    v20 = *MEMORY[0x1E695E4D0];
    v109 = *MEMORY[0x1E695E4D0];
    applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],int &>(v110, &FilterLength);
    applesauce::CF::TypeRef::TypeRef(&v111, "MagicUnicorn");
    v21 = *MEMORY[0x1E695E4C0];
    if (v14)
    {
      v22 = v20;
    }

    else
    {
      v22 = *MEMORY[0x1E695E4C0];
    }

    v112 = v22;
    applesauce::CF::TypeRef::TypeRef(v113, "ReferenceData");
    if (v13)
    {
      v23 = v20;
    }

    else
    {
      v23 = v21;
    }

    v114 = v23;
    v115 = v96;
    v116 = 11;
    v24 = applesauce::CF::details::make_CFDictionaryRef(&v115);
    v25 = *(this + 425);
    *(this + 425) = v24;
    if (v25)
    {
      CFRelease(v25);
    }

    for (j = 0; j != -176; j -= 16)
    {
      v27 = *(&v114 + j);
      if (v27)
      {
        CFRelease(v27);
      }

      v28 = *&v113[j];
      if (v28)
      {
        CFRelease(v28);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_1DDCDC538(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, int a16, __int16 a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

applesauce::CF::URLRef *applesauce::CF::URLRef::URLRef(applesauce::CF::URLRef *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  *this = cf;
  return this;
}

BOOL AUSpatialMixerV2::InitializeDynamicXTC(uint64_t a1, CFURLRef *a2)
{
  v4 = CFURLGetString(*a2);
  v51.length = CFStringGetLength(v4);
  v51.location = 0;
  v5 = CFStringFindWithOptions(v4, @"Tuning_Mode_HRTFXTC_Reference_Data", v51, 1uLL, &result);
  if (v5)
  {
    v6 = *a2;
    if (*a2)
    {
      CFRetain(*a2);
    }

    v36 = v6;
    IR::IRDataAttributes::IRDataAttributes(&cf, v6, 128, 1, 2, 0, 48000.0);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a1 + 3408);
    if (v7)
    {
      v8 = *(a1 + 3400);
      *(a1 + 3400) = v7;
      CFRetain(v7);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v9 = atomic_load((a1 + 3828));
    v10 = *(a1 + 2992);
    applesauce::CF::StringRef::get_ns(v10);
    objc_claimAutoreleasedReturnValue();
    if (v9)
    {
      v11 = MEMORY[0x1E69E97D0];
    }

    else
    {
      v11 = MEMORY[0x1E69E9750];
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = ___ZN16AUSpatialMixerV220InitializeDynamicXTCEN10applesauce2CF6URLRefE_block_invoke_139;
    v22[3] = &__block_descriptor_200_ea8_40c27_ZTSN2IR16IRDataAttributesE192c28_ZTSN10applesauce2CF6URLRefE_e5_v8__0l;
    v22[4] = a1;
    v12 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v23 = v12;
    v24 = v38;
    v25 = v39;
    v26 = v40;
    v27 = v41;
    v13 = v42;
    if (v42)
    {
      CFRetain(v42);
    }

    v28 = v13;
    v29 = v43;
    v14 = v44;
    if (v44)
    {
      CFRetain(v44);
    }

    v30 = v14;
    v31[0] = v45[0];
    *(v31 + 9) = *(v45 + 9);
    v15 = v46;
    if (v46)
    {
      CFRetain(v46);
    }

    v32 = v15;
    v33 = v47;
    v34 = v48;
    v16 = *a2;
    if (v16)
    {
      CFRetain(v16);
    }

    v35 = v16;
    v11(v10, v22);

    if (v35)
    {
      CFRelease(v35);
    }

    if (v32)
    {
      CFRelease(v32);
    }

    if (v30)
    {
      CFRelease(v30);
    }

    if (v28)
    {
      CFRelease(v28);
    }

    if (v23)
    {
      CFRelease(v23);
    }

    if (v46)
    {
      CFRelease(v46);
    }

    if (v44)
    {
      CFRelease(v44);
    }

    if (v42)
    {
      CFRelease(v42);
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    v17 = atomic_load((a1 + 3828));
    if (v17)
    {
      v18 = MEMORY[0x1E69E97D0];
    }

    else
    {
      v18 = MEMORY[0x1E69E9750];
    }

    v19 = *(a1 + 2992);
    v20 = applesauce::CF::StringRef::get_ns(v19);
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = ___ZN16AUSpatialMixerV220InitializeDynamicXTCEN10applesauce2CF6URLRefE_block_invoke;
    v49[3] = &__block_descriptor_40_e5_v8__0l;
    v49[4] = a1;
    v18(v20, v49);
  }

  return v5 != 0;
}

void AUSM::AppleSauceCFWithMutex<__CFURL const*>::store(uint64_t a1, const void **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    CFRetain(v5);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  std::mutex::unlock((a1 + 8));
}

pthread_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(uint64_t a1)
{
  result = pthread_self();
  v3 = result;
  if (atomic_load_explicit(a1, memory_order_acquire) == result)
  {
    v4 = *(a1 + 8) + 1;
  }

  else
  {
    result = caulk::pooled_semaphore_mutex::_lock((a1 + 12));
    atomic_store(v3, a1);
    v4 = 1;
  }

  *(a1 + 8) = v4;
  return result;
}

uint64_t AUSpatialMixerV2::Output(AUSpatialMixerV2 *this)
{
  result = ausdk::AUScope::GetElement((this + 128), 0);
  if (!result)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

void sub_1DDCDCCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12BD160](v16, v15);
  _Unwind_Resume(a1);
}

void sub_1DDCDCDCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12BD160](v16, v15);
  _Unwind_Resume(a1);
}

pthread_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(uint64_t a1)
{
  result = pthread_self();
  if (atomic_load_explicit(a1, memory_order_acquire) == result && (v3 = *(a1 + 8), v3 > 0))
  {
    v4 = v3 - 1;
    *(a1 + 8) = v4;
    if (!v4)
    {
      atomic_store(0, a1);

      return caulk::pooled_semaphore_mutex::_unlock((a1 + 12));
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AUSpatialMixerV2::LoadDynamicProcessorPreset(AUSpatialMixerV2 *this, int a2, CFURLRef *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!*a3)
  {
    return 0;
  }

  v5 = *(this + 464);
  v6 = *(this + 465);
  if (v5 != v6)
  {
    while (*(*v5 + 120) != a2)
    {
      if (++v5 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  if (v5 == v6)
  {
LABEL_17:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v12 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v21 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v21 = *v21;
      }

      v22 = "????";
      if (a2 == 1818521197)
      {
        v22 = "ldnm";
      }

      *__p = 136315906;
      *&__p[4] = v21;
      *&__p[14] = "FindDynamicProcessor";
      *&__p[12] = 2080;
      if (a2 == 1667658347)
      {
        v23 = "cfrk";
      }

      else
      {
        v23 = v22;
      }

      *&__p[22] = 2080;
      *&__p[24] = v23;
      v34 = 1024;
      v35 = a2;
      _os_log_debug_impl(&dword_1DDB85000, v12, OS_LOG_TYPE_DEBUG, "[%s|%s] can't find dynamics processor %s (%u).", __p, 0x26u);
    }

    return 4294967246;
  }

  v7 = *v5;
  if (!*v5)
  {
    return 4294967246;
  }

  applesauce::CF::get_filesystem_path(&string, *a3);
  v8 = string;
  if (!string)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(string);
  std::vector<char>::vector[abi:ne200100](__p, MaximumSizeOfFileSystemRepresentation);
  FileSystemRepresentation = CFStringGetFileSystemRepresentation(v8, *__p, *&__p[8] - *__p);
  if (FileSystemRepresentation)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, *__p);
  }

  if (*__p)
  {
    *&__p[8] = *__p;
    operator delete(*__p);
  }

  if (FileSystemRepresentation)
  {
    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v28, v30.__r_.__value_.__l.__data_, v30.__r_.__value_.__l.__size_);
      goto LABEL_25;
    }
  }

  else
  {
    memset(&v30, 0, sizeof(v30));
  }

  v28 = v30;
LABEL_25:
  AUSM::loadAUPreset(&cf, &v28);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  v14 = cf;
  if (!cf)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v20 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v24 = (v7 + 72);
      if (*(v7 + 95) < 0)
      {
        v24 = *v24;
      }

      *__p = 136315394;
      *&__p[4] = "loadPreset";
      *&__p[12] = 2080;
      *&__p[14] = v24;
      _os_log_error_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "%s: null dictionary ref for %s", __p, 0x16u);
    }

    v11 = 4294967246;
    goto LABEL_54;
  }

  CFRetain(cf);
  v15 = *(this + 84);
  v16 = *(v7 + 124);
  if (v16 == 1)
  {
    v11 = AUSM::AUFXWrapper::uninitialize(v7);
    if (v11)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v17 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v26 = (v7 + 72);
        if (*(v7 + 95) < 0)
        {
          v26 = *v26;
        }

        *__p = 136315650;
        *&__p[4] = "loadPreset";
        *&__p[12] = 1024;
        *&__p[14] = v11;
        *&__p[18] = 2080;
        *&__p[20] = v26;
        _os_log_error_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "%s: error %d uninitalizing %s", __p, 0x1Cu);
      }

      goto LABEL_52;
    }
  }

  inData = v14;
  if (!*v7)
  {
    v11 = 4294900552;
    goto LABEL_49;
  }

  v11 = AudioUnitSetProperty(*v7, 0, 0, 0, &inData, 8u);
  if (v11)
  {
LABEL_49:
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v17 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_52;
    }

    v25 = (v7 + 72);
    if (*(v7 + 95) < 0)
    {
      v25 = *v25;
    }

    *__p = 136315650;
    *&__p[4] = "loadPreset";
    *&__p[12] = 1024;
    *&__p[14] = v11;
    *&__p[18] = 2080;
    *&__p[20] = v25;
    v19 = "%s: error %d setting preset on %s";
    goto LABEL_75;
  }

  if (!v16 || (v11 = AUSM::AUFXWrapper::initialize(v7, v15), !v11))
  {
    v11 = 0;
    goto LABEL_53;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v17 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v18 = (v7 + 72);
    if (*(v7 + 95) < 0)
    {
      v18 = *v18;
    }

    *__p = 136315650;
    *&__p[4] = "loadPreset";
    *&__p[12] = 1024;
    *&__p[14] = v11;
    *&__p[18] = 2080;
    *&__p[20] = v18;
    v19 = "%s: error %d initalizing %s; processing disabled";
LABEL_75:
    _os_log_error_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, v19, __p, 0x1Cu);
  }

LABEL_52:

LABEL_53:
  CFRelease(v14);
LABEL_54:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (string)
  {
    CFRelease(string);
  }

  return v11;
}

void sub_1DDCDD46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a25);
  _Unwind_Resume(a1);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::DictionaryRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFDictionaryGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

const void *applesauce::CF::details::at_key<__CFString const*&>(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      return CFDictionaryGetValue(theDict, a2);
    }
  }

  return result;
}

const void *applesauce::CF::get_filesystem_path(applesauce::CF *this, CFURLRef anURL)
{
  result = CFURLCopyFileSystemPath(anURL, kCFURLPOSIXPathStyle);
  *this = result;
  if (result)
  {
    v4 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }
  }

  return result;
}

void sub_1DDCDD694(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(v1);
  _Unwind_Resume(a1);
}

uint64_t AUSM::AUFXWrapper::uninitialize(OpaqueAudioComponentInstance **this)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *this;
  if (!v2)
  {
    return 4294900552;
  }

  v3 = AudioUnitUninitialize(v2);
  *(this + 124) = 0;
  if (v3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v4 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = this + 9;
      if (*(this + 95) < 0)
      {
        v6 = *v6;
      }

      v7 = 136315650;
      v8 = "uninitialize";
      v9 = 1024;
      v10 = v3;
      v11 = 2080;
      v12 = v6;
      _os_log_error_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_ERROR, "%s: error %d uninitializing %s", &v7, 0x1Cu);
    }
  }

  return v3;
}

uint64_t AUSM::AUFXWrapper::initialize(AUSM::AUFXWrapper *this, int a2)
{
  v36 = *MEMORY[0x1E69E9840];
  Property = 4294900552;
  v4 = *this;
  if (v4)
  {
    inData = a2;
    v6 = AudioUnitSetProperty(v4, 0xEu, 0, 0, &inData, 4u);
    if (v6)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v7 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v17 = (this + 72);
        if (*(this + 95) < 0)
        {
          v17 = *v17;
        }

        outData = 136315906;
        v32 = "initialize";
        v33 = 1024;
        *v34 = v6;
        *&v34[4] = 1024;
        *&v34[6] = inData;
        LOWORD(v35[0]) = 2080;
        *(v35 + 2) = v17;
        _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%s: error %d setting the maximum frames per slice = %u for %s", &outData, 0x22u);
      }

LABEL_11:

      *(this + 124) = 0;
      return v6;
    }

    v6 = AudioUnitInitialize(*this);
    if (v6)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v7 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v18 = (this + 72);
        if (*(this + 95) < 0)
        {
          v18 = *v18;
        }

        outData = 136315394;
        v32 = "initialize";
        v33 = 2080;
        *v34 = v18;
        _os_log_error_impl(&dword_1DDB85000, v7, OS_LOG_TYPE_ERROR, "%s: error initializing %s", &outData, 0x16u);
      }

      goto LABEL_11;
    }

    if (*(this + 32) != 2)
    {
LABEL_39:
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v21 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = (this + 72);
        if (*(this + 95) < 0)
        {
          v22 = *v22;
        }

        outData = 136315394;
        v32 = "initialize";
        v33 = 2080;
        *v34 = v22;
        _os_log_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_INFO, "%s: initialized %s", &outData, 0x16u);
      }

      v6 = 0;
      *(this + 124) = 1;
      return v6;
    }

    ioDataSize = 40;
    if (!*this || (Property = AudioUnitGetProperty(*this, 8u, 1u, 0, &outData, &ioDataSize), Property) || ioDataSize != 40)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v16 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = (this + 72);
        if (*(this + 95) < 0)
        {
          v23 = *v23;
        }

        *__x = 136315650;
        *&__x[4] = "initialize";
        v27 = 1024;
        v28 = Property;
        v29 = 2080;
        v30 = v23;
        _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "%s: error %d getting input stream format of %s", __x, 0x1Cu);
      }

      *(this + 124) = 0;
      return Property;
    }

    v9 = v33;
    v11 = v35[0];
    v10 = v35[1];
    *(this + 53) = v35[1];
    std::vector<float>::resize(this + 17, (v10 * a2));
    v12 = *(this + 20);
    v13 = *(this + 21);
    v14 = (16 * v10) | 8;
    __x[0] = 0;
    v15 = v13 - v12;
    if (v14 <= v15)
    {
      if (v14 < v15)
      {
        *(this + 21) = v12 + v14;
      }
    }

    else
    {
      std::vector<char>::__append((this + 160), v14 - v15, __x);
      v12 = *(this + 20);
    }

    *v12 = v10;
    *__x = 0;
    std::vector<float *>::assign(this + 23, v10, __x);
    if (!v11)
    {
      goto LABEL_35;
    }

    if ((v9 & 0x20) != 0)
    {
      v19 = 1;
    }

    else
    {
      v19 = v10;
      if (!v10)
      {
LABEL_35:
        v20 = 0;
LABEL_38:
        AUSM::ABLBuffer::setupBufferList((this + 136), v10, (v9 & 0x20) == 0, a2, v20);
        goto LABEL_39;
      }
    }

    v20 = v11 / v19;
    goto LABEL_38;
  }

  return Property;
}

void *std::vector<float *>::assign(void **a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v7 = v5 >> 2;
    if (v5 >> 2 <= a2)
    {
      v7 = a2;
    }

    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    std::vector<float *>::__vallocate[abi:ne200100](a1, v8);
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = vdupq_n_s64(v11 - 1);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_1DE095160)));
      if (v15.i8[0])
      {
        *(result + v12) = v13;
      }

      if (v15.i8[4])
      {
        *(result + v12 + 1) = v13;
      }

      v12 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  v16 = a2 >= v10;
  v17 = a2 - v10;
  if (v17 != 0 && v16)
  {
    v18 = 0;
    v19 = a1[1];
    v20 = *a3;
    v21 = (8 * a2 - (v9 - result) - 8) >> 3;
    v22 = vdupq_n_s64(v21);
    do
    {
      v23 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v18), xmmword_1DE095160)));
      if (v23.i8[0])
      {
        v19[v18] = v20;
      }

      if (v23.i8[4])
      {
        v19[v18 + 1] = v20;
      }

      v18 += 2;
    }

    while (((v21 + 2) & 0x3FFFFFFFFFFFFFFELL) != v18);
    v24 = &v19[v17];
  }

  else
  {
    v24 = *a1 + 8 * a2;
  }

  a1[1] = v24;
  return result;
}

int *AUSM::ABLBuffer::setupBufferList(AUSM::ABLBuffer *this, unsigned int a2, int a3, int a4, int a5)
{
  *(this + 18) = a5;
  v7 = a5 * a4;
  if (a3)
  {
    result = *(this + 3);
    *result = 1;
    *(result + 2) = *this;
    result[2] = a2;
    result[3] = v7;
  }

  else
  {
    LODWORD(v9) = *(this + 19);
    if (v9 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = v9;
    }

    result = *(this + 3);
    *result = v9;
    if (v9)
    {
      v10 = 0;
      v11 = *this;
      v12 = result + 4;
      do
      {
        *v12 = v11 + v10;
        *(v12 - 2) = 1;
        *(v12 - 1) = v7;
        v10 += v7;
        v12 += 2;
        --v9;
      }

      while (v9);
    }
  }

  v13 = *(this + 7) - *(this + 6);
  if (v13 >= 1)
  {
    bzero(*(this + 6), v13);
    result = *(this + 3);
  }

  if (a5 == 4 && result[2] == 1)
  {
    v14 = *result;
    v15 = *(this + 6);
    if (*result >= ((*(this + 7) - v15) >> 3))
    {
      v14 = (*(this + 7) - v15) >> 3;
    }

    if (v14)
    {
      v16 = 0;
      v17 = 4;
      do
      {
        *(v15 + 8 * v16++) = *&result[v17];
        result = *(this + 3);
        LODWORD(v18) = *result;
        v15 = *(this + 6);
        v19 = (*(this + 7) - v15) >> 3;
        if (*result >= v19)
        {
          v18 = v19;
        }

        else
        {
          v18 = v18;
        }

        v17 += 4;
      }

      while (v16 < v18);
    }
  }

  return result;
}

void ___ZN16AUSpatialMixerV220InitializeDynamicXTCEN10applesauce2CF6URLRefE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = atomic_load((v1 + 3008));
  if (v2)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v3 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = (v1 + 3752);
      if (*(v1 + 3775) < 0)
      {
        v4 = *v4;
      }

      v5 = 136315394;
      v6 = v4;
      v7 = 2080;
      v8 = "InitializeDynamicXTC_block_invoke";
      _os_log_debug_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "[%s|%s] update dropped", &v5, 0x16u);
    }
  }

  else
  {

    std::unique_ptr<AUSpatialMixerV2DynamicXTCFilter>::reset[abi:ne200100]((v1 + 9856), 0);
  }
}

void ___ZN16AUSpatialMixerV220InitializeDynamicXTCEN10applesauce2CF6URLRefE_block_invoke_139(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v2 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v6 = (v1 + 3752);
    if (*(v1 + 3775) < 0)
    {
      v6 = *v6;
    }

    *buf = 136315394;
    *&buf[4] = v6;
    *&buf[12] = 2080;
    *&buf[14] = "InitializeDynamicXTC_block_invoke";
    _os_log_debug_impl(&dword_1DDB85000, v2, OS_LOG_TYPE_DEBUG, "[%s|%s] dispatched update for dynamic XTC filter generation:", buf, 0x16u);
  }

  v3 = atomic_load((v1 + 3008));
  if ((v3 & 1) == 0)
  {
    atomic_load((v1 + 3904));
    if (ausdk::AUScope::GetElement((v1 + 128), 0))
    {
      operator new();
    }

    ausdk::Throw(0xFFFFD583);
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = (v1 + 3752);
    if (*(v1 + 3775) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = "InitializeDynamicXTC_block_invoke";
    _os_log_debug_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEBUG, "[%s|%s] update dropped", buf, 0x16u);
  }
}

void sub_1DDCDF3AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void **a13, void **a14, void **a15, void **a16, char a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, char a37, int a38, __int16 a39, char a40, char a41, int a42, const void *a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  applesauce::CF::ArrayRef::~ArrayRef(&a26);
  applesauce::CF::TypeRef::~TypeRef((v61 - 192));
  applesauce::CF::DictionaryRef::~DictionaryRef((v61 - 160));
  IR::IRDataAttributes::~IRDataAttributes(&a54);
  applesauce::CF::URLRef::~URLRef(&a43);
  if (*(v59 + 1031) < 0)
  {
    operator delete(*a13);
  }

  if (*(v59 + 1007) < 0)
  {
    operator delete(*a16);
  }

  std::unique_ptr<VBAP>::reset[abi:ne200100]((v59 + 976), 0);
  v63 = *(v59 + 960);
  *(v59 + 960) = 0;
  if (v63)
  {
    (*(v59 + 968))();
  }

  v64 = *(v59 + 944);
  *(v59 + 944) = 0;
  if (v64)
  {
    (*(v59 + 952))();
  }

  applesauce::CF::DictionaryRef::~DictionaryRef((v59 + 936));
  v65 = *a10;
  if (*a10)
  {
    *(v59 + 920) = v65;
    operator delete(v65);
  }

  v66 = *a14;
  if (*a14)
  {
    *(v59 + 896) = v66;
    operator delete(v66);
  }

  v67 = *a15;
  if (*a15)
  {
    *(v59 + 872) = v67;
    operator delete(v67);
  }

  *(v61 - 160) = v60;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v61 - 160));
  v68 = *(v59 + 832);
  if (v68)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v68);
  }

  *(v61 - 160) = a12;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100]((v61 - 160));
  v69 = *(v59 + 792);
  if (v69)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v69);
  }

  v70 = *(v59 + 776);
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  v71 = *(v59 + 744);
  if (v71)
  {
    *(v59 + 752) = v71;
    operator delete(v71);
  }

  v72 = *(v59 + 704);
  if (v72)
  {
    *(v59 + 712) = v72;
    operator delete(v72);
  }

  v73 = *(v59 + 664);
  if (v73)
  {
    *(v59 + 672) = v73;
    operator delete(v73);
  }

  v74 = *(v59 + 624);
  if (v74)
  {
    *(v59 + 632) = v74;
    operator delete(v74);
  }

  MoorePenrose::~MoorePenrose((v59 + 64));
  MEMORY[0x1E12BD160](v59, 0x10F2C40D46768E9);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_40c27_ZTSN2IR16IRDataAttributesE192c28_ZTSN10applesauce2CF6URLRefE(uint64_t a1)
{
  v2 = *(a1 + 192);
  if (v2)
  {
    CFRelease(v2);
  }

  IR::IRDataAttributes::~IRDataAttributes((a1 + 40));
}

void *__copy_helper_block_ea8_40c27_ZTSN2IR16IRDataAttributesE192c28_ZTSN10applesauce2CF6URLRefE(uint64_t a1, uint64_t a2)
{
  result = IR::IRDataAttributes::IRDataAttributes((a1 + 40), (a2 + 40));
  v5 = *(a2 + 192);
  if (v5)
  {
    result = CFRetain(v5);
  }

  *(a1 + 192) = v5;
  return result;
}

uint64_t *std::unique_ptr<AUSpatialMixerV2DynamicXTCFilter>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 1031) < 0)
    {
      operator delete(*(v2 + 1008));
    }

    if (*(v2 + 1007) < 0)
    {
      operator delete(*(v2 + 984));
    }

    v3 = *(v2 + 976);
    *(v2 + 976) = 0;
    if (v3)
    {
      VBAP::~VBAP(v3);
      MEMORY[0x1E12BD160]();
    }

    v4 = *(v2 + 960);
    *(v2 + 960) = 0;
    if (v4)
    {
      (*(v2 + 968))();
    }

    v5 = *(v2 + 944);
    *(v2 + 944) = 0;
    if (v5)
    {
      (*(v2 + 952))();
    }

    v6 = *(v2 + 936);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(v2 + 912);
    if (v7)
    {
      *(v2 + 920) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 888);
    if (v8)
    {
      *(v2 + 896) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 864);
    if (v9)
    {
      *(v2 + 872) = v9;
      operator delete(v9);
    }

    v17 = (v2 + 840);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v17);
    v10 = *(v2 + 832);
    if (v10)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    v17 = (v2 + 800);
    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&v17);
    v11 = *(v2 + 792);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = *(v2 + 776);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v13 = *(v2 + 744);
    if (v13)
    {
      *(v2 + 752) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 704);
    if (v14)
    {
      *(v2 + 712) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 664);
    if (v15)
    {
      *(v2 + 672) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 624);
    if (v16)
    {
      *(v2 + 632) = v16;
      operator delete(v16);
    }

    MoorePenrose::~MoorePenrose((v2 + 64));

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[13],int &>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "FilterLength");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCDFB30(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[12],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "SpeakerSpan");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCDFC04(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[15],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "Regularization");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCDFCD8(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[11],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "Constraint");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCDFDAC(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[21],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "PostTimbralFrequency");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCDFE80(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[10],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "Crossover");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCDFF54(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

applesauce::CF::TypeRef *applesauce::CF::TypeRefPair::TypeRefPair<char const(&)[9],float>(applesauce::CF::TypeRef *a1, int *a2)
{
  applesauce::CF::TypeRef::TypeRef(a1, "PostGain");
  valuePtr = *a2;
  v4 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
  *(a1 + 1) = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
  }

  return a1;
}

void sub_1DDCE0028(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(_BYTE *a1, CFDictionaryRef theDict, const void *a3)
{
  v4 = applesauce::CF::details::at_key<__CFString const*&>(theDict, a3);
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  CFRetain(v4);
  v6 = CFGetTypeID(v5);
  if (v6 != CFArrayGetTypeID())
  {
    CFRelease(v5);
LABEL_5:
    v7 = 0;
    *a1 = 0;
    goto LABEL_6;
  }

  *a1 = v5;
  v7 = 1;
LABEL_6:
  a1[8] = v7;
}

void *applesauce::CF::ArrayRef::operator->(void *result)
{
  if (!*result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

const __CFArray *applesauce::CF::ArrayRef_proxy::get_size(const __CFArray *this)
{
  if (this)
  {
    return CFArrayGetCount(this);
  }

  return this;
}

void *applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(void *a1, CFArrayRef theArray, unint64_t a3)
{
  if (!theArray || CFArrayGetCount(theArray) <= a3 || (ValueAtIndex = CFArrayGetValueAtIndex(theArray, a3)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
  }

  return applesauce::CF::DictionaryRef::from_get(a1, ValueAtIndex);
}

uint64_t std::optional<applesauce::CF::ArrayRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

uint64_t std::pair<AUPreset,applesauce::CF::DictionaryRef>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::vector<IR::FixedIntegerDelay<float>>::resize(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
  v7 = a2 - v6;
  if (a2 <= v6)
  {
    if (a2 < v6)
    {
      v12 = (v5 + 56 * a2);
      while (v4 != v12)
      {
        v4 -= 7;
        std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(v4);
      }

      a1[1] = v12;
    }
  }

  else
  {
    v9 = a1[2];
    if (0x6DB6DB6DB6DB6DB7 * ((v9 - v4) >> 3) < v7)
    {
      if (a2 <= 0x492492492492492)
      {
        v10 = 0xDB6DB6DB6DB6DB6ELL * ((v9 - v5) >> 3);
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if ((0x6DB6DB6DB6DB6DB7 * ((v9 - v5) >> 3)) >= 0x249249249249249)
        {
          v11 = 0x492492492492492;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<IR::FixedIntegerDelay<float>>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v13 = &v4[7 * v7];
    v14 = 56 * a2 - 8 * ((v4 - *a1) >> 3);
    do
    {
      IR::FixedIntegerDelay<float>::FixedIntegerDelay(v4, a3);
      v4 += 7;
      v14 -= 56;
    }

    while (v14);
    a1[1] = v13;
  }
}

void sub_1DDCE0484(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN16AUSpatialMixerV220UpdateAutoModeReverbEbbi_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = atomic_load(v1 + 3008);
  if ((v2 & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v6 = getAUSMV2Log(void)::gLog;
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
    if (v5 < 0)
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v25 = v1 + 3752;
      if (v1[3775] < 0)
      {
        v25 = *v25;
      }

      *buf = 136315394;
      *&buf[4] = v25;
      v31 = 2080;
      v32 = "UpdateAutoModeReverb_block_invoke";
      v10 = "[%s|%s] dispatching update for all InputElements";
      v11 = v6;
      v12 = 22;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_14;
      }

      v8 = v1 + 3752;
      if (v1[3775] < 0)
      {
        v8 = *v8;
      }

      v9 = *(a1 + 40);
      *buf = 136315650;
      *&buf[4] = v8;
      v31 = 2080;
      v32 = "UpdateAutoModeReverb_block_invoke";
      v33 = 1024;
      v34 = v9;
      v10 = "[%s|%s] dispatching update for InputElement #%d:";
      v11 = v6;
      v12 = 28;
    }

    _os_log_debug_impl(&dword_1DDB85000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
LABEL_14:

    v13 = *(a1 + 44);
    v14 = *(a1 + 45);
    v15 = *(a1 + 40);
    v16 = atomic_load(v1 + 3008);
    if (v16)
    {
      return;
    }

    v17 = atomic_load(v1 + 958);
    if (v17 == 4 && v13 != 0)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v20 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v1 + 3752;
        if (v1[3775] < 0)
        {
          v21 = *v21;
        }

        *buf = 136315394;
        *&buf[4] = v21;
        v31 = 2080;
        v32 = "UpdateAutoModeReverbBlock";
        _os_log_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEFAULT, "[%s|%s] updating reverb for HOA output type", buf, 0x16u);
      }

      AUSM::IRManager::updateReverbAttributes(v1 + 886, 1);
      std::mutex::lock((v1 + 8648));
      IR::IRDataAttributes::IRDataAttributes(buf, (v1 + 7616));
      std::mutex::unlock((v1 + 8648));
      IR::DynamicIRProcessor::setIRDataAttributes((v1 + 2104), buf);
    }

    if (v13)
    {
      updated = AUSpatialMixerV2::UpdateAutoModeReverbBus(v1, 1, v15);
      if (!v14)
      {
        goto LABEL_62;
      }
    }

    else
    {
      updated = 0;
      if (!v14)
      {
        goto LABEL_62;
      }
    }

    v22 = AUSpatialMixerV2::UpdateAutoModeReverbBus(v1, 0, v15);
    if (updated && v22)
    {
      std::mutex::lock((v1 + 8648));
      IR::IRDataAttributes::IRDataAttributes(buf, (v1 + 7784));
      std::mutex::unlock((v1 + 8648));
      if (*buf)
      {
        std::mutex::lock((v1 + 8648));
        IR::IRDataAttributes::IRDataAttributes(&v26, (v1 + 8120));
        std::mutex::unlock((v1 + 8648));
        v23 = v26 != 0;
        if (v29)
        {
          CFRelease(v29);
        }

        if (v28)
        {
          CFRelease(v28);
        }

        if (v27)
        {
          CFRelease(v27);
        }

        if (v26)
        {
          CFRelease(v26);
        }
      }

      else
      {
        v23 = 0;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v36)
      {
        CFRelease(v36);
      }

      if (v35)
      {
        CFRelease(v35);
      }

      if (*buf)
      {
        CFRelease(*buf);
      }

      if (v23)
      {
        std::mutex::lock((v1 + 8648));
        IR::IRDataAttributes::IRDataAttributes(buf, (v1 + 8456));
        std::mutex::unlock((v1 + 8648));
        operator new();
      }
    }

    else if (!v22)
    {
      goto LABEL_62;
    }

    (*(*v1 + 592))(v1, 3249);
LABEL_62:
    AUSpatialMixerV2::ReconfigureSharedBuffers(v1, 0, 0);
    return;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v3 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v24 = v1 + 3752;
    if (v1[3775] < 0)
    {
      v24 = *v24;
    }

    *buf = 136315394;
    *&buf[4] = v24;
    v31 = 2080;
    v32 = "UpdateAutoModeReverb_block_invoke";
    _os_log_debug_impl(&dword_1DDB85000, v3, OS_LOG_TYPE_DEBUG, "[%s|%s] update dropped", buf, 0x16u);
  }
}

void sub_1DDCE0CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL AUSpatialMixerV2::UpdateAutoModeReverbBus(uint64_t a1, int a2, int a3)
{
  v26 = *MEMORY[0x1E69E9840];
  AUSM::IRManager::updateReverbAttributes((a1 + 7088), a2);
  std::__shared_mutex_base::lock_shared((a1 + 3504));
  v6 = *(a1 + 120);
  if (v6)
  {
    LODWORD(v7) = (*(*v6 + 24))(v6);
  }

  else
  {
    v7 = (*(a1 + 104) - *(a1 + 96)) >> 3;
  }

  if (v7 > a3)
  {
    if (a3 == -1)
    {
      v8 = 0;
    }

    else
    {
      v8 = a3;
    }

    if (a3 == -1)
    {
      v9 = v7;
    }

    else
    {
      v9 = a3 + 1;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v10 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = (a1 + 3752);
      if (*(a1 + 3775) < 0)
      {
        v11 = *v11;
      }

      buf[0] = 136315650;
      *&buf[1] = v11;
      v20 = 2080;
      v21 = "UpdateAutoModeReverbBus";
      v22 = 1024;
      v23 = a3;
      _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] updating early room for input %d", buf, 0x1Cu);
    }

    if (v8 != v9)
    {
      if (a2)
      {
        v12 = 5688;
      }

      else
      {
        v12 = 5689;
      }

      do
      {
        Element = ausdk::AUScope::GetElement((a1 + 80), v8);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        (*(*Element + 136))(Element, v12);
        ++v8;
      }

      while (v9 != v8);
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v14 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (a1 + 3752);
      if (*(a1 + 3775) < 0)
      {
        v15 = *v15;
      }

      buf[0] = 136315394;
      *&buf[1] = v15;
      v20 = 2080;
      v21 = "UpdateAutoModeReverbBus";
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_DEFAULT, "[%s|%s] updating late reverb", buf, 0x16u);
    }

    AUSM::IRManager::getLateReverbAttributes(buf, a1 + 7088, a2);
    operator new();
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v16 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v18 = (a1 + 3752);
    if (*(a1 + 3775) < 0)
    {
      v18 = *v18;
    }

    buf[0] = 136315906;
    *&buf[1] = v18;
    v20 = 2080;
    v21 = "UpdateAutoModeReverbBus";
    v22 = 1024;
    v23 = a3;
    v24 = 1024;
    v25 = v7;
    _os_log_error_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_ERROR, "[%s|%s] update called for input #%d, number of inputs = %u", buf, 0x22u);
  }

  std::__shared_mutex_base::unlock_shared((a1 + 3504));
  return v7 > a3;
}

void sub_1DDCE12B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void AUSpatialMixerV2::ReconfigureSharedBuffers(AUSpatialMixerV2 *this, int a2, char a3)
{
  v4 = this;
  v95 = *MEMORY[0x1E69E9840];
  v5 = *(this + 84);
  v67 = (this + 3504);
  v68 = 1;
  std::__shared_mutex_base::lock_shared((this + 3504));
  v6 = atomic_load(v4 + 3906);
  v47 = a3;
  if ((v6 & 1) != 0 && ((v7 = *(v4 + 15)) == 0 ? (v8 = (*(v4 + 13) - *(v4 + 12)) >> 3) : (v8 = (*(*v7 + 24))(v7)), v9 = v8, v8))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    *v53 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v52 = v5;
    do
    {
      Element = ausdk::AUScope::GetElement((v4 + 80), v12);
      v16 = Element;
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(Element + 800);
      v17 = *(v16 + 248);
      if (v17 == *(v16 + 256))
      {
        memset(buf, 0, sizeof(buf));
        LODWORD(v70) = 0;
      }

      else
      {
        v18 = *v17;
        caulk::pooled_semaphore_mutex::_lock((*v17 + 488));
        v19 = *(v18 + 200);
        if (v19)
        {
          v20 = v10;
          v21 = v11;
          v22 = v13;
          v23 = v14;
          v24 = v4;
          v25 = v9;
          v26 = *v19;
          caulk::pooled_semaphore_mutex::_lock((*v19 + 148));
          if (*(v26 + 107) == 1 && (v27 = atomic_load((v26 + 104)), (v27 & 1) == 0))
          {
            v28 = v26 + 8;
          }

          else
          {
            v28 = v26 + 16;
            if (!*(v26 + 16))
            {
              v28 = v26 + 8;
            }
          }

          if (*v28)
          {
            (*(**v28 + 312))(buf);
          }

          else
          {
            memset(buf, 0, sizeof(buf));
            LODWORD(v70) = 0;
          }

          caulk::pooled_semaphore_mutex::_unlock((v26 + 148));
          v9 = v25;
          v4 = v24;
          v14 = v23;
          v13 = v22;
          v11 = v21;
          v10 = v20;
          v5 = v52;
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          LODWORD(v70) = 0;
        }

        caulk::pooled_semaphore_mutex::_unlock((v18 + 488));
      }

      caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v16 + 800);
      v29 = *&buf[4];
      if (*&buf[16] > v10)
      {
        v10 = *&buf[16];
      }

      v30 = ausdk::AUScope::GetElement((v4 + 80), v12);
      if (!v30)
      {
        ausdk::Throw(0xFFFFD583);
      }

      AUSpatialMixerV2InputElement::GetHeadTrackedEarlyReflectionsFilterParams(&v64, v30, 1);
      v31 = v65;
      if (v66 > v11)
      {
        v11 = v66;
      }

      v32 = ausdk::AUScope::GetElement((v4 + 80), v12);
      if (!v32)
      {
        ausdk::Throw(0xFFFFD583);
      }

      AUSpatialMixerV2InputElement::GetHeadTrackedEarlyReflectionsFilterParams(&v61, v32, 0);
      v33 = v62;
      if (v63 > v13)
      {
        v13 = v63;
      }

      v34 = ausdk::AUScope::GetElement((v4 + 80), v12);
      if (!v34)
      {
        ausdk::Throw(0xFFFFD583);
      }

      AUSpatialMixerV2InputElement::GetHeadTrackedEarlyReflectionsFilterParams(&v58, v34, 2);
      *(&v35 + 1) = *&v53[2];
      *&v35 = vmax_u32(v29, *v53);
      *v53 = v35;
      *(&v35 + 1) = *(&v55 + 1);
      *&v35 = vmax_u32(v31, *&v55);
      v55 = v35;
      *(&v36 + 1) = *(&v56 + 1);
      *(&v37 + 1) = *(&v57 + 1);
      *&v36 = vmax_u32(v33, *&v56);
      v56 = v36;
      *&v37 = vmax_u32(v59, *&v57);
      v57 = v37;
      if (v60 > v14)
      {
        v14 = v60;
      }

      ++v12;
    }

    while (v9 != v12);
    v38 = v53[0];
    v39 = v53[1];
    if (v53[0])
    {
      v39 = v53[1] + vcvtps_u32_f32(v5 / v53[0]) - 1;
    }

    if (v55)
    {
      v54 = v55;
      v50 = DWORD1(v55) + vcvtps_u32_f32(v5 / v55) - 1;
    }

    else
    {
      v50 = DWORD1(v55);
      v54 = 0;
    }

    if (v36)
    {
      HIDWORD(v49) = v36;
      LODWORD(v49) = DWORD1(v36) + vcvtps_u32_f32(v5 / v36) - 1;
    }

    else
    {
      v49 = DWORD1(v36);
    }

    if (v37)
    {
      HIDWORD(v48) = v37;
      LODWORD(v48) = DWORD1(v37) + vcvtps_u32_f32(v5 / v37) - 1;
    }

    else
    {
      v48 = DWORD1(v37);
    }
  }

  else
  {
    v48 = 0;
    v49 = 0;
    v14 = 0;
    v13 = 0;
    v11 = 0;
    v50 = 0;
    v54 = 0;
    v10 = 0;
    v39 = 0;
    v38 = 0;
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(v4 + 3488);
  if ((v47 & 1) != 0 || (v40 = *(v4 + 383), v38 != IR::ComplexDataCircBuffer::getFFTPartitionLength((v40 + 800))) || v39 != IR::ComplexDataCircBuffer::getNumFFTBuffers((v40 + 800)) || v10 != IR::ComplexDataCircBuffer::getNumOutputChannels((v40 + 800)) || (v41 = *(v4 + 383), v54 != IR::ComplexDataCircBuffer::getFFTPartitionLength((v41 + 808))) || v50 != IR::ComplexDataCircBuffer::getNumFFTBuffers((v41 + 808)) || v11 != IR::ComplexDataCircBuffer::getNumOutputChannels((v41 + 808)) || (v42 = *(v4 + 383), HIDWORD(v49) != IR::ComplexDataCircBuffer::getFFTPartitionLength((v42 + 816))) || v49 != IR::ComplexDataCircBuffer::getNumFFTBuffers((v42 + 816)) || v13 != IR::ComplexDataCircBuffer::getNumOutputChannels((v42 + 816)) || (v43 = *(v4 + 383), HIDWORD(v48) != IR::ComplexDataCircBuffer::getFFTPartitionLength((v43 + 824))) || v48 != IR::ComplexDataCircBuffer::getNumFFTBuffers((v43 + 824)) || v14 != IR::ComplexDataCircBuffer::getNumOutputChannels((v43 + 824)))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v44 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = (v4 + 3752);
      if (*(v4 + 3775) < 0)
      {
        v45 = *v45;
      }

      v46 = "false";
      *buf = 136318722;
      *&buf[4] = v45;
      *&buf[14] = "ReconfigureSharedBuffers";
      *&buf[12] = 2080;
      if (a2)
      {
        v46 = "true";
      }

      *&buf[22] = 2080;
      v70 = v46;
      v71 = 1024;
      v72 = v10;
      v73 = 1024;
      v74 = v39;
      v75 = 1024;
      v76 = v38;
      v77 = 1024;
      v78 = v11;
      v79 = 1024;
      v80 = v50;
      v81 = 1024;
      v82 = v54;
      v83 = 1024;
      v84 = v13;
      v85 = 1024;
      v86 = v49;
      v87 = 1024;
      v88 = HIDWORD(v49);
      v89 = 1024;
      v90 = v14;
      v91 = 1024;
      v92 = v48;
      v93 = 1024;
      v94 = HIDWORD(v48);
      _os_log_impl(&dword_1DDB85000, v44, OS_LOG_TYPE_DEFAULT, "[%s|%s] Reinitializing shared buffers. immediateUpdate = %s, fftParams {.numOutputs, .numFFTSubFilters, .partitionLength}: hrtfParams = {%u, %u, %u}, sceneBusParams = {%u, %u, %u}, postProcBusParams = {%u, %u, %u}, combinedBusParams = {%u, %u, %u}", buf, 0x68u);
    }

    operator new();
  }

  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(v4 + 3488);
  if (v68 == 1)
  {
    std::__shared_mutex_base::unlock_shared(v67);
  }
}

void AUSM::SharedBuffers::SharedBuffers(AUSM::SharedBuffers *this)
{
  for (i = 0; i != 128; i += 32)
  {
    v2 = this + i;
    *v2 = 0;
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
    v2[24] = 1;
  }

  *(this + 14) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  std::vector<char>::vector[abi:ne200100](this + 37, 8);
}

uint64_t *std::unique_ptr<AUSM::SharedBuffers>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 832);
    if (v3)
    {
      *(v2 + 840) = v3;
      operator delete(v3);
    }

    MEMORY[0x1E12BBED0](v2 + 824);
    MEMORY[0x1E12BBED0](v2 + 816);
    MEMORY[0x1E12BBED0](v2 + 808);
    MEMORY[0x1E12BBED0](v2 + 800);
    v4 = *(v2 + 768);
    if (v4)
    {
      *(v2 + 776) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 728);
    if (v5)
    {
      *(v2 + 736) = v5;
      operator delete(v5);
    }

    v6 = *(v2 + 704);
    if (v6)
    {
      *(v2 + 712) = v6;
      operator delete(v6);
    }

    v7 = *(v2 + 672);
    if (v7)
    {
      *(v2 + 680) = v7;
      operator delete(v7);
    }

    v8 = *(v2 + 632);
    if (v8)
    {
      *(v2 + 640) = v8;
      operator delete(v8);
    }

    v9 = *(v2 + 608);
    if (v9)
    {
      *(v2 + 616) = v9;
      operator delete(v9);
    }

    v10 = *(v2 + 576);
    if (v10)
    {
      *(v2 + 584) = v10;
      operator delete(v10);
    }

    v11 = *(v2 + 536);
    if (v11)
    {
      *(v2 + 544) = v11;
      operator delete(v11);
    }

    v12 = *(v2 + 512);
    if (v12)
    {
      *(v2 + 520) = v12;
      operator delete(v12);
    }

    v13 = *(v2 + 480);
    if (v13)
    {
      *(v2 + 488) = v13;
      operator delete(v13);
    }

    v14 = *(v2 + 440);
    if (v14)
    {
      *(v2 + 448) = v14;
      operator delete(v14);
    }

    v15 = *(v2 + 416);
    if (v15)
    {
      *(v2 + 424) = v15;
      operator delete(v15);
    }

    v16 = *(v2 + 376);
    if (v16)
    {
      *(v2 + 384) = v16;
      operator delete(v16);
    }

    v17 = *(v2 + 352);
    if (v17)
    {
      *(v2 + 360) = v17;
      operator delete(v17);
    }

    v18 = *(v2 + 320);
    if (v18)
    {
      *(v2 + 328) = v18;
      operator delete(v18);
    }

    v19 = *(v2 + 296);
    if (v19)
    {
      *(v2 + 304) = v19;
      operator delete(v19);
    }

    v20 = *(v2 + 272);
    if (v20)
    {
      *(v2 + 280) = v20;
      operator delete(v20);
    }

    v26 = (v2 + 248);
    std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v26);
    v26 = (v2 + 224);
    std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](&v26);
    v21 = *(v2 + 200);
    if (v21)
    {
      *(v2 + 208) = v21;
      operator delete(v21);
    }

    v22 = 0;
    while (1)
    {
      v23 = *(v2 + v22 + 176);
      if (v23)
      {
        *(v2 + v22 + 184) = v23;
        operator delete(v23);
      }

      v22 -= 24;
      if (v22 == -72)
      {
        v24 = 0;
        while (1)
        {
          v25 = *(v2 + v24 + 96);
          if (v25)
          {
            *(v2 + v24 + 104) = v25;
            operator delete(v25);
          }

          v24 -= 32;
          if (v24 == -128)
          {

            JUMPOUT(0x1E12BD160);
          }
        }
      }
    }
  }

  return result;
}

uint64_t AUSpatialMixerV2::GetRequiredSharedInputBufferSize(AUSpatialMixerV2 *this)
{
  v2 = 0;
  v3 = 2;
  while (1)
  {
    v4 = *(this + 15);
    if (v4)
    {
      LODWORD(v5) = (*(*v4 + 24))(v4);
    }

    else
    {
      v5 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v2 >= v5)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v2);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    v7 = *(Element + 108);
    if (v3 <= v7)
    {
      v3 = v7;
    }

    else
    {
      v3 = v3;
    }

    ++v2;
  }

  return v3;
}

void std::vector<AUSM::FloatVector>::resize(uint64_t *a1, unint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = (v3 - *a1) >> 5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v4 + 32 * a2;
      if (v3 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 32);
          v12 -= 32;
          v13 = v14;
          if (v14)
          {
            *(v3 - 24) = v13;
            operator delete(v13);
          }

          v3 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v3) >> 5)
    {
      if (!(a2 >> 59))
      {
        v8 = v7 - v4;
        v9 = (v7 - v4) >> 4;
        if (v9 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFE0)
        {
          v10 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 59))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v15 = v3 + 32 * v6;
    do
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      *(v3 + 24) = 1;
      v3 += 32;
    }

    while (v3 != v15);
    a1[1] = v15;
  }
}

void std::vector<AUSM::FloatVector>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<AUSM::FloatVector>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<AUSM::FloatVector>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 32);
      v4 -= 32;
      v5 = v6;
      if (v6)
      {
        *(v2 - 24) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void AUSM::OutputBuffers::~OutputBuffers(AUSM::OutputBuffers *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void AUSM::ABLBuffer::~ABLBuffer(AUSM::ABLBuffer *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<IR::IRDataAttributes>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5920300;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t IR::FixedIntegerDelay<float>::FixedIntegerDelay(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 32, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 2);
  return a1;
}

void sub_1DDCE2894(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<IR::FixedIntegerDelay<float>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<IR::FixedIntegerDelay<float>>,IR::FixedIntegerDelay<float>*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      *(a3 + 8) = 0;
      *(a3 + 8) = *(v5 + 1);
      *(a3 + 24) = v5[3];
      v5[1] = 0;
      v5[2] = 0;
      v5[3] = 0;
      *(a3 + 32) = 0;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 32) = *(v5 + 2);
      *(a3 + 48) = v5[6];
      v5[4] = 0;
      v5[5] = 0;
      v5[6] = 0;
      v5 += 7;
      a3 += 56;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(v4);
      v4 += 7;
    }

    while (v4 != a2);
  }
}

uint64_t std::lock[abi:ne200100]<caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a1);
    result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a2);
    if (result)
    {
      break;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a1);
    sched_yield();
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(a2);
    result = caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(a1);
    if (result)
    {
      break;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(a2);
    sched_yield();
  }

  return result;
}

void sub_1DDCE2B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  IR::DataLoaderSource::~DataLoaderSource(&a29);
  IR::IRDataAttributes::~IRDataAttributes(&a10);
  _Unwind_Resume(a1);
}

void FeedbackDelayNetwork<float>::SetDelayTime(uint64_t a1, unsigned int a2, float a3, float a4, double a5)
{
  v10 = pow((a4 / a3), 0.0666666667);
  v11 = a3;
  LODWORD(v12) = vcvtmd_u64_f64(a5 * v11 + 0.5);
  FeedbackDelayNetwork<float>::DelayLine::SetDelaySamples(a1 + 112, v12, a5);
  LODWORD(v13) = vcvtmd_u64_f64(a5 * a4 + 0.5);
  FeedbackDelayNetwork<float>::DelayLine::SetDelaySamples(a1 + 1192, v13, a5);
  srandom(a2);
  v14 = a1 + 184;
  v15 = 14;
  do
  {
    v16 = random();
    v11 = v10 * v11;
    v17 = v11 * pow(v10, (v16 / 2147483650.0 + -0.5) * 0.8);
    LODWORD(v18) = vcvtmd_u64_f64(a5 * v17 + 0.5);
    FeedbackDelayNetwork<float>::DelayLine::SetDelaySamples(v14, v18, a5);
    v14 += 72;
    --v15;
  }

  while (v15);
  v19 = (a1 + 164);
  v20 = 15;
  do
  {
    v22 = (v19 + 5);
    v21 = *v19;
    v24 = v19[18];
    v19 += 18;
    v23 = v24;
    if (v24 == v21)
    {
      Prime = NextPrime((v23 + 1));
      FeedbackDelayNetwork<float>::DelayLine::SetDelaySamples(v22, Prime, a5);
    }

    --v20;
  }

  while (v20);
}

float FeedbackDelayNetwork<float>::SetDecayTime(uint64_t a1, float a2, float a3)
{
  if (a3 <= a2)
  {
    v4 = a3;
  }

  else
  {
    v4 = a2;
  }

  v5 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = v4;
  v19 = v4;
  v6 = 1.0 - (a2 / v4) * (a2 / v4);
  v7 = (a1 + 176);
  v8 = 0.0;
  v9 = 16;
  do
  {
    v10 = *(v7 - 1) * -3.0 / v5;
    v11 = fmax(__exp10(v10), 0.0001);
    v12 = v6 * (v10 * 0.575646273);
    if (v12 > 0.99)
    {
      v12 = 0.99;
    }

    v13 = v11 * (1.0 - v12);
    v14 = v13 * 0.25;
    *&v13 = v13;
    *v7 = LODWORD(v13);
    *&v13 = v12;
    v15 = v14;
    *(v7 - 10) = LODWORD(v13);
    *(v7 - 9) = v15;
    v8 = v8 + v15;
    v7 += 9;
    --v9;
  }

  while (v9);
  *(a1 + 28) = 1.0 / v8;
  v16 = (1.0 - (v19 / a2)) / ((v19 / a2) + 1.0);
  v17 = 1.0 / (1.0 - v16);
  *(a1 + 36) = (1.0 / v8) * *(a1 + 24);
  *(a1 + 40) = v17;
  result = -(v16 * v17);
  *(a1 + 44) = result;
  return result;
}

double FeedbackDelayNetwork<float>::Reset(_OWORD *a1)
{
  v2 = a1 + 41;
  v3 = 16;
  do
  {
    v4 = *(v2 - 4);
    if (v4)
    {
      bzero(*(v2 - 13), 4 * v4);
    }

    *(v2 - 1) = *(v2 - 3) & -*v2;
    *(v2 - 5) = 0;
    v2 += 18;
    --v3;
  }

  while (v3);
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  return result;
}

double FeedbackDelayNetwork<float>::DelayLine::SetDelaySamples(uint64_t a1, uint64_t a2, double a3)
{
  Prime = NextPrime(a2);
  *(a1 + 52) = Prime;
  v6 = (1 << -__clz(Prime - 1));
  *(a1 + 36) = v6;
  *(a1 + 40) = v6 - 1;
  std::vector<float>::resize(a1, v6);
  std::vector<float>::shrink_to_fit(a1);
  v8 = *(a1 + 36);
  if (v8)
  {
    bzero(*a1, 4 * v8);
  }

  LODWORD(v7) = *(a1 + 52);
  result = v7 / a3;
  *(a1 + 56) = result;
  return result;
}

uint64_t caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(uint64_t a1)
{
  v2 = pthread_self();
  if (atomic_load_explicit(a1, memory_order_acquire) == v2)
  {
    ++*(a1 + 8);
    return 1;
  }

  else
  {
    result = caulk::pooled_semaphore_mutex::try_lock((a1 + 12));
    if (result)
    {
      atomic_store(v2, a1);
      result = 1;
      *(a1 + 8) = 1;
    }
  }

  return result;
}

uint64_t std::__function::__func<AUSpatialMixerV2::PropertyChanged(unsigned int)::$_0,std::allocator<AUSpatialMixerV2::PropertyChanged(unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 8);
  AUSM::IRManager::updateHRIRAttributes((v1 + 7088));
  v2 = *(*v1 + 592);

  return v2(v1, 5687);
}

uint64_t std::__function::__func<AUSpatialMixerV2::PropertyChanged(unsigned int)::$_0,std::allocator<AUSpatialMixerV2::PropertyChanged(unsigned int)::$_0>,void ()(IR::PersonalizedIRData::DataStatus,IR::PersonalizedIRData::DataValidity)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59203D8;
  a2[1] = v2;
  return result;
}

ParametricFilters *AUSpatialMixerV2::ResetReverbFilters(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[1238];
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = a1[1239];
  if (v3)
  {
LABEL_3:
    ParametricFilters::reset(v3);
  }

LABEL_4:
  result = a1[1240];
  if (result)
  {

    return ParametricFilters::reset(result);
  }

  return result;
}

uint64_t AUSpatialMixerV2::AlignmentDelay::reset(AUSpatialMixerV2::AlignmentDelay *this)
{
  caulk::pooled_semaphore_mutex::_lock((this + 60));
  *(this + 6) = 0;
  atomic_store(0, this + 56);
  atomic_store(0, this + 57);
  v3 = *this;
  for (i = *(this + 1); i != v3; std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(i))
  {
    i -= 7;
  }

  *(this + 1) = v3;
  v5 = *(this + 3);
  for (j = *(this + 4); j != v5; std::__destroy_at[abi:ne200100]<PPUtils::SphericalCoordinateTree::sphericalCoordinateBranch,0>(j))
  {
    j -= 7;
  }

  *(this + 4) = v5;

  return caulk::pooled_semaphore_mutex::_unlock((this + 60));
}

BOOL AUSpatialMixerV2::ValidOutputFormat(uint64_t a1, _DWORD *a2)
{
  if (a2[2] != 1819304813 || a2[5] != 1)
  {
    return 0;
  }

  v3 = a2[4];
  if (v3 != a2[6])
  {
    return 0;
  }

  result = 0;
  v5 = a2[3];
  v6 = (v5 >> 5) & 1;
  v7 = a2[8];
  if (v7 == 16)
  {
    v6 = 1;
  }

  if ((v5 & 2) == 0 && v6)
  {
    v8 = v7 == 32;
    if ((v5 & 1) == 0)
    {
      if (v7 == 32)
      {
LABEL_16:
        if ((v5 & 0x20) != 0)
        {
          v9 = 1;
        }

        else
        {
          v9 = a2[7];
        }

        return v3 == v9 * (v7 >> 3);
      }

      v8 = v7 == 16;
    }

    if (!v8)
    {
      return 0;
    }

    goto LABEL_16;
  }

  return result;
}

BOOL AUSpatialMixerV2::ValidInputFormat(uint64_t a1, _DWORD *a2)
{
  v2 = a2[2];
  if (v2 != 1885564203 && v2 != 1819304813)
  {
    return 0;
  }

  if (a2[5] != 1)
  {
    return 0;
  }

  v4 = a2[4];
  if (v4 != a2[6])
  {
    return 0;
  }

  v5 = a2[3];
  if ((v5 & 2) != 0)
  {
    return 0;
  }

  v6 = a2[8];
  if (v5)
  {
    if (v6 == 32)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v6 != 16 && v6 != 8)
  {
    return 0;
  }

LABEL_12:
  if ((v5 & 0x20) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2[7];
  }

  return v4 == (v6 >> 3) * v7;
}

uint64_t AUSpatialMixerV2::SetAudioChannelLayout(AUSpatialMixerV2 *this, int a2, unsigned int a3, const AudioChannelLayout *a4)
{
  v38[2] = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    std::__shared_mutex_base::lock_shared((this + 3504));
    v14 = *(this + 15);
    if (v14)
    {
      LODWORD(v15) = (*(*v14 + 24))(v14);
    }

    else
    {
      v15 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v15 <= a3)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v29 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v30 = *v30;
        }

        *buf = 136315650;
        v34 = v30;
        v35 = 2080;
        v36 = "SetAudioChannelLayout";
        v37 = 1024;
        LODWORD(v38[0]) = a3;
        _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%s|%s] [InputElement #%u] Invalid element", buf, 0x1Cu);
      }
    }

    else
    {
      if (!a4)
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v21 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v24 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v24 = *v24;
          }

          *buf = 136315650;
          v34 = v24;
          v35 = 2080;
          v36 = "SetAudioChannelLayout";
          v37 = 1024;
          LODWORD(v38[0]) = a3;
          _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "[%s|%s] [InputElement #%u] Error setting audio channel layout: null layout pointer", buf, 0x1Cu);
        }

        v20 = 0;
LABEL_42:
        std::__shared_mutex_base::unlock_shared((this + 3504));
        if (a4)
        {
          return v20;
        }

        return 4294956445;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v16 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v17 = *v17;
        }

        PrintAudioChannelLayout(__p, a4);
        if (v32 >= 0)
        {
          v18 = __p;
        }

        else
        {
          v18 = __p[0];
        }

        *buf = 136315906;
        v34 = v17;
        v35 = 2080;
        v36 = "SetAudioChannelLayout";
        v37 = 1024;
        LODWORD(v38[0]) = a3;
        WORD2(v38[0]) = 2080;
        *(v38 + 6) = v18;
        _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEFAULT, "[%s|%s] [InputElement #%u] Setting audio channel layout %s", buf, 0x26u);
        if (v32 < 0)
        {
          operator delete(__p[0]);
        }
      }

      Element = ausdk::AUScope::GetElement((this + 80), a3);
      if (Element)
      {
        v20 = (*(*Element + 88))(Element, a4);
        if (!v20)
        {
          atomic_store(1u, this + 3394);
        }

        goto LABEL_42;
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  if (a2 != 2)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v25 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v26 = *v26;
      }

      *buf = 136315650;
      v34 = v26;
      v35 = 2080;
      v36 = "SetAudioChannelLayout";
      v37 = 1024;
      LODWORD(v38[0]) = a2;
      _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "[%s|%s] invalid scope %u", buf, 0x1Cu);
    }

    ausdk::Throw(0xFFFFD58ELL);
  }

  if (a3)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v27 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v28 = *v28;
      }

      *buf = 136315650;
      v34 = v28;
      v35 = 2080;
      v36 = "SetAudioChannelLayout";
      v37 = 1024;
      LODWORD(v38[0]) = a3;
      _os_log_error_impl(&dword_1DDB85000, v27, OS_LOG_TYPE_ERROR, "[%s|%s] [OutputElement] Invalid element %u", buf, 0x1Cu);
    }

    ausdk::Throw(0xFFFFD583);
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v8 = getAUSMV2Log(void)::gLog;
  v9 = v8;
  if (!a4)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v23 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v23 = *v23;
      }

      *buf = 136315394;
      v34 = v23;
      v35 = 2080;
      v36 = "SetAudioChannelLayout";
      _os_log_error_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_ERROR, "[%s|%s] [OutputElement] Error setting audio channel layout: null layout pointer", buf, 0x16u);
    }

    return 4294956445;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v10 = *v10;
    }

    PrintAudioChannelLayout(__p, a4);
    if (v32 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    *buf = 136315650;
    v34 = v10;
    v35 = 2080;
    v36 = "SetAudioChannelLayout";
    v37 = 2080;
    v38[0] = v11;
    _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] [OutputElement] Setting audio channel layout %s", buf, 0x20u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v12 = (a4->mChannelLayoutTag & 0xFFFEFFFF) == 0;
  v13 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v12)
  {
    if (v13)
    {
      AUSpatialMixerV2OutputElement::SetFullLayoutFromTag(v13);
    }

    ausdk::Throw(0xFFFFD583);
  }

  if (!v13)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v20 = AUSpatialMixerV2OutputElement::SetFullLayout(v13, a4, 0);
  if (!v20)
  {
    atomic_store(1u, this + 3394);
  }

  return v20;
}

void sub_1DDCE3950(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2::GetAudioChannelLayout(AUSpatialMixerV2 *this, unsigned int a2, unsigned int a3, AudioChannelLayout *a4, BOOL *a5)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v7 = *(*ausdk::AUScope::GetIOElement(Scope, a3) + 96);

  return v7();
}

void AUSpatialMixerV2::CreateElement(AUSpatialMixerV2 *this, int a2)
{
  v2 = *MEMORY[0x1E69E9840];
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    ausdk::AUBase::CreateElement(this, a2);
  }

  operator new();
}

void sub_1DDCE53D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, AUSM::OutputProperties *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  AUSM::NeuralPreMix::~NeuralPreMix(v56);
  if (*(v54 + 1743) < 0)
  {
    operator delete(*v55);
  }

  AUSM::InputGeometry::~InputGeometry((v54 + 1408));
  __p = a12;
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v54 + 1352);
  std::vector<std::unique_ptr<IR::FixedIntegerDelay<float>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v58 = *a9;
  if (*a9)
  {
    *(v54 + 1312) = v58;
    operator delete(v58);
  }

  std::unique_ptr<ScottyLite>::reset[abi:ne200100]((v54 + 1296), 0);
  AUSM::MatrixMix::~MatrixMix((v54 + 1072));
  AUSM::InputProperties::~InputProperties(a16);
  v59 = *(v54 + 472);
  if (v59)
  {
    *(v54 + 480) = v59;
    operator delete(v59);
  }

  v60 = *(v54 + 456);
  *(v54 + 456) = 0;
  if (v60)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v60);
  }

  v61 = *(v54 + 448);
  *(v54 + 448) = 0;
  if (v61)
  {
    std::default_delete<std::vector<float>>::operator()[abi:ne200100](v61);
  }

  std::unique_ptr<HOA::RotationMatrix>::reset[abi:ne200100]((v54 + 440), 0);
  v62 = *(v54 + 432);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  v63 = (v54 + 344);
  v64 = -144;
  while (1)
  {
    if (*(v63 + 64) == 1)
    {
      v63 = applesauce::CF::DictionaryRef_iterator<std::string,std::string>::~DictionaryRef_iterator(v63);
    }

    v63 -= 9;
    v64 += 72;
    if (!v64)
    {
      __p = (v54 + 248);
      std::vector<std::unique_ptr<AUSpatialMixerV2ChannelProcessor>>::__destroy_vector::operator()[abi:ne200100](&__p);
      v65 = *a10;
      if (*a10)
      {
        *(v54 + 232) = v65;
        operator delete(v65);
      }

      ausdk::AUIOElement::~AUIOElement(v54);
      MEMORY[0x1E12BD160](v54, 0x10F3C40CF4DC28ELL);
      *a13 = 0;
      _Unwind_Resume(a1);
    }
  }
}

uint64_t AUSpatialMixerV2::ChangeStreamFormat(AUSpatialMixerV2 *this, int a2, uint64_t a3, const AudioStreamBasicDescription *a4, const AudioStreamBasicDescription *a5)
{
  if (a2 == 2)
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3472);
    v18 = atomic_load(this + 9897);
    if (v18)
    {
      (*(*this + 64))(this);
      ausdk::AUBase::ChangeStreamFormat(this, 2, a3, a4, a5);
      v19 = (*(*this + 56))(this);
    }

    else
    {
      ausdk::AUBase::ChangeStreamFormat(this, 2, a3, a4, a5);
      v19 = 0;
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3472);
  }

  else
  {
    if (a2 == 1)
    {
      v26 = (this + 3504);
      v27 = 1;
      std::__shared_mutex_base::lock_shared((this + 3504));
      CanUsePersonalizedHRTF = AUSpatialMixerV2::CanUsePersonalizedHRTF(this);
      v11 = atomic_load((*(this + 68) + 96));
      if (!a3 && (v11 & 1) != 0)
      {
        v10.n128_u64[0] = *&a4->mSampleRate;
        if (a4->mSampleRate != a5->mSampleRate)
        {
          for (i = 1; ; i = (i + 1))
          {
            v13 = *(this + 15);
            if (v13)
            {
              LODWORD(v14) = (*(*v13 + 24))(v13, v10);
            }

            else
            {
              v14 = (*(this + 13) - *(this + 12)) >> 3;
            }

            if (i >= v14)
            {
              break;
            }

            Element = ausdk::AUScope::GetElement((this + 80), i);
            if (!Element)
            {
              ausdk::Throw(0xFFFFD583);
            }

            v16 = *(Element + 96);
            *&__s2.mSampleRate = *(Element + 80);
            *&__s2.mBytesPerPacket = v16;
            *&__s2.mBitsPerChannel = *(Element + 112);
            v17 = *(Element + 96);
            *&v24.mSampleRate = *(Element + 80);
            *&v24.mBytesPerPacket = v17;
            *&v24.mBitsPerChannel = *(Element + 112);
            v24.mSampleRate = a5->mSampleRate;
            ausdk::AUBase::ChangeStreamFormat(this, 1, i, &__s2, &v24);
          }
        }
      }

      ausdk::AUBase::ChangeStreamFormat(this, 1, a3, a4, a5);
      if (a5->mChannelsPerFrame != a4->mChannelsPerFrame)
      {
        v20 = atomic_load(this + 9897);
        if (v20)
        {
          RequiredSharedInputBufferSize = AUSpatialMixerV2::GetRequiredSharedInputBufferSize(this);
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3488);
          v22 = *(*(this + 383) + 232) - *(*(this + 383) + 224);
          caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3488);
          if (RequiredSharedInputBufferSize != v22 >> 5)
          {
            AUSpatialMixerV2::ReconfigureSharedBuffers(this, 0, 1);
          }
        }
      }

      if (CanUsePersonalizedHRTF != AUSpatialMixerV2::CanUsePersonalizedHRTF(this))
      {
        (*(*this + 592))(this, 3113);
      }

      if (v27 == 1)
      {
        std::__shared_mutex_base::unlock_shared(v26);
      }
    }

    return 0;
  }

  return v19;
}

uint64_t AUSpatialMixerV2::ValidFormat(AUSpatialMixerV2 *this, int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  mChannelsPerFrame = a4->mChannelsPerFrame;
  if (a2 == 1)
  {
    if (!mChannelsPerFrame || mChannelsPerFrame > *(this + 753))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v6 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v7 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v7 = *v7;
      }

      *v13 = 136315650;
      *&v13[4] = v7;
      *&v13[12] = 2080;
      *&v13[14] = "ValidFormat";
      *&v13[22] = 1024;
      *&v13[24] = mChannelsPerFrame;
      v8 = "[%s|%s] Invalid number of input channels %u";
LABEL_18:
      _os_log_error_impl(&dword_1DDB85000, v6, OS_LOG_TYPE_ERROR, v8, v13, 0x1Cu);
LABEL_19:

      return 0;
    }

    v11 = *&a4->mBytesPerPacket;
    *v13 = *&a4->mSampleRate;
    *&v13[16] = v11;
    v14 = *&a4->mBitsPerChannel;
    return (*(*this + 576))(this, v13);
  }

  else
  {
    if ((a2 & 0xFFFFFFFD) != 0)
    {
      return 0;
    }

    if (mChannelsPerFrame > *(this + 754))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v6 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      v9 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v9 = *v9;
      }

      *v13 = 136315650;
      *&v13[4] = v9;
      *&v13[12] = 2080;
      *&v13[14] = "ValidFormat";
      *&v13[22] = 1024;
      *&v13[24] = mChannelsPerFrame;
      v8 = "[%s|%s] Invalid number of output channels %u";
      goto LABEL_18;
    }

    v12 = *&a4->mBytesPerPacket;
    *v13 = *&a4->mSampleRate;
    *&v13[16] = v12;
    v14 = *&a4->mBitsPerChannel;
    return (*(*this + 584))(this, v13);
  }
}

uint64_t AUSpatialMixerV2::SupportedNumChannels(AUSpatialMixerV2 *this, const AUChannelInfo **a2)
{
  v2 = *(this + 378);
  if (a2)
  {
    *a2 = v2;
  }

  return (*(this + 379) - v2) >> 2;
}

double AUSpatialMixerV2::GetLatency(AUSpatialMixerV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 80);
  result = 0.0;
  if (v3 > 0.0)
  {
    v5 = atomic_load(this + 3254);
    return v5 / v3;
  }

  return result;
}

uint64_t AUSpatialMixerV2::NewFactoryPresetSet(AUSpatialMixerV2 *this, const AUPreset *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v5 = *v5;
    }

    presetNumber = a2->presetNumber;
    *buf = 136315650;
    v14 = v5;
    v15 = 2080;
    *v16 = "NewFactoryPresetSet";
    *&v16[8] = 1024;
    v17 = presetNumber;
    _os_log_impl(&dword_1DDB85000, v4, OS_LOG_TYPE_DEFAULT, "[%s|%s] setting factory preset #%u", buf, 0x1Cu);
  }

  v12 = 0;
  v7 = (*(*this + 88))(this, 3116, 0, 0, &v12);
  if (v7)
  {
    v12 = 0;
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315650;
      v14 = v11;
      v15 = 2080;
      *v16 = "NewFactoryPresetSet";
      *&v16[8] = 1024;
      v17 = v7;
      _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "[%s|%s] Could not get personalized HRTF status. Error: %u. Assuming generic HRTF is being used.", buf, 0x1Cu);
    }
  }

  AUSM::FactoryPreset::load(buf, this + 2462, a2->presetNumber, v12 != 0);
  v9 = *&v16[2];
  if (*&v16[2])
  {
    v7 = (*(*this + 288))(this, *&v16[2]);
    ausdk::AUBase::SetAFactoryPresetAsCurrent(this, buf);
    CFRelease(v9);
  }

  return v7;
}

void sub_1DDCE60D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSpatialMixerV2::GetPresets(AUSpatialMixerV2 *this, const __CFArray **a2)
{
  if (a2)
  {
    IR::IRDataLoader::instance(this);
    v3 = IR::IRDataLoader::fileExists();
    v4 = v3;
    if (v3)
    {
      v5 = 3;
    }

    else
    {
      v5 = 2;
    }

    Mutable = CFArrayCreateMutable(0, v5, 0);
    v7 = Mutable;
    if (v4)
    {
      CFArrayAppendValue(Mutable, AUSM::kFactoryPresets);
    }

    v8 = 0;
    v9 = 1;
    do
    {
      v10 = v8;
      CFArrayAppendValue(v7, &AUSM::kFactoryPresets[v9]);
      v8 = 1;
      v9 = 2;
    }

    while ((v10 & 1) == 0);
    *a2 = v7;
  }

  return 0;
}

void sub_1DDCE61B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFArray *>::~ObjectRef(va);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2::RestoreState(AUSpatialMixerV2 *this, const void *a2)
{
  v71 = *MEMORY[0x1E69E9840];
  v59 = this + 6856;
  v4 = atomic_load(this + 9899);
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v5 = getAUSMV2Log(void)::gLog;
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v7 = *v7;
    }

    *buf = 136315394;
    *&buf[4] = v7;
    v65 = 2080;
    v66 = "RestoreState";
    v8 = "[%s|%s] repeated call, suppressing logs for properties that do not change";
  }

  else
  {
    if (!v6)
    {
      goto LABEL_13;
    }

    v9 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v9 = *v9;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    v65 = 2080;
    v66 = "RestoreState";
    v8 = "[%s|%s] started";
  }

  _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, v8, buf, 0x16u);
LABEL_13:

  v10 = *(*(this + 862) + 544);
  if (v10 && ((v11 = atomic_load((v10 + 97)), (v11 & 1) != 0) || (v12 = atomic_load((*(*(this + 862) + 544) + 96)), (v12 & 1) != 0)) || (v13 = ausdk::AUBase::RestoreState(this, a2), !v13))
  {
    *buf = this + 3504;
    buf[8] = 1;
    std::__shared_mutex_base::lock_shared((this + 3504));
    for (i = 0; ; ++i)
    {
      v15 = *(this + 15);
      if (v15)
      {
        LODWORD(v16) = (*(*v15 + 24))(v15);
      }

      else
      {
        v16 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (i >= v16)
      {
        break;
      }

      Element = ausdk::AUScope::GetElement((this + 80), i);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      atomic_store(1u, (Element + 1681));
      atomic_store(1u, (Element + 776));
    }

    v18 = ausdk::AUScope::GetElement((this + 128), 0);
    if (!v18)
    {
      ausdk::Throw(0xFFFFD583);
    }

    Parameter = ausdk::AUElement::GetParameter(v18, 3u);
    atomic_store(COERCE_UNSIGNED_INT(__exp10f(Parameter * 0.05)), this + 2316);
    atomic_store(1u, v59 + 2928);
    std::__shared_mutex_base::unlock_shared((this + 3504));
    v13 = 0;
  }

  applesauce::CF::DictionaryRef::from_get(&v63, a2);
  if (v63)
  {
    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(buf, v63, AUSM::kFactoryPresetGlobalPropertiesKey);
    if (buf[8] == 1)
    {
      v20 = *buf;
      if (!*buf)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&theArray, *buf, 0);
      if (v62 == 1)
      {
        v21 = theArray;
        cf = theArray;
        v22 = (*(*this + 96))(this, 5000, 0, 0, &cf, 8);
        v13 = v22 ? v22 : v13;
        if (v21)
        {
          CFRelease(v21);
        }
      }

      CFRelease(v20);
    }

    if (!v63)
    {
      v52 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v52, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(buf, v63, AUSM::kFactoryPresetOutputPropertiesKey);
    if (buf[8] == 1)
    {
      v23 = *buf;
      if (!*buf)
      {
        v56 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v56, "Could not construct");
      }

      applesauce::CF::details::at_as<applesauce::CF::DictionaryRef>(&theArray, *buf, 0);
      if (v62 == 1)
      {
        v24 = theArray;
        cf = theArray;
        v25 = (*(*this + 96))(this, 5000, 2, 0, &cf, 8);
        v13 = v25 ? v25 : v13;
        if (v24)
        {
          CFRelease(v24);
        }
      }

      CFRelease(v23);
    }

    if (!v63)
    {
      v53 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v53, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, v63, AUSM::kFactoryPresetInputPropertiesKey);
    if (v62 == 1)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v26 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v48 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v48 = *v48;
        }

        *buf = 136315394;
        *&buf[4] = v48;
        v65 = 2080;
        v66 = "RestoreState";
        _os_log_debug_impl(&dword_1DDB85000, v26, OS_LOG_TYPE_DEBUG, "[%s|%s] Setting input properties", buf, 0x16u);
      }

      *buf = this + 3504;
      buf[8] = 1;
      std::__shared_mutex_base::lock_shared((this + 3504));
      v27 = *(this + 15);
      if (v27)
      {
        LODWORD(v28) = (*(*v27 + 24))(v27);
      }

      else
      {
        v28 = (*(this + 13) - *(this + 12)) >> 3;
      }

      std::__shared_mutex_base::unlock_shared((this + 3504));
      v30 = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        v32 = CFArrayGetCount(v30);
        if (Count)
        {
          v33 = v32;
          for (j = 0; j != Count; ++j)
          {
            if (v33 == j)
            {
              break;
            }

            applesauce::CF::details::at_to<applesauce::CF::DictionaryRef>(&cf, v30, j);
            if (!cf)
            {
              v51 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v51, "Could not construct");
            }

            v35 = applesauce::CF::details::at_key<char const(&)[14]>(cf, "ElementNumber");
            if (v35)
            {
              v36 = applesauce::CF::convert_as<unsigned int,0>(v35);
              if ((v36 & 0x100000000) != 0)
              {
                v37 = v36;
                if (v28 <= v36)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v39 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    v40 = this + 3752;
                    if (*(this + 3775) < 0)
                    {
                      v40 = *(this + 469);
                    }

                    *buf = 136315906;
                    *&buf[4] = v40;
                    v65 = 2080;
                    v66 = "RestoreState";
                    v67 = 1024;
                    v68 = v28;
                    v69 = 1024;
                    v70 = v37;
                    _os_log_impl(&dword_1DDB85000, v39, OS_LOG_TYPE_DEFAULT, "[%s|%s] bus count == %d, dropping properties for InputElement %d", buf, 0x22u);
                  }
                }

                else
                {
                  *buf = cf;
                  v38 = (*(*this + 96))(this, 5000, 1, v36, buf, 8);
                  if (v38)
                  {
                    v13 = v38;
                  }

                  else
                  {
                    v13 = v13;
                  }
                }
              }
            }

            if (cf)
            {
              CFRelease(cf);
            }
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    if (!v63)
    {
      v54 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v54, "Could not construct");
    }

    applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(buf, v63, AUSM::kFactoryPresetChannelOverridesKey);
    if (buf[8] == 1)
    {
      v41 = *buf;
      theArray = *buf;
      (*(*this + 96))(this, 3268, 0, 0, &theArray, 8);
      if (v41)
      {
        CFRelease(v41);
      }
    }

    if ((*v59 & 1) == 0)
    {
      if (!v63)
      {
        v57 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v57, "Could not construct");
      }

      applesauce::CF::details::find_at_key_or_optional<applesauce::CF::ArrayRef,__CFString const*&>(&theArray, v63, AUSM::kFactoryPresetSoundStagesKey);
      if (v62 == 1)
      {
        if (!theArray)
        {
          v58 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v58, "Could not construct");
        }

        if (CFArrayGetCount(theArray))
        {
          if (AUSM::SoundStage::setAllSoundStages((this + 8720), &theArray))
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v42 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
            {
              v49 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v49 = *v49;
              }

              *buf = 136315394;
              *&buf[4] = v49;
              v65 = 2080;
              v66 = "RestoreState";
              _os_log_debug_impl(&dword_1DDB85000, v42, OS_LOG_TYPE_DEBUG, "[%s|%s] Set SoundStage Parameters", buf, 0x16u);
            }

            v59[2056] = 1;
            atomic_store(1u, v59 + 2930);
          }

          else
          {
            v59[2056] = 0;
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v43 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v50 = (this + 3752);
              if (*(this + 3775) < 0)
              {
                v50 = *v50;
              }

              *buf = 136315394;
              *&buf[4] = v50;
              v65 = 2080;
              v66 = "RestoreState";
              _os_log_error_impl(&dword_1DDB85000, v43, OS_LOG_TYPE_ERROR, "[%s|%s] Found SoundStages in Dictionary, but failed to set parameters on SoundStageManager", buf, 0x16u);
            }
          }
        }

        if (theArray)
        {
          CFRelease(theArray);
        }
      }
    }

    v44 = atomic_load(v59 + 3043);
    if ((v44 & 1) == 0)
    {
      atomic_store(1u, v59 + 3043);
    }

    atomic_store(1u, this + 3392);
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v29 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v45 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v45 = *v45;
      }

      *buf = 136315394;
      *&buf[4] = v45;
      v65 = 2080;
      v66 = "RestoreState";
      _os_log_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_DEFAULT, "[%s|%s] finished", buf, 0x16u);
    }
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v29 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v47 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v47 = *v47;
      }

      *buf = 136315394;
      *&buf[4] = v47;
      v65 = 2080;
      v66 = "RestoreState";
      _os_log_error_impl(&dword_1DDB85000, v29, OS_LOG_TYPE_ERROR, "[%s|%s] Invalid preset.", buf, 0x16u);
    }

    v13 = 4294956445;
  }

  if (v63)
  {
    CFRelease(v63);
  }

  return v13;
}

void sub_1DDCE6E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  std::optional<applesauce::CF::ArrayRef>::~optional(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  _Unwind_Resume(a1);
}

uint64_t AUSpatialMixerV2::SaveState(AUSpatialMixerV2 *this, ausdk **a2)
{
  v89[3] = *MEMORY[0x1E69E9840];
  v3 = &xmmword_1ECDA9000;
  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v4 = &xmmword_1ECDA9000;
  v5 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v6 = *v6;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v6;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = "SaveState";
    _os_log_impl(&dword_1DDB85000, v5, OS_LOG_TYPE_DEFAULT, "[%s|%s] ", &buf, 0x16u);
  }

  v7 = (this + 3504);
  v66 = this + 3504;
  v67 = 1;
  std::__shared_mutex_base::lock_shared((this + 3504));
  ausdk::AUBase::SaveState(this, a2);
  AUSM::GlobalGeometry::getTuningParameters(&value, this + 8720);
  v8 = this + 6856;
  if ((*(this + 6856) & 1) != 0 || *(this + 8912) != 1)
  {
    v34 = 0;
  }

  else
  {
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 8720);
    v79 = 0;
    v80 = 0;
    v81 = 0;
    v9 = *(this + 1112);
    v10 = *(this + 1111);
    if (v9 != v10)
    {
      v11 = 0;
      v12 = 0;
      do
      {
        v68 = 0;
        v69 = 0;
        v70 = 0;
        v13 = *(v10 + 184 * v11 + 24);
        if (v13 != 5)
        {
          v14 = v9 - v10;
          if (v9 != v10)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0xD37A6F4DE9BD37A7 * (v14 >> 3);
            while (*(v10 + 184 * v15 + 24) != v13)
            {
              v15 = ++v16;
              if (v17 <= v16)
              {
                goto LABEL_16;
              }
            }

            if (*(v10 + 184 * v16 + 40) != *(v10 + 184 * v16 + 32))
            {
              v20 = 0;
              v21 = 0;
              v22 = v16;
              do
              {
                applesauce::CF::StringRef::from_get(&v76, kPresetKeyChannelLabel);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,unsigned int const&>(&buf, v76, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20 + 28));
                applesauce::CF::StringRef::from_get(&v82, kPresetKeyAzimuth);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&buf.__r_.__value_.__r.__words[2], v82, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20));
                applesauce::CF::StringRef::from_get(&v75, kPresetKeyElevation);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v85, v75, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20 + 4));
                applesauce::CF::StringRef::from_get(&v74, kPresetKeyDistance);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v86, v74, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20 + 8));
                applesauce::CF::StringRef::from_get(&v73, kPresetKeyGain);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v87, v73, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20 + 12));
                applesauce::CF::StringRef::from_get(&v72, kPresetKeyDRRAdjustment);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(&v88, v72, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20 + 16));
                applesauce::CF::StringRef::from_get(&v71, kPresetKeyDelay);
                applesauce::CF::TypeRefPair::TypeRefPair<applesauce::CF::StringRef,float const&>(v89, v71, (*(*(this + 1111) + 184 * v22 + 32) + 32 * v20 + 20));
                v77[0] = &buf;
                v77[1] = 7;
                cf = applesauce::CF::details::make_CFDictionaryRef(v77);
                std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100](&v68, &cf);
                if (cf)
                {
                  CFRelease(cf);
                }

                for (i = 0; i != -14; i -= 2)
                {
                  v24 = v89[i + 1];
                  if (v24)
                  {
                    CFRelease(v24);
                  }

                  v25 = v89[i];
                  if (v25)
                  {
                    CFRelease(v25);
                  }
                }

                if (v71)
                {
                  CFRelease(v71);
                }

                if (v72)
                {
                  CFRelease(v72);
                }

                if (v73)
                {
                  CFRelease(v73);
                }

                if (v74)
                {
                  CFRelease(v74);
                }

                if (v75)
                {
                  CFRelease(v75);
                }

                if (v82)
                {
                  CFRelease(v82);
                }

                if (v76)
                {
                  CFRelease(v76);
                }

                v10 = *(this + 1111);
                v20 = ++v21;
              }

              while (v21 < ((*(v10 + 184 * v22 + 40) - *(v10 + 184 * v22 + 32)) >> 5));
            }

            AUSM::SoundStage::RenderingParameters::getMutableDictionary(&buf, v10 + 184 * v11 + 164);
            v26 = buf.__r_.__value_.__r.__words[0];
            v27 = AUSM::kSoundStageLabelKey;
            v28 = *(this + 1111) + 184 * v11;
            v29 = *(v28 + 23);
            if (v29 < 0)
            {
              if (*v28)
              {
                v29 = *(v28 + 8);
                v28 = *v28;
                goto LABEL_50;
              }

              v30 = 0;
              v77[0] = 0;
            }

            else
            {
LABEL_50:
              v30 = CFStringCreateWithBytes(0, v28, v29, 0x8000100u, 0);
              v77[0] = v30;
              if (!v30)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
              }
            }

            CFDictionaryAddValue(v26, v27, v30);
            if (v77[0])
            {
              CFRelease(v77[0]);
            }

            v31 = buf.__r_.__value_.__r.__words[0];
            v32 = AUSM::kWarpingParametersKey;
            v33 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v68);
            v77[0] = v33;
            CFDictionaryAddValue(v31, v32, v33);
            CFRelease(v33);
            v3 = &xmmword_1ECDA9000;
            v4 = &xmmword_1ECDA9000;
            applesauce::CF::DictionaryRef::from_get(v77, buf.__r_.__value_.__l.__data_);
            std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100](&v79, v77);
            if (v77[0])
            {
              CFRelease(v77[0]);
            }

            if (buf.__r_.__value_.__r.__words[0])
            {
              CFRelease(buf.__r_.__value_.__l.__data_);
            }

            goto LABEL_57;
          }

LABEL_16:
          if (*(v3 + 257) != -1)
          {
            dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
          }

          v18 = *(v4 + 256);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = this + 8920;
            if (*(this + 8943) < 0)
            {
              v19 = *(this + 1115);
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
            *(buf.__r_.__value_.__r.__words + 4) = v19;
            WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
            *(&buf.__r_.__value_.__r.__words[1] + 6) = "getWarpingDictionaryVector";
            HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
            v84 = v13;
            _os_log_error_impl(&dword_1DDB85000, v18, OS_LOG_TYPE_ERROR, "[%s|%s] Failed to find valid index for SoundStage with enum = %d", &buf, 0x1Cu);
          }
        }

LABEL_57:
        buf.__r_.__value_.__r.__words[0] = &v68;
        std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&buf);
        v9 = *(this + 1112);
        v10 = *(this + 1111);
        v11 = ++v12;
      }

      while (0xD37A6F4DE9BD37A7 * ((v9 - v10) >> 3) > v12);
    }

    v34 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v79);
    buf.__r_.__value_.__r.__words[0] = &v79;
    std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&buf);
    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 8720);
    v7 = (this + 3504);
    v8 = this + 6856;
  }

  AUSM::Properties::createPropertyDictionaryForSaveState((this + 3744), &v79);
  buf.__r_.__value_.__r.__words[0] = &v79;
  buf.__r_.__value_.__l.__size_ = 1;
  v35 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&buf);
  v77[0] = v35;
  if (v79)
  {
    CFRelease(v79);
  }

  v36 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  while (1)
  {
    v37 = *(this + 15);
    if (v37)
    {
      LODWORD(v38) = (*(*v37 + 24))(v37);
    }

    else
    {
      v38 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (v36 >= v38)
    {
      break;
    }

    Element = ausdk::AUScope::GetElement((this + 80), v36);
    v40 = Element;
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(Element + 800);
    ausdk::AUChannelLayout::AUChannelLayout(&buf, (v40 + 30));
    v41 = *buf.__r_.__value_.__l.__data_;
    if (*buf.__r_.__value_.__l.__data_ == 0x10000)
    {
      v42 = vcnt_s8(*(buf.__r_.__value_.__r.__words[0] + 4));
      v42.i16[0] = vaddlv_u8(v42);
      if (v42.i32[0])
      {
        goto LABEL_77;
      }
    }

    else if (v41)
    {
      if (*buf.__r_.__value_.__l.__data_)
      {
LABEL_77:
        if ((v41 | 0x10000) != 0x10000)
        {
          goto LABEL_79;
        }
      }
    }

    else if (*(buf.__r_.__value_.__r.__words[0] + 8))
    {
      goto LABEL_77;
    }

    v41 = -65536;
LABEL_79:
    atomic_store(v41, v40 + 262);
    AUSM::Properties::createPropertyDictionaryForSaveState((v40 + 208), &v68);
    if (buf.__r_.__value_.__r.__words[0])
    {
      buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock((v40 + 200));
    std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100](&v79, &v68);
    if (v68)
    {
      CFRelease(v68);
    }

    ++v36;
  }

  v43 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v79);
  cf = v43;
  v44 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v44)
  {
    ausdk::Throw(0xFFFFD583);
  }

  ausdk::AUChannelLayout::AUChannelLayout(&buf, (v44 + 30));
  v45 = *buf.__r_.__value_.__l.__data_;
  if (*buf.__r_.__value_.__l.__data_ == 0x10000)
  {
    v46 = vcnt_s8(*(buf.__r_.__value_.__r.__words[0] + 4));
    v46.i16[0] = vaddlv_u8(v46);
    if (v46.i32[0])
    {
      goto LABEL_92;
    }

LABEL_93:
    v45 = -65536;
  }

  else
  {
    if (v45)
    {
      if (!*buf.__r_.__value_.__l.__data_)
      {
        goto LABEL_93;
      }
    }

    else if (!*(buf.__r_.__value_.__r.__words[0] + 8))
    {
      goto LABEL_93;
    }

LABEL_92:
    if ((v45 | 0x10000) == 0x10000)
    {
      goto LABEL_93;
    }
  }

  atomic_store(v45, v44 + 80);
  AUSM::Properties::createPropertyDictionaryForSaveState((v44 + 62), &v82);
  if (buf.__r_.__value_.__r.__words[0])
  {
    buf.__r_.__value_.__l.__size_ = buf.__r_.__value_.__r.__words[0];
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v68 = &v82;
  v69 = 1;
  v47 = applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(&v68);
  v76 = v47;
  if (v82)
  {
    CFRelease(v82);
  }

  if (v65 == 1)
  {
    CFDictionaryAddValue(*a2, AUSM::kFactoryPresetChannelOverridesKey, value);
  }

  CFDictionaryAddValue(*a2, AUSM::kFactoryPresetInputPropertiesKey, v43);
  CFDictionaryAddValue(*a2, AUSM::kFactoryPresetOutputPropertiesKey, v47);
  CFDictionaryAddValue(*a2, AUSM::kFactoryPresetGlobalPropertiesKey, v35);
  if ((*v8 & 1) == 0 && v34 && v8[2056] == 1)
  {
    CFDictionaryAddValue(*a2, @"SoundStages", v34);
  }

  AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&buf, this + 4064);
  v48 = buf.__r_.__value_.__r.__words[0];
  if (buf.__r_.__value_.__r.__words[0])
  {
    if (*(this + 1232))
    {
      AUSM::AppleSauceCFWithMutex<__CFURL const*>::load(&v68, this + 4064);
      v49 = v68;
      v50 = CFURLGetString(v68);
      v51 = *(this + 1232);
      v52 = *(v51 + 1031);
      if (v52 < 0)
      {
        v53 = *(v51 + 1008);
        if (v53)
        {
          v52 = *(v51 + 1016);
          goto LABEL_111;
        }

        v82 = 0;
      }

      else
      {
        v53 = (v51 + 1008);
LABEL_111:
        v53 = CFStringCreateWithBytes(0, v53, v52, 0x8000100u, 0);
        v82 = v53;
        if (!v53)
        {
          v62 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v62, "Could not construct");
        }
      }

      v54 = CFStringCompare(v50, v53, 0) == kCFCompareEqualTo;
      if (v82)
      {
        CFRelease(v82);
      }

      if (v49)
      {
        CFRelease(v49);
      }
    }

    else
    {
      v54 = 0;
    }

    CFRelease(v48);
    if (v54)
    {
      v55 = CFDictionaryGetValue(*a2, AUSM::kFactoryPresetGlobalPropertiesKey);
      ValueAtIndex = CFArrayGetValueAtIndex(v55, 0);
      std::to_string(&buf, 3203);
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if (p_buf)
      {
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = buf.__r_.__value_.__l.__size_;
        }

        p_buf = CFStringCreateWithBytes(0, p_buf, size, 0x8000100u, 0);
        v68 = p_buf;
        if (!p_buf)
        {
          v59 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v59, "Could not construct");
        }
      }

      else
      {
        v68 = 0;
      }

      CFDictionaryRemoveValue(ValueAtIndex, p_buf);
      if (v68)
      {
        CFRelease(v68);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }
    }
  }

  CFRelease(v47);
  CFRelease(v43);
  buf.__r_.__value_.__r.__words[0] = &v79;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&buf);
  CFRelease(v35);
  if (v34)
  {
    CFRelease(v34);
  }

  if (value)
  {
    CFRelease(value);
  }

  std::__shared_mutex_base::unlock_shared(v7);
  return 0;
}

void sub_1DDCE7B44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, applesauce::CF::TypeRefPair *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, const void *a20, const void *a21, uint64_t a22, char a23, uint64_t a24, __int16 *a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, int a41, __int16 a42, char a43, char a44, int a45, const void *a46, const void *a47, uint64_t a48, const void *a49, __int16 a50, char a51, char a52)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a25);
  if (*(v52 - 201) < 0)
  {
    operator delete(*(v52 - 224));
  }

  applesauce::CF::ArrayRef::~ArrayRef(&a46);
  applesauce::CF::ArrayRef::~ArrayRef(&a49);
  a25 = &a50;
  std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](&a25);
  applesauce::CF::ArrayRef::~ArrayRef(&a47);
  applesauce::CF::ArrayRef::~ArrayRef(&a20);
  std::pair<applesauce::CF::ArrayRef,AUSM::GlobalGeometry::DataType>::~pair(&a21);
  std::shared_lock<std::shared_mutex>::~shared_lock[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(uint64_t a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, *(a1 + 8));
  v2 = *(a1 + 8);
  v3 = __p;
  if (v2)
  {
    v4 = *a1;
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      *v3++ = v6;
      v5 -= 8;
    }

    while (v5);
    v3 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v3, v10);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_1DDCE7FE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_1DDCE807C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<applesauce::CF::DictionaryRef>::push_back[abi:ne200100](void *result, void *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<std::complex<float>>::__throw_length_error[abi:ne200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v14 = v2;
    if (v9)
    {
      std::allocator<applesauce::CF::NumberRef>::allocate_at_least[abi:ne200100](v9);
    }

    v10 = 0;
    v11 = (8 * v6);
    *v11 = *a2;
    *a2 = 0;
    v12 = 8 * v6 + 8;
    v13 = 0;
    std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(v2, &v10);
    v5 = *(v2 + 8);
    result = std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(&v10);
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
    *a2 = 0;
  }

  *(v2 + 8) = v5;
  return result;
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

const void **std::pair<applesauce::CF::ArrayRef,AUSM::GlobalGeometry::DataType>::~pair(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AUSpatialMixerV2::GetParameterInfo(AUSpatialMixerV2 *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = -1073741824;
  if (a2 == 2)
  {
    if (a3 != 3)
    {
      return 4294956418;
    }

LABEL_18:
    v11 = kGainParameterName;
    buffer->cfNameString = kGainParameterName;
    buffer->flags = -939524096;
    CFStringGetCString(v11, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    v12 = 134217825.0;
    goto LABEL_74;
  }

  if (a2 == 1)
  {
    result = 4294956418;
    switch(a3)
    {
      case 0:
        v13 = kAzimuthParameterName;
        goto LABEL_71;
      case 1:
        v24 = kElevationParameterName;
        goto LABEL_66;
      case 2:
        v34 = kDistanceParameterName;
        buffer->cfNameString = kDistanceParameterName;
        buffer->flags = -939524096;
        CFStringGetCString(v34, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Meters;
        v12 = 5.59548898e29;
        goto LABEL_74;
      case 3:
        goto LABEL_18;
      case 4:
        v36 = kPlaybackRateParameterName;
        buffer->cfNameString = kPlaybackRateParameterName;
        buffer->flags = -939524096;
        CFStringGetCString(v36, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x412000003DCCCCCDLL;
        v7 = 1.0;
        goto LABEL_57;
      case 5:
        v14 = kEnableParameterName;
        goto LABEL_64;
      case 6:
        v32 = kMinGainParameterName;
        buffer->cfNameString = kMinGainParameterName;
        buffer->flags = -939524096;
        CFStringGetCString(v32, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_LinearGain;
        v12 = 524288.0;
        goto LABEL_74;
      case 7:
        v33 = kMaxGainParameterName;
        buffer->cfNameString = kMaxGainParameterName;
        buffer->flags = -939524096;
        CFStringGetCString(v33, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_LinearGain;
        *&buffer->minValue = 0x4120000000000000;
        v7 = 10.0;
        goto LABEL_57;
      case 8:
      case 35:
        v8 = &kReverbBlendParameterName;
        if (a3 != 8)
        {
          v8 = &kPostProcReverbBlendParameterName;
        }

        v9 = *v8;
        buffer->cfNameString = *v8;
        buffer->flags = -939524096;
        if (a3 == 8)
        {
          v10 = 30.0;
        }

        else
        {
          v10 = 50.0;
        }

        CFStringGetCString(v9, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Percent;
        *&buffer->minValue = 0x42C8000000000000;
        buffer->defaultValue = v10;
        buffer->flags |= 0x2000000u;
        return result;
      case 10:
        v35 = kOcclusionAttenuationParameterName;
        goto LABEL_68;
      case 11:
        v35 = kObstructionAttenuationParameterName;
LABEL_68:
        buffer->cfNameString = v35;
        buffer->flags = -939524096;
        CFStringGetCString(v35, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Decibels;
        *&v12 = 3267887104;
        goto LABEL_74;
      case 22:
        v13 = kSourceYawName;
        goto LABEL_71;
      case 23:
        v24 = kSourcePitchName;
        goto LABEL_66;
      case 24:
        v13 = kSourceRollName;
        goto LABEL_71;
      case 25:
        v28 = kSourceWidthParamName;
        goto LABEL_73;
      case 26:
        v28 = kSourceHeightParamName;
        goto LABEL_73;
      case 27:
        v28 = kSourceDepthParamName;
        goto LABEL_73;
      case 28:
        v28 = kSourceDivergenceParamName;
        goto LABEL_73;
      case 29:
        v29 = kSourceDivergenceAzimuthRangeParamName;
        buffer->cfNameString = kSourceDivergenceAzimuthRangeParamName;
        buffer->flags = -939524096;
        CFStringGetCString(v29, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Ratio;
        v12 = 5.62949953e15;
        goto LABEL_74;
      case 30:
        v28 = kSourceDivergencePositionRangeParamName;
        goto LABEL_73;
      case 31:
        v27 = kHeadLockedParamName;
        goto LABEL_46;
      case 32:
        v27 = kSpeakerSnapParamName;
        goto LABEL_46;
      case 33:
        v28 = kDiffuseParamName;
LABEL_73:
        buffer->cfNameString = v28;
        buffer->flags = -939524096;
        CFStringGetCString(v28, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Ratio;
        v12 = 0.0078125;
        goto LABEL_74;
      case 34:
        v30 = kSceneScaleParamName;
        buffer->cfNameString = kSceneScaleParamName;
        buffer->flags = -939524096;
        CFStringGetCString(v30, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Meters;
        *&buffer->minValue = 0x461C400000000000;
        v7 = 1.0;
        v31 = buffer->flags | 0x800000;
        goto LABEL_58;
      case 39:
        v27 = kInternalizedParamName;
LABEL_46:
        buffer->cfNameString = v27;
        buffer->flags = -939524096;
        CFStringGetCString(v27, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        v25 = 0x3F80000000000000;
        goto LABEL_47;
      case 40:
        v39 = kStereoPanningRefAngleParamName;
        buffer->cfNameString = kStereoPanningRefAngleParamName;
        buffer->flags = -939524096;
        CFStringGetCString(v39, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Degrees;
        *&buffer->minValue = 0x42B4000000000000;
        v37 = 45.0;
        goto LABEL_79;
      case 41:
        v38 = kFieldOfViewAzimuthParamName;
        buffer->cfNameString = kFieldOfViewAzimuthParamName;
        buffer->flags = -939524096;
        CFStringGetCString(v38, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Degrees;
        *&buffer->minValue = 0x42DC000000000000;
        *&buffer->defaultValue = 0xA00042DC0000;
        return result;
      default:
        return result;
    }
  }

  if (a2)
  {
    return 0;
  }

  result = 4294956418;
  if (a3 > 18)
  {
    if (a3 > 35)
    {
      switch(a3)
      {
        case '$':
          v15 = kListenerPositionXName;
          break;
        case '%':
          v15 = kListenerPositionYName;
          break;
        case '&':
          v15 = kListenerPositionZName;
          break;
        default:
          return result;
      }

      buffer->cfNameString = v15;
      buffer->flags = -939524096;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Meters;
      *&buffer->minValue = 0x461C4000C61C4000;
      v26 = buffer->flags | 0x2800000;
      goto LABEL_75;
    }

    switch(a3)
    {
      case 19:
        v13 = kHeadOrientationYawName;
        break;
      case 20:
        v24 = kHeadOrientationPitchName;
LABEL_66:
        buffer->cfNameString = v24;
        buffer->flags = -939524096;
        CFStringGetCString(v24, buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Degrees;
        v12 = 2.19902453e13;
        goto LABEL_74;
      case 21:
        v13 = kHeadOrientationRollName;
        break;
      default:
        return result;
    }

LABEL_71:
    buffer->cfNameString = v13;
    buffer->flags = -939524096;
    CFStringGetCString(v13, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Degrees;
    v12 = 5.62950281e15;
LABEL_74:
    *&buffer->minValue = v12;
    v26 = buffer->flags | 0x2000000;
LABEL_75:
    buffer->defaultValue = 0.0;
    buffer->flags = v26;
    return result;
  }

  if (a3 <= 15)
  {
    if (a3 != 9)
    {
      if (a3 == 14)
      {
        buffer->cfNameString = @"filter frequency";
        buffer->flags = -939524096;
        CFStringGetCString(@"filter frequency", buffer->name, 52, 0x8000100u);
        *&buffer->unit = 0x4120000000000008;
        v22 = AUSpatialMixerV2::Output(this);
        result = 0;
        v23 = fmin(*(v22 + 80), 20000.0) * 0.5;
        buffer->maxValue = v23;
        LODWORD(v22) = buffer->flags | 0x2400000;
        buffer->defaultValue = 800.0;
        buffer->flags = v22;
      }

      else if (a3 == 15)
      {
        buffer->cfNameString = @"filter bandwidth";
        buffer->flags = -939524096;
        CFStringGetCString(@"filter bandwidth", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Octaves;
        *&buffer->minValue = 0x408000003D4CCCCDLL;
        v7 = 3.0;
LABEL_57:
        v31 = buffer->flags | 0x2000000;
LABEL_58:
        buffer->defaultValue = v7;
        buffer->flags = v31;
      }

      return result;
    }

    v16 = kReverbGainParameterName;
    buffer->cfNameString = kReverbGainParameterName;
    buffer->flags = -939524096;
    CFStringGetCString(v16, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    v12 = 3.43597632e10;
    goto LABEL_74;
  }

  if (a3 == 16)
  {
    buffer->cfNameString = @"filter gain";
    buffer->flags = -939524096;
    CFStringGetCString(@"filter gain", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Decibels;
    __asm { FMOV            V0.2S, #-18.0 }

    v12 = -_D0;
    goto LABEL_74;
  }

  if (a3 == 17)
  {
    buffer->cfNameString = @"filter type";
    buffer->flags = -939524096;
    CFStringGetCString(@"filter type", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Indexed;
    v25 = 0x4120000000000000;
LABEL_47:
    *&buffer->minValue = v25;
    buffer->defaultValue = 0.0;
  }

  else
  {
    v14 = @"filter enable";
LABEL_64:
    buffer->cfNameString = v14;
    buffer->flags = -939524096;
    CFStringGetCString(v14, buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Boolean;
    *&buffer->minValue = 0x3F80000000000000;
    v37 = 1.0;
LABEL_79:
    buffer->defaultValue = v37;
  }

  return result;
}

uint64_t AUSpatialMixerV2::SetInputCallback(AUSpatialMixerV2 *this, uint64_t a2, uint64_t a3, int (*a4)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a5)
{
  Element = ausdk::AUScope::GetElement((this + 80), a3);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*Element + 120))(Element);
  ausdk::AUBase::SetInputCallback(this, a2, a3, a4, a5);
  return 0;
}

uint64_t AUSpatialMixerV2::SetConnection(const void **this, const AudioUnitConnection *a2)
{
  Element = ausdk::AUScope::GetElement((this + 10), a2->destInputNumber);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  (*(*Element + 120))(Element);

  return ausdk::AUBase::SetConnection(this, a2);
}

uint64_t AUSpatialMixerV2::SetBusCount(AUSpatialMixerV2 *this, unsigned int a2, unsigned int a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a2 == 1)
  {
    v5 = *(this + 15);
    if (v5)
    {
      LODWORD(v6) = (*(*v5 + 24))(v5);
    }

    else
    {
      v6 = (*(this + 13) - *(this + 12)) >> 3;
    }

    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v10 = getAUSMV2Log(void)::gLog;
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v6 == a3)
    {
      if (v11)
      {
        v12 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v12 = *v12;
        }

        *buf = 136315650;
        v29 = v12;
        v30 = 2080;
        v31 = "SetBusCount";
        v32 = 1024;
        v33 = a3;
        _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting input bus count = %u (not changed)", buf, 0x1Cu);
      }
    }

    else
    {
      if (v11)
      {
        v13 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v13 = *v13;
        }

        *buf = 136315650;
        v29 = v13;
        v30 = 2080;
        v31 = "SetBusCount";
        v32 = 1024;
        v33 = a3;
        _os_log_impl(&dword_1DDB85000, v10, OS_LOG_TYPE_DEFAULT, "[%s|%s] Setting input bus count = %u", buf, 0x1Cu);
      }

      v14 = atomic_load(this + 9897);
      if (v6 > a3 && (v14 & 1) == 0)
      {
        v15 = a3;
        do
        {
          Element = ausdk::AUScope::GetElement((this + 80), v15);
          v17 = Element;
          if (!Element)
          {
            ausdk::Throw(0xFFFFD583);
          }

          *(Element + 172) = 0;
          if (*(Element + 152))
          {
            (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
            *(v17 + 152) = 0;
          }

          *(v17 + 160) = 0;
          *(v17 + 144) = 0;
          ++v15;
        }

        while (v6 != v15);
      }

      v27[0] = this + 3504;
      v27[1] = this + 3456;
      while (1)
      {
        std::__shared_mutex_base::lock((this + 3504));
        if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 3456))
        {
          break;
        }

        std::__shared_mutex_base::unlock((this + 3504));
        sched_yield();
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::lock(this + 3456);
        if (std::__shared_mutex_base::try_lock((this + 3504)))
        {
          break;
        }

        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
        sched_yield();
      }

      ausdk::AUScope::SetNumberOfElements((this + 80), a3);
      v18 = *(this + 15);
      if (v18)
      {
        LODWORD(v19) = (*(*v18 + 24))(v18);
      }

      else
      {
        v19 = (*(this + 13) - *(this + 12)) >> 3;
      }

      if (v19 != *(this + 680))
      {
        if (getAUSMV2Log(void)::onceToken != -1)
        {
          dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
        }

        v20 = getAUSMV2Log(void)::gLog;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = (this + 3752);
          if (*(this + 3775) < 0)
          {
            v26 = *v26;
          }

          *buf = 136315650;
          v29 = v26;
          v30 = 2080;
          v31 = "SetBusCount";
          v32 = 1024;
          v33 = v19;
          _os_log_debug_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_DEBUG, "[%s|%s] Setting late reverb bus count = %u", buf, 0x1Cu);
        }

        if (*(this + 680) != 3 * v19)
        {
          caulk::pooled_semaphore_mutex::_lock((this + 2628));
          *(this + 680) = 3 * v19;
          IR::SharedIRBuses::checkForAppliedChanges((this + 2480), v21);
          atomic_store(1u, this + 2625);
          caulk::pooled_semaphore_mutex::_unlock((this + 2628));
        }
      }

      if (v19 > v6)
      {
        v22 = atomic_load(this + 9897);
        if (v22)
        {
          do
          {
            v23 = ausdk::AUScope::GetElement((this + 80), v6);
            v24 = v23;
            if (!v23)
            {
              ausdk::Throw(0xFFFFD583);
            }

            (*(*v23 + 112))(v23);
            AUSpatialMixerV2InputElement::UpdateAlignmentDelayLines(v24);
            LODWORD(v6) = v6 + 1;
          }

          while (v19 != v6);
        }
      }

      std::scoped_lock<std::shared_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>::~scoped_lock[abi:ne200100](v27);
      AUSpatialMixerV2::UpdateReverbIfNecessary(this, -1, 0, 0);
    }

    return 0;
  }

  else
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v8 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v25 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v25 = *v25;
      }

      *buf = 136315650;
      v29 = v25;
      v30 = 2080;
      v31 = "SetBusCount";
      v32 = 1024;
      v33 = a2;
      _os_log_error_impl(&dword_1DDB85000, v8, OS_LOG_TYPE_ERROR, "[%s|%s] cannot change bus count for scope = %u", buf, 0x1Cu);
    }

    return 4294956430;
  }
}

void sub_1DDCE91DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  caulk::pooled_semaphore_mutex::_unlock((v9 + 2628));
  std::scoped_lock<std::shared_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>::~scoped_lock[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::scoped_lock<std::shared_mutex,caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>>::~scoped_lock[abi:ne200100](uint64_t a1)
{
  std::__shared_mutex_base::unlock(*a1);
  caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(*(a1 + 8));
  return a1;
}

uint64_t AUSpatialMixerV2::Render(AUSpatialMixerV2 *this, unsigned int *a2, AudioTimeStamp *a3, AudioBufferList *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  if (caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::try_lock(this + 3456))
  {
    if (*(this + 17) != 1 || (v8 = atomic_load(this + 9897), (v8 & 1) == 0))
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v19 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v31 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v31 = *v31;
        }

        v34 = 136315394;
        v35 = v31;
        v36 = 2080;
        v37 = "Render";
        _os_log_error_impl(&dword_1DDB85000, v19, OS_LOG_TYPE_ERROR, "[%s|%s] Trying to render while uninitialized", &v34, 0x16u);
      }

      v18 = 4294956429;
      goto LABEL_39;
    }

    if (*(this + 540) == 1 && *(this + 134) == 1)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v9 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v10 = *v10;
        }

        v34 = 136315394;
        v35 = v10;
        v36 = 2080;
        v37 = "Render";
        _os_log_impl(&dword_1DDB85000, v9, OS_LOG_TYPE_DEFAULT, "[%s|%s] Switching from ProcessMultiple to Render without reinitializing", &v34, 0x16u);
      }
    }

    *(this + 134) = 0;
    *(this + 540) = 1;
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!*(Element + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    v12 = *(Element + 152);
    if (*(Element + 108) <= 2u)
    {
      v13 = 2;
    }

    else
    {
      v13 = *(Element + 108);
    }

    v14 = AUSM::ABLBuffer::setupBufferList((this + 3152), v13, 0, a4, 4);
    v40[0] = v14;
    v15 = *(this + 15);
    if (v15)
    {
      v16 = (*(*v15 + 24))(v15);
    }

    else
    {
      v16 = (*(this + 13) - *(this + 12)) >> 3;
    }

    v20 = AUSpatialMixerV2::ProcessMultipleBufferListsSlicingPrivate(this, a2, a4, v16, 0, 1, v40, a3);
    if (v20)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v21 = getAUSMV2Log(void)::gLog;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v32 = (this + 3752);
        if (*(this + 3775) < 0)
        {
          v32 = *v32;
        }

        v34 = 136315650;
        v35 = v32;
        v36 = 2080;
        v37 = "Render";
        v38 = 1024;
        v39 = v20;
        _os_log_error_impl(&dword_1DDB85000, v21, OS_LOG_TYPE_ERROR, "[%s|%s] PMBLSP return an error %d", &v34, 0x1Cu);
      }
    }

    v18 = AUSpatialMixerV2::ConvertOutputData(this, v14, v12 + 2, a4);
    if (v18)
    {
      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v22 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_38;
      }

      v33 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v33 = *v33;
      }

      v34 = 136315650;
      v35 = v33;
      v36 = 2080;
      v37 = "Render";
      v38 = 1024;
      v39 = v18;
      v29 = "[%s|%s] ConvertOutputData ERROR: result = %d";
    }

    else
    {
      if (!*(this + 430))
      {
        goto LABEL_39;
      }

      v24 = atomic_load(this + 3828);
      v25 = (v24 & 1) == 0;
      v26 = MEMORY[0x1E698D820];
      if (!v25)
      {
        v26 = MEMORY[0x1E698D818];
      }

      v27 = v26(*(this + 430), a4, v12 + 2);
      if (!v27)
      {
        goto LABEL_39;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v22 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
LABEL_38:

LABEL_39:
        caulk::recursive_mutex_adapter<caulk::pooled_semaphore_mutex>::unlock(this + 3456);
        return v18;
      }

      v28 = (this + 3752);
      if (*(this + 3775) < 0)
      {
        v28 = *v28;
      }

      v34 = 136315650;
      v35 = v28;
      v36 = 2080;
      v37 = "Render";
      v38 = 1024;
      v39 = v27;
      v29 = "[%s|%s] ERROR: writing data to output file, %d";
    }

    _os_log_debug_impl(&dword_1DDB85000, v22, OS_LOG_TYPE_DEBUG, v29, &v34, 0x1Cu);
    goto LABEL_38;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v17 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v30 = (this + 3752);
    if (*(this + 3775) < 0)
    {
      v30 = *v30;
    }

    v34 = 136315394;
    v35 = v30;
    v36 = 2080;
    v37 = "Render";
    _os_log_error_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_ERROR, "[%s|%s] Trying to render while initialization or clean-up is in process", &v34, 0x16u);
  }

  return 4294956429;
}