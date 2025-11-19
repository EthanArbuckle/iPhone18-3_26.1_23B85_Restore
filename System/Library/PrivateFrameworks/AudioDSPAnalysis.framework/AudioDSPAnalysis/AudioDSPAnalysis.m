void RealTimeAudioIssueDetectorCreate()
{
  v5 = *MEMORY[0x277D85DE8];
  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  atomic_fetch_add(&dword_27E547F78, 1u);
  v0 = qword_27E547F70;
  while (1)
  {
    v1 = (v0 + 1) > 1 ? v0 + 1 : 1;
    qword_27E547F70 = v1;
    v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(v1);
    if (!v2)
    {
      break;
    }

    v4 = v2[3];
    v3 = v2[4];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      v0 = qword_27E547F70;
      if (!v4)
      {
        break;
      }
    }

    else
    {
      v0 = v1;
      if (!v4)
      {
        break;
      }
    }
  }

  operator new();
}

void sub_241558640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count **a10)
{
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](0, v10);
  std::unique_ptr<rtaid::Detector>::~unique_ptr[abi:ne200100](&a10);
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

void SingletonManagerInstance(void)
{
  {
    {
      _ZNSt3__111make_uniqueB8ne200100IN5rtaid19DependencyInjectionEJELi0EEENS_10unique_ptrIT_NS_14default_deleteIS4_EEEEDpOT0_();
    }
  }
}

void sub_2415586F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<rtaid::DependencyInjection>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_241558B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t a12, uint64_t a13)
{
  v14 = *(a13 + 32);
  *(a13 + 32) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a13 + 24);
  *(a13 + 24) = 0;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  v16 = *a11;
  *a11 = 0;
  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  MEMORY[0x245CE96E0](a13, 0x1020C40C6E6B0D4);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<rtaid::DependencyInjection>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    v2[4] = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v2[3];
    v2[3] = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v2[2];
    v2[2] = 0;
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    MEMORY[0x245CE96E0](v2, 0x1020C40C6E6B0D4);
  }

  return a1;
}

uint64_t RealTimeAudioIssueDetectorDispose(unint64_t a1)
{
  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  atomic_fetch_add(&dword_27E547F78, 1u);
  v2 = qword_27E547F50;
  if (qword_27E547F50)
  {
    v3 = vcnt_s8(qword_27E547F50);
    v3.i16[0] = vaddlv_u8(v3);
    if (v3.u32[0] > 1uLL)
    {
      v4 = a1;
      if (qword_27E547F50 <= a1)
      {
        v4 = a1 % qword_27E547F50;
      }
    }

    else
    {
      v4 = (qword_27E547F50 - 1) & a1;
    }

    v5 = *(qword_27E547F48 + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (*v5)
      {
        v7 = qword_27E547F50 - 1;
        do
        {
          v8 = v6[1];
          if (v8 == a1)
          {
            if (v6[2] == a1)
            {
              v9 = v6[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v9 >= qword_27E547F50)
                {
                  v9 %= qword_27E547F50;
                }
              }

              else
              {
                v9 &= v7;
              }

              v10 = *(qword_27E547F48 + 8 * v9);
              do
              {
                v11 = v10;
                v10 = *v10;
              }

              while (v10 != v6);
              if (v11 == &qword_27E547F58)
              {
                goto LABEL_36;
              }

              v12 = v11[1];
              if (v3.u32[0] > 1uLL)
              {
                if (v12 >= qword_27E547F50)
                {
                  v12 %= qword_27E547F50;
                }
              }

              else
              {
                v12 &= v7;
              }

              if (v12 != v9)
              {
LABEL_36:
                if (!*v6)
                {
                  goto LABEL_37;
                }

                v13 = *(*v6 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v13 >= qword_27E547F50)
                  {
                    v13 %= qword_27E547F50;
                  }
                }

                else
                {
                  v13 &= v7;
                }

                if (v13 != v9)
                {
LABEL_37:
                  *(qword_27E547F48 + 8 * v9) = 0;
                }
              }

              v14 = *v6;
              if (*v6)
              {
                v15 = *(v14 + 8);
                if (v3.u32[0] > 1uLL)
                {
                  if (v15 >= v2)
                  {
                    v15 %= v2;
                  }
                }

                else
                {
                  v15 &= v7;
                }

                if (v15 != v9)
                {
                  *(qword_27E547F48 + 8 * v15) = v11;
                  v14 = *v6;
                }
              }

              *v11 = v14;
              *v6 = 0;
              --qword_27E547F60;
              std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,void *>>>::operator()[abi:ne200100](1, v6);
              break;
            }
          }

          else
          {
            if (v3.u32[0] > 1uLL)
            {
              if (v8 >= qword_27E547F50)
              {
                v8 %= qword_27E547F50;
              }
            }

            else
            {
              v8 &= v7;
            }

            if (v8 != v4)
            {
              break;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  atomic_fetch_add(&dword_27E547F78, 0xFFFFFFFF);
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  return 0;
}

uint64_t RealTimeAudioIssueDetectorInitialize(unint64_t a1)
{
  v102 = *MEMORY[0x277D85DE8];
  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (!v2)
  {
    v12 = 0xFFFFFFFFLL;
    goto LABEL_225;
  }

  v3 = *(v2 + 3);
  v4 = *(v2 + 4);
  v90 = v3;
  v91 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v12 = 0xFFFFFFFFLL;
    if (v4)
    {
      goto LABEL_224;
    }

    goto LABEL_225;
  }

  rtaid::GetClientIDMap(v2);
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(&rtaid::GetClientIDMap(void)::gClientIDMap, *v3);
  if (!v5)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  v6 = v5 + 3;
  if (*(v5 + 47) < 0)
  {
    v6 = *v6;
  }

  v7 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v8 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "Manager.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 104;
    *&buf[18] = 2080;
    *&buf[20] = v6;
    _os_log_impl(&dword_241557000, v8, OS_LOG_TYPE_DEBUG, "%s:%-5d initialize called on %s's detector", buf, 0x1Cu);
  }

  v9 = v90;
  rtaid::ConfigurationManager::DetermineConfiguration(qword_27E547FE0, v90, 1);
  rtaid::Manager::applyConfiguration(qword_27E547FE0, v90);
  rtaid::Manager::applyTelephonyResets(*(qword_27E547FE0 + 48), *(qword_27E547FE0 + 56), &v90);
  *buf = &unk_28533B448;
  *&buf[8] = &SingletonManagerInstance(void)::sInstance;
  *&buf[24] = buf;
  v11 = (v9 + 88);
  v10 = *(v9 + 11);
  *(v9 + 11) = 0;
  if (v10 == (v9 + 64))
  {
    (*(*v10 + 32))(v10);
  }

  else if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v13 = *&buf[24];
  if (*&buf[24])
  {
    if (*&buf[24] == buf)
    {
      *v11 = v9 + 64;
      (*(*v13 + 24))(v13, v9 + 64);
      goto LABEL_23;
    }

    *v11 = *&buf[24];
    v11 = &buf[24];
  }

  *v11 = 0;
LABEL_23:
  std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100](buf);
  v14 = (v9 + 24);
  while (1)
  {
    v14 = *v14;
    if (!v14)
    {
      break;
    }

    for (i = 0; i != 7; ++i)
    {
      v16 = v14[3];
      *(v16 + i + 159) = (*(v9 + 6) >> i) & 1;
      rtaid::DetectorNode::updateSilenceAnalyzerState(v16);
    }

    v17 = v14[3];
    rtaid::NodeFormatConverter::disposeConverter((v17 + 40));
    if (*(v17 + 40) != *(v17 + 80))
    {
      goto LABEL_106;
    }

    v18 = *(v17 + 48);
    if (v18 != *(v17 + 88))
    {
      goto LABEL_106;
    }

    if (*(v17 + 56) != *(v17 + 96))
    {
      goto LABEL_106;
    }

    if (*(v17 + 60) != *(v17 + 100))
    {
      goto LABEL_106;
    }

    v19 = *(v17 + 68);
    if (v19 != *(v17 + 108))
    {
      goto LABEL_106;
    }

    v20 = *(v17 + 72);
    if (v20 != *(v17 + 112))
    {
      goto LABEL_106;
    }

    v21 = *(v17 + 52);
    if (v18 != 1819304813)
    {
      if (v21 == *(v17 + 92))
      {
        goto LABEL_43;
      }

      goto LABEL_106;
    }

    v22 = v21 & 0x7FFFFFFF;
    if ((v21 & 0x7FFFFFFF) == 0)
    {
      v22 = *(v17 + 52);
    }

    v23 = *(v17 + 64);
    if (v23)
    {
      if ((v21 & 0x20) != 0)
      {
        v24 = 1;
      }

      else
      {
        v24 = *(v17 + 68);
      }

      if (v24)
      {
        v23 = 8 * (v23 / v24);
        v25 = v23 == v20;
        goto LABEL_51;
      }

      v23 = 0;
    }

    v25 = v20 == 0;
LABEL_51:
    v30 = v25;
    v31 = v22 & 0xFFFFFFBF;
    if (v30)
    {
      v31 |= 8u;
    }

    if ((v20 & 7) == 0 && v23 == v20)
    {
      v31 &= 0xFFFFFFAF;
    }

    if (v31)
    {
      v31 &= 0xFFFFFFBB;
    }

    if ((v31 & 8) != 0 && v20 <= 8)
    {
      v31 &= 2u;
    }

    if (v19 == 1)
    {
      v31 &= ~0x20u;
    }

    if (!v31)
    {
      v31 = 0x80000000;
    }

    v34 = *(v17 + 92);
    v35 = v34 & 0x7FFFFFFF;
    if ((v34 & 0x7FFFFFFF) == 0)
    {
      v35 = *(v17 + 92);
    }

    v36 = *(v17 + 104);
    if (v36)
    {
      if ((v34 & 0x20) != 0)
      {
        v37 = 1;
      }

      else
      {
        v37 = *(v17 + 68);
      }

      if (v37)
      {
        v36 = 8 * (v36 / v37);
        v38 = v36 == v20;
        goto LABEL_83;
      }

      v36 = 0;
    }

    v38 = v20 == 0;
LABEL_83:
    v39 = v38;
    v40 = v35 & 0xFFFFFFBF;
    if (v39)
    {
      v40 |= 8u;
    }

    v41 = (v20 & 7) == 0 && v36 == v20;
    v42 = v40 & 0xFFFFFFAF;
    if (!v41)
    {
      v42 = v40;
    }

    if (v42)
    {
      v42 &= 0xFFFFFFBB;
    }

    v43 = (v42 & 8) == 0 || v20 > 8;
    v44 = v42 & 2;
    if (v43)
    {
      v44 = v42;
    }

    if (v19 == 1)
    {
      v45 = v44 & 0xFFFFFFDF;
    }

    else
    {
      v45 = v44;
    }

    if (!v45)
    {
      v45 = 0x80000000;
    }

    if (v31 == v45)
    {
LABEL_43:
      {
        v7[58] = os_log_create("com.apple.coreaudio", "aid");
      }

      v26 = v7[58];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        CA::StreamDescription::AsString(&__p, (v17 + 40), v27, v28);
        p_p = &__p;
        if (v95 < 0)
        {
          p_p = *&__p.componentType;
        }

        *buf = 136316418;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 81;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v17 + 40;
        v98 = 2080;
        v99 = p_p;
        _os_log_impl(&dword_241557000, v26, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] AudioConverterNew wasn't needed since incoming and outgoing format are equivalent: %s", buf, 0x36u);
        if (v95 < 0)
        {
          operator delete(*&__p.componentType);
        }
      }

      goto LABEL_140;
    }

LABEL_106:
    AudioConverterNew((v17 + 40), (v17 + 80), (v17 + 128));
    v46 = *(v17 + 128);
    if (v46)
    {
      {
        v7[58] = os_log_create("com.apple.coreaudio", "aid");
      }

      v48 = v7[58];
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        CA::StreamDescription::AsString(&__p, (v17 + 40), v49, v50);
        if (v95 >= 0)
        {
          v53 = &__p;
        }

        else
        {
          v53 = *&__p.componentType;
        }

        CA::StreamDescription::AsString(outInstance, (v17 + 80), v51, v52);
        v54 = outInstance;
        if (v93 < 0)
        {
          v54 = outInstance[0];
        }

        *buf = 136316674;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 62;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v17 + 40;
        v98 = 2080;
        v99 = v53;
        v100 = 2080;
        v101 = v54;
        _os_log_impl(&dword_241557000, v48, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] AudioConverterNew succeeded with incoming format %s and outgoing format %s", buf, 0x40u);
        if (v93 < 0)
        {
          operator delete(outInstance[0]);
        }

        if (v95 < 0)
        {
          operator delete(*&__p.componentType);
        }

        v7 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
      }

      if (*(v17 + 120) != 1)
      {
        goto LABEL_140;
      }

      __p.componentType = 1;
      v12 = AudioConverterSetProperty(*(v17 + 128), 0x646D6978u, 4u, &__p);
      if (!v12)
      {
        {
          v7[58] = os_log_create("com.apple.coreaudio", "aid");
        }

        v64 = v7[58];
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          *&buf[4] = "NodeFormatConverter.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 74;
          *&buf[18] = 1040;
          *&buf[20] = 26;
          *&buf[24] = 2080;
          *&buf[26] = "rtaid::NodeFormatConverter]";
          *&buf[34] = 2048;
          *&buf[36] = v17 + 40;
          _os_log_impl(&dword_241557000, v64, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] AudioConverterSetProperty for downmixing set successfully", buf, 0x2Cu);
        }

LABEL_140:
        if (*(v17 + 128))
        {
          if ((*(v17 + 92) & 0x20) == 0)
          {
            v65 = *(v17 + 108);
          }

          v66 = (4 * *v17);
          v67 = ExtendedAudioBufferList_CreateWithFormat();
          v68 = v67;
          v69 = *(v17 + 88);
          if ((v69 == 1885564203 || v69 == 1819304813) && (*(v17 + 92) & 0x20) != 0)
          {
            if (!v67)
            {
LABEL_226:
              exception = __cxa_allocate_exception(0x10uLL);
              std::logic_error::logic_error(exception, "ExtendedAudioBufferList_CreateWithFormat failed");
            }
          }

          else
          {
            v70 = *(v17 + 108);
            if (!v67)
            {
              goto LABEL_226;
            }
          }

          v71 = *(v67 + 4);
          ExtendedAudioBufferList_Prepare();
          if (*(v17 + 144) == 1)
          {
            v72 = *(v17 + 136);
          }

          else
          {
            *(v17 + 144) = 1;
          }

          *(v17 + 136) = v68;
          ExtendedAudioBufferList_Destroy();
        }

        if ((*(v17 + 159) & 1) != 0 || (*(v17 + 152) & 1) != 0 || (*(v17 + 160) & 1) != 0 || (*(v17 + 153) & 1) != 0 || (*(v17 + 161) & 1) != 0 || *(v17 + 154) == 1)
        {
          {
            v7[58] = os_log_create("com.apple.coreaudio", "aid");
          }

          v73 = v7[58];
          if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
          {
            *buf = 136316162;
            *&buf[4] = "DetectorNode.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 80;
            *&buf[18] = 1040;
            *&buf[20] = 19;
            *&buf[24] = 2080;
            *&buf[26] = "rtaid::DetectorNode]";
            *&buf[34] = 2048;
            *&buf[36] = v17;
            _os_log_impl(&dword_241557000, v73, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] adding silenceNonFiniteAnalyzer", buf, 0x2Cu);
          }

          __p.componentFlagsMask = 0;
          *&__p.componentType = *"xfuaalislppa";
          Next = AudioComponentFindNext(0, &__p);
          outInstance[0] = 0;
          v75 = AudioComponentInstanceNew(Next, outInstance);
          if (outInstance[0])
          {
            std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100]((v17 + 32), outInstance[0]);
            v76 = *(v17 + 96);
            *buf = *(v17 + 80);
            *&buf[16] = v76;
            *&buf[32] = *(v17 + 112);
            AudioUnitSetProperty(outInstance[0], 8u, 1u, 0, buf, 0x28u);
            AudioUnitSetProperty(outInstance[0], 8u, 2u, 0, buf, 0x28u);
            AudioUnitSetProperty(outInstance[0], 0xEu, 0, 0, v17, 4u);
            v12 = AudioUnitInitialize(outInstance[0]);
            if (v12)
            {
              std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100]((v17 + 32), 0);
            }

            else
            {
              if ((*(v17 + 160) & 1) == 0 && (*(v17 + 153) & 1) == 0 && (*(v17 + 161) & 1) == 0 && (*(v17 + 154) & 1) == 0)
              {
                inData = 1;
                AudioUnitSetProperty(outInstance[0], 0xFA01u, 0, 0, &inData, 4u);
              }

              if ((*(v17 + 161) & 1) != 0 || *(v17 + 154) == 1)
              {
                inData = 1;
                AudioUnitSetProperty(outInstance[0], 0xFA03u, 0, 0, &inData, 4u);
              }

              if (*(v17 + 48) == 1819304813 && *(v17 + 60) == 1)
              {
                v77 = *(v17 + 64);
                if (v77 == *(v17 + 56))
                {
                  v78 = *(v17 + 72);
                  if (v77 >= v78 >> 3)
                  {
                    v79 = *(v17 + 68);
                    if (v79)
                    {
                      v80 = *(v17 + 52);
                      if ((v80 & 0x20) != 0 || (v25 = v77 == v77 / v79 * v79, v77 /= v79, v25))
                      {
                        if ((*(v17 + 52) & 7) == 4 && 8 * v77 == v78)
                        {
                          v81 = (v80 >> 7) & 0x3F;
                          if ((v81 != 24 || v77 != 4) && !v81 && v77 == 2)
                          {
                            inData = 1;
                            AudioUnitSetProperty(outInstance[0], 0xFA02u, 0, 0, &inData, 4u);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          else
          {
            v12 = v75;
          }
        }

        else
        {
          std::unique_ptr<OpaqueAudioComponentInstance,applesauce::raii::v1::detail::opaque_deletion_functor<OpaqueAudioComponentInstance*,&(AudioComponentInstanceDispose)>>::reset[abi:ne200100]((v17 + 32), 0);
          v12 = 0;
        }

        goto LABEL_190;
      }

      {
        v7[58] = os_log_create("com.apple.coreaudio", "aid");
      }

      v56 = v7[58];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316418;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v17 + 40;
        v98 = 1024;
        LODWORD(v99) = v12;
        _os_log_impl(&dword_241557000, v56, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] AudioConverterSetProperty for downmixing failed with error : %d", buf, 0x32u);
      }
    }

    else
    {
      {
        v7[58] = os_log_create("com.apple.coreaudio", "aid");
      }

      v57 = v7[58];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        CA::StreamDescription::AsString(&__p, (v17 + 40), v58, v59);
        if (v95 >= 0)
        {
          v62 = &__p;
        }

        else
        {
          v62 = *&__p.componentType;
        }

        CA::StreamDescription::AsString(outInstance, (v17 + 80), v60, v61);
        v63 = outInstance;
        if (v93 < 0)
        {
          v63 = outInstance[0];
        }

        *buf = 136316674;
        *&buf[4] = "NodeFormatConverter.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 57;
        *&buf[18] = 1040;
        *&buf[20] = 26;
        *&buf[24] = 2080;
        *&buf[26] = "rtaid::NodeFormatConverter]";
        *&buf[34] = 2048;
        *&buf[36] = v17 + 40;
        v98 = 2080;
        v99 = v62;
        v100 = 2080;
        v101 = v63;
        _os_log_impl(&dword_241557000, v57, OS_LOG_TYPE_ERROR, "[%s:%-5d %.*s:%p] AudioConverterNew failed with incoming format %s and outgoing format %s", buf, 0x40u);
        if (v93 < 0)
        {
          operator delete(outInstance[0]);
        }

        if (v95 < 0)
        {
          operator delete(*&__p.componentType);
        }

        v12 = 4294967293;
        v7 = &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
      }

      else
      {
        v12 = 4294967293;
      }
    }

LABEL_190:
    if (**(v17 + 416) == 1)
    {
      if (*(v17 + 108) >= 4u)
      {
        v82 = 4;
      }

      else
      {
        v82 = *(v17 + 108);
      }
    }

    else
    {
      v82 = 1;
    }

    {
      v7[58] = os_log_create("com.apple.coreaudio", "aid");
    }

    v83 = v7[58];
    if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136316418;
      *&buf[4] = "DetectorNode.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 144;
      *&buf[18] = 1040;
      *&buf[20] = 19;
      *&buf[24] = 2080;
      *&buf[26] = "rtaid::DetectorNode]";
      *&buf[34] = 2048;
      *&buf[36] = v17;
      v98 = 1024;
      LODWORD(v99) = v82;
      _os_log_impl(&dword_241557000, v83, OS_LOG_TYPE_DEBUG, "[%s:%-5d %.*s:%p] rms analysis setup for %d channels", buf, 0x32u);
    }

    std::vector<float>::resize((v17 + 192), v82);
    std::vector<float>::resize((v17 + 216), v82);
    v84 = *(v17 + 40) * 0.5;
    *(v17 + 240) = (*(v17 + 92) & 0x20) == 0;
    *(v17 + 252) = v84;
    *(v17 + 4) = v12 == 0;
    {
      v7[58] = os_log_create("com.apple.coreaudio", "aid");
    }

    v85 = v7[58];
    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 136316418;
      *&buf[4] = "DetectorNode.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 153;
      *&buf[18] = 1040;
      *&buf[20] = 19;
      *&buf[24] = 2080;
      *&buf[26] = "rtaid::DetectorNode]";
      *&buf[34] = 2048;
      *&buf[36] = v17;
      v98 = 1024;
      LODWORD(v99) = v12;
      _os_log_impl(&dword_241557000, v85, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] initialized with err = %d", buf, 0x32u);
    }

    if (v12)
    {
      goto LABEL_220;
    }
  }

  v12 = 0;
LABEL_220:
  {
    v7[58] = os_log_create("com.apple.coreaudio", "aid");
  }

  v86 = v7[58];
  if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    *&buf[4] = "Detector.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 57;
    *&buf[18] = 1040;
    *&buf[20] = 15;
    *&buf[24] = 2080;
    *&buf[26] = "rtaid::Detector]";
    *&buf[34] = 2048;
    *&buf[36] = v9;
    v98 = 1024;
    LODWORD(v99) = v12;
    _os_log_impl(&dword_241557000, v86, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] initialized with error = %d", buf, 0x32u);
  }

  v4 = v91;
  if (v91)
  {
LABEL_224:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_225:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  v87 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_24155A068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RealTimeAudioIssueDetectorReset(unint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v2 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (!v2)
  {
    v13 = 0xFFFFFFFFLL;
    goto LABEL_25;
  }

  v4 = v2[3];
  v3 = v2[4];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v13 = 0xFFFFFFFFLL;
    if (!v3)
    {
      goto LABEL_25;
    }

LABEL_24:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    goto LABEL_25;
  }

  v16 = v3;
  for (i = *(v4 + 24); i; i = *i)
  {
    rtaid::Detector::checkAndResetAnalyzers(v4, i + 3);
    *(i + 9) = 0;
    i[6] = 0;
    v6 = i[3];
    v7 = *(v6 + 192);
    v8 = *(v6 + 200) - v7;
    if (v8)
    {
      v9 = v8 >> 2;
      v10 = *(v6 + 216);
      if (v9 <= 1)
      {
        v9 = 1;
      }

      do
      {
        *v7++ = 0;
        *v10++ = 0;
        --v9;
      }

      while (v9);
    }

    *(v6 + 244) = 0;
    rtaid::DetectorNode::resetSilenceAnalyzerErrorState(*(v6 + 32));
    *(v6 + 168) = 0;
    atomic_store(0, (v6 + 408));
    *(v6 + 4) = 0;
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v11 = rtaid::get_log(void)::rtaid_os_log;
    if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v18 = "DetectorNode.cpp";
      v19 = 1024;
      v20 = 165;
      v21 = 1040;
      v22 = 19;
      v23 = 2080;
      v24 = "rtaid::DetectorNode]";
      v25 = 2048;
      v26 = v6;
      _os_log_impl(&dword_241557000, v11, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] reset", buf, 0x2Cu);
    }
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v12 = rtaid::get_log(void)::rtaid_os_log;
  v3 = v16;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    v18 = "Detector.cpp";
    v19 = 1024;
    v20 = 71;
    v21 = 1040;
    v22 = 15;
    v23 = 2080;
    v24 = "rtaid::Detector]";
    v25 = 2048;
    v26 = v4;
    _os_log_impl(&dword_241557000, v12, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] reset", buf, 0x2Cu);
  }

  v13 = 0;
  if (v16)
  {
    goto LABEL_24;
  }

LABEL_25:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_24155A3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  _Unwind_Resume(a1);
}

uint64_t RealTimeAudioIssueDetectorSetNodeFormat(unint64_t a1, void *a2, size_t a3)
{
  SingletonManagerInstance();
  std::string::basic_string[abi:ne200100](&__p, a2, a3);
  v6 = rtaid::Manager::SetNodeFormatWithDirectionOnDetector(a1);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_24155A4A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

uint64_t RealTimeAudioIssueDetectorSetNodeFormatWithDirection(unint64_t a1, void *a2, size_t a3)
{
  SingletonManagerInstance();
  std::string::basic_string[abi:ne200100](&__p, a2, a3);
  v6 = rtaid::Manager::SetNodeFormatWithDirectionOnDetector(a1);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_24155A6B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RealTimeAudioIssueDetectorUpdateReportingSessions(unint64_t a1, uint64_t a2, unint64_t a3)
{
  memset(__src, 0, sizeof(__src));
  if (a2 && a3)
  {
    if (!(a3 >> 61))
    {
      std::vector<long long>::__vallocate[abi:ne200100](__src, a3);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v4 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (!v4)
  {
    v14 = 0xFFFFFFFFLL;
    goto LABEL_65;
  }

  v6 = v4[3];
  v5 = v4[4];
  v38 = v6;
  v39 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = v5;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = 0;
    if (v6)
    {
LABEL_8:
      v8 = -__src[0];
      v9 = *(v6 + 608);
      v10 = *(v6 + 592);
      if ((v9 - v10) < -__src[0])
      {
        v11 = v8 >> 3;
        if (v10)
        {
          *(v6 + 600) = v10;
          operator delete(v10);
          v9 = 0;
          *(v6 + 592) = 0;
          *(v6 + 600) = 0;
          *(v6 + 608) = 0;
        }

        if (!(v11 >> 61))
        {
          v12 = v9 >> 2;
          if (v9 >> 2 <= v11)
          {
            v12 = v8 >> 3;
          }

          if (v9 >= 0x7FFFFFFFFFFFFFF8)
          {
            v13 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v13 = v12;
          }

          std::vector<long long>::__vallocate[abi:ne200100](v6 + 592, v13);
        }

        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v15 = *(v6 + 600);
      v16 = v15 - v10;
      if (v15 - v10 >= v8)
      {
        v18 = v10 - __src[0];
      }

      else
      {
        v17 = __src[0] + v16;
        if (v15 != v10)
        {
          memmove(*(v6 + 592), __src[0], v16);
          v15 = *(v6 + 600);
        }

        if (v17)
        {
          memmove(v15, v17, -v17);
        }

        v18 = &v15[-v17];
      }

      *(v6 + 600) = v18;
      rtaid::ConfigurationManager::DetermineConfiguration(qword_27E547FE0, v6, 0);
      v19 = qword_27E547FE0;
      if (v6 + 616 != qword_27E547FE0 + 72)
      {
        v20 = *(qword_27E547FE0 + 72);
        v21 = *(qword_27E547FE0 + 80);
        v22 = v21 - v20;
        v23 = *(v6 + 632);
        v24 = *(v6 + 616);
        if (v23 - v24 < v21 - v20)
        {
          v25 = v22 >> 1;
          if (v24)
          {
            *(v6 + 624) = v24;
            operator delete(v24);
            v23 = 0;
            *(v6 + 616) = 0;
            *(v6 + 624) = 0;
            *(v6 + 632) = 0;
          }

          if ((v25 & 0x8000000000000000) == 0)
          {
            v26 = v23 <= v25 ? v22 >> 1 : v23;
            v27 = v23 >= 0x7FFFFFFFFFFFFFFELL ? 0x7FFFFFFFFFFFFFFFLL : v26;
            if ((v27 & 0x8000000000000000) == 0)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<AudioServiceType>>(v27);
            }
          }

          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v28 = *(v6 + 624);
        v29 = v28 - v24;
        if (v28 - v24 >= v22)
        {
          if (v21 != v20)
          {
            memmove(v24, v20, v21 - v20);
          }

          v31 = &v24[v22];
        }

        else
        {
          v30 = &v20[v29];
          if (v28 != v24)
          {
            memmove(*(v6 + 616), v20, v29);
            v28 = *(v6 + 624);
          }

          if (v21 != v30)
          {
            memmove(v28, v30, v21 - v30);
          }

          v31 = &v28[v21 - v30];
        }

        *(v6 + 624) = v31;
        v19 = qword_27E547FE0;
      }

      if (*(v19 + 117) == 1)
      {
        v32 = *(v6 + 616);
        v33 = *(v6 + 624);
        v34 = 10.0;
        if (v32 != v33)
        {
          while (*v32 == 13)
          {
            if (++v32 == v33)
            {
              goto LABEL_58;
            }
          }

          if (v32 != v33)
          {
            goto LABEL_59;
          }

LABEL_58:
          v34 = 3.0;
        }

LABEL_59:
        if (*(v6 + 56) != v34)
        {
          *(v6 + 56) = v34;
          v35 = *(v6 + 24);
          if (v35)
          {
            do
            {
              rtaid::Detector::checkAndResetAnalyzers(v6, v35 + 3);
              *(v35 + 4) = (v35[5] * *(v6 + 56));
              v35 = *v35;
            }

            while (v35);
            v19 = qword_27E547FE0;
            v5 = v39;
          }
        }
      }

      rtaid::Manager::applyConfiguration(v19, v6);
      rtaid::Manager::applyTelephonyResets(*(qword_27E547FE0 + 48), *(qword_27E547FE0 + 56), &v38);
      v14 = 0;
      v7 = v5;
      if (v5)
      {
        goto LABEL_64;
      }

      goto LABEL_65;
    }
  }

  v14 = 0xFFFFFFFFLL;
  if (v7)
  {
LABEL_64:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

LABEL_65:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  if (__src[0])
  {
    operator delete(__src[0]);
  }

  return v14;
}

void sub_24155AAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

uint64_t RealTimeAudioIssueDetectorAnalyzeBuffer(unint64_t a1, unsigned int a2, const AudioTimeStamp *a3, const AudioBufferList *a4, unsigned int a5)
{
  SingletonManagerInstance();
  v10 = 4294967291;
  if (a3 && a4)
  {
    if (atomic_load(&dword_27E547F78))
    {
      return 0;
    }

    else
    {
      v13 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
      if (v13)
      {
        v15 = v13[3];
        v14 = v13[4];
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v15)
        {
          if (a2 != 49 || *v15 != 3 || (v16 = atomic_load(&unk_27E547FB4), (v16 & 1) == 0))
          {
            mNumberBuffers = a4->mNumberBuffers;
            if ((mNumberBuffers - 33) >= 0xFFFFFFE0)
            {
              p_mData = &a4->mBuffers[0].mData;
              while (*p_mData && *(p_mData - 1))
              {
                p_mData += 2;
                if (!--mNumberBuffers)
                {
                  v19 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v15 + 8), a2);
                  if (!v19)
                  {
                    v10 = 4294967294;
                    goto LABEL_17;
                  }

                  v20 = v19;
                  v21 = v19 + 3;
                  v10 = rtaid::DetectorNode::AnalyzeABL(v19[3], a3, a4, a5);
                  v20[6] = *&a3->mSampleTime;
                  if (v10)
                  {
                    goto LABEL_17;
                  }

                  v22 = *(v20 + 8);
                  v23 = *(v20 + 9) + a5;
                  *(v20 + 9) = v23;
                  if (v23 >= v22)
                  {
                    *(v20 + 9) = v23 % v22;
                    rtaid::Detector::checkAndResetAnalyzers(v15, v21);
                  }

                  break;
                }
              }
            }
          }

          v10 = 0;
        }

        else
        {
          v10 = 0xFFFFFFFFLL;
        }

LABEL_17:
        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  return v10;
}

void sub_24155AD04(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RealTimeAudioIssueDetectorRemoveNode(unint64_t a1, unsigned int a2)
{
  v29 = *MEMORY[0x277D85DE8];
  SingletonManagerInstance();
  std::mutex::lock(&SingletonManagerInstance(void)::sInstance);
  v4 = std::__hash_table<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::shared_ptr<rtaid::Detector>>>>::find<long long>(a1);
  if (!v4)
  {
    v12 = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  v6 = v4[3];
  v5 = v4[4];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v6)
  {
    v12 = 0xFFFFFFFFLL;
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v7 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>((v6 + 8), a2);
  if (!v7)
  {
    v12 = 4294967294;
    if (!v5)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = v7;
  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v9 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v8[3];
    v11 = (v10 + 8);
    if (*(v10 + 31) < 0)
    {
      v11 = *v11;
    }

    v15 = 136316674;
    v16 = "Detector.cpp";
    v17 = 1024;
    v18 = 144;
    v19 = 1040;
    v20 = 15;
    v21 = 2080;
    v22 = "rtaid::Detector]";
    v23 = 2048;
    v24 = v6;
    v25 = 2080;
    v26 = v11;
    v27 = 1024;
    v28 = a2;
    _os_log_impl(&dword_241557000, v9, OS_LOG_TYPE_DEFAULT, "[%s:%-5d %.*s:%p] Removing node %s with nodeID %d", &v15, 0x3Cu);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::remove(&v15, (v6 + 8), v8);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>>>>::~unique_ptr[abi:ne200100](&v15);
  v12 = 0;
  if (v5)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_16:
  std::mutex::unlock(&SingletonManagerInstance(void)::sInstance);
  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void RealTimeAudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment(float a1)
{
  SingletonManagerInstance();
  v2 = fabsf(a1);
  if (a1 >= 0.0)
  {
    v2 = 0.0;
  }

  dword_27E547FB0 = LODWORD(v2);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*a1);
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(a1[1]);
    std::__tree<rtaid::AnalyzerType>::destroy(a1[5]);

    operator delete(a1);
  }
}

void std::__tree<rtaid::AnalyzerType>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<rtaid::AnalyzerType>::destroy(*a1);
    std::__tree<rtaid::AnalyzerType>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
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
      v4 = *(v2 + 28);
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
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::__tree<rtaid::AnalyzerType>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void rtaid::ConfigurationManager::DetermineConfiguration(rtaid::ConfigurationManager *this, rtaid::Detector *a2, char a3)
{
  v132 = *MEMORY[0x277D85DE8];
  *(this + 117) = 0;
  *(this + 28) = 0;
  *(this + 7) = *(this + 6);
  *(this + 10) = *(this + 9);
  v5 = (this + 8);
  std::__tree<rtaid::AnalyzerType>::destroy(*(this + 1));
  *this = v5;
  *(this + 2) = 0;
  *v5 = 0;
  v6 = (this + 32);
  std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*(this + 4));
  v125 = this;
  *(this + 3) = this + 32;
  j = this + 24;
  *v6 = 0;
  *(j + 2) = 0;
  {
    if (IsSilenceAnalyzerBypassedThroughDefaults)
    {
      qword_27E548008 = 0;
      rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig = &qword_27E548008;
      qword_27E548028 = 0;
      unk_27E548020 = 0;
      qword_27E548010 = 0;
      qword_27E548018 = &unk_27E548020;
    }
  }

  if (rtaid::ConfigurationManager::GetDefaultConfiguration(void)::onceToken != -1)
  {
    dispatch_once(&rtaid::ConfigurationManager::GetDefaultConfiguration(void)::onceToken, &__block_literal_global);
  }

  v124 = j;
  if (v125 == &rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig)
  {
    goto LABEL_94;
  }

  v9 = rtaid::ConfigurationManager::GetDefaultConfiguration(void)::sDefaultConfig;
  i = v125;
  if (*(v125 + 2))
  {
    v11 = *v125;
    v12 = *(v125 + 1);
    *v125 = v5;
    *(v12 + 16) = 0;
    *v5 = 0;
    v5[1] = 0;
    if (v11[1])
    {
      v13 = v11[1];
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      v14 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v13);
      if (v9 == &qword_27E548008)
      {
        v9 = &qword_27E548008;
      }

      else
      {
        v15 = v13;
        v16 = v9;
        do
        {
          v13 = v14;
          v17 = *(v16 + 7);
          *(v15 + 7) = v17;
          v18 = *v5;
          v19 = v5;
          v20 = v5;
          if (*v5)
          {
            do
            {
              while (1)
              {
                v19 = v18;
                if (v17 >= *(v18 + 7))
                {
                  break;
                }

                v18 = *v18;
                v20 = v19;
                if (!*v19)
                {
                  goto LABEL_18;
                }
              }

              v18 = v18[1];
            }

            while (v18);
            v20 = v19 + 1;
          }

LABEL_18:
          std::__tree<rtaid::AnalyzerType>::__insert_node_at(v125, v19, v20, v15);
          if (v14)
          {
            v14 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v14);
          }

          else
          {
            v14 = 0;
          }

          v21 = v16[1];
          if (v21)
          {
            do
            {
              v9 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v9 = v16[2];
              v60 = *v9 == v16;
              v16 = v9;
            }

            while (!v60);
          }

          if (!v13)
          {
            break;
          }

          v15 = v13;
          v16 = v9;
        }

        while (v9 != &qword_27E548008);
      }

      std::__tree<rtaid::AnalyzerType>::destroy(v13);
      if (!v14)
      {
        i = v125;
        goto LABEL_37;
      }

      v23 = v14[2];
      for (i = v125; v23; v23 = v23[2])
      {
        v14 = v23;
      }

      v22 = v14;
    }

    else
    {
      v22 = 0;
    }

    std::__tree<rtaid::AnalyzerType>::destroy(v22);
  }

LABEL_37:
  __p = a3;
  if (v9 != &qword_27E548008)
  {
    operator new();
  }

  v24 = qword_27E548018;
  if (*(i + 5))
  {
    v25 = *j;
    *j = v6;
    *(*v6 + 16) = 0;
    *v6 = 0;
    v6[1] = 0;
    if (v25[1])
    {
      size = v25[1];
    }

    else
    {
      size = v25;
    }

    v127.__r_.__value_.__r.__words[0] = j;
    v127.__r_.__value_.__l.__size_ = size;
    v127.__r_.__value_.__r.__words[2] = size;
    if (size)
    {
      v127.__r_.__value_.__l.__size_ = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(size);
      if (v24 == &unk_27E548020)
      {
        v44 = &unk_27E548020;
      }

      else
      {
        do
        {
          if (size != v24)
          {
            v27 = *(v24 + 32);
            v28 = (v24 + 40);
            if (*(size + 48))
            {
              v30 = (size + 40);
              v29 = *(size + 40);
              v31 = *(size + 32);
              *(size + 32) = size + 40;
              *(v29 + 16) = 0;
              *(size + 40) = 0;
              *(size + 48) = 0;
              if (*(v31 + 8))
              {
                v32 = *(v31 + 8);
              }

              else
              {
                v32 = v31;
              }

              if (v32)
              {
                v33 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v32);
                if (v27 == v28)
                {
                  v35 = v32;
                }

                else
                {
                  v34 = v27;
                  do
                  {
                    v35 = v33;
                    v36 = *(v34 + 28);
                    *(v32 + 28) = v36;
                    v37 = *v30;
                    v38 = (size + 40);
                    v39 = (size + 40);
                    if (*v30)
                    {
                      do
                      {
                        while (1)
                        {
                          v38 = v37;
                          if (v36 >= *(v37 + 7))
                          {
                            break;
                          }

                          v37 = *v37;
                          v39 = v38;
                          if (!*v38)
                          {
                            goto LABEL_59;
                          }
                        }

                        v37 = v37[1];
                      }

                      while (v37);
                      v39 = v38 + 1;
                    }

LABEL_59:
                    std::__tree<rtaid::AnalyzerType>::__insert_node_at((size + 32), v38, v39, v32);
                    if (v33)
                    {
                      v33 = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v33);
                    }

                    else
                    {
                      v33 = 0;
                    }

                    v40 = v34[1];
                    if (v40)
                    {
                      do
                      {
                        v27 = v40;
                        v40 = *v40;
                      }

                      while (v40);
                    }

                    else
                    {
                      do
                      {
                        v27 = v34[2];
                        v60 = *v27 == v34;
                        v34 = v27;
                      }

                      while (!v60);
                    }

                    if (!v35)
                    {
                      break;
                    }

                    v32 = v35;
                    v34 = v27;
                  }

                  while (v27 != v28);
                }

                std::__tree<rtaid::AnalyzerType>::destroy(v35);
                if (v33)
                {
                  v41 = v33[2];
                  for (j = v124; v41; v41 = v41[2])
                  {
                    v33 = v41;
                  }

                  std::__tree<rtaid::AnalyzerType>::destroy(v33);
                }

                else
                {
                  j = v124;
                }
              }

              else
              {
                std::__tree<rtaid::AnalyzerType>::destroy(0);
                j = v124;
              }
            }

            if (v27 != v28)
            {
              operator new();
            }
          }

          leaf_high = std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__find_leaf_high(j, &v130, (size + 32));
          std::__tree<rtaid::AnalyzerType>::__insert_node_at(j, v130, leaf_high, size);
          size = v127.__r_.__value_.__l.__size_;
          v127.__r_.__value_.__r.__words[2] = v127.__r_.__value_.__l.__size_;
          if (v127.__r_.__value_.__l.__size_)
          {
            v127.__r_.__value_.__l.__size_ = std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(v127.__r_.__value_.__l.__size_);
          }

          v43 = *(v24 + 8);
          if (v43)
          {
            do
            {
              v44 = v43;
              v43 = *v43;
            }

            while (v43);
          }

          else
          {
            do
            {
              v44 = *(v24 + 16);
              v60 = *v44 == v24;
              v24 = v44;
            }

            while (!v60);
          }

          if (!size)
          {
            break;
          }

          v24 = v44;
        }

        while (v44 != &unk_27E548020);
      }
    }

    else
    {
      v44 = v24;
    }

    IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v127);
    v24 = v44;
  }

  a3 = __p;
  if (v24 != &unk_27E548020)
  {
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__construct_node<std::map<rtaid::AnalyzerType,unsigned int> const&>();
  }

LABEL_94:
  v45 = *a2;
  v46 = v125;
  if ((*a2 - 3) > 1 || (a3 & 1) == 0)
  {
    v47 = *(a2 + 74);
    v48 = *(a2 + 75);
    if (v47 == v48)
    {
      v52 = *(v125 + 10);
    }

    else
    {
      do
      {
        IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v46 + 12) + 16) + 16))(*(*(v46 + 12) + 16), *v47);
        v49 = IsSilenceAnalyzerBypassedThroughDefaults;
        v51 = *(v46 + 10);
        v50 = *(v46 + 11);
        if (v51 >= v50)
        {
          v53 = *(v46 + 9);
          v54 = v51 - v53;
          v55 = (v51 - v53) >> 1;
          if (v55 <= -2)
          {
            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v56 = v50 - v53;
          if (v56 <= v55 + 1)
          {
            v57 = v55 + 1;
          }

          else
          {
            v57 = v56;
          }

          if (v56 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v58 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v58 = v57;
          }

          if (v58)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<AudioServiceType>>(v58);
          }

          *(2 * v55) = v49;
          v52 = 2 * v55 + 2;
          memcpy(0, v53, v54);
          IsSilenceAnalyzerBypassedThroughDefaults = *(v125 + 9);
          *(v125 + 9) = 0;
          *(v125 + 10) = v52;
          *(v125 + 11) = 0;
          v46 = v125;
          if (IsSilenceAnalyzerBypassedThroughDefaults)
          {
            operator delete(IsSilenceAnalyzerBypassedThroughDefaults);
          }
        }

        else
        {
          *v51 = IsSilenceAnalyzerBypassedThroughDefaults;
          v52 = (v51 + 2);
        }

        *(v46 + 10) = v52;
        ++v47;
      }

      while (v47 != v48);
    }

    v59 = *(v46 + 9);
    v60 = v52 != v59 && v45 == 2;
    v61 = v60;
    *(v46 + 115) = v61;
    if (v59 != v52)
    {
      while (1)
      {
        v62 = *v59;
        if (v62 == 13 && v45 == 2)
        {
          goto LABEL_132;
        }

        *(v46 + 115) = 0;
        if (v62 == 4)
        {
          break;
        }

        if (v62 != 2)
        {
          if (v62 == 1)
          {
            *(v46 + 112) = 1;
          }

          goto LABEL_130;
        }

        v64 = 1;
LABEL_131:
        *(v46 + 114) = v64 & 1;
LABEL_132:
        if (++v59 == v52)
        {
          goto LABEL_133;
        }
      }

      *(v46 + 113) = 1;
LABEL_130:
      v64 = *(v46 + 114);
      goto LABEL_131;
    }
  }

LABEL_133:
  if (v45 <= 3)
  {
    if (v45 != 1)
    {
      if (v45 == 3)
      {
        *(v46 + 114) = 1;
      }

      goto LABEL_226;
    }

    v68 = *(v46 + 118);
    if (*(v46 + 114) != 1)
    {
      if ((*(v46 + 118) & 1) == 0)
      {
        IsSilenceAnalyzerBypassedThroughDefaults = (*(**(*(v46 + 12) + 32) + 16))(*(*(v46 + 12) + 32));
        if (IsSilenceAnalyzerBypassedThroughDefaults)
        {
          goto LABEL_138;
        }
      }

      goto LABEL_226;
    }

    if (*(v46 + 118))
    {
      goto LABEL_226;
    }

    rtaid::Detector::GetNodeIDs(&v130, a2);
    v69 = v131;
    __pa = v130;
    if (v130 == v131)
    {
LABEL_210:
      v46 = v125;
      IsSilenceAnalyzerBypassedThroughDefaults = __pa;
      if (__pa)
      {
        operator delete(__pa);
      }

      goto LABEL_226;
    }

    v70 = v130;
    while (1)
    {
      v71 = *v70;
      v72 = *(a2 + 1);
      v73 = *(a2 + 2);
      v74 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(v72, v73, *v70);
      if (v74)
      {
        v75 = *(v74[3] + 188) == 1;
      }

      else
      {
        v75 = 0;
      }

      v76 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(v72, v73, v71);
      if (v76)
      {
        v77 = v76[3];
        if (*(v77 + 31) < 0)
        {
          std::string::__init_copy_ctor_external(&v127, *(v77 + 8), *(v77 + 16));
        }

        else
        {
          v78 = *(v77 + 8);
          v127.__r_.__value_.__r.__words[2] = *(v77 + 24);
          *&v127.__r_.__value_.__l.__data_ = v78;
        }

        v128 = 1;
        v79 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v80 = &v127;
        }

        else
        {
          v80 = v127.__r_.__value_.__r.__words[0];
        }

        if ((v127.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = SHIBYTE(v127.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v81 = v127.__r_.__value_.__l.__size_;
        }

        if (v81 >= 8)
        {
          v82 = v80 + v81;
          v83 = v80;
          do
          {
            v84 = memchr(v83, 66, v81 - 7);
            if (!v84)
            {
              break;
            }

            if (*v84 == 0x646E616265736142)
            {
              v85 = v84 != v82 && v84 - v80 != -1;
              if (v75 != v85)
              {
                goto LABEL_173;
              }

              goto LABEL_207;
            }

            v83 = (v84 + 1);
            v81 = v82 - v83;
          }

          while (v82 - v83 > 7);
        }

        if ((v75 & 1) == 0)
        {
LABEL_207:
          if (v79 < 0)
          {
            operator delete(v127.__r_.__value_.__l.__data_);
          }

          goto LABEL_209;
        }
      }

      else
      {
        v127.__r_.__value_.__s.__data_[0] = 0;
        v128 = 0;
        if ((v75 & 1) == 0)
        {
          goto LABEL_209;
        }
      }

      v85 = 0;
LABEL_173:
      v129[0] = 5;
      v129[1] = *v70;
      std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](v126, v129, 1);
      std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(v124, v126);
      v87 = *(v125 + 7);
      v86 = *(v125 + 8);
      if ((v85 | v75 ^ 1))
      {
        if (v87 < v86)
        {
          *v87 = 1;
          v88 = v87 + 4;
          goto LABEL_206;
        }

        v89 = *(v125 + 6);
        v90 = v87 - v89;
        v91 = (v87 - v89) >> 2;
        v92 = v91 + 1;
        if ((v91 + 1) >> 62)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v93 = v86 - v89;
        if (v93 >> 1 > v92)
        {
          v92 = v93 >> 1;
        }

        if (v93 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v94 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v94 = v92;
        }

        if (v94)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<rtaid::TelephonyResetDetector>>(v94);
        }

        v100 = v91;
        v101 = v125;
        v102 = (4 * v91);
        v103 = &v102[-v100];
        *v102 = 1;
        v88 = v102 + 1;
      }

      else
      {
        if (v87 < v86)
        {
          *v87 = 2;
          v88 = v87 + 4;
          goto LABEL_206;
        }

        v89 = *(v125 + 6);
        v90 = v87 - v89;
        v95 = (v87 - v89) >> 2;
        v96 = v95 + 1;
        if ((v95 + 1) >> 62)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v97 = v86 - v89;
        if (v97 >> 1 > v96)
        {
          v96 = v97 >> 1;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v98 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<rtaid::TelephonyResetDetector>>(v98);
        }

        v104 = v95;
        v101 = v125;
        v105 = (4 * v95);
        v103 = &v105[-v104];
        *v105 = 2;
        v88 = v105 + 1;
      }

      memcpy(v103, v89, v90);
      v106 = *(v101 + 6);
      *(v101 + 6) = v103;
      *(v101 + 7) = v88;
      *(v101 + 8) = 0;
      if (v106)
      {
        operator delete(v106);
      }

LABEL_206:
      *(v125 + 7) = v88;
      std::__tree<rtaid::AnalyzerType>::destroy(v126[1]);
      v79 = HIBYTE(v127.__r_.__value_.__r.__words[2]);
      if (v128)
      {
        goto LABEL_207;
      }

LABEL_209:
      if (++v70 == v69)
      {
        goto LABEL_210;
      }
    }
  }

  if (v45 == 4)
  {
    rtaid::ConfigurationManager::addSiriConfiguration(v46, a2);
  }

  else if (v45 == 7)
  {
    if (*(v46 + 114) == 1 && (*(v46 + 118) & 1) == 0)
    {
      v130 = 0x300000005;
      std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](&v127, &v130, 1);
      std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(v124, &v127);
      v66 = *(v125 + 7);
      v65 = *(v125 + 8);
      if (v66 >= v65)
      {
        v107 = *(v125 + 6);
        v108 = v66 - v107;
        v109 = (v66 - v107) >> 2;
        v110 = v109 + 1;
        if ((v109 + 1) >> 62)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v111 = v65 - v107;
        if (v111 >> 1 > v110)
        {
          v110 = v111 >> 1;
        }

        if (v111 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v112 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v112 = v110;
        }

        if (v112)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<rtaid::TelephonyResetDetector>>(v112);
        }

        v113 = v109;
        v114 = (4 * v109);
        v115 = &v114[-v113];
        *v114 = 0;
        v67 = v114 + 1;
        memcpy(v115, v107, v108);
        v116 = *(v125 + 6);
        *(v125 + 6) = v115;
        *(v125 + 7) = v67;
        *(v125 + 8) = 0;
        if (v116)
        {
          operator delete(v116);
        }
      }

      else
      {
        *v66 = 0;
        v67 = v66 + 4;
      }

      *(v125 + 7) = v67;
      v46 = v125;
      std::__tree<rtaid::AnalyzerType>::destroy(v127.__r_.__value_.__l.__size_);
    }
  }

  else if (v45 == 8 && (*(v46 + 118) & 1) == 0)
  {
LABEL_138:
    LODWORD(v127.__r_.__value_.__l.__data_) = 6;
    IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v46, 6u);
    v46 = v125;
  }

LABEL_226:
  if (*(v46 + 114) == 1)
  {
    v117 = v46;
    if ((*(v46 + 118) & 1) == 0)
    {
      IsSilenceAnalyzerBypassedThroughDefaults = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(IsSilenceAnalyzerBypassedThroughDefaults);
      if ((IsSilenceAnalyzerBypassedThroughDefaults & 1) == 0)
      {
        LODWORD(v127.__r_.__value_.__l.__data_) = 1;
        IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v125, 1u);
      }

      v117 = v125;
      if (((v45 < 9) & (0x10Cu >> v45)) != 0)
      {
        LODWORD(v127.__r_.__value_.__l.__data_) = 6;
        IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v125, 6u);
LABEL_238:
        v117 = v125;
      }
    }
  }

  else
  {
    if (*(v46 + 113) != 1)
    {
      v117 = v46;
      if (*(v46 + 112) != 1)
      {
        goto LABEL_239;
      }

      rtaid::ConfigurationManager::addSiriConfiguration(v46, a2);
      goto LABEL_238;
    }

    IsSilenceAnalyzerBypassedThroughDefaults = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(IsSilenceAnalyzerBypassedThroughDefaults);
    v117 = v125;
    if ((IsSilenceAnalyzerBypassedThroughDefaults & 1) == 0 && (*(v125 + 118) & 1) == 0)
    {
      LODWORD(v127.__r_.__value_.__l.__data_) = 1;
      std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v125, 1u);
      LODWORD(v127.__r_.__value_.__l.__data_) = 6;
      IsSilenceAnalyzerBypassedThroughDefaults = std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v125, 6u);
      goto LABEL_238;
    }
  }

LABEL_239:
  v118 = *(v117 + 115);
  v119 = v117;
  if (v118 == 1)
  {
    if ((rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(IsSilenceAnalyzerBypassedThroughDefaults) & 1) == 0)
    {
      LODWORD(v127.__r_.__value_.__l.__data_) = 1;
      std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v125, 1u);
      LODWORD(v127.__r_.__value_.__l.__data_) = 6;
      std::__tree<rtaid::AnalyzerType>::__emplace_unique_key_args<rtaid::AnalyzerType,rtaid::AnalyzerType>(v125, 6u);
    }

    v119 = v125;
    v118 = *(v125 + 115);
  }

  if (v45 == 2 && v118 != *(v119 + 116))
  {
    *(v119 + 116) = v118;
    *(v119 + 117) = 1;
  }

  v120 = *MEMORY[0x277D85DE8];
}

void rtaid::ConfigurationManager::addSiriConfiguration(rtaid::ConfigurationManager *this, const rtaid::Detector *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  if ((rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(this) & 1) == 0)
  {
    rtaid::Detector::GetNodeIDs(&v11, a2);
    v4 = v11;
    v5 = v12;
    if (v11 != v12)
    {
      v6 = v11;
      do
      {
        v7 = *v6;
        v8 = std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(*(a2 + 1), *(a2 + 2), *v6);
        if (!v8 || !*(v8[3] + 188))
        {
          v13[0] = 2;
          v13[1] = v7;
          std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](v10, v13, 1);
          std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(this + 24, v10);
          std::__tree<rtaid::AnalyzerType>::destroy(v10[1]);
        }

        ++v6;
      }

      while (v6 != v5);
    }

    if (v4)
    {
      operator delete(v4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(rtaid::ConfigurationManager *this)
{
  v12 = *MEMORY[0x277D85DE8];
  {
    rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection = CFPreferencesGetAppBooleanValue(@"DisableAudio", @"com.apple.audio.virtualaudio", 0) != 0;
  }

  if (rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection == 1)
  {
    {
      rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
    }

    v1 = rtaid::get_log(void)::rtaid_os_log;
    v2 = os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_DEFAULT);
    v3 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
    if (v2)
    {
      v6 = 136315650;
      v7 = "ConfigurationManager.cpp";
      v8 = 1024;
      v9 = 408;
      v10 = 1024;
      v11 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
      _os_log_impl(&dword_241557000, v1, OS_LOG_TYPE_DEFAULT, "%s:%-5d Defaults write for DisableAudio set to %d - silence detection will be bypassed", &v6, 0x18u);
      v3 = rtaid::ConfigurationManager::IsSilenceAnalyzerBypassedThroughDefaults(void)::disableSilenceDetection;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3 & 1;
}

void *std::map<rtaid::AnalyzerType,unsigned int>::map[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<rtaid::AnalyzerType,unsigned int>,std::__map_value_compare<rtaid::AnalyzerType,std::__value_type<rtaid::AnalyzerType,unsigned int>,std::less<rtaid::AnalyzerType>,true>,std::allocator<std::__value_type<rtaid::AnalyzerType,unsigned int>>>::__emplace_hint_unique_key_args<rtaid::AnalyzerType,std::pair<rtaid::AnalyzerType const,unsigned int> const&>(a1, v4, *a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__emplace_unique_key_args<std::map<rtaid::AnalyzerType,unsigned int>,std::map<rtaid::AnalyzerType,unsigned int> const&>(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__construct_node<std::map<rtaid::AnalyzerType,unsigned int> const&>();
  }

  v3 = a2 + 1;
  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v2;
      v6 = v2[4];
      if ((_ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v4, v3, v6, v2 + 5) & 0x80) == 0)
      {
        break;
      }

      v2 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    result = _ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v6, v5 + 5, v4, v3);
    if ((result & 0x80) == 0)
    {
      return result;
    }

    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<rtaid::TelephonyResetDetector>>(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_24155C8A4(_Unwind_Exception *a1)
{
  std::__tree<rtaid::AnalyzerType>::destroy(v2[5]);
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::map<rtaid::AnalyzerType,unsigned int>,void *>>>::operator()[abi:ne200100](0, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::map<rtaid::AnalyzerType,unsigned int>,void *>>>::operator()[abi:ne200100](char a1, void **a2)
{
  if (a1)
  {
    std::__tree<rtaid::AnalyzerType>::destroy(a2[5]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void *std::__tree<std::__value_type<rtaid::AnalyzerType,unsigned int>,std::__map_value_compare<rtaid::AnalyzerType,std::__value_type<rtaid::AnalyzerType,unsigned int>,std::less<rtaid::AnalyzerType>,true>,std::allocator<std::__value_type<rtaid::AnalyzerType,unsigned int>>>::__emplace_hint_unique_key_args<rtaid::AnalyzerType,std::pair<rtaid::AnalyzerType const,unsigned int> const&>(void *result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
LABEL_16:
      if (v5)
      {
        v8 = v7 + 1;
      }

      else
      {
        v8 = a2;
      }

      goto LABEL_19;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
      goto LABEL_16;
    }

    v13 = *v3;
    if (*v3)
    {
      while (1)
      {
        while (1)
        {
          v14 = v13;
          v15 = *(v13 + 28);
          if (v15 <= a3)
          {
            break;
          }

          v13 = *v14;
          v3 = v14;
          if (!*v14)
          {
            goto LABEL_38;
          }
        }

        if (v15 >= a3)
        {
          break;
        }

        v3 = v14 + 1;
        v13 = v14[1];
        if (!v13)
        {
          goto LABEL_38;
        }
      }

LABEL_39:
      v8 = v3;
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  if (v4 >= a3)
  {
    return result;
  }

  v8 = a2 + 1;
  v9 = a2[1];
  if (v9)
  {
    do
    {
      v8 = v9;
      v9 = *v9;
      v10 = v8;
    }

    while (v9);
  }

  else
  {
    v10 = a2;
    do
    {
      v16 = v10;
      v10 = v10[2];
    }

    while (*v10 != v16);
  }

  if (v10 != v3 && *(v10 + 7) <= a3)
  {
    for (i = *v3; i; i = v18[1])
    {
      while (1)
      {
        v18 = i;
        v19 = *(i + 28);
        if (v19 <= a3)
        {
          break;
        }

        i = *v18;
        v3 = v18;
        if (!*v18)
        {
          goto LABEL_38;
        }
      }

      if (v19 >= a3)
      {
        goto LABEL_39;
      }

      v3 = v18 + 1;
    }

LABEL_38:
    operator new();
  }

LABEL_19:
  if (!*v8)
  {
    goto LABEL_38;
  }

  return result;
}

uint64_t _ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(void *a1, void *a2, void *a3, void *a4)
{
  v4 = a3 == a4;
  v5 = a1 == a2;
  if (a1 == a2 || a3 == a4)
  {
LABEL_17:
    if (v5)
    {
      return (v4 - 1);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    while (1)
    {
      v6 = *(a1 + 7);
      v7 = *(a3 + 7);
      v8 = v6 >= v7;
      if (v6 != v7)
      {
        break;
      }

      v9 = *(a1 + 8);
      v10 = *(a3 + 8);
      v8 = v9 >= v10;
      if (v9 != v10)
      {
        break;
      }

      v11 = a1[1];
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
          v12 = a1[2];
          v13 = *v12 == a1;
          a1 = v12;
        }

        while (!v13);
      }

      v14 = a3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = a3[2];
          v13 = *v15 == a3;
          a3 = v15;
        }

        while (!v13);
      }

      v4 = v15 == a4;
      v5 = v12 == a2;
      if (v12 != a2)
      {
        a1 = v12;
        a3 = v15;
        if (v15 != a4)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    if (!v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<AudioServiceType>>(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::__find_leaf_high(uint64_t a1, void *a2, void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = a3 + 1;
    v7 = *a3;
    do
    {
      while (1)
      {
        v5 = v4;
        if ((_ZNSt3__145__lexicographical_compare_three_way_slow_pathB8ne200100INS_20__map_const_iteratorINS_21__tree_const_iteratorINS_12__value_typeIN5rtaid12AnalyzerTypeEjEEPNS_11__tree_nodeIS6_PvEElEEEESC_NS_17__synth_three_wayMUlTyTyRKT_RKT0_E_EEEDTclfp3_defp_defp1_EESD_SD_SG_SG_RT1_(v7, v6, *(v4 + 32), (v4 + 40)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_9;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_9:
  *a2 = v5;
  return result;
}

uint64_t std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(*(a1 + 16));
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

    std::__tree<std::map<rtaid::AnalyzerType,unsigned int>>::destroy(v2);
  }

  return a1;
}

void *std::__tree<rtaid::AnalyzerType>::_DetachedTreeCache::__detach_next(uint64_t a1)
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

void std::vector<std::unique_ptr<rtaid::CaulkSPIImplementation::Message>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t rtaid::CaulkSPIImplementation::Message::perform(rtaid::CaulkSPIImplementation::Message *this)
{
  v6 = *MEMORY[0x277D85DE8];
  memcpy(__dst, this + 56, sizeof(__dst));
  v2 = *(this + 6);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2, __dst);
  atomic_store(0, this + 552);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
}

void rtaid::CaulkSPIImplementation::Message::~Message(rtaid::CaulkSPIImplementation::Message *this)
{
  *this = &unk_28533AD70;
  std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](this + 24);
  caulk::concurrent::message::~message(this);

  JUMPOUT(0x245CE96E0);
}

{
  *this = &unk_28533AD70;
  std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](this + 24);

  caulk::concurrent::message::~message(this);
}

uint64_t std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t rtaid::CaulkSPIImplementation::EnqueueIssueDict(uint64_t result, const void *a2)
{
  v2 = result;
  v3 = 16;
  while (1)
  {
    v4 = atomic_load((result + 48));
    v5 = v4;
    atomic_compare_exchange_strong((result + 48), &v5, (v4 + 1) & 0xF);
    if (v5 != v4)
    {
      atomic_load((result + 48));
      goto LABEL_6;
    }

    v6 = 0;
    atomic_compare_exchange_strong((*(*(result + 24) + 8 * v4) + 552), &v6, 1u);
    if (!v6)
    {
      break;
    }

LABEL_6:
    if (!--v3)
    {
      return result;
    }
  }

  memcpy((*(*(result + 24) + 8 * v4) + 56), a2, 0x1F0uLL);
  v7 = *(*(v2 + 24) + 8 * v4);

  return MEMORY[0x2821E8408](v2 + 8, v7);
}

uint64_t rtaid::CaulkSPIImplementation::SetMessagePerform(uint64_t result, uint64_t a2)
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = *(result + 24);
  for (i = *(result + 32); v2 != i; ++v2)
  {
    v5 = *v2;
    std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::__value_func[abi:ne200100](v10, a2);
    std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::__value_func[abi:ne200100](v11, v10);
    v6 = v5 + 24;
    if ((v5 + 24) != v11)
    {
      v7 = v12;
      v8 = *(v5 + 48);
      if (v12 == v11)
      {
        if (v8 == v6)
        {
          (*(*v12 + 24))();
          (*(*v12 + 32))(v12);
          v12 = 0;
          (*(**(v5 + 48) + 24))(*(v5 + 48), v11);
          (*(**(v5 + 48) + 32))(*(v5 + 48));
          *(v5 + 48) = 0;
          v12 = v11;
          (*(v13[0] + 24))(v13, v5 + 24);
          (*(v13[0] + 32))(v13);
        }

        else
        {
          (*(*v12 + 24))();
          (*(*v12 + 32))(v12);
          v12 = *(v5 + 48);
        }

        *(v5 + 48) = v6;
      }

      else if (v8 == v6)
      {
        (*(*v8 + 24))(*(v5 + 48), v11);
        (*(**(v5 + 48) + 32))(*(v5 + 48));
        *(v5 + 48) = v12;
        v12 = v11;
      }

      else
      {
        v12 = *(v5 + 48);
        *(v5 + 48) = v7;
      }
    }

    std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](v11);
    result = std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::~__value_func[abi:ne200100](v10);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24155D37C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(rtaid::IssueDictionary const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void rtaid::CaulkSPIImplementation::~CaulkSPIImplementation(rtaid::CaulkSPIImplementation *this)
{
  *this = &unk_28533AD40;
  v1 = this + 8;
  v2 = (this + 24);
  std::vector<std::unique_ptr<rtaid::CaulkSPIImplementation::Message>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x245CE94E0](v1);

  JUMPOUT(0x245CE96E0);
}

{
  *this = &unk_28533AD40;
  v1 = this + 8;
  v2 = (this + 24);
  std::vector<std::unique_ptr<rtaid::CaulkSPIImplementation::Message>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x245CE94E0](v1);
}

void rtaid::AudioStatisticsSPIImplementation::SendMessage(uint64_t a1, uint64_t *a2, unsigned int a3, const UInt8 **a4, unsigned int a5, unsigned int a6)
{
  v55 = 0;
  v56 = 0uLL;
  v9 = a4[2];
  if (v9)
  {
    if (!(v9 >> 60))
    {
      v63 = &v55;
      std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(v9);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  v11 = a4 + 1;
  v10 = *a4;
  v12 = v56;
  if (*a4 != (a4 + 1))
  {
    do
    {
      if (v12 >= *(&v56 + 1))
      {
        v13 = (v12 - v55) >> 4;
        if ((v13 + 1) >> 60)
        {
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        v14 = (*(&v56 + 1) - v55) >> 3;
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (*(&v56 + 1) - v55 >= 0x7FFFFFFFFFFFFFF0uLL)
        {
          v15 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v63 = &v55;
        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(v15);
        }

        keys = 0;
        v61 = 16 * v13;
        v62 = (16 * v13);
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>((16 * v13), v10 + 32, (v10 + 56));
        *&v62 = v62 + 16;
        v16 = &v55[v61 - v56];
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(&v55, v55, v56, v16);
        v17 = v55;
        v18 = *(&v56 + 1);
        v55 = v16;
        v53 = v62;
        v56 = v62;
        *&v62 = v17;
        *(&v62 + 1) = v18;
        keys = v17;
        v61 = v17;
        std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(&keys);
        v12 = v53;
      }

      else
      {
        applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(v12, v10 + 32, (v10 + 56));
        v12 += 2;
      }

      *&v56 = v12;
      v19 = *(v10 + 1);
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = *(v10 + 2);
          v21 = *v20 == v10;
          v10 = v20;
        }

        while (!v21);
      }

      v10 = v20;
    }

    while (v20 != v11);
  }

  v22 = (v12 - v55) >> 4;
  keys = 0;
  v61 = 0;
  *&v62 = 0;
  std::vector<void const*>::reserve(&keys, v22);
  v50 = a2;
  v51 = a6;
  values = 0;
  v58 = 0;
  v59 = 0;
  std::vector<void const*>::reserve(&values, v22);
  v23 = v55;
  v24 = keys;
  v25 = values;
  v54 = v56;
  if (v55 != v56)
  {
    v49 = v22;
    v27 = v61;
    v26 = v62;
    v29 = v58;
    v28 = v59;
    do
    {
      v30 = *v23;
      if (!*v23 || !*(v23 + 1))
      {
        keys = v24;
        values = v25;
        exception = __cxa_allocate_exception(0x10uLL);
        MEMORY[0x245CE9540](exception, "Could not construct");
      }

      if (v27 >= v26)
      {
        v31 = v27 - v24;
        v32 = (v27 - v24) >> 3;
        v33 = v32 + 1;
        if ((v32 + 1) >> 61)
        {
          keys = v24;
          values = v25;
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        if ((v26 - v24) >> 2 > v33)
        {
          v33 = (v26 - v24) >> 2;
        }

        if (v26 - v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v34 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v34 = v33;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v34);
        }

        v35 = (8 * v32);
        v26 = 0;
        *v35 = v30;
        v27 = (v35 + 1);
        memcpy(0, v24, v31);
        if (v24)
        {
          operator delete(v24);
        }

        v24 = 0;
      }

      else
      {
        *v27 = v30;
        v27 += 8;
      }

      v36 = *(v23 + 1);
      if (v29 >= v28)
      {
        v37 = v29 - v25;
        v38 = (v29 - v25) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          keys = v24;
          values = v25;
          std::vector<long long>::__throw_length_error[abi:ne200100]();
        }

        if ((v28 - v25) >> 2 > v39)
        {
          v39 = (v28 - v25) >> 2;
        }

        if (v28 - v25 >= 0x7FFFFFFFFFFFFFF8)
        {
          v40 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v39;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(v40);
        }

        v41 = (8 * v38);
        v28 = 0;
        *v41 = v36;
        v29 = (v41 + 1);
        memcpy(0, v25, v37);
        if (v25)
        {
          operator delete(v25);
        }

        v25 = 0;
      }

      else
      {
        *v29 = v36;
        v29 += 8;
      }

      v23 += 16;
    }

    while (v23 != v54);
    v61 = v27;
    *&v62 = v26;
    v59 = v28;
    keys = v24;
    values = v25;
    v58 = v29;
    v22 = v49;
  }

  v42 = v50;
  v43 = CFDictionaryCreate(0, v24, v25, v22, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v43)
  {
    v48 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CE9540](v48, "Could not construct");
  }

  if (values)
  {
    operator delete(values);
  }

  if (keys)
  {
    operator delete(keys);
  }

  keys = &v55;
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&keys);
  if (a3)
  {
    v44 = a3;
    do
    {
      v46 = *v42++;
      v45 = v46;
      if (v46)
      {
        if (AudioStatisticsLibraryLoader(void)::once != -1)
        {
          dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_9);
        }

        if (AudioStatisticsLibraryLoader(void)::libSym)
        {
          AudioStatisticsLibraryLoader(void)::libSym(v45, v43, a5, v51);
        }
      }

      --v44;
    }

    while (v44);
  }

  else
  {
    if (AudioStatisticsLibraryLoader(void)::once != -1)
    {
      dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_9);
    }

    if (AudioStatisticsLibraryLoader(void)::libSym)
    {
      AudioStatisticsLibraryLoader(void)::libSym(v43, a5, v51);
    }
  }

  CFRelease(v43);
}

void *___Z28AudioStatisticsLibraryLoaderv_block_invoke()
{
  result = dlopen("/usr/lib/libAudioStatistics.dylib", 1);
  if (result)
  {
    v1 = result;
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(result, "CreateSharedCAReportingClient");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreateReporterIDFromSessionID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCreatePerformanceReporterID");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStartReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientStopReporter");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientGetAudioServiceType");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSetConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientCopyConfiguration");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientSendSingleMessage");
    AudioStatisticsLibraryLoader(void)::libSym = dlsym(v1, "CAReportingClientDestroyReporterID");
    result = dlsym(v1, "CAReportingClientRequestMessage");
    AudioStatisticsLibraryLoader(void)::libSym = result;
  }

  return result;
}

CFStringRef *applesauce::CF::TypeRefPair::TypeRefPair<std::string const&,std::string const&>(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CE9540](exception, "Could not construct");
  }

  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = v11;
  if (!v11)
  {
    v14 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x245CE9540](v14, "Could not construct");
  }

  return a1;
}

void sub_24155DE40(_Unwind_Exception *a1)
{
  applesauce::CF::ObjectRef<void const*>::~ObjectRef(v1 + 1);
  applesauce::CF::TypeRef::~TypeRef(v1);
  _Unwind_Resume(a1);
}

void std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(i))
    {
      i -= 16;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

void std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*a1)
  {
    CFRelease(*a1);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<applesauce::CF::TypeRefPair>,applesauce::CF::TypeRefPair*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *v6 = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    do
    {
      std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v5);
      v5 += 16;
    }

    while (v5 != a3);
  }
}

uint64_t std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 16;
    std::allocator_traits<std::allocator<applesauce::CF::TypeRefPair>>::destroy[abi:ne200100]<applesauce::CF::TypeRefPair,void,0>(v3 - 16);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **applesauce::CF::ObjectRef<void const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void applesauce::CF::TypeRef::~TypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *std::vector<void const*>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a2);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t rtaid::AudioStatisticsSPIImplementation::GetAudioServiceType(rtaid::AudioStatisticsSPIImplementation *this, uint64_t a2)
{
  if (AudioStatisticsLibraryLoader(void)::once != -1)
  {
    dispatch_once(&AudioStatisticsLibraryLoader(void)::once, &__block_literal_global_9);
  }

  if (AudioStatisticsLibraryLoader(void)::libSym)
  {
    return AudioStatisticsLibraryLoader(void)::libSym(a2);
  }

  else
  {
    return 0xFFFFLL;
  }
}

void rtaid::Detector::checkAndResetAnalyzers(uint64_t a1, void *a2)
{
  v3 = 0;
  v76 = *MEMORY[0x277D85DE8];
  v4 = a1 + 416;
  v5 = (a1 + 364);
  v63 = (a1 + 384);
  v64 = (a1 + 364);
  do
  {
    v6 = 0;
    v7 = *a2;
    atomic_compare_exchange_strong((*a2 + 408), &v6, 1u);
    if (v6)
    {
      goto LABEL_93;
    }

    v8 = (v7 + 8);
    if (*(v7 + 31) < 0)
    {
      v8 = *v8;
    }

    strncpy((a1 + 96), v8, 0xC0uLL);
    *(a1 + 356) = v3;
    *(a1 + 360) = *(v7 + 188);
    if (v3 > 3)
    {
      if ((v3 - 5) >= 2)
      {
        if (v3 != 4 || (*(v7 + 163) & 1) == 0 && *(v7 + 156) != 1)
        {
          goto LABEL_92;
        }

        v52 = *(v7 + 168);
        if (v52)
        {
          *v5 = 0;
          v5[1] = 0;
          if (*(v7 + 168))
          {
            v53 = 0;
            do
            {
              *(v5 + v53) = *(v7 + 172 + 4 * v53);
              ++v53;
            }

            while (v53 < *(v7 + 168));
          }
        }

        if (*(v7 + 257))
        {
          strlcpy((a1 + 288), (v7 + 257), 0x40uLL);
          *(a1 + 576) = *(v7 + 404);
          *(v7 + 257) = 0u;
          *(v7 + 273) = 0u;
          *(v7 + 289) = 0u;
          *(v7 + 305) = 0u;
          *(v7 + 321) = 0u;
          *(v7 + 337) = 0u;
          *(v7 + 353) = 0u;
          *(v7 + 369) = 0u;
          *(v7 + 385) = 0u;
          *(v7 + 404) = 0;
        }

        *(v7 + 168) = 0;
        atomic_store(0, (v7 + 408));
        if (v52)
        {
          goto LABEL_83;
        }
      }

      else
      {
        if ((*(v7 + v3 + 159) & 1) == 0 && *(v7 + v3 + 152) != 1)
        {
          goto LABEL_92;
        }

        v31 = *(v7 + 244);
        if (v31)
        {
          v66 = *(v7 + 244);
          v33 = *(v7 + 192);
          v32 = *(v7 + 200);
          v65 = v32 - v33;
          if (v32 != v33)
          {
            v34 = v31;
            v35 = *(v7 + 216);
            if ((v65 >> 2) <= 1)
            {
              v36 = 1;
            }

            else
            {
              v36 = v65 >> 2;
            }

            v37 = v63;
            v38 = *(v7 + 192);
            do
            {
              v39 = *v38++;
              v40 = (v39 / v34) + 1.0e-12;
              *(v37 - 1) = log10f(v40) * 10.0;
              v41 = *v35++;
              v42 = v41 + 1.0e-12;
              *v37 = log10f(v42) * 20.0;
              v37 += 2;
              --v36;
            }

            while (v36);
          }

          v5 = v64;
          *(a1 + 372) = v65 >> 2;
          *(a1 + 364) = *(v7 + 256);
          *(a1 + 368) = *(v7 + 248);
          v31 = v66;
        }

        else
        {
          v33 = *(v7 + 192);
          v32 = *(v7 + 200);
        }

        if (v32 != v33)
        {
          v54 = (v32 - v33) >> 2;
          v55 = *(v7 + 216);
          if (v54 <= 1)
          {
            v54 = 1;
          }

          do
          {
            *v33 = 0;
            v33 += 4;
            *v55++ = 0;
            --v54;
          }

          while (v54);
        }

        *(v7 + 244) = 0;
        atomic_store(0, (v7 + 408));
        if (v31)
        {
          goto LABEL_83;
        }
      }
    }

    else
    {
      if ((v3 - 1) >= 2)
      {
        if (v3 || (*(v7 + 159) & 1) == 0 && *(v7 + 152) != 1 || (v43 = *(v7 + 32)) == 0)
        {
LABEL_92:
          atomic_store(0, (v7 + 408));
          goto LABEL_93;
        }

        v68 = 0.0;
        Parameter = AudioUnitGetParameter(v43, 4u, 0, 0, &v68);
        v45 = v68;
        if (Parameter)
        {
          v45 = 0.0;
        }

        v46 = v45;
        if (Parameter)
        {
          v47 = 0;
        }

        else
        {
          v47 = v46;
        }

        v69 = 0.0;
        v48 = AudioUnitGetParameter(v43, 5u, 0, 0, &v69);
        v49 = v69;
        if (v48)
        {
          v49 = 0.0;
        }

        v50 = v49;
        if (v48)
        {
          v50 = 0;
        }

        v26 = (v47 | v50) != 0;
        if (v47 | v50)
        {
          *(a1 + 364) = v47;
          *(a1 + 368) = v50;
        }

        v51 = *(v7 + 32);
        if (v51)
        {
          AudioUnitSetParameter(*(v7 + 32), 4u, 0, 0, 0.0, 0);
          AudioUnitSetParameter(v51, 5u, 0, 0, 0.0, 0);
        }
      }

      else
      {
        if ((*(v7 + v3 + 159) & 1) == 0 && *(v7 + v3 + 152) != 1)
        {
          goto LABEL_92;
        }

        v9 = *(v7 + 32);
        if (!v9)
        {
          goto LABEL_92;
        }

        outValue = 0.0;
        v10 = AudioUnitGetParameter(v9, 0, 0, 0, &outValue);
        v11 = outValue;
        if (v10)
        {
          v11 = 0.0;
        }

        v12 = v11;
        if (v10)
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }

        v71 = 0.0;
        v14 = AudioUnitGetParameter(v9, 1u, 0, 0, &v71);
        v15 = v71;
        if (v14)
        {
          v15 = 0.0;
        }

        v16 = v15;
        if (v14)
        {
          v17 = 0;
        }

        else
        {
          v17 = v16;
        }

        v72 = 0.0;
        v18 = AudioUnitGetParameter(v9, 2u, 0, 0, &v72);
        v19 = v72;
        if (v18)
        {
          v19 = 0.0;
        }

        v20 = v19;
        if (v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        v73 = 0.0;
        v22 = AudioUnitGetParameter(v9, 3u, 0, 0, &v73);
        v23 = v73;
        if (v22)
        {
          v23 = 0.0;
        }

        v24 = v23;
        if (v22)
        {
          v24 = 0;
        }

        v25 = v13 | v17 | v21 | v24;
        v26 = v25 != 0;
        if (v25)
        {
          *(a1 + 364) = v13;
          *(a1 + 368) = v17;
          *(a1 + 372) = v21;
          *(a1 + 376) = v24;
          v27 = *(v7 + 80);
          *(a1 + 380) = v27;
          v74 = 0.0;
          v28 = AudioUnitGetParameter(v9, 6u, 0, 0, &v74);
          v29 = v74;
          if (v28)
          {
            v29 = 0.0;
          }

          v30 = v29;
          if (v28)
          {
            v30 = 0.0;
          }

          *(a1 + 384) = v30;
        }

        rtaid::DetectorNode::resetSilenceAnalyzerErrorState(*(v7 + 32));
      }

      atomic_store(0, (v7 + 408));
      if (v26)
      {
LABEL_83:
        v56 = *(a1 + 600);
        v57 = *(a1 + 592);
        LODWORD(v58) = 16;
        if (((v56 - v57) >> 3) < 0x10)
        {
          v58 = (v56 - v57) >> 3;
        }

        *(a1 + 352) = *a1;
        *(a1 + 412) = v58;
        if (v56 != v57)
        {
          v59 = 0;
          v60 = *(a1 + 616);
          if (v58 <= 1)
          {
            v58 = 1;
          }

          else
          {
            v58 = v58;
          }

          do
          {
            *(v4 + 8 * v59) = *(v57 + 8 * v59);
            *(v4 + 2 * v59 + 128) = *(v60 + 2 * v59);
            ++v59;
          }

          while (v58 != v59);
        }

        *(a1 + 584) = a2[3];
        memcpy(__dst, (a1 + 96), sizeof(__dst));
        v61 = *(a1 + 88);
        if (!v61)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v61 + 48))(v61, __dst);
      }
    }

LABEL_93:
    ++v3;
  }

  while (v3 != 7);
  a2[3] = 0;
  v62 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100](uint64_t a1)
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

rtaid::DetectorNode *std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(uint64_t a1)
{
  result = *(a1 + 8);
  *(a1 + 8) = 0;
  if (result)
  {
    rtaid::DetectorNode::~DetectorNode(result);

    JUMPOUT(0x245CE96E0);
  }

  return result;
}

void rtaid::Detector::~Detector(std::__shared_weak_count **this)
{
  v21 = *MEMORY[0x277D85DE8];
  for (i = this + 3; ; rtaid::Detector::checkAndResetAnalyzers(this, i + 3))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  {
    rtaid::get_log(void)::rtaid_os_log = os_log_create("com.apple.coreaudio", "aid");
  }

  v3 = rtaid::get_log(void)::rtaid_os_log;
  if (os_log_type_enabled(rtaid::get_log(void)::rtaid_os_log, OS_LOG_TYPE_INFO))
  {
    v11 = 136316162;
    v12 = "Detector.cpp";
    v13 = 1024;
    v14 = 35;
    v15 = 1040;
    v16 = 15;
    v17 = 2080;
    v18 = "rtaid::Detector]";
    v19 = 2048;
    v20 = this;
    _os_log_impl(&dword_241557000, v3, OS_LOG_TYPE_INFO, "[%s:%-5d %.*s:%p] destroyed", &v11, 0x2Cu);
  }

  v4 = this[81];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = this[77];
  if (v5)
  {
    this[78] = v5;
    operator delete(v5);
  }

  v6 = this[74];
  if (v6)
  {
    this[75] = v6;
    operator delete(v6);
  }

  std::__function::__value_func<void ()(rtaid::IssueDictionary)>::~__value_func[abi:ne200100]((this + 8));
  v7 = this[3];
  if (v7)
  {
    do
    {
      v8 = v7->__vftable;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(&v7->__shared_weak_owners_);
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = this[1];
  this[1] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_24155EC54(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t *rtaid::Detector::ResetTelephonyRMSState(uint64_t *this)
{
  for (; this; this = *this)
  {
    v1 = this[3];
    if ((*(v1 + 164) & 1) != 0 || *(v1 + 157) == 1)
    {
      v2 = *(v1 + 192);
      v3 = *(v1 + 200) - v2;
      if (v3)
      {
        v4 = v3 >> 2;
        v5 = *(v1 + 216);
        if (v4 <= 1)
        {
          v4 = 1;
        }

        do
        {
          *v2++ = 0;
          *v5++ = 0;
          --v4;
        }

        while (v4);
      }

      *(v1 + 244) = 0;
    }
  }

  return this;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::find<unsigned int>(void *a1, unsigned int a2)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>>>::remove(uint64_t result, void *a2, void *a3)
{
  v3 = a2[1];
  v4 = a3[1];
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

  v6 = *(*a2 + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a3);
  if (v7 == a2 + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v9 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*a2 + 8 * v4) = 0;
    }
  }

  v10 = *a3;
  if (*a3)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*a2 + 8 * v11) = v7;
      v10 = *a3;
    }
  }

  *v7 = v10;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,rtaid::Detector::NodeBook>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned int const,rtaid::Detector::NodeBook>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void rtaid::Detector::NodeBook::~NodeBook(rtaid::DetectorNode **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    rtaid::DetectorNode::~DetectorNode(v2);
    MEMORY[0x245CE96E0]();
  }
}

void rtaid::DetectorNode::ConstructionSettings::~ConstructionSettings(rtaid::DetectorNode::ConstructionSettings *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](locale);
  }

  std::locale::~locale(this);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](begin, v7) == 0;
  }

  return v10;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, std::sub_match<const char *> *a2, std::sub_match<const char *> *a3, std::vector<std::csub_match> *this, int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  v10 = *(a1 + 28);
  this[1].__begin_ = a3;
  v11 = &this[1];
  this[1].__end_ = a3;
  LOBYTE(this[1].__end_cap_.__value_) = 0;
  std::vector<std::sub_match<char const*>>::assign(this, (v10 + 1), &this[1]);
  this[2].__begin_ = a2;
  this[2].__end_ = a2;
  LOBYTE(this[2].__end_cap_.__value_) = 0;
  *&this[3].__begin_ = v11->std::pair<const char *, const char *>;
  LOBYTE(this[3].__end_cap_.__value_) = this[1].__end_cap_.__value_;
  if ((v9 & 0x800) == 0)
  {
    this[4].__end_ = a2;
  }

  LOBYTE(this[4].__begin_) = 1;
  if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, this, v9, (v9 & 0x800) == 0))
  {
    if (a2 == a3 || (v9 & 0x40) != 0)
    {
      goto LABEL_18;
    }

    v18 = &a2->first + 1;
    if (v18 != a3)
    {
      do
      {
        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
        v19 = std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0);
        begin = this->__begin_;
        end = this->__end_;
        if (v19)
        {
          goto LABEL_8;
        }

        std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), v11);
      }

      while (++v18 != a3);
    }

    std::vector<std::sub_match<char const*>>::assign(this, 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3), v11);
    if (!std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v18, a3, this, v9 | 0x80u, 0))
    {
LABEL_18:
      result = 0;
      this->__end_ = this->__begin_;
      return result;
    }
  }

  begin = this->__begin_;
  end = this->__end_;
LABEL_8:
  if (end == begin)
  {
    v14 = v11;
  }

  else
  {
    v14 = begin;
  }

  first = v14->first;
  this[2].__end_ = v14->first;
  LOBYTE(this[2].__end_cap_.__value_) = this[2].__begin_ != first;
  second = v14->second;
  this[3].__begin_ = second;
  LOBYTE(this[3].__end_cap_.__value_) = second != this[3].__end_;
  return 1;
}

void *std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4, char a5)
{
  v5 = result;
  v6 = a4[6];
  v7 = a4[1] - *a4;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  v9 = *result;
  v10 = result[1];
  v11 = v10;
  v12 = v10 - *result;
  v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
  v14 = v8 - v13;
  if (v8 <= v13)
  {
    if (v8 < v13)
    {
      v11 = v9 + v7;
      result[1] = v9 + v7;
    }
  }

  else
  {
    v15 = result[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v15 - v10) >> 3) < v14)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        if (0x5555555555555556 * ((v15 - v9) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v15 - v9) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v15 - v9) >> 3) >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v8;
        }

        if (v16 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v17 = 8 * (v7 >> 3) - 8 * (v12 >> 3);
    do
    {
      *v11 = 0;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      v11 += 24;
      v17 -= 24;
    }

    while (v17);
    result[1] = v10 + 24 * v14;
    v11 = v10 + 24 * v14;
  }

  v18 = *result;
  if (v11 == *result)
  {
    v21 = a2 - v6;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    v21 = a2 - v6;
    v23 = *a4;
    v22 = a4[1];
    do
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v23) >> 3);
      v25 = (v23 + v19);
      if (v24 <= v20)
      {
        v26 = a4 + 3;
      }

      else
      {
        v26 = v25;
      }

      *(v18 + v19) = v21 + *v26;
      if (0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v20)
      {
        v27 = a4 + 3;
      }

      else
      {
        v27 = (*a4 + v19);
      }

      *(*v5 + v19 + 8) = v21 + v27[1];
      v23 = *a4;
      v22 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v22 - *a4) >> 3) <= v20)
      {
        v28 = a4 + 3;
      }

      else
      {
        v28 = (*a4 + v19);
      }

      v29 = *(v28 + 16);
      v18 = *v5;
      v30 = v5[1];
      result = (*v5 + v19);
      *(result + 16) = v29;
      ++v20;
      v19 += 24;
    }

    while (v20 < 0xAAAAAAAAAAAAAAABLL * ((v30 - v18) >> 3));
  }

  v5[3] = a3;
  v5[4] = a3;
  *(v5 + 40) = 0;
  v31 = v21 + a4[6];
  v5[6] = v31;
  v5[7] = v21 + a4[7];
  *(v5 + 64) = *(a4 + 64);
  v5[9] = v21 + a4[9];
  v5[10] = v21 + a4[10];
  *(v5 + 88) = *(a4 + 88);
  if ((a5 & 1) == 0)
  {
    v5[13] = v31;
  }

  *(v5 + 96) = *(a4 + 96);
  return result;
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) == 0)
  {

    return std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }

  if (!*(a1 + 28))
  {
    memset(v124, 0, 48);
    v62 = *(a1 + 40);
    if (!v62)
    {
LABEL_184:
      std::deque<std::__state<char>>::~deque[abi:ne200100](v124);
      return v62;
    }

    *v128 = 0;
    memset(&v128[8], 0, 32);
    v129 = 0uLL;
    memset(v130, 0, 37);
    std::deque<std::__state<char>>::push_back(v124, v128);
    if (v130[0])
    {
      operator delete(v130[0]);
    }

    if (*&v128[32])
    {
      operator delete(*&v128[32]);
    }

    v119 = a4;
    v63 = *&v124[8];
    v64 = *&v124[40] + *&v124[32] - 1;
    v65 = v64 / 0x2A;
    v66 = *(*&v124[8] + 8 * (v64 / 0x2A));
    v67 = 3 * (v64 % 0x2A);
    v68 = v66 + 32 * v67;
    *v68 = 0;
    *(v68 + 8) = a2;
    *(*(v63 + 8 * v65) + 32 * v67 + 16) = a2;
    *(*(v63 + 8 * v65) + 32 * v67 + 24) = a3;
    std::vector<std::pair<unsigned long,char const*>>::resize((*(v63 + 8 * v65) + 32 * v67 + 56), *(a1 + 32));
    v123 = 0;
    v69 = 0;
    v121 = 0;
    v70 = a3 - a2;
    v71 = *&v124[40];
    v72 = *&v124[8];
    v73 = *&v124[40] + *&v124[32] - 1;
    v74 = v73 / 0x2A;
    v75 = 3 * (v73 % 0x2A);
    *(*(*&v124[8] + 8 * v74) + 32 * v75 + 80) = v62;
    v76 = *(v72 + 8 * v74) + 32 * v75;
    v77 = a5;
    *(v76 + 88) = a5;
    *(v76 + 92) = a6;
    v78 = 0xC30C30C30C30C30DLL;
    while (1)
    {
      if ((++v69 & 0xFFF) == 0 && (v69 >> 12) >= v70)
      {
        std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
      }

      v80 = v71 + *&v124[32] - 1;
      v81 = (((v80 >> 1) * v78) >> 64) >> 4;
      v82 = *(*&v124[8] + 8 * v81) - 4032 * v81 + 96 * v80;
      v84 = (v82 + 80);
      v83 = *(v82 + 80);
      if (v83)
      {
        (*(*v83 + 16))(v83, v82);
      }

      v85 = *v82;
      if (*v82 <= -995)
      {
        switch(v85)
        {
          case -1000:
            v90 = *(v82 + 16);
            v92 = (v77 & 0x1000) == 0 || v90 == a3;
            v93 = v90 != a2 || (v77 & 0x20) == 0;
            if (!v93 || !v92)
            {
              goto LABEL_179;
            }

            v94 = &v90[-*(v82 + 8)];
            v95 = v121;
            if (v121 <= v94)
            {
              v95 = v94;
            }

            if (v123)
            {
              v94 = v95;
            }

            if (v94 == v70)
            {
              v96 = *&v124[8];
              v97 = *&v124[16];
              if (*&v124[16] == *&v124[8])
              {
                v97 = *&v124[8];
              }

              else
              {
                v98 = (((*&v124[32] >> 1) * v78) >> 64) >> 4;
                v99 = (*&v124[8] + 8 * v98);
                v100 = (*v99 - 4032 * v98 + 96 * *&v124[32]);
                v101 = v78;
                v102 = ((((*&v124[40] + *&v124[32]) >> 1) * v78) >> 64) >> 4;
                v103 = *(*&v124[8] + 8 * v102) - 4032 * v102 + 96 * (*&v124[40] + *&v124[32]);
                if (v100 != v103)
                {
                  do
                  {
                    std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v100);
                    v100 += 12;
                    if ((v100 - *v99) == 4032)
                    {
                      v104 = v99[1];
                      ++v99;
                      v100 = v104;
                    }
                  }

                  while (v100 != v103);
                  v96 = *&v124[8];
                  v97 = *&v124[16];
                }

                v77 = a5;
                v78 = v101;
              }

              *&v124[40] = 0;
              v107 = (v97 - v96) >> 3;
              if (v107 >= 3)
              {
                do
                {
                  operator delete(*v96);
                  v96 = (*&v124[8] + 8);
                  *&v124[8] = v96;
                  v107 = (*&v124[16] - v96) >> 3;
                }

                while (v107 > 2);
              }

              if (v107 == 1)
              {
                v108 = 21;
LABEL_170:
                *&v124[32] = v108;
              }

              else if (v107 == 2)
              {
                v108 = 42;
                goto LABEL_170;
              }

              v123 = 1;
              v121 = a3 - a2;
              break;
            }

            v121 = v94;
            std::deque<std::__state<char>>::pop_back(v124);
            v123 = 1;
            break;
          case -999:
            break;
          case -995:
            v86 = *&v124[32];
            v87 = *&v124[8];
            v88 = *&v124[16];
            if (!*&v124[32])
            {
              v89 = 42 * ((*&v124[16] - *&v124[8]) >> 3) - 1;
              if (*&v124[16] == *&v124[8])
              {
                v89 = 0;
              }

              if ((v89 - *&v124[40]) < 0x2A)
              {
                if (*&v124[16] - *&v124[8] < *&v124[24] - *v124)
                {
                  if (*&v124[8] != *v124)
                  {
                    operator new();
                  }

                  operator new();
                }

                if (*&v124[24] == *v124)
                {
                  v109 = 1;
                }

                else
                {
                  v109 = (*&v124[24] - *v124) >> 2;
                }

                *&v128[32] = v124;
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v109);
              }

              *&v124[32] = 42;
              *v128 = *(*&v124[16] - 8);
              *&v124[16] -= 8;
              std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(v124, v128);
              v86 = *&v124[32];
              v87 = *&v124[8];
              v88 = *&v124[16];
            }

            v110 = (((v86 >> 1) * v78) >> 64) >> 4;
            v111 = (v87 + 8 * v110);
            v112 = *v111 - 4032 * v110 + 96 * v86;
            if (v88 == v87)
            {
              v113 = 0;
            }

            else
            {
              v113 = v112;
            }

            if (v113 == *v111)
            {
              v113 = *(v111 - 1) + 4032;
            }

            v114 = *(v82 + 16);
            *(v113 - 96) = *v82;
            *(v113 - 80) = v114;
            *(v113 - 56) = 0;
            *(v113 - 48) = 0;
            *(v113 - 64) = 0;
            *(v113 - 64) = *(v82 + 32);
            *(v113 - 48) = *(v82 + 48);
            *(v82 + 32) = 0;
            *(v82 + 40) = 0;
            *(v82 + 48) = 0;
            *(v113 - 40) = 0;
            *(v113 - 32) = 0;
            *(v113 - 24) = 0;
            *(v113 - 40) = *(v82 + 56);
            *(v113 - 24) = *(v82 + 72);
            *(v82 + 56) = 0;
            *(v82 + 64) = 0;
            *(v82 + 72) = 0;
            v115 = *v84;
            *(v113 - 11) = *(v82 + 85);
            *(v113 - 16) = v115;
            *&v124[32] = vaddq_s64(*&v124[32], xmmword_2415757A0);
            goto LABEL_179;
          default:
            goto LABEL_187;
        }
      }

      else
      {
        if (v85 > -993)
        {
          if (v85 == -992)
          {
            v105 = *(v82 + 16);
            *v128 = *v82;
            *&v128[16] = v105;
            v129 = 0uLL;
            *&v128[32] = 0;
            std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v128[32], *(v82 + 32), *(v82 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v82 + 40) - *(v82 + 32)) >> 3));
            memset(v130, 0, 24);
            std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(v130, *(v82 + 56), *(v82 + 64), (*(v82 + 64) - *(v82 + 56)) >> 4);
            v106 = *v84;
            *(&v130[3] + 5) = *(v82 + 85);
            v130[3] = v106;
            (*(**(v82 + 80) + 24))(*(v82 + 80), 1, v82);
            (*(*v130[3] + 24))(v130[3], 0, v128);
            std::deque<std::__state<char>>::push_back(v124, v128);
            if (v130[0])
            {
              v130[1] = v130[0];
              operator delete(v130[0]);
            }

            if (*&v128[32])
            {
              *&v129 = *&v128[32];
              operator delete(*&v128[32]);
            }
          }

          else if (v85 != -991)
          {
LABEL_187:
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
          }

          goto LABEL_180;
        }

        if (v85 != -994)
        {
          if (v85 != -993)
          {
            goto LABEL_187;
          }

LABEL_179:
          std::deque<std::__state<char>>::pop_back(v124);
        }
      }

LABEL_180:
      v71 = *&v124[40];
      if (!*&v124[40])
      {
        if (v123)
        {
          v116 = *v119;
          *v116 = a2;
          *(v116 + 8) = &a2[v121];
          v62 = 1;
          *(v116 + 16) = 1;
        }

        else
        {
          v62 = 0;
        }

        goto LABEL_184;
      }
    }
  }

  v131 = 0;
  v132 = 0;
  v133 = 0;
  *v128 = 0;
  memset(&v128[8], 0, 32);
  v129 = 0u;
  memset(v130, 0, 37);
  v12 = *(a1 + 40);
  if (!v12)
  {
LABEL_92:
    v62 = 0;
    goto LABEL_93;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v124 = 0;
  memset(&v124[8], 0, 48);
  *__p = 0uLL;
  memset(v126, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v131, v124);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v124[32])
  {
    operator delete(*&v124[32]);
  }

  v118 = a4;
  v13 = v132;
  *(v132 - 24) = 0;
  *(v13 - 11) = a2;
  *(v13 - 10) = a2;
  *(v13 - 9) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v132 - 5), *(a1 + 32));
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v120 = a3;
  v122 = a2;
  v17 = a3 - a2;
  v18 = v132;
  *(v132 - 2) = v12;
  *(v18 - 2) = a5;
  *(v18 - 4) = a6;
  do
  {
    v19 = (++v16 & 0xFFF) != 0 || (v16 >> 12) < v17;
    if (!v19)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v21 = v18 - 2;
    v20 = *(v18 - 2);
    v22 = v18 - 12;
    if (v20)
    {
      (*(*v20 + 16))(v20, v18 - 12);
    }

    v23 = *v22;
    if (*v22 > -994)
    {
      switch(v23)
      {
        case -993:
          goto LABEL_40;
        case -992:
          v36 = *(v18 - 5);
          *v124 = *v22;
          *&v124[16] = v36;
          memset(&v124[32], 0, 24);
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v124[32], *(v18 - 8), *(v18 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v18 - 7) - *(v18 - 8)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v126[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v18 - 5), *(v18 - 4), (*(v18 - 4) - *(v18 - 5)) >> 4);
          v37 = *v21;
          *(&v126[1] + 5) = *(v18 - 11);
          v126[1] = v37;
          (*(**v21 + 24))(*v21, 1, v18 - 12);
          (*(*v126[1] + 24))(v126[1], 0, v124);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v131, v124);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v124[32])
          {
            *&v124[40] = *&v124[32];
            operator delete(*&v124[32]);
          }

          break;
        case -991:
          break;
        default:
LABEL_186:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
      }
    }

    else
    {
      if ((v23 + 995) < 2)
      {
        goto LABEL_45;
      }

      if (v23 != -1000)
      {
        goto LABEL_186;
      }

      v24 = *(v18 - 10);
      if ((a5 & 0x20) != 0 && v24 == v122 || (a5 & 0x1000) != 0 && v24 != v120)
      {
LABEL_40:
        v35 = v132 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v132 - 12);
        v132 = v35;
        goto LABEL_45;
      }

      v25 = &v24[-*(v18 - 11)];
      if ((v15 & (v14 >= v25)) == 0)
      {
        v26 = *(v18 - 5);
        *v128 = *v22;
        *&v128[16] = v26;
        if (v128 != v22)
        {
          v28 = *(v18 - 8);
          v27 = *(v18 - 7);
          v29 = v27 - v28;
          v30 = *(&v129 + 1);
          v31 = *&v128[32];
          if (*(&v129 + 1) - *&v128[32] < v27 - v28)
          {
            if (*&v128[32])
            {
              *&v129 = *&v128[32];
              operator delete(*&v128[32]);
              v30 = 0;
              *&v128[32] = 0;
              v129 = 0uLL;
            }

            v32 = 0xAAAAAAAAAAAAAAABLL * (v29 >> 3);
            if (v32 <= 0xAAAAAAAAAAAAAAALL)
            {
              v33 = 0xAAAAAAAAAAAAAAABLL * (v30 >> 3);
              if (2 * v33 > v32)
              {
                v32 = 2 * v33;
              }

              if (v33 >= 0x555555555555555)
              {
                v34 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v34 = v32;
              }

              if (v34 <= 0xAAAAAAAAAAAAAAALL)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v34);
              }
            }

            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v38 = v129;
          if (v129 - *&v128[32] >= v29)
          {
            while (v28 != v27)
            {
              *v31 = *v28;
              *(v31 + 16) = *(v28 + 16);
              v28 += 24;
              v31 += 24;
            }
          }

          else
          {
            v39 = (v28 + v129 - *&v128[32]);
            if (v129 != *&v128[32])
            {
              do
              {
                *v31 = *v28;
                *(v31 + 16) = *(v28 + 16);
                v28 += 24;
                v31 += 24;
              }

              while (v28 != v39);
            }

            while (v39 != v27)
            {
              v40 = *v39;
              *(v38 + 16) = *(v39 + 2);
              *v38 = v40;
              v38 += 24;
              v39 = (v39 + 24);
            }

            v31 = v38;
          }

          *&v129 = v31;
          v42 = *(v18 - 5);
          v41 = *(v18 - 4);
          v43 = v41 - v42;
          v44 = v130[2];
          v45 = v130[0];
          if ((v130[2] - v130[0]) < (v41 - v42))
          {
            if (v130[0])
            {
              v130[1] = v130[0];
              operator delete(v130[0]);
              v44 = 0;
              memset(v130, 0, 24);
            }

            v46 = v43 >> 4;
            if (!((v43 >> 4) >> 60))
            {
              if (v44 >> 3 > v46)
              {
                v46 = v44 >> 3;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF0)
              {
                v47 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v47 = v46;
              }

              if (!(v47 >> 60))
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v47);
              }
            }

            std::vector<long long>::__throw_length_error[abi:ne200100]();
          }

          v48 = v130[1];
          if ((v130[1] - v130[0]) >= v43)
          {
            while (v42 != v41)
            {
              *v45 = *v42;
              v45[1] = *(v42 + 1);
              v42 += 16;
              v45 += 2;
            }
          }

          else
          {
            v49 = &v42[v130[1] - v130[0]];
            if (v130[1] != v130[0])
            {
              do
              {
                *v45 = *v42;
                v45[1] = *(v42 + 1);
                v42 += 16;
                v45 += 2;
              }

              while (v42 != v49);
            }

            while (v49 != v41)
            {
              v50 = *v49;
              v49 += 16;
              *v48++ = v50;
            }

            v45 = v48;
          }

          v130[1] = v45;
        }

        v51 = *v21;
        *(&v130[3] + 5) = *(v21 + 5);
        v130[3] = v51;
        v14 = v25;
      }

      v52 = v132;
      if (v14 == v17)
      {
        v53 = v131;
        while (v52 != v53)
        {
          v52 -= 12;
          std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v52);
        }

        v132 = v53;
        v15 = 1;
        v14 = v17;
      }

      else
      {
        v54 = v132 - 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v132 - 12);
        v132 = v54;
        v15 = 1;
      }
    }

LABEL_45:
    v18 = v132;
  }

  while (v131 != v132);
  if ((v15 & 1) == 0)
  {
    goto LABEL_92;
  }

  v56 = *v118;
  *v56 = v122;
  *(v56 + 8) = &v122[v14];
  *(v56 + 16) = 1;
  if (v129 != *&v128[32])
  {
    v57 = 0xAAAAAAAAAAAAAAABLL * ((v129 - *&v128[32]) >> 3);
    v58 = (*&v128[32] + 16);
    v59 = 1;
    do
    {
      v60 = v56 + 24 * v59;
      *v60 = *(v58 - 1);
      v61 = *v58;
      v58 += 24;
      *(v60 + 16) = v61;
      v19 = v57 > v59++;
    }

    while (v19);
  }

  v62 = 1;
LABEL_93:
  if (v130[0])
  {
    v130[1] = v130[0];
    operator delete(v130[0]);
  }

  if (*&v128[32])
  {
    *&v129 = *&v128[32];
    operator delete(*&v128[32]);
  }

  *v128 = &v131;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v128);
  return v62;
}

void sub_2415605A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  operator delete(v38);
  if (__p)
  {
    operator delete(__p);
  }

  std::deque<std::__state<char>>::~deque[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_29:
    v24 = 0;
    goto LABEL_30;
  }

  __x.first = a3;
  __x.second = a3;
  __x.matched = 0;
  *v36 = 0;
  memset(&v36[8], 0, 32);
  v37 = 0u;
  *__p = 0u;
  memset(v39, 0, 21);
  std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*&v36[32])
  {
    operator delete(*&v36[32]);
  }

  v35 = a4;
  v13 = v42;
  *(v42 - 96) = 0;
  *(v13 - 88) = a2;
  *(v13 - 80) = a2;
  *(v13 - 72) = a3;
  std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
  std::vector<std::pair<unsigned long,char const*>>::resize((v42 - 40), *(a1 + 32));
  v14 = v42;
  *(v42 - 16) = v6;
  *(v14 - 8) = a5;
  *(v14 - 4) = a6;
  v15 = 1;
  while (1)
  {
    if ((v15 & 0xFFF) == 0 && (v15 >> 12) >= a3 - a2)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>();
    }

    v17 = (v14 - 16);
    v16 = *(v14 - 16);
    v18 = (v14 - 96);
    if (v16)
    {
      (*(*v16 + 16))(v16, v14 - 96);
    }

    v19 = *v18;
    if (*v18 > -994)
    {
      if (v19 != -993)
      {
        if (v19 == -992)
        {
          v22 = *(v14 - 80);
          *v36 = *v18;
          *&v36[16] = v22;
          v37 = 0uLL;
          *&v36[32] = 0;
          std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v36[32], *(v14 - 64), *(v14 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v14 - 56) - *(v14 - 64)) >> 3));
          __p[0] = 0;
          __p[1] = 0;
          v39[0] = 0;
          std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(__p, *(v14 - 40), *(v14 - 32), (*(v14 - 32) - *(v14 - 40)) >> 4);
          v23 = *v17;
          *(&v39[1] + 5) = *(v14 - 11);
          v39[1] = v23;
          (*(**v17 + 24))(*v17, 1, v14 - 96);
          (*(*v39[1] + 24))(v39[1], 0, v36);
          std::vector<std::__state<char>>::push_back[abi:ne200100](&v41, v36);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (*&v36[32])
          {
            *&v37 = *&v36[32];
            operator delete(*&v36[32]);
          }
        }

        else if (v19 != -991)
        {
LABEL_36:
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>();
        }

        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if ((v19 + 995) >= 2)
    {
      break;
    }

LABEL_28:
    v14 = v42;
    ++v15;
    if (v41 == v42)
    {
      goto LABEL_29;
    }
  }

  if (v19 != -1000)
  {
    goto LABEL_36;
  }

  v20 = *(v14 - 80);
  if ((a5 & 0x20) != 0 && v20 == a2 || (a5 & 0x1000) != 0 && v20 != a3)
  {
LABEL_23:
    v21 = v42 - 96;
    std::__destroy_at[abi:ne200100]<std::__state<char>,0>((v42 - 96));
    v42 = v21;
    goto LABEL_28;
  }

  v26 = *v35;
  *v26 = a2;
  *(v26 + 8) = v20;
  *(v26 + 16) = 1;
  v27 = *(v14 - 64);
  v28 = *(v14 - 56) - v27;
  if (v28)
  {
    v29 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
    v30 = (v27 + 16);
    v31 = 1;
    do
    {
      v32 = v26 + 24 * v31;
      *v32 = *(v30 - 1);
      v33 = *v30;
      v30 += 24;
      *(v32 + 16) = v33;
    }

    while (v29 > v31++);
  }

  v24 = 1;
LABEL_30:
  *v36 = &v41;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](v36);
  return v24;
}

void sub_241560BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void std::vector<std::__state<char>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
    v9 = v8 + 1;
    if (v8 + 1 > 0x2AAAAAAAAAAAAAALL)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x155555555555555)
    {
      v11 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x2AAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 96 * v8;
    v13 = *(a2 + 16);
    *v12 = *a2;
    *(v12 + 16) = v13;
    *(v12 + 32) = *(a2 + 32);
    *(v12 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(v12 + 56) = *(a2 + 56);
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    v14 = *(a2 + 72);
    v15 = *(a2 + 80);
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(v12 + 85) = *(a2 + 85);
    *(v12 + 72) = v14;
    *(v12 + 80) = v15;
    v7 = 96 * v8 + 96;
    v24 = (v12 + 96);
    v16 = *a1;
    v17 = a1[1];
    v18 = v12 + *a1 - v17;
    if (*a1 != v17)
    {
      v19 = *a1;
      v20 = v12 + *a1 - v17;
      do
      {
        v21 = *(v19 + 1);
        *v20 = *v19;
        *(v20 + 16) = v21;
        *(v20 + 40) = 0;
        *(v20 + 48) = 0;
        *(v20 + 32) = 0;
        *(v20 + 32) = *(v19 + 2);
        *(v20 + 48) = v19[6];
        v19[4] = 0;
        v19[5] = 0;
        v19[6] = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
        *(v20 + 72) = 0;
        *(v20 + 56) = *(v19 + 7);
        *(v20 + 72) = v19[9];
        v19[7] = 0;
        v19[8] = 0;
        v19[9] = 0;
        v22 = v19[10];
        *(v20 + 85) = *(v19 + 85);
        *(v20 + 80) = v22;
        v19 += 12;
        v20 += 96;
      }

      while (v19 != v17);
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v16);
        v16 += 12;
      }

      while (v16 != v17);
    }

    v23 = *a1;
    *a1 = v18;
    *(a1 + 1) = v24;
    if (v23)
    {
      operator delete(v23);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v6 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v6;
    v7 = v3 + 96;
  }

  a1[1] = v7;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
  v7 = __sz - v6;
  if (__sz <= v6)
  {
    if (__sz >= v6)
    {
      return;
    }

    v12 = &begin[__sz];
  }

  else
  {
    value = this->__end_cap_.__value_;
    if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) < v7)
    {
      if (__sz <= 0xAAAAAAAAAAAAAAALL)
      {
        v9 = 0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3);
        v10 = 0x5555555555555556 * ((value - begin) >> 3);
        if (v10 <= __sz)
        {
          v10 = __sz;
        }

        if (v9 >= 0x555555555555555)
        {
          v11 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::sub_match<char const*>>>(v11);
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v12 = &end[v7];
    v13 = 24 * __sz - 8 * (v5 >> 3);
    do
    {
      v14 = __x->std::pair<const char *, const char *>;
      *&end->matched = *&__x->matched;
      end->std::pair<const char *, const char *> = v14;
      ++end;
      v13 -= 24;
    }

    while (v13);
  }

  this->__end_ = v12;
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 60))
      {
        v8 = value - begin;
        v9 = v8 >> 3;
        if (v8 >> 3 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(v10);
      }

      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    bzero(this->__end_, 16 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 12);
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::__state<char>,0>(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;

    operator delete(v3);
  }
}

uint64_t std::vector<std::sub_match<char const*>>::__init_with_size[abi:ne200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_241561250(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2415612C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 16);
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 12;
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,char const*>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::deque<std::__state<char>>::push_back(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = v5 - v6;
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = 42 * ((v5 - v6) >> 3) - 1;
  }

  v9 = *(a1 + 32);
  v10 = *(a1 + 40) + v9;
  if (v8 == v10)
  {
    if (v9 < 0x2A)
    {
      v11 = *(a1 + 24);
      v12 = &v11[-*a1];
      if (v7 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v19 = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v13);
    }

    *(a1 + 32) = v9 - 42;
    *&v18 = *v6;
    *(a1 + 8) = v6 + 8;
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v18);
    v6 = *(a1 + 8);
    v10 = *(a1 + 40) + *(a1 + 32);
  }

  v14 = *&v6[8 * (v10 / 0x2A)] - 4032 * (v10 / 0x2A) + 96 * v10;
  v15 = *(a2 + 16);
  *v14 = *a2;
  *(v14 + 16) = v15;
  *(v14 + 40) = 0;
  *(v14 + 48) = 0;
  *(v14 + 32) = 0;
  *(v14 + 32) = *(a2 + 32);
  *(v14 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v14 + 56) = 0;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
  result = *(a2 + 56);
  *(v14 + 56) = result;
  *(v14 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v17 = *(a2 + 80);
  *(v14 + 85) = *(a2 + 85);
  *(v14 + 80) = v17;
  ++*(a1 + 40);
  return result;
}

void sub_241561740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::deque<std::__state<char>>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  std::__destroy_at[abi:ne200100]<std::__state<char>,0>((*(a1[1] + 8 * (v2 / 0x2A)) - 4032 * (v2 / 0x2A) + 96 * v2));
  v4 = a1[1];
  v3 = a1[2];
  if (v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = 42 * ((v3 - v4) >> 3) - 1;
  }

  v6 = a1[4];
  v7 = a1[5] - 1;
  a1[5] = v7;
  if ((v5 - (v7 + v6)) >= 0x54)
  {
    operator delete(*(v3 - 8));
    a1[2] -= 8;
  }
}

uint64_t std::deque<std::__state<char>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v10 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x2A];
    v7 = *v6 + 96 * v5 + -4032 * (v5 / 0x2A);
    v8 = v3[(*(a1 + 40) + v5) / 0x2A] + 96 * *(a1 + 40) + 96 * v5 + -4032 * ((*(a1 + 40) + v5) / 0x2A);
    if (v7 != v8)
    {
      do
      {
        std::__destroy_at[abi:ne200100]<std::__state<char>,0>(v7);
        v7 += 96;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v10 = v2;
  }

  *v4 = 0;
  v11 = v10 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v11 = v2 - v3;
    }

    while (v11 > 2);
    v10 = v2;
  }

  if (v11 == 1)
  {
    v12 = 21;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_17;
    }

    v12 = 42;
  }

  *(a1 + 32) = v12;
LABEL_17:
  if (v3 != v10)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v10);
    v10 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v10)
  {
    *(a1 + 16) = v2 + ((v10 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v11);
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

uint64_t std::sub_match<std::__wrap_iter<char const*>>::compare[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
  }

  if (*(a2 + 16) == 1)
  {
    std::string::__init_with_size[abi:ne200100]<char *,char *>(&v16, *a2, *(a2 + 8), *(a2 + 8) - *a2);
    v3 = HIBYTE(v18);
    v5 = v16;
    v4 = v17;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v6 = SHIBYTE(v21);
  v7 = __dst;
  if (v21 >= 0)
  {
    v8 = HIBYTE(v21);
  }

  else
  {
    v8 = v20;
  }

  if (v21 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v3 & 0x80u) == 0)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if ((v3 & 0x80u) == 0)
  {
    v11 = &v16;
  }

  else
  {
    v11 = v5;
  }

  if (v10 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  v13 = memcmp(p_dst, v11, v12);
  if ((v3 & 0x80) != 0)
  {
    operator delete(v5);
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_24;
  }

  operator delete(v7);
LABEL_24:
  v14 = v10 < v8;
  if (v8 < v10)
  {
    v14 = -1;
  }

  if (v13)
  {
    return v13;
  }

  else
  {
    return v14;
  }
}

void sub_241561D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_traits<char> *__cdecl std::regex_traits<char>::regex_traits(std::regex_traits<char> *this)
{
  v2 = MEMORY[0x245CE9670]();
  this->__ct_ = std::locale::use_facet(v2, MEMORY[0x277D82680]);
  this->__col_ = std::locale::use_facet(&this->__loc_, MEMORY[0x277D826A0]);
  return this;
}

void sub_2415621CC(_Unwind_Exception *a1)
{
  (*(*v1 + 8))(v1);
  (*(*v2 + 8))(v2);
  _Unwind_Resume(a1);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)17>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 17);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ecma_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = a2;
  do
  {
    v8 = v7;
    v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
  }

  while (v7 != v8);
  if (v8 == a2)
  {
    operator new();
  }

  if (v8 != a3)
  {
    do
    {
      if (*v7 != 124)
      {
        break;
      }

      v9 = a1->__end_;
      v10 = ++v7;
      do
      {
        v11 = v7;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_term<char const*>(a1, v7, a3);
      }

      while (v7 != v11);
      if (v11 == v10)
      {
        operator new();
      }

      std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
    }

    while (v11 != a3);
  }

  return v7;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_basic_reg_exp<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = a2;
  if (a2 != a3)
  {
    if (*a2 == 94)
    {
      std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
      ++v3;
    }

    if (v3 != a3)
    {
      do
      {
        v6 = v3;
        v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_simple_RE<char const*>(this, v3, a3);
        v3 = v7;
      }

      while (v7 != v6);
      if (v6 != a3 && v7 + 1 == a3 && *v7 == 36)
      {
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        ++v3;
      }
    }

    if (v3 != a3)
    {
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
    }
  }

  return v3;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = a1->__end_;
  v7 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, a2, a3);
  if (v7 == a2)
  {
LABEL_8:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  v8 = v7;
  while (v8 != a3 && *v8 == 124)
  {
    v9 = a1->__end_;
    v10 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(a1, v8 + 1, a3);
    if (v10 == v8 + 1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    std::basic_regex<char,std::regex_traits<char>>::__push_alternation(a1, end, v9);
  }

  return v8;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)14>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 14);
}

uint64_t std::__empty_non_own_state<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(a2 + 80) = *(result + 8);
  return result;
}

uint64_t std::__alternate<char>::__exec_split(uint64_t result, int a2, uint64_t a3)
{
  *a3 = -994;
  v3 = 8;
  if (a2)
  {
    v3 = 16;
  }

  *(a3 + 80) = *(result + v3);
  return result;
}

void std::__alternate<char>::~__alternate(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x245CE96E0);
}

void (__cdecl ***std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  *a1 = &unk_28533B1D8;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 1))(v3);
  }

  return a1;
}

void std::__owns_one_state<char>::~__owns_one_state(std::__owns_one_state<char> *this)
{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }

  JUMPOUT(0x245CE96E0);
}

{
  first = this->__first_;
  if (first)
  {
    (first->~__node_0)(first);
  }
}

void std::__owns_two_states<char>::~__owns_two_states(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x245CE96E0);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_branch<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, a2, a3);
  if (v6 == a2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>();
  }

  do
  {
    v7 = v6;
    v6 = std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(a1, v6, a3);
  }

  while (v6 != v7);
  return v7;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)15>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 15);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_expression<char const*>(std::basic_regex<char> *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  end = this->__end_;
  marked_count = this->__marked_count_;
  if (a2 == a3)
  {
LABEL_25:
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(this, a2, a3);
    goto LABEL_26;
  }

  v8 = *a2;
  v9 = (v8 - 36);
  if (v9 > 0x3A)
  {
    goto LABEL_13;
  }

  if (((1 << (v8 - 36)) & 0x5800000080004D1) == 0)
  {
    if (v9 == 5)
    {
      if (this->__open_count_)
      {
        goto LABEL_4;
      }

      v15 = 41;
LABEL_15:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v15);
      v11 = a2 + 1;
      goto LABEL_38;
    }

LABEL_13:
    if ((v8 - 123) < 2)
    {
      goto LABEL_4;
    }

    v15 = *a2;
    goto LABEL_15;
  }

LABEL_4:
  v10 = a2 + 1;
  v11 = a2;
  if (a2 + 1 == a3)
  {
    goto LABEL_22;
  }

  v12 = *a2;
  if (v12 != 92)
  {
    goto LABEL_23;
  }

  v13 = *v10;
  v14 = *v10;
  if ((v13 - 36) <= 0x3A && ((1 << (v13 - 36)) & 0x5800000080004F1) != 0 || (v13 - 123) < 3)
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(this, v14);
    v11 = a2 + 2;
    goto LABEL_38;
  }

  if ((this->__flags_ & 0x1F0) == 0x40)
  {
    v11 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(this, v10, a3, 0);
  }

  else
  {
    v16 = std::basic_regex<char,std::regex_traits<char>>::__test_back_ref(this, v14);
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v11 = &a2[v17];
  }

  if (v11 == a2)
  {
LABEL_22:
    v12 = *v11;
LABEL_23:
    if (v12 == 46)
    {
      operator new();
    }

    goto LABEL_25;
  }

LABEL_26:
  if (v11 == a2 && v11 != a3)
  {
    v18 = *v11;
    switch(v18)
    {
      case '$':
        std::basic_regex<char,std::regex_traits<char>>::__push_r_anchor(this);
        break;
      case '(':
        std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(this);
        v19 = this->__marked_count_;
        ++this->__open_count_;
        v20 = std::basic_regex<char,std::regex_traits<char>>::__parse_extended_reg_exp<char const*>(this, v11 + 1, a3);
        if (v20 == a3 || (v11 = v20, *v20 != 41))
        {
          std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>();
        }

        std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(this, v19);
        --this->__open_count_;
        break;
      case '^':
        std::basic_regex<char,std::regex_traits<char>>::__push_l_anchor(this);
        break;
      default:
        goto LABEL_37;
    }

    ++v11;
  }

LABEL_37:
  if (v11 == a2)
  {
    return v11;
  }

LABEL_38:
  v21 = this->__marked_count_ + 1;

  return std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(this, v11, a3, end, marked_count + 1, v21);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_begin_marked_subexpression(std::basic_regex<char> *this)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)6>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 6);
}

void std::basic_regex<char,std::regex_traits<char>>::__push_end_marked_subexpression(std::basic_regex<char> *this, unsigned int a2)
{
  if ((this->__flags_ & 2) == 0)
  {
    operator new();
  }
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_ERE_dupl_symbol<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, std::__owns_one_state<char> *__s, size_t a5, size_t a6)
{
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a6;
  v7 = a5;
  v10 = a1;
  v11 = *(a1 + 24) & 0x1F0;
  v12 = *a2;
  if (v12 > 0x3E)
  {
    if (v12 == 63)
    {
      v13 = a2 + 1;
      if (v11)
      {
        v20 = 1;
      }

      else
      {
        v20 = v13 == a3;
      }

      if (!v20 && *v13 == 63)
      {
        v13 = a2 + 2;
        a5 = a5;
        a6 = a6;
        v14 = 0;
        v18 = 1;
        goto LABEL_33;
      }

      a5 = a5;
      a6 = a6;
      v14 = 0;
      v18 = 1;
      goto LABEL_45;
    }

    if (v12 != 123)
    {
      return a2;
    }

    v15 = a2 + 1;
    v16 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(a2 + 1, a3, &__max);
    if (v16 != v15)
    {
      if (v16 != a3)
      {
        v17 = *v16;
        if (v17 != 44)
        {
          if (v17 == 125)
          {
            v13 = v16 + 1;
            if (!v11 && v13 != a3 && *v13 == 63)
            {
              v13 = v16 + 2;
              v14 = __max;
              a5 = v7;
              a6 = v6;
              a1 = v10;
              v18 = __max;
LABEL_33:
              v21 = __s;
              v22 = 0;
LABEL_46:
              std::basic_regex<char,std::regex_traits<char>>::__push_loop(a1, v14, v18, v21, a5, a6, v22);
              return v13;
            }

            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            v18 = __max;
LABEL_45:
            v21 = __s;
            v22 = 1;
            goto LABEL_46;
          }

          goto LABEL_58;
        }

        v23 = v16 + 1;
        if (v16 + 1 == a3)
        {
          goto LABEL_58;
        }

        if (*v23 == 125)
        {
          v13 = v16 + 2;
          if (!v11 && v13 != a3 && *v13 == 63)
          {
            v13 = v16 + 3;
            v14 = __max;
            a5 = v7;
            a6 = v6;
            a1 = v10;
            goto LABEL_26;
          }

          v14 = __max;
          a5 = v7;
          a6 = v6;
          a1 = v10;
LABEL_36:
          v18 = -1;
          goto LABEL_45;
        }

        v27 = -1;
        v25 = std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(v16 + 1, a3, &v27);
        if (v25 != v23 && v25 != a3 && *v25 == 125)
        {
          v18 = v27;
          v14 = __max;
          if (v27 >= __max)
          {
            v13 = v25 + 1;
            v22 = 1;
            if (!v11 && v13 != a3)
            {
              v26 = v25[1];
              v22 = v26 != 63;
              if (v26 == 63)
              {
                v13 = v25 + 2;
              }
            }

            a5 = v7;
            a6 = v6;
            a1 = v10;
            v21 = __s;
            goto LABEL_46;
          }

          goto LABEL_58;
        }
      }

      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>();
    }

LABEL_58:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
  }

  if (v12 == 42)
  {
    v13 = a2 + 1;
    if (v11)
    {
      v19 = 1;
    }

    else
    {
      v19 = v13 == a3;
    }

    if (!v19 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 0;
      goto LABEL_26;
    }

    a5 = a5;
    a6 = a6;
    v14 = 0;
    goto LABEL_36;
  }

  if (v12 == 43)
  {
    v13 = a2 + 1;
    if (!v11 && v13 != a3 && *v13 == 63)
    {
      v13 = a2 + 2;
      a5 = a5;
      a6 = a6;
      v14 = 1;
LABEL_26:
      v18 = -1;
      goto LABEL_33;
    }

    a5 = a5;
    a6 = a6;
    v14 = 1;
    goto LABEL_36;
  }

  return a2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_DUP_COUNT<char const*>(unsigned __int8 *result, unsigned __int8 *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *result;
    if ((v3 & 0xF8) == 0x30 || (v3 & 0xFE) == 0x38)
    {
      v4 = v3 - 48;
      *a3 = v4;
      if (++result != a2)
      {
        do
        {
          v5 = *result;
          if ((v5 & 0xF8) != 0x30 && (v5 & 0xFE) != 0x38)
          {
            break;
          }

          if (v4 >= 214748364)
          {
            std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>();
          }

          v4 = v5 + 10 * v4 - 48;
          *a3 = v4;
          ++result;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)8>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 8);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)7>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 7);
}

uint64_t std::__repeat_one_loop<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -991;
  *(a2 + 80) = *(result + 8);
  return result;
}

unsigned int *std::__loop<char>::__exec_split(unsigned int *result, int a2, void *a3)
{
  *a3 = -994;
  if (*(result + 52) == a2)
  {
    a3[10] = *(result + 2);
  }

  else
  {
    a3[10] = *(result + 1);
    return std::__loop<char>::__init_repeat[abi:ne200100](result, a3);
  }

  return result;
}

unsigned int *std::__loop<char>::__init_repeat[abi:ne200100](unsigned int *result, void *a2)
{
  v2 = result[11];
  *(a2[7] + 16 * result[10] + 8) = a2[2];
  v3 = result[12];
  if (v2 != v3)
  {
    v4 = v2 - 1;
    v5 = a2[3];
    v6 = v3 - 1 - v4;
    v7 = (a2[4] + 24 * v4 + 16);
    do
    {
      *(v7 - 2) = v5;
      *(v7 - 1) = v5;
      *v7 = 0;
      v7 += 24;
      --v6;
    }

    while (v6);
  }

  return result;
}

unsigned int *std::__loop<char>::__exec(unsigned int *result, void *a2)
{
  v2 = (a2[7] + 16 * result[10]);
  if (*a2 == -991)
  {
    v3 = *v2 + 1;
    *v2 = v3;
    v4 = *(result + 3);
    v5 = *(result + 4);
    v6 = v3 < v5;
    if (v3 < v5 && v3 >= v4)
    {
      v8 = v2[1];
      v6 = v3 < v5 && v8 != a2[2];
    }

    if (!v6 || v3 < v4)
    {
      *a2 = -994;
      if (!v6)
      {
        goto LABEL_25;
      }

LABEL_22:
      a2[10] = *(result + 1);
      return std::__loop<char>::__init_repeat[abi:ne200100](result, a2);
    }

    goto LABEL_23;
  }

  *v2 = 0;
  if (*(result + 4))
  {
    if (*(result + 3))
    {
      *a2 = -994;
      goto LABEL_22;
    }

LABEL_23:
    *a2 = -992;
    return result;
  }

  *a2 = -994;
LABEL_25:
  a2[10] = *(result + 2);
  return result;
}

void std::__loop<char>::~__loop(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  std::__owns_two_states<char>::~__owns_two_states(a1);

  JUMPOUT(0x245CE96E0);
}

uint64_t std::__end_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  v2 = *(a2 + 32) + 24 * (*(result + 16) - 1);
  *(v2 + 8) = *(a2 + 16);
  *(v2 + 16) = 1;
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x245CE96E0);
}

void (__cdecl ***std::__end_marked_subexpression<char>::~__end_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__begin_marked_subexpression<char>::__exec(uint64_t result, uint64_t a2)
{
  *a2 = -994;
  *(*(a2 + 32) + 24 * (*(result + 16) - 1)) = *(a2 + 16);
  *(a2 + 80) = *(result + 8);
  return result;
}

void std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x245CE96E0);
}

void (__cdecl ***std::__begin_marked_subexpression<char>::~__begin_marked_subexpression(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__r_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == *(a2 + 24) && (*(a2 + 88) & 2) == 0 || *(result + 16) == 1 && ((v3 = *v2, v3 != 13) ? (v4 = v3 == 10) : (v4 = 1), v4))
  {
    *a2 = -994;
    v5 = *(result + 8);
  }

  else
  {
    v5 = 0;
    *a2 = -993;
  }

  *(a2 + 80) = v5;
  return result;
}

void std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x245CE96E0);
}

void (__cdecl ***std::__r_anchor_multiline<char>::~__r_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

uint64_t std::__l_anchor_multiline<char>::__exec(uint64_t result, uint64_t a2)
{
  if (*(a2 + 92) == 1)
  {
    if (*(a2 + 16) != *(a2 + 8) || (*(a2 + 88) & 1) != 0)
    {
LABEL_12:
      v4 = 0;
      *a2 = -993;
      goto LABEL_13;
    }
  }

  else
  {
    if (*(result + 16) != 1)
    {
      goto LABEL_12;
    }

    v2 = *(*(a2 + 16) - 1);
    if (v2 != 13 && v2 != 10)
    {
      goto LABEL_12;
    }
  }

  *a2 = -994;
  v4 = *(result + 8);
LABEL_13:
  *(a2 + 80) = v4;
  return result;
}

void std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this))
{
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 1))(v1);
  }

  JUMPOUT(0x245CE96E0);
}

void (__cdecl ***std::__l_anchor_multiline<char>::~__l_anchor_multiline(void (__cdecl ***a1)(std::__owns_one_state<char> *__hidden this)))(std::__owns_one_state<char> *__hidden this)
{
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 1))(v2);
  }

  return a1;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_bracket_expression<char const*>(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3 && *a2 == 91)
  {
    if (a2 + 1 == a3)
    {
      goto LABEL_246;
    }

    v5 = a2[1] == 94 ? a2 + 2 : a2 + 1;
    started = std::basic_regex<char,std::regex_traits<char>>::__start_matching_list(a1, a2[1] == 94);
    if (v5 == a3)
    {
      goto LABEL_246;
    }

    v7 = started;
    if ((*(a1 + 24) & 0x1F0) != 0 && *v5 == 93)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](started, 93);
      ++v5;
    }

    if (v5 != a3)
    {
      v8 = a3 - 4;
      while (1)
      {
        v9 = v5;
        if (v5 == a3)
        {
          goto LABEL_147;
        }

        v10 = *v5;
        v9 = v5;
        if (v10 == 93)
        {
          goto LABEL_147;
        }

        v11 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v95 = 0;
        v12 = 0;
        v9 = v5;
        if (v5 + 1 != a3 && v10 == 91)
        {
          v13 = v5[1];
          switch(v13)
          {
            case '.':
              v9 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v5 + 2, a3, __p);
              v12 = HIBYTE(v95);
              v11 = __p[1];
              break;
            case ':':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_245;
              }

              v18 = v8 - v5;
              v15 = v5 + 2;
              for (i = v5 + 2; ; v15 = i)
              {
                v20 = *i++;
                if (v20 == 58 && *i == 93)
                {
                  break;
                }

                if (!v18)
                {
                  goto LABEL_245;
                }

                --v18;
              }

              if (v15 == a3)
              {
LABEL_245:
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
              }

              v27 = *(a1 + 24);
              std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v5 + 2, v15, v15 - (v5 + 2));
              end_high = HIBYTE(__dst.__end_);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                p_dst = &__dst;
              }

              else
              {
                p_dst = __dst.__first_;
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                end_high = __dst.__begin_;
              }

              (*(**(a1 + 8) + 48))(*(a1 + 8), p_dst, end_high + p_dst);
              if (SHIBYTE(__dst.__end_) >= 0)
              {
                first = &__dst;
              }

              else
              {
                first = __dst.__first_;
              }

              classname = std::__get_classname(first, v27 & 1);
              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              if (!classname)
              {
                std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)2>();
              }

              v32 = 0;
              *(v7 + 160) |= classname;
              goto LABEL_143;
            case '=':
              if (a3 - (v5 + 2) < 2)
              {
                goto LABEL_245;
              }

              v14 = v8 - v5;
              v15 = v5 + 2;
              for (j = v5 + 2; ; v15 = j)
              {
                v17 = *j++;
                if (v17 == 61 && *j == 93)
                {
                  break;
                }

                if (!v14)
                {
                  goto LABEL_245;
                }

                --v14;
              }

              if (v15 == a3)
              {
                goto LABEL_245;
              }

              std::regex_traits<char>::__lookup_collatename<char const*>(__src, a1, v5 + 2, v15);
              v24 = SHIBYTE(v99);
              if ((SHIBYTE(v99) & 0x8000000000000000) != 0)
              {
                v24 = __src[1];
                v25 = (v7 + 136);
                if (!__src[1])
                {
LABEL_247:
                  std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                }

                v26 = __src[0];
              }

              else
              {
                v25 = (v7 + 136);
                if (!HIBYTE(v99))
                {
                  goto LABEL_247;
                }

                v26 = __src;
              }

              std::string::__init_with_size[abi:ne200100]<char *,char *>(&__dst, v26, v26 + v24, v24);
              (*(**(a1 + 16) + 32))(__s);
              v34 = HIBYTE(v97);
              if (v97 < 0)
              {
                v34 = __s[1];
              }

              if (v34 != 1)
              {
                if (v34 == 12)
                {
                  v35 = __s;
                  if (v97 < 0)
                  {
                    v35 = __s[0];
                  }

                  *(v35 + 11) = *(v35 + 3);
                }

                else if (SHIBYTE(v97) < 0)
                {
                  *__s[0] = 0;
                  __s[1] = 0;
                }

                else
                {
                  LOBYTE(__s[0]) = 0;
                  HIBYTE(v97) = 0;
                }
              }

              if (SHIBYTE(__dst.__end_) < 0)
              {
                operator delete(__dst.__first_);
              }

              v41 = HIBYTE(v97);
              if (v97 < 0)
              {
                v41 = __s[1];
              }

              if (v41)
              {
                v43 = *(v7 + 144);
                v42 = *(v7 + 152);
                if (v43 >= v42)
                {
                  v47 = *v25;
                  v48 = v25;
                  v49 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *v25) >> 3);
                  v50 = v49 + 1;
                  if (v49 + 1 > 0xAAAAAAAAAAAAAAALL)
                  {
                    std::vector<long long>::__throw_length_error[abi:ne200100]();
                  }

                  v51 = 0xAAAAAAAAAAAAAAABLL * ((v42 - v47) >> 3);
                  if (2 * v51 > v50)
                  {
                    v50 = 2 * v51;
                  }

                  if (v51 >= 0x555555555555555)
                  {
                    v52 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v52 = v50;
                  }

                  __dst.__end_cap_.__value_ = v48;
                  if (v52)
                  {
                    if (v52 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  begin = (24 * v49);
                  __dst.__first_ = 0;
                  __dst.__begin_ = begin;
                  value = 0;
                  __dst.__end_ = begin;
                  __dst.__end_cap_.__value_ = 0;
                  if (v97 < 0)
                  {
                    std::string::__init_copy_ctor_external(begin, __s[0], __s[1]);
                    begin = __dst.__begin_;
                    end = __dst.__end_;
                    value = __dst.__end_cap_.__value_;
                  }

                  else
                  {
                    *&begin->__r_.__value_.__l.__data_ = *__s;
                    begin->__r_.__value_.__r.__words[2] = v97;
                    end = begin;
                  }

                  v54 = end + 1;
                  v58 = *(v7 + 136);
                  v59 = *(v7 + 144) - v58;
                  v60 = begin - v59;
                  memcpy(begin - v59, v58, v59);
                  v61 = *(v7 + 136);
                  *(v7 + 136) = v60;
                  *(v7 + 144) = v54;
                  v62 = *(v7 + 152);
                  *(v7 + 152) = value;
                  __dst.__end_ = v61;
                  __dst.__end_cap_.__value_ = v62;
                  __dst.__first_ = v61;
                  __dst.__begin_ = v61;
                  std::__split_buffer<std::string>::~__split_buffer(&__dst);
                }

                else
                {
                  if (SHIBYTE(v97) < 0)
                  {
                    std::string::__init_copy_ctor_external(*(v7 + 144), __s[0], __s[1]);
                  }

                  else
                  {
                    v44 = *__s;
                    *(v43 + 16) = v97;
                    *v43 = v44;
                  }

                  v54 = (v43 + 24);
                  *(v7 + 144) = v43 + 24;
                }

                *(v7 + 144) = v54;
              }

              else
              {
                v45 = HIBYTE(v99);
                if (SHIBYTE(v99) < 0)
                {
                  v45 = __src[1];
                }

                if (v45 == 2)
                {
                  v53 = __src;
                  if (SHIBYTE(v99) < 0)
                  {
                    v53 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v53, *(v53 + 1));
                }

                else
                {
                  if (v45 != 1)
                  {
                    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
                  }

                  v46 = __src;
                  if (SHIBYTE(v99) < 0)
                  {
                    v46 = __src[0];
                  }

                  std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v46);
                }
              }

              if (SHIBYTE(v97) < 0)
              {
                operator delete(__s[0]);
              }

              if (SHIBYTE(v99) < 0)
              {
                operator delete(__src[0]);
              }

              v32 = 0;
LABEL_143:
              v21 = (v15 + 2);
              v39 = v5;
              goto LABEL_144;
            default:
              v11 = 0;
              v12 = 0;
              v9 = v5;
              break;
          }
        }

        v21 = (*(a1 + 24) & 0x1F0);
        if (v12 >= 0)
        {
          v11 = v12;
        }

        if (!v11)
        {
          if ((*(a1 + 24) & 0x1B0 | 0x40) == 0x40)
          {
            v22 = *v9;
            if (v22 == 92)
            {
              if ((*(a1 + 24) & 0x1F0) != 0)
              {
                v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 1, a3, __p);
              }

              else
              {
                v23 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 1, a3, __p, v7);
              }

              v9 = v23;
              goto LABEL_76;
            }
          }

          else
          {
            LOBYTE(v22) = *v9;
          }

          if (v12 < 0)
          {
            v33 = __p[0];
            __p[1] = 1;
          }

          else
          {
            HIBYTE(v95) = 1;
            v33 = __p;
          }

          *v33 = v22;
          *(v33 + 1) = 0;
          ++v9;
        }

LABEL_76:
        if (v9 != a3)
        {
          v36 = *v9;
          if (v36 != 93)
          {
            v38 = v9 + 1;
            if (v9 + 1 != a3 && v36 == 45 && *v38 != 93)
            {
              v92[0] = 0;
              v92[1] = 0;
              v93 = 0;
              v39 = v9 + 2;
              if (v9 + 2 != a3 && *v38 == 91 && *v39 == 46)
              {
                v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(a1, v9 + 3, a3, v92);
                goto LABEL_152;
              }

              if ((v21 | 0x40) == 0x40)
              {
                LODWORD(v38) = *v38;
                if (v38 == 92)
                {
                  if (v21)
                  {
                    v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(a1, v9 + 2, a3, v92);
                  }

                  else
                  {
                    v40 = std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(a1, v9 + 2, a3, v92, v7);
                  }

LABEL_152:
                  v39 = v40;
LABEL_153:
                  v21 = v90;
                  *v90 = *__p;
                  v91 = v95;
                  __p[1] = 0;
                  v95 = 0;
                  *v88 = *v92;
                  v89 = v93;
                  v92[0] = 0;
                  v92[1] = 0;
                  v93 = 0;
                  __p[0] = 0;
                  if (*(v7 + 170) == 1)
                  {
                    if (*(v7 + 169) == 1)
                    {
                      for (k = 0; ; ++k)
                      {
                        if ((SHIBYTE(v91) & 0x8000000000000000) != 0)
                        {
                          if (k >= v90[1])
                          {
LABEL_201:
                            for (m = 0; ; ++m)
                            {
                              if ((SHIBYTE(v89) & 0x8000000000000000) != 0)
                              {
                                if (m >= v88[1])
                                {
                                  goto LABEL_211;
                                }

                                v80 = v88[0];
                              }

                              else
                              {
                                if (m >= SHIBYTE(v89))
                                {
                                  goto LABEL_211;
                                }

                                v80 = v88;
                              }

                              v81 = (*(**(v7 + 24) + 40))(*(v7 + 24), m[v80]);
                              if (v89 >= 0)
                              {
                                v82 = v88;
                              }

                              else
                              {
                                v82 = v88[0];
                              }

                              m[v82] = v81;
                            }
                          }

                          v65 = v90[0];
                        }

                        else
                        {
                          if (k >= SHIBYTE(v91))
                          {
                            goto LABEL_201;
                          }

                          v65 = v90;
                        }

                        v66 = (*(**(v7 + 24) + 40))(*(v7 + 24), k[v65]);
                        if (SHIBYTE(v91) >= 0)
                        {
                          v67 = v90;
                        }

                        else
                        {
                          v67 = v90[0];
                        }

                        k[v67] = v66;
                      }
                    }

                    v77 = 0;
                    if ((HIBYTE(v91) & 0x80) != 0)
                    {
                      goto LABEL_192;
                    }

                    while (v77 < HIBYTE(v91))
                    {
                      while (1)
                      {
                        ++v77;
                        if ((HIBYTE(v91) & 0x80) == 0)
                        {
                          break;
                        }

LABEL_192:
                        if (v77 >= v90[1])
                        {
                          goto LABEL_195;
                        }
                      }
                    }

LABEL_195:
                    v78 = 0;
                    if (v89 < 0)
                    {
                      goto LABEL_198;
                    }

                    while (v78 < HIBYTE(v89))
                    {
                      while (1)
                      {
                        ++v78;
                        if ((v89 & 0x8000000000000000) == 0)
                        {
                          break;
                        }

LABEL_198:
                        if (v78 >= v88[1])
                        {
                          goto LABEL_211;
                        }
                      }
                    }

LABEL_211:
                    v83 = HIBYTE(v91);
                    if (SHIBYTE(v91) >= 0)
                    {
                      v84 = v90;
                    }

                    else
                    {
                      v84 = v90[0];
                    }

                    if (SHIBYTE(v91) < 0)
                    {
                      v83 = v90[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__src, v7 + 16, v84, &v83[v84]);
                    v85 = HIBYTE(v89);
                    if (v89 >= 0)
                    {
                      v86 = v88;
                    }

                    else
                    {
                      v86 = v88[0];
                    }

                    if (v89 < 0)
                    {
                      v85 = v88[1];
                    }

                    std::regex_traits<char>::transform<std::__wrap_iter<char *>>(__s, v7 + 16, v86, &v85[v86]);
                    *&__dst.__first_ = *__src;
                    __dst.__end_ = v99;
                    __src[1] = 0;
                    v99 = 0;
                    __dst.__end_cap_ = *__s;
                    v101 = v97;
                    __s[0] = 0;
                    __s[1] = 0;
                    v97 = 0;
                    __src[0] = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v101) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      operator delete(__dst.__first_);
                    }

                    if (SHIBYTE(v97) < 0)
                    {
                      operator delete(__s[0]);
                    }

                    if (SHIBYTE(v99) < 0)
                    {
                      v76 = __src[0];
LABEL_229:
                      operator delete(v76);
                    }
                  }

                  else
                  {
                    v68 = HIBYTE(v91);
                    if (SHIBYTE(v91) < 0)
                    {
                      v68 = v90[1];
                    }

                    if (v68 != 1)
                    {
                      goto LABEL_249;
                    }

                    v69 = HIBYTE(v89);
                    if (v89 < 0)
                    {
                      v69 = v88[1];
                    }

                    if (v69 != 1)
                    {
LABEL_249:
                      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)9>();
                    }

                    if (*(v7 + 169) == 1)
                    {
                      if (SHIBYTE(v91) >= 0)
                      {
                        v70 = v90;
                      }

                      else
                      {
                        v70 = v90[0];
                      }

                      v71 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v70);
                      if (SHIBYTE(v91) >= 0)
                      {
                        v72 = v90;
                      }

                      else
                      {
                        v72 = v90[0];
                      }

                      *v72 = v71;
                      if (v89 >= 0)
                      {
                        v73 = v88;
                      }

                      else
                      {
                        v73 = v88[0];
                      }

                      v74 = (*(**(v7 + 24) + 40))(*(v7 + 24), *v73);
                      if (v89 >= 0)
                      {
                        v75 = v88;
                      }

                      else
                      {
                        v75 = v88[0];
                      }

                      *v75 = v74;
                    }

                    *&__dst.__first_ = *v90;
                    __dst.__end_ = v91;
                    v90[0] = 0;
                    v90[1] = 0;
                    v91 = 0;
                    __dst.__end_cap_ = *v88;
                    v101 = v89;
                    v88[0] = 0;
                    v88[1] = 0;
                    v89 = 0;
                    std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100]((v7 + 88), &__dst);
                    if (SHIBYTE(v101) < 0)
                    {
                      operator delete(__dst.__end_cap_.__value_);
                    }

                    if (SHIBYTE(__dst.__end_) < 0)
                    {
                      v76 = __dst.__first_;
                      goto LABEL_229;
                    }
                  }

                  if (SHIBYTE(v89) < 0)
                  {
                    operator delete(v88[0]);
                  }

                  if (SHIBYTE(v91) < 0)
                  {
                    operator delete(v90[0]);
                  }

                  if (SHIBYTE(v93) < 0)
                  {
                    operator delete(v92[0]);
                  }

                  v32 = 1;
LABEL_144:
                  if (SHIBYTE(v95) < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v9 = v39;
                  if ((v32 & 1) == 0)
                  {
                    goto LABEL_148;
                  }

                  goto LABEL_147;
                }
              }

              else
              {
                LOBYTE(v38) = *v38;
              }

              HIBYTE(v93) = 1;
              LOWORD(v92[0]) = v38;
              goto LABEL_153;
            }
          }
        }

        if (SHIBYTE(v95) < 0)
        {
          if (__p[1])
          {
            if (__p[1] == 1)
            {
              v37 = __p[0];
LABEL_85:
              std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, *v37);
LABEL_95:
              v32 = 1;
              v39 = v9;
              goto LABEL_144;
            }

            v37 = __p[0];
LABEL_94:
            std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](v7, *v37, v37[1]);
            goto LABEL_95;
          }

          operator delete(__p[0]);
        }

        else if (HIBYTE(v95))
        {
          v37 = __p;
          if (HIBYTE(v95) == 1)
          {
            goto LABEL_85;
          }

          goto LABEL_94;
        }

LABEL_147:
        v21 = v9;
LABEL_148:
        v63 = v21 == v5;
        v5 = v21;
        if (v63)
        {
          goto LABEL_238;
        }
      }
    }

    v21 = v5;
LABEL_238:
    if (v21 == a3)
    {
      goto LABEL_246;
    }

    if (*v21 == 45)
    {
      std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](v7, 45);
      v21 = (v21 + 1);
    }

    if (v21 == a3 || *v21 != 93)
    {
LABEL_246:
      std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
    }

    return v21 + 1;
  }

  return a2;
}

void sub_241564790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  *(v48 + 144) = v49;
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x245CE9560](exception, 5);
}

void sub_241564A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale *a10)
{
  std::locale::~locale(&a9);
  a10 = v10 + 17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  locale = v10[14].__locale_;
  if (locale)
  {
    v10[15].__locale_ = locale;
    operator delete(locale);
  }

  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v16 = v10[8].__locale_;
  if (v16)
  {
    v10[9].__locale_ = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    v10[6].__locale_ = v17;
    operator delete(v17);
  }

  std::locale::~locale(v10 + 2);
  v10->__locale_ = v12;
  v18 = v10[1].__locale_;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  MEMORY[0x245CE96E0](v10, v11);
  _Unwind_Resume(a1);
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](uint64_t a1, char a2)
{
  v7 = a2;
  if (*(a1 + 169) == 1)
  {
    v6 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v3 = a1 + 40;
    v4 = &v6;
LABEL_5:
    std::vector<char>::push_back[abi:ne200100](v3, v4);
    return;
  }

  if (*(a1 + 170) == 1)
  {
    v5 = a2;
    v3 = a1 + 40;
    v4 = &v5;
    goto LABEL_5;
  }

  std::vector<char>::push_back[abi:ne200100](a1 + 40, &v7);
}

_BYTE *std::basic_regex<char,std::regex_traits<char>>::__parse_collating_symbol<char const*>(uint64_t a1, _BYTE *__src, _BYTE *a3, uint64_t a4)
{
  v4 = a3 - __src - 2;
  if (a3 - __src < 2)
  {
    goto LABEL_14;
  }

  v6 = __src;
  for (i = __src; ; v6 = i)
  {
    v8 = *i++;
    if (v8 == 46 && *i == 93)
    {
      break;
    }

    if (!v4)
    {
      goto LABEL_14;
    }

    --v4;
  }

  if (v6 == a3)
  {
LABEL_14:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)5>();
  }

  std::regex_traits<char>::__lookup_collatename<char const*>(&v12, a1, __src, v6);
  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = v12;
  v9 = v13;
  *(a4 + 16) = v13;
  v10 = HIBYTE(v9);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a4 + 8);
  }

  if (v10 - 1 >= 2)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)1>();
  }

  return v6 + 2;
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_class_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5)
{
  if (a2 == a3)
  {
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v7 = *a2;
  if (v7 > 0x61)
  {
    if (*a2 > 0x72u)
    {
      if (v7 != 115)
      {
        if (v7 != 119)
        {
          goto LABEL_26;
        }

        *(a5 + 160) |= 0x500u;
        std::__bracket_expression<char,std::regex_traits<char>>::__add_char[abi:ne200100](a5, 95);
        return a2 + 1;
      }

      v9 = *(a5 + 160) | 0x4000;
    }

    else
    {
      if (v7 == 98)
      {
        if (*(a4 + 23) < 0)
        {
          *(a4 + 8) = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        *a4 = 8;
        return a2 + 1;
      }

      if (v7 != 100)
      {
        goto LABEL_26;
      }

      v9 = *(a5 + 160) | 0x400;
    }

    *(a5 + 160) = v9;
    return a2 + 1;
  }

  if (*a2 <= 0x52u)
  {
    if (!*a2)
    {
      if (*(a4 + 23) < 0)
      {
        *(a4 + 8) = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = 0;
      return a2 + 1;
    }

    if (v7 == 68)
    {
      v8 = *(a5 + 164) | 0x400;
LABEL_23:
      *(a5 + 164) = v8;
      return a2 + 1;
    }

    goto LABEL_26;
  }

  if (v7 == 83)
  {
    v8 = *(a5 + 164) | 0x4000;
    goto LABEL_23;
  }

  if (v7 == 87)
  {
    *(a5 + 164) |= 0x500u;
    v15 = 95;
    if (*(a5 + 169) == 1)
    {
      v14 = (*(**(a5 + 24) + 40))(*(a5 + 24), 95);
      v10 = a5 + 64;
      v11 = &v14;
    }

    else
    {
      if (*(a5 + 170) != 1)
      {
        std::vector<char>::push_back[abi:ne200100](a5 + 64, &v15);
        return a2 + 1;
      }

      v13 = 95;
      v10 = a5 + 64;
      v11 = &v13;
    }

    std::vector<char>::push_back[abi:ne200100](v10, v11);
    return a2 + 1;
  }

LABEL_26:

  return std::basic_regex<char,std::regex_traits<char>>::__parse_character_escape<char const*>(a1, a2, a3, a4);
}

unsigned __int8 *std::basic_regex<char,std::regex_traits<char>>::__parse_awk_escape<char const*>(std::basic_regex<char> *a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  if (a2 == a3)
  {
LABEL_78:
    std::__throw_regex_error[abi:ne200100]<(std::regex_constants::error_type)3>();
  }

  v5 = *a2;
  if (v5 > 0x65u)
  {
    if (v5 <= 0x71u)
    {
      if (v5 == 102)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 12;
          goto LABEL_73;
        }

        v5 = 12;
        goto LABEL_57;
      }

      if (v5 == 110)
      {
        if (a4)
        {
          if (*(a4 + 23) < 0)
          {
            a4[1] = 1;
            a4 = *a4;
          }

          else
          {
            *(a4 + 23) = 1;
          }

          v9 = 10;
          goto LABEL_73;
        }

        v5 = 10;
        goto LABEL_57;
      }
    }

    else
    {
      switch(v5)
      {
        case 'r':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 13;
            goto LABEL_73;
          }

          v5 = 13;
          goto LABEL_57;
        case 't':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 9;
            goto LABEL_73;
          }

          v5 = 9;
          goto LABEL_57;
        case 'v':
          if (a4)
          {
            if (*(a4 + 23) < 0)
            {
              a4[1] = 1;
              a4 = *a4;
            }

            else
            {
              *(a4 + 23) = 1;
            }

            v9 = 11;
            goto LABEL_73;
          }

          v5 = 11;
          goto LABEL_57;
      }
    }

    goto LABEL_39;
  }

  if (v5 <= 0x5Bu)
  {
    if (v5 != 34 && v5 != 47)
    {
      goto LABEL_39;
    }

LABEL_19:
    if (a4)
    {
      if (*(a4 + 23) < 0)
      {
        a4[1] = 1;
        a4 = *a4;
      }

      else
      {
        *(a4 + 23) = 1;
      }

      *a4 = v5;
      *(a4 + 1) = 0;
      return a2 + 1;
    }

    goto LABEL_57;
  }

  switch(v5)
  {
    case '\\':
      goto LABEL_19;
    case 'a':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 7;
        goto LABEL_73;
      }

      v5 = 7;
LABEL_57:
      std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v5);
      return a2 + 1;
    case 'b':
      if (a4)
      {
        if (*(a4 + 23) < 0)
        {
          a4[1] = 1;
          a4 = *a4;
        }

        else
        {
          *(a4 + 23) = 1;
        }

        v9 = 8;
LABEL_73:
        *a4 = v9;
        return a2 + 1;
      }

      v5 = 8;
      goto LABEL_57;
  }

LABEL_39:
  if ((v5 & 0xFFFFFFF8) != 0x30)
  {
    goto LABEL_78;
  }

  v6 = v5 - 48;
  v7 = a2 + 1;
  if (a2 + 1 != a3 && (*v7 & 0xF8) == 0x30)
  {
    v6 = *v7 + 8 * v6 - 48;
    v7 = a2 + 2;
    if (a2 + 2 != a3)
    {
      v8 = *v7 + 8 * v6 - 48;
      if ((*v7 & 0xF8) == 0x30)
      {
        v7 = a2 + 3;
        v6 = v8;
      }
    }
  }

  if (a4)
  {
    if (*(a4 + 23) < 0)
    {
      a4[1] = 1;
      a4 = *a4;
    }

    else
    {
      *(a4 + 23) = 1;
    }

    *a4 = v6;
    *(a4 + 1) = 0;
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__push_char(a1, v6);
  }

  return v7;
}

void std::__bracket_expression<char,std::regex_traits<char>>::__add_digraph[abi:ne200100](uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (*(a1 + 169) == 1)
  {
    v5 = (*(**(a1 + 24) + 40))(*(a1 + 24));
    v11 = v5 | ((*(**(a1 + 24) + 40))(*(a1 + 24), a3) << 8);
    v6 = a1 + 112;
    v7 = &v11;
  }

  else
  {
    v8 = a2 | (a3 << 8);
    if (*(a1 + 170) == 1)
    {
      v10 = v8;
      v6 = a1 + 112;
      v7 = &v10;
    }

    else
    {
      v9 = v8;
      v6 = a1 + 112;
      v7 = &v9;
    }
  }

  std::vector<std::pair<char,char>>::push_back[abi:ne200100](v6, v7);
}

void std::vector<std::pair<char,char>>::push_back[abi:ne200100](uint64_t a1, _WORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 1;
    if (v7 >> 1 <= -2)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    else
    {
      v10 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (2 * v8);
    v13 = &v12[-(v7 >> 1)];
    *v12 = *a2;
    v5 = v12 + 1;
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::regex_traits<char>::transform<std::__wrap_iter<char *>>(int a1, uint64_t a2, _BYTE *__src, _BYTE *a4)
{
  std::string::__init_with_size[abi:ne200100]<char *,char *>(__p, __src, a4, a4 - __src);
  v5 = v8;
  if ((v8 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v8 & 0x80u) != 0)
  {
    v5 = __p[1];
  }

  (*(**(a2 + 16) + 32))(*(a2 + 16), v6, v6 + v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2415653FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::push_back[abi:ne200100](void **a1, __int128 *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 4);
    v9 = v8 + 1;
    if (v8 + 1 > 0x555555555555555)
    {
      std::vector<long long>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = 48 * v8;
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *a2 = 0;
    *(a2 + 1) = 0;
    v13 = *(a2 + 24);
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    *(v12 + 40) = *(a2 + 5);
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    v7 = 48 * v8 + 48;
    v14 = *a1;
    v15 = a1[1] - *a1;
    *(v12 + 24) = v13;
    v16 = 48 * v8 - v15;
    memcpy((v12 - v15), v14, v15);
    *a1 = v16;
    a1[1] = v7;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v6 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v6;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a2 + 3) = 0;
    v7 = (v3 + 48);
  }

  a1[1] = v7;
}