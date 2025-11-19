void sub_1DE1FA7DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE1FA7F4(void *a1, int a2)
{
  if (a2)
  {
    v3 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v4 = v3[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE1FA684);
  }

  JUMPOUT(0x1DE1FA7E4);
}

uint64_t AudioObjectPropertiesChanged(HALS_ObjectMap *a1, const BOOL *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (AMCP::Feature_Flags::access_run_new_hal(0, a2))
  {
    v8 = 1970171760;
  }

  else if (AllowHALClientsInThisProcess())
  {
    if (a3 && !a4)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "HALS_Framework-ios-imp.cpp";
        v22 = 1024;
        v23 = 2522;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectPropertiesChanged: the number of addresses doesn't match the array size", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = off_1F5991DD8;
      exception[2] = 1852797029;
    }

    v17[0] = 0;
    v17[1] = 0;
    HALS_System::GetInstance(&v18, 0, v17);
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "HALS_Framework-ios-imp.cpp";
        v22 = 1024;
        v23 = 2526;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no system object", buf, 0x12u);
      }

      v15 = __cxa_allocate_exception(0x10uLL);
      *v15 = off_1F5991DD8;
      v15[2] = 1852797029;
    }

    v9 = HALS_System::CopyPlugInByReferenceID(v18, a1);
    v10 = v9;
    if (!v9)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v21 = "HALS_Framework-ios-imp.cpp";
        v22 = 1024;
        v23 = 2530;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  AudioObjectCreate: no plug-in with given reference ID", buf, 0x12u);
      }

      v16 = __cxa_allocate_exception(0x10uLL);
      *v16 = off_1F5991DD8;
      v16[2] = 560947818;
    }

    (*(*v9 + 288))(v9, a2, a3, a4, 0);
    HALS_ObjectMap::ReleaseObject(v10, v11);
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    v8 = 0;
  }

  else
  {
    v8 = 560033144;
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1DE1FB188(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_1DE1FB1A0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a2)
  {
    if (a12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    }

    v14 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v15 = v14[2];
    }

    __cxa_end_catch();
    JUMPOUT(0x1DE1FAF38);
  }

  JUMPOUT(0x1DE1FB190);
}

double CalculateSafetyViolation_Read(const HALS_IOEngineInfo *a1, unsigned int a2)
{
  v9 = 0;
  v10 = 0.0;
  HALS_IOClock::GetRaw0Time(*(a1 + 46), &v10, &v9);
  v4 = v10;
  v5 = v9;
  v6 = *(*(a1 + 46) + 40 * *(*(a1 + 46) + 192) + 208);
  v7 = *(a1 + 99);

  return CalculateSafetyViolation_Read(v4, v5, v6, v7, (a1 + 592), a2);
}

void *___Z31AudioIssueDetectorLibraryLoaderv_block_invoke()
{
  v0 = dlopen("/usr/lib/libAudioIssueDetector.dylib", 1);
  if (v0 || (v0 = dlopen("/usr/local/lib/libAudioIssueDetector.dylib", 1)) != 0)
  {
    v1 = v0;
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v0, "AudioIssueDetectorCreate");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorInitialize");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorDispose");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormat");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetNodeFormatWithDirection");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorReset");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorAnalyzeBuffer");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorUpdateReportingSessions");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorRemoveNode");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetUplinkMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetDownlinkVolume");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetRouteSpecificDownlinkGainAdjustment");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorSetSmartCaseMicMute");
    AudioIssueDetectorLibraryLoader(void)::libSym = dlsym(v1, "AudioIssueDetectorFlush");
  }

  result = dlopen("/System/Library/Frameworks/AudioToolbox.framework/libAudioDSP.dylib", 1);
  if (result)
  {
    result = dlsym(result, "RegisterAudioUnits_Analyzer");
    if (result)
    {

      return (result)();
    }
  }

  return result;
}

void HALB_Guard::Locker::~Locker(HALB_Mutex **this)
{
  if (!*(this + 2))
  {
    HALB_Mutex::Unlock(*this);
  }
}

uint64_t HALB_Guard::WaitFor(HALB_Guard *this, unint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(this + 22);
  if (!v2)
  {
    v5 = (this + 72);
    v6 = *(this + 9);
    if (v6 == pthread_self())
    {
      v7 = a2 / 0x3B9ACA00;
      v8 = a2 % 0x3B9ACA00;
      if (a2 < 0x3B9ACA00)
      {
        v7 = 0;
        v8 = a2;
      }

      v17.tv_sec = v7;
      v17.tv_nsec = v8;
      v9 = *(this + 10);
      *v5 = 0;
      v5[1] = 0;
      v10 = pthread_cond_timedwait_relative_np((this + 104), (this + 8), &v17);
      v2 = v10;
      if (!v10 || v10 == 60)
      {
        goto LABEL_18;
      }

      v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v11 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v10);
      }

      v13 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v12 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v14 = *v13;
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      else
      {
        v14 = *v13;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "HALB_Mutex.cpp";
        v20 = 1024;
        v21 = 251;
        _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_Guard::Wait: waiting failed", buf, 0x12u);
      }

      if (v2 == 60)
      {
LABEL_18:
        *(this + 10) = v9;
        *(this + 9) = pthread_self();
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v19 = "HALB_Mutex.cpp";
        v20 = 1024;
        v21 = 260;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_Mutex::WaitFor: can't wait with a mutex the thread hasn't locked", buf, 0x12u);
      }

      v2 = 1;
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return v2;
}

void HALB_Guard::NotifyAll(HALB_Guard *this)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!*(this + 22))
  {
    v1 = pthread_cond_broadcast((this + 104));
    if (v1)
    {
      v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v2 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(v1);
      }

      v4 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v3 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *v4;
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      else
      {
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315394;
        v8 = "HALB_Mutex.cpp";
        v9 = 1024;
        v10 = 308;
        _os_log_error_impl(&dword_1DE1F9000, v5, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_Guard::NotifyAll: signaling failed", &v7, 0x12u);
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void HALB_Guard::WaitUntil(HALB_Guard *this, unint64_t a2, BOOL *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  if (*(this + 22))
  {
    goto LABEL_2;
  }

  v7 = *(this + 9);
  if (v7 != pthread_self())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315394;
      v11 = "HALB_Mutex.cpp";
      v12 = 1024;
      v13 = 284;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALB_Mutex::WaitUntil: can't wait with a mutex the thread hasn't locked", &v10, 0x12u);
    }

    goto LABEL_2;
  }

  mach_absolute_time();
  v8 = __udivti3();
  if (a2 <= v8)
  {
LABEL_2:
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

  *a3 = 1;
  v9 = *MEMORY[0x1E69E9840];

  HALB_Guard::WaitFor(this, a2 - v8);
}

void sub_1DE1FB910(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_1DE1FB950(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOClock::ResetFilter(HALS_IOClock *this, double a2, double a3)
{
  v3 = *(this + 45);
  if (v3 != 1918990199)
  {
    if (v3 != 1835103847)
    {
      LODWORD(a3) = *(this + 44);
      *(this + 72) = *&a3 * a2;
      return;
    }

    v5 = *(this + 68);
    v6 = *(this + 67);
    v7 = v5 - v6;
    v8 = *(this + 143);
    if (v8 == (v5 - v6) >> 3)
    {
      goto LABEL_24;
    }

    v9 = v8 - (v7 >> 3);
    if (v8 <= v7 >> 3)
    {
      if (v8 >= v7 >> 3)
      {
LABEL_23:
        v7 = 8 * *(this + 143);
LABEL_24:
        bzero(v6, v7);
        *(this + 66) = 0;
        *(this + 70) = 0;
        *(this + 142) = 0;
        return;
      }

      v14 = &v6[8 * v8];
    }

    else
    {
      v10 = *(this + 69);
      if (v9 > (v10 - v5) >> 3)
      {
        v11 = v10 - v6;
        v12 = (v10 - v6) >> 2;
        if (v12 <= v8)
        {
          v12 = *(this + 143);
        }

        if (v11 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v13);
      }

      v15 = 0;
      v16 = (v9 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v17 = vdupq_n_s64(v16);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v17, vorrq_s8(vdupq_n_s64(v15), xmmword_1DE757E30)));
        if (v18.i8[0])
        {
          *(v5 + 8 * v15) = 0;
        }

        if (v18.i8[4])
        {
          *(v5 + 8 * v15 + 8) = 0;
        }

        v15 += 2;
      }

      while (v16 - ((v9 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v15);
      v14 = (v5 + 8 * v9);
    }

    *(this + 68) = v14;
    goto LABEL_23;
  }
}

caulk::rt_safe_memory_resource *HALS_IOClock::Update(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 200;
  v4 = a1 + 200 + 40 * *(a1 + 192);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a1 + 96);
  v9 = *(a1 + 160);
  v10 = *(a1 + 152);
  v11 = *a2 == v10;
  v12 = *a2 != v10;
  if (v6 == v9)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    if (v7 == *(a1 + 104))
    {
      v13 = 0;
      v14 = 0;
      v15 = *(a1 + 168) == 0;
    }

    else
    {
      v15 = 0;
      v13 = 1;
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v13 = 1;
  }

  v16 = *v4;
  v17 = *(v4 + 24);
  v18 = *(v4 + 32);
  HIDWORD(v19) = 0;
  if (v9)
  {
    v20 = v5 == 0.0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v20 && v6 == 0;
  if (v21 || (v11 || v15) && (!v12 || !v15))
  {
    if (v8)
    {
      v32 = *(a1 + 584);
      if (v32)
      {
        v24 = 0;
        v33 = v16 + *(a1 + 592);
        v34 = *(a1 + 600) + v18;
        *(a1 + 584) = v32 - 1;
LABEL_49:
        v58 = *(a1 + 192);
        v57 = (a1 + 192);
        v56 = v58;
        if (v58 + 1 < *(v57 - 1))
        {
          v59 = v56 + 1;
        }

        else
        {
          v59 = 0;
        }

        v60 = v3 + 40 * v59;
        *v60 = v33;
        *(v60 + 8) = 1.0 / v33;
        *(v60 + 16) = v33 / *(v57 - 10);
        *(v60 + 24) = v17;
        *(v60 + 32) = v34;
        __dmb(0xBu);
        LODWORD(v60) = *v57;
        atomic_compare_exchange_strong_explicit(v57, &v60, v59, memory_order_relaxed, memory_order_relaxed);
        return v24;
      }
    }

    return 0;
  }

  v101 = a1 + 200;
  LODWORD(v17) = *(a1 + 88);
  v22 = *(a1 + 48);
  if (!v22 || (v23 = (*(*v22 + 48))(v22), v23 >= v6))
  {
    v24 = 0;
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_30:
    if (*(a1 + 168) == 1)
    {
      goto LABEL_31;
    }

    v61 = v17;
    v62 = *(a1 + 152);
    v63 = v62 + v61;
    if (v8 < 4)
    {
      v65 = *(a1 + 160);
      if (v5 == v63 && v6 > v65)
      {
        goto LABEL_75;
      }

      v68 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_108;
      }

      v70 = *(v68 + 8);
      v71 = v6 - *(a1 + 160);
      v72 = v5 - *(a1 + 152);
      if (v6 > v65)
      {
        v73 = "is";
      }

      else
      {
        v73 = "not";
      }

      if (v5 == v63)
      {
        v74 = "is";
      }

      else
      {
        v74 = "is not";
      }

      v75 = caulk::rt_safe_memory_resource::rt_allocate(result);
      v76 = v75;
      *(v75 + 8) = 0;
      *(v75 + 16) = 0;
      *(v75 + 20) = 0;
      *(v75 + 24) = "HALS_IOClock.cpp";
      *(v75 + 32) = 219;
      *(v75 + 40) = v74;
      *(v75 + 48) = v73;
      *(v75 + 56) = v61;
      *(v75 + 64) = v72;
      *(v75 + 72) = v71;
      v77 = &unk_1F59696A0;
    }

    else
    {
      v64 = round(v16 * v61);
      v65 = *(a1 + 160);
      if (v24)
      {
        v6 = v65 + v64;
      }

      if (*(a1 + 92) == 1)
      {
        v66 = v64 - 48000;
      }

      else
      {
        v66 = (v65 - *(a1 + 144)) / 0xA;
      }

      v78 = v66 + v65;
      if (v5 == v63 && v6 >= v78)
      {
LABEL_75:
        v79 = *(a1 + 96);
        *(a1 + 120) = *(a1 + 136);
        *(a1 + 128) = *(a1 + 144);
        *(a1 + 136) = v62;
        *(a1 + 144) = v65;
        *(a1 + 152) = v5;
        *(a1 + 160) = v6;
        v80 = v79 + 1;
        *(a1 + 96) = v79 + 1;
        if (v79 != -1)
        {
          v17 = *(a1 + 136);
          v49 = *(a1 + 176);
          v34 = *(a1 + 144);
          v90 = v34 - *(a1 + 128);
          v50 = v90;
          if (v79)
          {
            v91 = *(a1 + 180);
            v92 = v90;
            if (v91 != 1918990199)
            {
              if (v91 == 1835103847)
              {
                v93 = *(a1 + 560);
                v94 = *(a1 + 572);
                v95 = *(a1 + 568);
                v96 = *(a1 + 536);
                if (v93 == v94)
                {
                  *(a1 + 528) = *(a1 + 528) - *(v96 + 8 * v95);
                }

                else
                {
                  ++v93;
                }

                *(v96 + 8 * v95) = v50;
                v98 = *(a1 + 528) + v50;
                *(a1 + 528) = v98;
                *(a1 + 560) = v93;
                if (v95 + 1 == v94)
                {
                  v99 = 0;
                }

                else
                {
                  v99 = v95 + 1;
                }

                *(a1 + 568) = v99;
                v92 = v98 / v93;
              }

              else
              {
                v97 = 0.25;
                if (v80 >= 5)
                {
                  v97 = 0.5;
                  if (v80 >= 9)
                  {
                    v97 = 0.75;
                    if (v80 >= 0x11)
                    {
                      v97 = dbl_1DE757F30[v80 < 0x81];
                    }
                  }
                }

                v92 = (1.0 - v97) * v50 + v97 * *(a1 + 576);
                *(a1 + 576) = v92;
              }
            }

            v24 = 0;
            v100 = v92 / v49;
            v34 = v18 + v50;
            *(a1 + 592) = v100 - v16;
            *(a1 + 600) = v50 - vcvtad_u64_f64(v16 * v49);
            v33 = v16 + v100 - v16;
            *(a1 + 584) = 0;
            goto LABEL_48;
          }

          v24 = 0;
LABEL_47:
          v33 = v50 / v49;
          HALS_IOClock::ResetFilter(a1, v50 / v49, v50);
          *(a1 + 584) = 0;
          *(a1 + 592) = 0u;
          v51 = *(a1 + 144) - *(a1 + 128);
LABEL_48:
          v52 = *(a1 + 12);
          v53 = *(a1 + 136) - *(a1 + 120);
          kdebug_trace();
          v54 = *(a1 + 152);
          v55 = *(a1 + 160);
          kdebug_trace();
          v3 = v101;
          goto LABEL_49;
        }

        return 0;
      }

      v81 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v69 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      result = *MEMORY[0x1E69E3C08];
      if (!*MEMORY[0x1E69E3C08])
      {
        goto LABEL_108;
      }

      v70 = *(v81 + 8);
      if (v6 >= v78)
      {
        v82 = "";
      }

      else
      {
        v82 = " not";
      }

      if (v5 == v63)
      {
        v83 = "";
      }

      else
      {
        v83 = " not";
      }

      v75 = caulk::rt_safe_memory_resource::rt_allocate(result);
      v76 = v75;
      *(v75 + 8) = 0;
      *(v75 + 16) = 0;
      *(v75 + 20) = 0;
      *(v75 + 24) = "HALS_IOClock.cpp";
      *(v75 + 32) = 207;
      *(v75 + 40) = v83;
      *(v75 + 48) = v82;
      v77 = &unk_1F5969648;
    }

    *v75 = v77;
    caulk::concurrent::messenger::enqueue(v70, v76);
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
    }

    v84 = *(a1 + 56);
    v85 = *(a1 + 60);
    kdebug_trace();
    LODWORD(v86) = *(a1 + 88);
    v87 = v86;
    v88 = *(a1 + 112) * v87;
    *(a1 + 96) = 1;
    *(a1 + 152) = v5;
    *(a1 + 160) = v6;
    *(a1 + 136) = v5 - v87;
    v89 = vcvtad_u64_f64(v88);
    *(a1 + 144) = v6 - v89;
    *(a1 + 120) = v5 - v87 - v87;
    v7 = v6 - v89 - v89;
    v24 = 4;
    v48 = 128;
    goto LABEL_46;
  }

  v24 = v23;
  v25 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v26 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_108;
  }

  v28 = *(v25 + 8);
  v29 = caulk::rt_safe_memory_resource::rt_allocate(result);
  *(v29 + 16) = 0;
  *(v29 + 20) = 16;
  *(v29 + 24) = "HALS_IOClock.cpp";
  *(v29 + 32) = 105;
  *(v29 + 40) = v6;
  *(v29 + 48) = v24;
  *v29 = &unk_1F5969540;
  *(v29 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v28, v29);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v30 = *(a1 + 56);
  v31 = *(a1 + 60);
  kdebug_trace();
  if ((v13 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (v24)
  {
    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v36 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    result = *MEMORY[0x1E69E3C08];
    if (!*MEMORY[0x1E69E3C08])
    {
      goto LABEL_108;
    }

    v37 = *(v35 + 8);
    v38 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v38 + 16) = 0;
    *(v38 + 20) = 0;
    *(v38 + 24) = "HALS_IOClock.cpp";
    *(v38 + 32) = 157;
    *(v38 + 40) = v6;
    *(v38 + 48) = v24;
    *v38 = &unk_1F5969598;
    *(v38 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v37, v38);
    if (v36)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v36);
    }

    v24 = 2;
  }

  if (!v14)
  {
LABEL_45:
    LODWORD(v19) = *(a1 + 88);
    v45 = v19;
    v46 = *(a1 + 112) * v45;
    *(a1 + 96) = 1;
    *(a1 + 152) = v5;
    *(a1 + 160) = v6;
    *(a1 + 136) = v5 - v45;
    v47 = vcvtad_u64_f64(v46);
    *(a1 + 144) = v6 - v47;
    *(a1 + 120) = v5 - v45 - v45;
    *(a1 + 128) = v6 - v47 - v47;
    v48 = 104;
LABEL_46:
    *(a1 + v48) = v7;
    v17 = *(a1 + 136);
    v34 = *(a1 + 144);
    v49 = *(a1 + 176);
    v50 = (v34 - *(a1 + 128));
    goto LABEL_47;
  }

  v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v40 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v40)
  {
    atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v24 = v24 | 1;
    v41 = *(v39 + 8);
    v42 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v42 + 16) = 0;
    *(v42 + 20) = 0;
    *(v42 + 24) = "HALS_IOClock.cpp";
    *(v42 + 32) = 163;
    *v42 = &unk_1F59695F0;
    *(v42 + 8) = 0;
    caulk::concurrent::messenger::enqueue(v41, v42);
    if (v40)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    v43 = *(a1 + 60);
    v44 = *(a1 + 104);
    kdebug_trace();
    goto LABEL_45;
  }

LABEL_108:
  __break(1u);
  return result;
}

void HALB_IOThread::Locker::~Locker(HALB_IOThread::Locker *this)
{
  if (!*(this + 2))
  {
    HALB_Mutex::Unlock((*this + 16));
  }
}

void HALB_IOThread::Unlocker::~Unlocker(HALB_IOThread::Unlocker *this)
{
  if (!*(this + 2))
  {
    HALB_Mutex::Lock((*this + 16));
  }
}

uint64_t HALS_IOContext::GetCommandGate(HALS_IOContext *this)
{
  return *(this + 6);
}

{
  return *(this + 6);
}

uint64_t HALS_IOEngine2::_AnalyzeStreamForEvents(uint64_t this, HALS_IOEngine2_StreamInfo *a2, AudioTimeStamp *a3, unsigned int a4)
{
  if (*(a2 + 32) == 1)
  {
    v28 = v4;
    v29 = v5;
    v8 = this;
    this = HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(&v22, a2, a3->mSampleTime, a4);
    v9 = v24;
    v10 = v27;
    if (v25)
    {
      v11 = v25 + v26;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a2 + 56);
    v19 = *(a2 + 40);
    v20 = v12;
    v21 = *(a2 + 9);
    if (v22)
    {
      v13 = *(a2 + 2);
      v14 = *(a2 + 56);
      v16 = *(a2 + 40);
      v17 = v14;
      v18 = *(a2 + 9);
      this = (*(*v8 + 1352))(v8, v13, a3, &v16, v24, v22 + v23);
    }

    if (v11)
    {
      a3->mSampleTime = a3->mSampleTime + v9;
      v15 = *(a2 + 2);
      v16 = v19;
      v17 = v20;
      v18 = v21;
      return (*(*v8 + 1352))(v8, v15, a3, &v16, v10, v11);
    }
  }

  return this;
}

uint64_t HALS_IOEngine2::_CalculateSizeForQuantize(HALS_IOEngine2 *this)
{
  v1 = 2 * this;
  if ((2 * this) < 0x10)
  {
    return 16;
  }

  v3 = 64;
  v4 = 128;
  v5 = 256;
  v6 = 512;
  v7 = 1024;
  v8 = 4096;
  if (v1 < 0x800)
  {
    v8 = 2048;
  }

  if (v1 >= 0x400)
  {
    v7 = v8;
  }

  if (v1 >= 0x200)
  {
    v6 = v7;
  }

  if (v1 >= 0x100)
  {
    v5 = v6;
  }

  if (v1 >= 0x80)
  {
    v4 = v5;
  }

  if (v1 >= 0x40)
  {
    v3 = v4;
  }

  if (v1 >= 0x20)
  {
    return v3;
  }

  else
  {
    return 32;
  }
}

void HALS_IOEngine2::AudioIssueDetectorAnalyzeBuffer(HALS_IOEngine2 *this, uint64_t a2, const AudioTimeStamp *a3, AudioStreamBasicDescription *a4, uint64_t a5, void *a6)
{
  mBytesPerFrame = a4->mBytesPerFrame;
  mChannelsPerFrame = a4->mChannelsPerFrame;
  if ((a4->mFormatFlags & 0x20) != 0)
  {
    mChannelsPerFrame = 1;
  }

  v15[0] = 1;
  v15[2] = mChannelsPerFrame;
  v15[3] = mBytesPerFrame * a5;
  v16 = a6;
  v8 = *(this + 6);
  if (v8)
  {
    v12 = v8[1];
    v13 = v8[2];
    if (v12 != v13)
    {
      while (*v12 != a2)
      {
        v12 += 8;
        if (v12 == v13)
        {
          goto LABEL_10;
        }
      }
    }

    if (v12 == v13 || (*(v12 + 4) & 1) == 0)
    {
LABEL_10:
      v14 = v8[4];
      if (AudioIssueDetectorLibraryLoader(void)::once != -1)
      {
        dispatch_once(&AudioIssueDetectorLibraryLoader(void)::once, &__block_literal_global);
      }

      if (AudioIssueDetectorLibraryLoader(void)::libSym)
      {
        AudioIssueDetectorLibraryLoader(void)::libSym(v14, a2, 0, v15, a5, a3);
      }
    }
  }
}

double HALS_IOEngine2::GetEarliestCurrentPositionForOutputStream(HALS_IOEngine2 *this, int a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZN14HALS_IOEngine241GetEarliestCurrentPositionForOutputStreamEjj_block_invoke;
  v6[3] = &unk_1E8677D60;
  v6[4] = &v9;
  v6[5] = this;
  v7 = a2;
  v8 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = v10[6];
  _Block_object_dispose(&v9, 8);
  return v4;
}

void sub_1DE1FC874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *HALS_IOEngine2::_GetEarliestCurrentPositionForOutputStream(void *this, int a2, unsigned int a3, __n128 a4)
{
  v4 = *(this[101] + 48);
  v5 = (*(this[101] + 56) - v4) >> 3;
  a4.n128_u64[0] = 0;
  if (v5 > a3)
  {
    if (v5 <= a3)
    {
      std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
    }

    v6 = a3;
    v7 = *(v4 + 8 * a3);
    if (v7)
    {
      if (a2)
      {
        v8 = *(v7 + 48);
        v9 = *(v7 + 52) & 0x40;
        if (v8 == 1819304813 && v9 == 0)
        {
          v11 = this[97];
          v12 = this[98];
          if (v11 != v12)
          {
            v13 = this[97];
            while (1)
            {
              v14 = *v13;
              if (*(*(*v13 + 32) + 16) == a2)
              {
                break;
              }

              if (++v13 == v12)
              {
                return this;
              }
            }

            v15 = 1.79769313e308;
            do
            {
              v16 = atomic_load((*v11 + 48));
              if (v16)
              {
                v17 = *(*(*v11 + 32) + 104);
                this = (*(*v17 + 160))(v17, a4);
                if (this)
                {
                  v18 = *v11;
                  if (*v11 != v14)
                  {
                    v20 = v18 + 112;
                    v19 = *(v18 + 112);
                    if (0xCCCCCCCCCCCCCCCDLL * ((*(v20 + 8) - v19) >> 3) > v6)
                    {
                      v21 = *(v19 + 40 * v6 + 32);
                      if (v21 >= 1)
                      {
                        a4.n128_f64[0] = v21;
                        if (v15 > v21)
                        {
                          v15 = v21;
                        }
                      }
                    }
                  }
                }
              }

              ++v11;
            }

            while (v11 != v12);
          }
        }
      }
    }
  }

  return this;
}

uint64_t HALS_AHPManager::GetCommandGate(HALS_AHPManager *this)
{
  return *(this + 42);
}

{
  return *(this + 42);
}

void HALS_AHPManager::ObjectPropertiesChanged(HALS_AHPManager *this, HALS_ObjectMap *a2, uint64_t a3, const AudioObjectPropertyAddress *a4, HALS_Client *a5)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  if (*(this + 4) == a2)
  {
    goto LABEL_3;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___ZN15HALS_AHPManager23ObjectPropertiesChangedEjjPK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
  v15[3] = &unk_1E8677E08;
  v16 = a2;
  v15[4] = &v17;
  v15[5] = this;
  v10 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v10, v15);
  if (v18[3])
  {
LABEL_3:
    v11 = HALS_ObjectMap::CopyObjectByObjectID(a2);
    v13 = v11;
    if (v11)
    {
      if (a5)
      {
        v14 = *(a5 + 4);
      }

      else
      {
        v14 = 0;
      }

      HALS_Object::PropertiesChanged_Sync(this, *(v11 + 16), v14, a3, a4);
    }

    HALS_ObjectMap::ReleaseObject(v13, v12);
  }

  _Block_object_dispose(&v17, 8);
}

void sub_1DE1FCBB0(_Unwind_Exception *a1, HALS_Object *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  HALS_ObjectMap::ReleaseObject(v17, a2);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15HALS_AHPManager23ObjectPropertiesChangedEjjPK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 400);
  v3 = *(v1 + 408);
  if (v2 != v3)
  {
    while (*v2 != *(result + 48))
    {
      if (++v2 == v3)
      {
        v2 = v3;
        break;
      }
    }
  }

  *(*(*(result + 32) + 8) + 24) = v2 != v3;
  return result;
}

void HALS_IOProcessor::Process(HALS_IOProcessor *this, __n128 a2, unsigned __int8 *__src, unsigned int *a4, unsigned __int8 *a5, unsigned int *a6, unsigned __int8 *a7, unsigned __int8 *a8)
{
  v13 = __src;
  v14 = a2.n128_f64[0];
  v15 = *(this + 24);
  if (v15)
  {
    v81 = a2.n128_u64[0];
    v82[0] = __src;
    v82[1] = a4;
    v83[0] = a5;
    v83[1] = a6;
    v84 = a7;
    v85 = a8;
    v16 = *(v15 + 64);
    for (i = *(v15 + 72); v16 != i; v16 += 24)
    {
      v18 = *(v16 + 8);
      if (v18)
      {
        v19 = *(v16 + 4);
        if ((v19 & 0x40) != 0)
        {
          v20 = v84;
        }

        else
        {
          v20 = 0;
        }

        if ((v19 & 8) != 0)
        {
          v21 = v82;
        }

        else
        {
          v21 = 0;
        }

        if ((v19 & 4) != 0)
        {
          v22 = v83;
        }

        else
        {
          v22 = v21;
        }

        if ((v19 & 2) != 0)
        {
          v23 = v82;
        }

        else
        {
          v23 = 0;
        }

        if (v19)
        {
          v24 = v83;
        }

        else
        {
          v24 = v23;
        }

        (*(*v18 + 16))(v18, v24, v22, v20, *&v81);
      }
    }

    return;
  }

  v26 = *(this + 25);
  if (v26)
  {
    v28 = *(v26 + 56);
    v27 = *(v26 + 64);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v28)
    {
      v29 = *(v28 + 32);
      if (*(v28 + 40) == v29)
      {
        *(&v30 + 1) = 0;
      }

      else
      {
        v30 = *v29;
        v31 = *(v29 + 1);
        if (v31)
        {
          atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
        }

        if (v30)
        {
          *v30 = a5;
          *(v30 + 8) = a6;
        }
      }

      if (*(&v30 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
      }

      v35 = *(v28 + 32);
      *(&v36 + 1) = 0;
      if ((*(v28 + 40) - v35) >= 0x11)
      {
        v36 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v37)
        {
          atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
        }

        if (v36)
        {
          *v36 = v13;
          *(v36 + 8) = a4;
        }
      }

      if (*(&v36 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
      }

      v38 = *(v28 + 32);
      *(&v39 + 1) = 0;
      if ((*(v28 + 40) - v38) >= 0x21)
      {
        v39 = *(v38 + 32);
        v40 = *(v38 + 40);
        if (v40)
        {
          atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
        }

        if (v39)
        {
          *v39 = a7;
          *(v39 + 8) = a4;
        }
      }

      if (*(&v39 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v39 + 1));
      }

      v41 = *(v28 + 32);
      *(&v42 + 1) = 0;
      if ((*(v28 + 40) - v41) >= 0x31)
      {
        v42 = *(v41 + 48);
        v43 = *(v41 + 56);
        if (v43)
        {
          atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
        }

        if (v42)
        {
          *v42 = a8;
          *(v42 + 8) = a4;
        }
      }

      if (*(&v42 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
      }

      v80 = v14;
      v44 = *(this + 25);
      v81 = &v80;
      HALS_ProcessorGraph::Visit<std::shared_ptr<HALS_AudioNode> &,HALS_ProcessorGraph::Process(HALS_ProcessorGraph::ProcessContext const&)::$_0 &>(v44, &v81);
    }

    if (v27)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    return;
  }

  v32 = *(this + 26);
  if (*(this + 8) == 1)
  {
    if (v32 <= 7)
    {
      switch(v32)
      {
        case 1:
LABEL_75:
          v45 = *a6;
          v46 = **(this + 14);
          if (v13 == a5)
          {
            (*(v46 + 40))(v14);
          }

          else
          {
            (*(v46 + 48))(v14);
          }

          goto LABEL_111;
        case 2:
          goto LABEL_83;
        case 3:
          goto LABEL_74;
      }
    }

    else
    {
      if (v32 <= 9)
      {
        if (v32 == 8)
        {
          v47 = *a6;
          v48 = **(this + 20);
          if (__src == a5)
          {
            (*(v48 + 24))();
          }

          else
          {
            (*(v48 + 32))();
          }

          goto LABEL_111;
        }

        (*(**(this + 20) + 24))(*(this + 20), a5, *a6);
        goto LABEL_75;
      }

      if (v32 == 10)
      {
        (*(**(this + 20) + 24))(*(this + 20), a5, *a6);
LABEL_83:
        v49 = *(**(this + 18) + 80);
LABEL_123:

        v49();
        return;
      }

      if (v32 == 11)
      {
        (*(**(this + 20) + 24))(*(this + 20), a5, *a6);
LABEL_74:
        (*(**(this + 14) + 40))(*(this + 14), a5, *a6, v14);
        goto LABEL_83;
      }
    }

    if (a5 == __src)
    {
      return;
    }

    if (*(this + 10) != 1)
    {
      v73 = *(this + 3);
      v74 = __src;
      __src = a5;
LABEL_137:
      memcpy(v74, __src, v73);
      v72 = *(this + 4);
      *a6 = v72;
      goto LABEL_112;
    }

    memcpy(__src, a5, *(this + 3) * *a6);
LABEL_111:
    v72 = *a6;
LABEL_112:
    *a4 = v72;
    return;
  }

  switch(v32)
  {
    case 1:
      v33 = *a4;
      v34 = **(this + 14);
      if (a5 == __src)
      {
        (*(v34 + 40))(a2);
      }

      else
      {
        (*(v34 + 48))(a2);
      }

      goto LABEL_117;
    case 2:
      goto LABEL_96;
    case 3:
      goto LABEL_107;
    case 4:
      goto LABEL_90;
    case 5:
      goto LABEL_93;
    case 6:
      goto LABEL_104;
    case 7:
      goto LABEL_87;
    case 8:
      v62 = *a4;
      v63 = **(this + 20);
      if (a5 == __src)
      {
        (*(v63 + 24))();
      }

      else
      {
        (*(v63 + 32))();
      }

      goto LABEL_117;
    case 9:
      v69 = *a4;
      v70 = **(this + 20);
      if (a5 == __src)
      {
        (*(v70 + 24))();
        (*(**(this + 14) + 40))(*(this + 14), v13, *a4, v14);
        goto LABEL_117;
      }

      (*(v70 + 32))();
LABEL_120:
      *a6 = *a4;
      v77 = *(this + 14);
      goto LABEL_130;
    case 10:
      v60 = *a4;
      v61 = **(this + 20);
      if (*(this + 9) != 1)
      {
        (*(v61 + 32))();
        goto LABEL_122;
      }

      (*(v61 + 24))();
LABEL_96:
      v49 = *(**(this + 18) + 80);
      goto LABEL_123;
    case 11:
      v66 = *a4;
      v67 = **(this + 20);
      if (*(this + 9) != 1)
      {
        (*(v67 + 32))();
        goto LABEL_128;
      }

      (*(v67 + 24))();
LABEL_107:
      v68 = *(**(this + 18) + 80);
      goto LABEL_129;
    case 12:
      v52 = *a4;
      v53 = **(this + 20);
      if (*(this + 9) == 1)
      {
        (*(v53 + 24))();
LABEL_90:
        v54 = *a4;
        v55 = *(**(this + 16) + 24);
      }

      else
      {
        (*(v53 + 32))();
        v75 = *a4;
        v55 = *(**(this + 16) + 24);
      }

      v55();
      goto LABEL_117;
    case 13:
      v56 = *a4;
      v57 = **(this + 20);
      if (*(this + 9) == 1)
      {
        (*(v57 + 24))();
LABEL_93:
        v58 = *a4;
        v59 = *(**(this + 16) + 24);
      }

      else
      {
        (*(v57 + 32))();
        v76 = *a4;
        v59 = *(**(this + 16) + 24);
      }

      v59();
      goto LABEL_120;
    case 14:
      v64 = *a4;
      v65 = **(this + 20);
      if (*(this + 9) == 1)
      {
        (*(v65 + 24))();
LABEL_104:
        (*(**(this + 16) + 24))(*(this + 16), v13, a7, *a4);
LABEL_122:
        v49 = *(**(this + 18) + 80);
      }

      else
      {
        (*(v65 + 32))();
        (*(**(this + 16) + 24))(*(this + 16), a7, a8, *a4);
        v49 = *(**(this + 18) + 80);
      }

      goto LABEL_123;
    case 15:
      v50 = *a4;
      v51 = **(this + 20);
      if (*(this + 9) == 1)
      {
        (*(v51 + 24))();
LABEL_87:
        (*(**(this + 16) + 24))(*(this + 16), v13, a7, *a4);
LABEL_128:
        v68 = *(**(this + 18) + 80);
      }

      else
      {
        (*(v51 + 32))();
        (*(**(this + 16) + 24))(*(this + 16), a7, a8, *a4);
        v68 = *(**(this + 18) + 80);
      }

LABEL_129:
      v68();
      v77 = *(this + 14);
      v78 = *a6;
LABEL_130:
      v79 = *(*v77 + 40);
      v71.n128_f64[0] = v14;

      v79(v71);
      return;
    default:
      if (a5 == __src)
      {
        return;
      }

      if (*(this + 10) != 1)
      {
        v73 = *(this + 3);
        v74 = a5;
        goto LABEL_137;
      }

      memcpy(a5, __src, *(this + 3) * *a4);
LABEL_117:
      *a6 = *a4;
      break;
  }
}

void sub_1DE1FD908(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL CAPropertyAddress::IsCongruentAddress(CAPropertyAddress *this, const AudioObjectPropertyAddress *a2, const AudioObjectPropertyAddress *a3)
{
  v3 = *(this + 1);
  mScope = a2->mScope;
  if (mScope != 707406378 && v3 != 707406378 && v3 != mScope)
  {
    return 0;
  }

  v7 = *this;
  v8 = a2->mSelector == 707406378 || v7 == 707406378;
  if (!v8 && v7 != a2->mSelector)
  {
    return 0;
  }

  v10 = *(this + 2);
  mElement = a2->mElement;
  return v10 == -1 || v10 == mElement || mElement == -1;
}

void HALS_VolumeProcessor::Process(HALS_VolumeProcessor *this, double a2, unsigned __int8 *a3, unsigned int a4)
{
  if (*(this + 8) != 1)
  {
    return;
  }

  v30 = v4;
  v31 = v5;
  v6 = a4;
  v7 = a3;
  v9 = *(this + 4);
  if (v9 == 0.0)
  {
    *(this + 4) = a2;
    v9 = a2;
  }

  v10 = a4 + a2;
  if (v10 < v9)
  {
    v11 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  v14 = v9 + *(this + 5);
  if (v14 <= a2)
  {
LABEL_45:
    if (v6)
    {
      v26 = *(this + 6);
      *(this + 5) = v26;
      if (v26 == 0.0)
      {
        bzero(v7, 4 * *(this + 4) * v6);
      }

      else if (v26 != 1.0)
      {
        v28 = v26 * v26;
        MEMORY[0x1E12C2970](v7, 1, &v28, v7, 1, *(this + 4) * v6);
      }
    }

    return;
  }

  if (v9 > a2 && v10 >= v14)
  {
    v6 = (v9 - a2);
    v11 = (v14 - v9);
    v12 = (v10 - v14);
    goto LABEL_6;
  }

  if (v9 <= a2 && v10 < v14)
  {
    v12 = 0;
    v11 = a4;
LABEL_29:
    if (v11)
    {
      v18 = 0;
      v19 = *(this + 4);
      v20 = 4 * v19;
      while (1)
      {
        if (v19)
        {
          v21 = 0;
          do
          {
            *&v7[v21] = (*(this + 5) * *(this + 5)) * *&v7[v21];
            v21 += 4;
          }

          while (v20 != v21);
        }

        v23 = *(this + 5);
        v22 = *(this + 6);
        v24 = *(this + 7);
        if (v24 >= 0.0)
        {
          break;
        }

        if (v23 > v22)
        {
          goto LABEL_36;
        }

LABEL_37:
        *(this + 5) = v22;
        v7 += v20;
        if (++v18 == v11)
        {
          goto LABEL_44;
        }
      }

      if (v24 <= 0.0 || v23 >= v22)
      {
        goto LABEL_37;
      }

LABEL_36:
      v22 = v23 + v24;
      goto LABEL_37;
    }

LABEL_44:
    v6 = v12;
    goto LABEL_45;
  }

  if (v9 > a2 && v10 >= v9 && v10 < v14)
  {
    v12 = 0;
    v6 = (v9 - a2);
    v11 = (v10 - v9);
LABEL_6:
    if (v6)
    {
      v13 = *(this + 5);
      if (v13 == 0.0)
      {
        bzero(a3, 4 * *(this + 4) * v6);
      }

      else if (v13 != 1.0)
      {
        v29 = v13 * v13;
        MEMORY[0x1E12C2970](a3, 1, &v29, a3, 1, *(this + 4) * v6);
      }

      v7 += 4 * *(this + 4) * v6;
    }

    goto LABEL_29;
  }

  if (v9 <= a2 && v14 > a2 && v10 >= v14)
  {
    v11 = (v14 - a2);
    v12 = (v10 - v14);
    goto LABEL_29;
  }
}

uint64_t HALS_IOPrewarmManager::Stop(void *a1, int a2)
{
  v2 = a1[1];
  if (v2 || *a1)
  {
    if (a2 == 1)
    {
      if (*a1)
      {
        --*a1;
      }
    }

    else if (!a2)
    {
      if (!v2)
      {
        return *a1 != 0;
      }

      a1[1] = --v2;
    }

    if (v2)
    {
      return 2;
    }

    return *a1 != 0;
  }

  return 0;
}

void HALS_NotificationManager::FindObject(HALS_NotificationManager *this, unsigned int a2)
{
  *this = 0;
  *(this + 1) = 0;
  v8 = HALS_NotificationManager::sObjectListLock;
  v9 = HALB_Mutex::Lock(HALS_NotificationManager::sObjectListLock);
  v4 = *HALS_NotificationManager::sObjectList;
  v5 = *(HALS_NotificationManager::sObjectList + 8);
  if (*HALS_NotificationManager::sObjectList != v5)
  {
    while (**v4 < a2)
    {
      v4 += 16;
      if (v4 == v5)
      {
        goto LABEL_10;
      }
    }
  }

  if (v4 != v5)
  {
    v6 = *v4;
    if (**v4 == a2)
    {
      v7 = *(v4 + 8);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      *this = v6;
      *(this + 1) = v7;
    }
  }

LABEL_10:
  HALB_Mutex::Locker::~Locker(&v8);
}

uint64_t HALS_IOContextDescription::GetIOBufferForStreamAtIndex(HALS_IOContextDescription *this, int a2, unsigned int a3)
{
  if (a2)
  {
    v3 = *(this + 7);
    if (0xCBEEA4E1A08AD8F3 * ((*(this + 8) - v3) >> 3) <= a3)
    {
      return 0;
    }

    v4 = v3 + 472 * a3;
  }

  else
  {
    v5 = *(this + 10);
    if (a3 >= ((*(this + 11) - v5) >> 5))
    {
      return 0;
    }

    v6 = *(v5 + 32 * a3 + 8);
    if (*(v5 + 32 * a3 + 16) == v6)
    {
      return 0;
    }

    v4 = *v6;
    if (!(-1601513229 * ((*(*(v5 + 32 * a3 + 8) + 8) - v4) >> 3)))
    {
      return 0;
    }
  }

  if (!*(v4 + 108) || ((v7 = *(v4 + 112), *(v4 + 120) != v7) ? (v8 = v7 == 0) : (v8 = 1), v8))
  {
    v7 = (v4 + 456);
  }

  v9 = *v7;
  if (*(v9 + 88))
  {
    return *(v4 + 56) + *(v9 + 388);
  }

  return 0;
}

uint64_t HALS_IOEngine2_IOContextInfo::GetPointersForOutputStreamAtIndex(uint64_t this, unsigned int a2, unint64_t a3, unsigned int a4, unsigned int *a5, float **a6, unsigned int *a7, float **a8)
{
  *a5 = 0;
  *a6 = 0;
  *a7 = 0;
  *a8 = 0;
  v8 = *(this + 112);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(this + 120) - v8) >> 3) > a2)
  {
    v9 = *(this + 104);
    if (v9)
    {
      if (v9 >= a4)
      {
        v10 = (v8 + 40 * a2);
        v11 = *v10;
        if (*v10)
        {
          v12 = a3 % v9;
          v13 = a3 % v9 * *(v10 + 3);
          if (a3 % v9 + a4 <= v9)
          {
            *a5 = a4;
            *a6 = (v11 + 4 * v13);
          }

          else
          {
            *a5 = v9 - v12;
            *a6 = (v11 + 4 * v13);
            *a7 = v12 + a4 - *(this + 104);
            *a8 = *(*(this + 112) + 40 * a2);
          }
        }
      }
    }
  }

  return this;
}

void OS::CF::UntypedObject::~UntypedObject(OS::CF::UntypedObject *this)
{
  *this = &unk_1F5991080;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  OS::CF::UntypedObject::~UntypedObject(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t OS::CF::UntypedObject::operator=(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  *(a1 + 8) = a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

uint64_t ca::mach::throw_if_mach_error(uint64_t this, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *v7 = &unk_1F5986A70;
    MEMORY[0x1E12C10C0](v6, a2, v7, this);
    std::error_category::~error_category(v7);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = std::runtime_error::what(v6);
      *v7 = 136315138;
      *&v7[4] = v3;
      _os_log_error_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%s", v7, 0xCu);
    }

    exception = __cxa_allocate_exception(0x20uLL);
    v5 = std::runtime_error::runtime_error(exception, v6);
    v5->__vftable = (MEMORY[0x1E69E5510] + 16);
    v5[1] = v6[1];
    __cxa_throw(v5, MEMORY[0x1E69E53B8], MEMORY[0x1E69E52D0]);
  }

  v2 = *MEMORY[0x1E69E9840];
  return this;
}

atomic_uint *ca::sync::semaphore::signal(atomic_uint *this)
{
  if ((atomic_fetch_add_explicit(this + 2, 1u, memory_order_release) & 0x80000000) != 0)
  {
    v2 = MEMORY[0x1E12C2770](*this);

    return ca::mach::throw_if_mach_error("semaphore_signal failed", v2);
  }

  return this;
}

uint64_t HALS_Device::HasProperty(HALS_Device_HostedDSP **this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  v36[2] = a3;
  v37 = a4;
  v36[0] = this;
  v36[1] = &v37;
  v35 = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector > 1768124269)
  {
    if (mSelector <= 1934647618)
    {
      if (mSelector <= 1836411235)
      {
        if (mSelector > 1818454125)
        {
          if (mSelector <= 1819569762)
          {
            if (mSelector != 1818454126)
            {
              v7 = 1818850926;
              goto LABEL_107;
            }

LABEL_108:
            LOBYTE(v13) = 1;
            return v13;
          }

          if (mSelector != 1819569763)
          {
            v8 = 1819634020;
LABEL_89:
            if (mSelector != v8)
            {
              goto LABEL_138;
            }

            return v35;
          }

          goto LABEL_91;
        }

        if (mSelector == 1768124270 || mSelector == 1768777573)
        {
          return v35;
        }

        v7 = 1768907636;
LABEL_107:
        if (mSelector == v7)
        {
          goto LABEL_108;
        }

LABEL_138:
        if (HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
        {
          return v35;
        }

        LOBYTE(v13) = 0;
        v33 = a3->mSelector;
        if (a3->mSelector <= 1869638758)
        {
          if (v33 == 1650682995)
          {
            goto LABEL_108;
          }

          v34 = 1668047219;
        }

        else
        {
          if (v33 == 1869638759 || v33 == 1870098020)
          {
            goto LABEL_108;
          }

          v34 = 1937007734;
        }

        if (v33 != v34)
        {
          return v13;
        }

        goto LABEL_108;
      }

      if (mSelector > 1853059699)
      {
        if (mSelector > 1886353265)
        {
          if (mSelector == 1886353266)
          {
            goto LABEL_108;
          }

          v7 = 1919512167;
        }

        else
        {
          if (mSelector == 1853059700)
          {
            goto LABEL_108;
          }

          v7 = 1869180523;
        }

        goto LABEL_107;
      }

      if (mSelector == 1836411236)
      {
        return v35;
      }

      if (mSelector != 1852793963)
      {
        v7 = 1853059619;
        goto LABEL_107;
      }

LABEL_114:
      if (a3->mScope == 1869968496)
      {
        LOBYTE(v13) = (*(*this + 68))(this, 0, a4) != 0;
        return v13;
      }

      goto LABEL_137;
    }

    if (mSelector <= 1937009954)
    {
      if (mSelector <= 1936092275)
      {
        if (mSelector != 1934647619 && mSelector != 1934647636)
        {
          v9 = 1935763060;
LABEL_78:
          if (mSelector != v9)
          {
            goto LABEL_138;
          }

LABEL_91:
          mScope = a3->mScope;
          v19 = mScope == 1768845428;
          v20 = 1869968496;
LABEL_92:
          v22 = v19 || mScope == v20;
          goto LABEL_125;
        }

        if (HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
        {
          return v35;
        }

        if ((AMCP::Feature_Flags::force_mock_dsp_type(0, v26) & 1) == 0 && !AMCP::Feature_Flags::allow_adm_dsp_spatial(0, v27))
        {
          return 0;
        }

        goto LABEL_119;
      }

      if (mSelector <= 1936876643)
      {
        if (mSelector != 1936092276)
        {
          v9 = 1936482681;
          goto LABEL_78;
        }

LABEL_119:
        v28 = a3->mScope;
        v29 = 1869968496;
LABEL_124:
        v22 = v28 == v29;
LABEL_125:
        LOBYTE(v13) = v22;
        return v13;
      }

      if (mSelector != 1936876644)
      {
        v10 = 1936879204;
LABEL_97:
        if (mSelector != v10)
        {
          goto LABEL_138;
        }
      }

LABEL_98:
      v23 = a3->mScope;
      if (v23 == 1768845428)
      {
        v24 = 1;
        if ((*(*this + 68))(this, 1, a4))
        {
          return v24;
        }

        v23 = a3->mScope;
      }

      return v23 == 1869968496 && (*(*this + 68))(this, 0, v37) != 0;
    }

    if (mSelector <= 1983996970)
    {
      if (mSelector != 1937009955)
      {
        if (mSelector == 1953653102)
        {
          goto LABEL_108;
        }

        v7 = 1969841184;
        goto LABEL_107;
      }

      v32 = a3->mScope;
      LOBYTE(v13) = 1;
      if (v32 == 1735159650 || v32 == 1768845428 || v32 == 1869968496)
      {
        return v13;
      }

LABEL_137:
      LOBYTE(v13) = 0;
      return v13;
    }

    if (mSelector <= 1986622323)
    {
      if (mSelector == 1983996971)
      {
        if (HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
        {
          return v35;
        }

        v31 = v37;
        if (v37)
        {
          v31 = atomic_load(&v37[22].mScope);
        }

        LOBYTE(v13) = (a3->mScope == 1768845428) & v31;
        return v13;
      }

      if (mSelector != 1983997011)
      {
        goto LABEL_138;
      }

      if (!HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
      {
        HasProperty = HALS_Device_HostedDSP::HasProperty(this[79], a3, v37, v11);
        return *&HasProperty & ((HasProperty & 0x100) >> 8);
      }

      return v35;
    }

    if (mSelector != 1986622324)
    {
      v7 = 2003136116;
      goto LABEL_107;
    }

    goto LABEL_109;
  }

  if (mSelector > 1684498540)
  {
    if (mSelector > 1685414762)
    {
      if (mSelector > 1751412336)
      {
        if (mSelector > 1751737453)
        {
          if (mSelector == 1751737454)
          {
            goto LABEL_108;
          }

          v7 = 1752122448;
        }

        else
        {
          if (mSelector == 1751412337)
          {
            goto LABEL_108;
          }

          v7 = 1751413616;
        }

        goto LABEL_107;
      }

      if (mSelector != 1685414763)
      {
        if (mSelector == 1735354734)
        {
          goto LABEL_108;
        }

        v7 = 1735356005;
        goto LABEL_107;
      }

      goto LABEL_114;
    }

    if (mSelector <= 1684500593)
    {
      if (mSelector != 1684498541 && mSelector != 1684498544)
      {
        if (mSelector != 1684500589)
        {
          goto LABEL_138;
        }

        if (!HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
        {
          v15 = HALS_Device_HostedDSP::HasProperty(this[79], a3, v37, v14);
          if ((v15 & 0x100) == 0)
          {
            v16 = a3->mScope;
            LOBYTE(v15) = v16 == 1869968496 || v16 == 1768845428;
          }

          LOBYTE(v13) = v15 & 1;
          return v13;
        }

        return v35;
      }
    }

    else
    {
      if (mSelector > 1685278560)
      {
        if (mSelector == 1685278561)
        {
          if (HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
          {
            return v35;
          }

          v28 = a3->mScope;
          v29 = 1768845428;
          goto LABEL_124;
        }

        if (mSelector != 1685278562)
        {
          goto LABEL_138;
        }

        if (HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
        {
          return v35;
        }

        if (v37)
        {
          v21 = 1;
        }

        else
        {
          v21 = *(this + 660);
        }

LABEL_149:
        LOBYTE(v13) = v21 & 1;
        return v13;
      }

      if (mSelector != 1684500594)
      {
        v8 = 1685089383;
        goto LABEL_89;
      }
    }

    mScope = a3->mScope;
    v19 = mScope == 1869968496;
    v20 = 1768845428;
    goto LABEL_92;
  }

  if (mSelector > 1667461732)
  {
    if (mSelector > 1668575851)
    {
      if (mSelector > 1684301170)
      {
        if (mSelector == 1684301171)
        {
          return v35;
        }

        v9 = 1684434036;
        goto LABEL_78;
      }

      if (mSelector == 1668575852)
      {
        goto LABEL_108;
      }

      v10 = 1684236338;
      goto LABEL_97;
    }

    if (mSelector != 1667461733)
    {
      if (mSelector == 1667523955)
      {
        goto LABEL_108;
      }

      v7 = 1668049764;
      goto LABEL_107;
    }

LABEL_109:
    if (HALS_Device::HasProperty(unsigned int,AudioObjectPropertyAddress const&,HALS_Client *)const::$_0::operator()(v36, &v35))
    {
      return v35;
    }

    NumberStreamsExcludingReferenceStreams = HALS_Device::GetNumberStreamsExcludingReferenceStreams(this, 1);
    v21 = 0;
    if (NumberStreamsExcludingReferenceStreams && a3->mScope == 1768845428 && v37)
    {
      v21 = atomic_load(&v37[22].mScope);
    }

    goto LABEL_149;
  }

  if (mSelector > 1634758764)
  {
    if (mSelector != 1634758765 && mSelector != 1634758774)
    {
      v7 = 1667330160;
      goto LABEL_107;
    }

    goto LABEL_98;
  }

  if (mSelector == 1634429294)
  {
    goto LABEL_108;
  }

  if (mSelector != 1634496615)
  {
    v7 = 1634755428;
    goto LABEL_107;
  }

  return v35;
}

uint64_t HALS_Object::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  v4 = *a3 == 1870098020 || *a3 == 1937007734;
  v5 = v3 == 1869638759 || v4;
  v6 = v3 == 1650682995 || v3 == 1668047219;
  if (v3 <= 1869638758)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

double HALS_IOClock::GetRaw0Time(HALS_IOClock *this, double *a2, unint64_t *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!*(this + 24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = (this + 64);
      if (*(this + 87) < 0)
      {
        v5 = *v5;
      }

      *buf = 136315650;
      v9 = "HALS_IOClock.cpp";
      v10 = 1024;
      v11 = 420;
      v12 = 2080;
      v13 = v5;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOClock::GetRaw0Time: no anchor for device %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1937010544;
  }

  result = *(this + 19);
  *a2 = result;
  *a3 = *(this + 20);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOClock::TranslateTime(uint64_t this, const AudioTimeStamp *a2, AudioTimeStamp *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  mFlags = a2->mFlags;
  if ((mFlags & 3) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v23 = "HALS_IOClock.cpp";
      v24 = 1024;
      v25 = 523;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOClock::TranslateTime: have to have either sample time or host time valid on the input", buf, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v19 = 1852797029;
LABEL_34:
    exception[2] = v19;
  }

  if (!*(this + 96))
  {
    v21 = this;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v20 = (v21 + 64);
      if (*(v21 + 87) < 0)
      {
        v20 = *v20;
      }

      *buf = 136315650;
      v23 = "HALS_IOClock.cpp";
      v24 = 1024;
      v25 = 524;
      v26 = 2080;
      v27 = v20;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOClock::TranslateTime: no anchor for device %s", buf, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    v19 = 1937010544;
    goto LABEL_34;
  }

  v4 = this + 40 * *(this + 192);
  v5 = *(v4 + 200);
  v6 = *(v4 + 216);
  v7 = *(v4 + 224);
  v8 = *(v4 + 232);
  v9 = a3->mFlags;
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_5;
    }

LABEL_16:
    if ((mFlags & 2) != 0)
    {
      mHostTime = a2->mHostTime;
    }

    else
    {
      if ((mFlags & 1) == 0)
      {
        a3->mHostTime = 0;
        if ((v9 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      mSampleTime = a2->mSampleTime;
      if (a2->mSampleTime >= v7)
      {
        mHostTime = v8 + vcvtad_u64_f64(v5 * (mSampleTime - v7));
      }

      else
      {
        mHostTime = v8 - vcvtad_u64_f64(v5 * (v7 - mSampleTime));
      }
    }

    a3->mHostTime = mHostTime;
    if ((v9 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    a3->mRateScalar = v6;
    goto LABEL_7;
  }

  if (mFlags)
  {
    v11 = a2->mSampleTime;
  }

  else
  {
    v11 = 0.0;
    if ((mFlags & 2) != 0)
    {
      v12 = a2->mHostTime;
      v13 = -(v8 - v12);
      v14 = v12 >= v8;
      v15 = v12 - v8;
      if (v14)
      {
        v13 = v15;
      }

      v11 = v7 + round(v13 / v5);
    }
  }

  a3->mSampleTime = v11;
  if ((v9 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_5:
  if ((v9 & 4) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  v10 = *MEMORY[0x1E69E9840];
  return this;
}

UInt64 HALS_IOClock::GetCurrentTime(HALS_IOClock *this, AudioTimeStamp *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(this + 24))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = (this + 64);
      if (*(this + 87) < 0)
      {
        v16 = *v16;
      }

      v18 = 136315650;
      v19 = "HALS_IOClock.cpp";
      v20 = 1024;
      v21 = 470;
      v22 = 2080;
      v23 = v16;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOClock::GetCurrentTime: no anchor for device %s", &v18, 0x1Cu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = 1937010544;
  }

  v3 = *(this + 48);
  v4 = *(this + 79);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v6 = this + 40 * v3;
  v7 = *(v6 + 25);
  v8 = *(v6 + 27);
  v9 = *(v6 + 28);
  v10 = *(v6 + 29);
  result = (*(*v4 + 48))(v4);
  mFlags = a2->mFlags;
  if ((mFlags & 2) == 0)
  {
    if ((mFlags & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v14 = -(v10 - result);
    if (result >= v10)
    {
      v14 = (result - v10);
    }

    a2->mSampleTime = v9 + round(v14 / v7);
    if ((mFlags & 4) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  a2->mHostTime = result;
  if (mFlags)
  {
    goto LABEL_9;
  }

LABEL_5:
  if ((mFlags & 4) != 0)
  {
LABEL_6:
    a2->mRateScalar = v8;
  }

LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALB_IOThread::HasBeenStopped(HALB_IOThread *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(this + 11);
  v3 = pthread_self();
  if (v2 != v3)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "HALB_IOThread.cpp";
      v12 = 1024;
      v13 = 38;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOThread::HasBeenStopped: this thread ought to lock the lock", &v10, 0x12u);
    }
  }

  result = *(this + 180);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void HALB_UCObject::CopyProperty_BOOL(const __CFDictionary **this, const __CFString *a2, BOOL *a3)
{
  cf = 0;
  if (HALB_UCObject::CopyProperty_CFType(this, a2, &cf))
  {
    v4 = cf;
    v5 = CFGetTypeID(cf);
    if (v5 == CFBooleanGetTypeID())
    {
      *a3 = CFBooleanGetValue(v4) != 0;
    }

    else
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFNumberGetTypeID())
      {
        v8 = v4;
        v9 = 0;
        valuePtr = 0;
        if (v4)
        {
          CFNumberGetValue(v4, kCFNumberSInt32Type, &valuePtr);
          v7 = valuePtr != 0;
        }

        else
        {
          v7 = 0;
        }

        *a3 = v7;
        CACFNumber::~CACFNumber(&v8);
      }
    }

    CFRelease(v4);
  }
}

uint64_t HALS_IOEngine2::GetCommandGate(HALS_IOEngine2 *this)
{
  return *(this + 93);
}

{
  return *(this + 93);
}

uint64_t HALS_IOEngine2::GetSafetyOffset(HALS_IOEngine2 *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOEngine215GetSafetyOffsetEb_block_invoke;
  v5[3] = &unk_1E8677748;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK14HALS_IOEngine215GetSafetyOffsetEb_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = *(v1 + 4 * *(result + 48) + 20);
  }

  return result;
}

uint64_t HALS_IOEngine2::GetNumberStreams(HALS_IOEngine2 *this, char a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK14HALS_IOEngine216GetNumberStreamsEb_block_invoke;
  v5[3] = &unk_1E8677808;
  v5[4] = &v7;
  v5[5] = this;
  v6 = a2;
  v2 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v2, v5);
  v3 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZNK14HALS_IOEngine216GetNumberStreamsEb_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    *(*(*(result + 32) + 8) + 24) = (*(v1 + 24 * *(result + 48) + 56) - *(v1 + 24 * *(result + 48) + 48)) >> 3;
  }

  return result;
}

double HALS_IOEngine2::QuantizeAnchorTime(HALS_IOEngine2 *this, double a2, unsigned int a3, unsigned int a4)
{
  v7 = a2;
  v21 = 0;
  v19 = 0u;
  *v20 = 0u;
  v8 = (*(*this + 416))(this, 0);
  v9 = *this;
  if (v8)
  {
    v10 = (*(v9 + 360))(this, 0);
    (*(*this + 448))(this, 0, 0, &v19);
    if (DWORD2(v19) == 1819304813)
    {
      v11 = v20[0];
      v12 = HALS_IOEngine2::_CalculateSizeForQuantize(LODWORD(v20[0])) / v11;
      v13 = (v7 + a4 + v10) % v12;
      v14 = v12 - v13;
      if (!v13)
      {
        v14 = 0;
      }

      v7 += v14;
    }
  }

  else if ((*(v9 + 416))(this, 1))
  {
    v15 = (*(*this + 360))(this, 1);
    (*(*this + 448))(this, 1, 0, &v19);
    if (DWORD2(v19) == 1819304813)
    {
      v16 = v20[0];
      v17 = HALS_IOEngine2::_CalculateSizeForQuantize(LODWORD(v20[0]));
      return (a3 + v15 + (v7 - (a3 + v15)) / (v17 / v16) * (v17 / v16));
    }
  }

  return v7;
}

uint64_t HALS_IOEngine2::GetStartingChannelForStreamAtIndex(HALS_IOEngine2 *this, char a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK14HALS_IOEngine234GetStartingChannelForStreamAtIndexEbj_block_invoke;
  v6[3] = &unk_1E8677880;
  v6[4] = &v9;
  v6[5] = this;
  v8 = a2;
  v7 = a3;
  v3 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v3, v6);
  v4 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t ___ZNK14HALS_IOEngine234GetStartingChannelForStreamAtIndexEbj_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 808);
  if (v1)
  {
    v2 = *(result + 48);
    v4 = (v1 + 24 * *(result + 52) + 48);
    v3 = *v4;
    v5 = (v4[1] - *v4) >> 3;
    if (v2 >= v5)
    {
      v6 = 0;
    }

    else
    {
      if (v5 <= v2)
      {
        std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
      }

      v6 = *(*(v3 + 8 * v2) + 28);
    }

    *(*(*(result + 32) + 8) + 24) = v6;
  }

  return result;
}

uint64_t HALS_IOA2Device::HasProperty(HALS_IOA2Device *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  if (!(*(*this + 184))(this, a3, a4))
  {
LABEL_20:
    HasProperty = 0;
    return HasProperty & 1;
  }

  mSelector = a3->mSelector;
  if (a3->mSelector > 1819107690)
  {
    if (mSelector <= 1851878763)
    {
      if (mSelector <= 1819634019)
      {
        if (mSelector == 1819107691)
        {
          v42 = 0;
          v43 = &v42;
          v44 = 0x3802000000;
          v45 = __Block_byref_object_copy__5915;
          v46 = __Block_byref_object_dispose__5916;
          v47 = &unk_1F5991188;
          v48 = 0;
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 0x40000000;
          v40[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_2;
          v40[3] = &unk_1E86743A8;
          v40[4] = &v42;
          v40[5] = this;
          v17 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v17, v40);
          goto LABEL_36;
        }

        if (mSelector != 1819173229)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      if (mSelector != 1819634020)
      {
        if (mSelector == 1836411236)
        {
          v42 = 0;
          v43 = &v42;
          v44 = 0x3802000000;
          v45 = __Block_byref_object_copy__5915;
          v46 = __Block_byref_object_dispose__5916;
          v47 = &unk_1F5991188;
          v48 = 0;
          v37[0] = MEMORY[0x1E69E9820];
          v37[1] = 0x40000000;
          v37[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_5;
          v37[3] = &unk_1E8674420;
          v37[4] = &v42;
          v37[5] = this;
          v11 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v11, v37);
LABEL_36:
          HasProperty = v43[6] != 0;
          _Block_object_dispose(&v42, 8);
          v15 = &v47;
          goto LABEL_37;
        }

        goto LABEL_39;
      }

      v42 = 0;
      v43 = &v42;
      v44 = 0x2000000000;
      LOBYTE(v45) = 0;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 0x40000000;
      v33[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_9;
      v33[3] = &unk_1E86744C0;
      v33[4] = &v42;
      v33[5] = this;
      v18 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v18, v33);
LABEL_42:
      HasProperty = *(v43 + 24);
      _Block_object_dispose(&v42, 8);
      return HasProperty & 1;
    }

    HasProperty = 1;
    if (mSelector > 1919251301)
    {
      if (mSelector != 1919251302)
      {
        if (mSelector == 1920168547)
        {
          v42 = 0;
          v43 = &v42;
          v44 = 0x3802000000;
          v45 = __Block_byref_object_copy__5915;
          v46 = __Block_byref_object_dispose__5916;
          v47 = &unk_1F5991188;
          v48 = 0;
          v36[0] = MEMORY[0x1E69E9820];
          v36[1] = 0x40000000;
          v36[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_6;
          v36[3] = &unk_1E8674448;
          v36[4] = &v42;
          v36[5] = this;
          v12 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v12, v36);
          goto LABEL_36;
        }

LABEL_39:
        HALS_IOA2Device::GetCustomPropertyInfoByAddress(v30, this, a3);
        if (v31)
        {
          HasProperty = 1;
        }

        else
        {
          v26 = 0;
          v27 = &v26;
          v28 = 0x2000000000;
          v29 = 0;
          v42 = 0;
          v43 = &v42;
          v44 = 0x3802000000;
          v45 = __Block_byref_object_copy__25;
          v46 = __Block_byref_object_dispose__26;
          v47 = 0;
          LODWORD(v48) = 0;
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 0x40000000;
          v25[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_27;
          v25[3] = &unk_1E8674510;
          v25[6] = this;
          v25[7] = a3;
          v25[4] = &v26;
          v25[5] = &v42;
          v21 = (*(*this + 64))(this);
          HALB_CommandGate::ExecuteCommand(v21, v25);
          v23 = v27[3];
          if (v23)
          {
            HasProperty = (*(*v23 + 96))(v23, v23[4], v43 + 5, a4);
            HALS_ObjectMap::ReleaseObject(v27[3], v24);
          }

          else
          {
            HasProperty = HALS_Device::HasProperty(this, v22, a3, a4);
          }

          _Block_object_dispose(&v42, 8);
          _Block_object_dispose(&v26, 8);
        }

        v15 = v30;
        goto LABEL_37;
      }
    }

    else
    {
      if (mSelector == 1851878764)
      {
LABEL_30:
        v42 = 0;
        v43 = &v42;
        v44 = 0x3802000000;
        v45 = __Block_byref_object_copy__5915;
        v46 = __Block_byref_object_dispose__5916;
        v47 = &unk_1F5991188;
        v48 = 0;
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 0x40000000;
        v41[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke;
        v41[3] = &unk_1E8674380;
        v41[4] = &v42;
        v41[5] = this;
        v13 = (*(*this + 64))(this);
        HALB_CommandGate::ExecuteCommand(v13, v41);
        goto LABEL_36;
      }

      if (mSelector != 1919251299)
      {
        goto LABEL_39;
      }
    }

    return HasProperty & 1;
  }

  if (mSelector <= 1668641651)
  {
    if (mSelector == 1635087471)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2000000000;
      LOBYTE(v45) = 0;
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 0x40000000;
      v32[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_10;
      v32[3] = &unk_1E86744E8;
      v32[4] = &v42;
      v32[5] = this;
      v19 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v19, v32);
      goto LABEL_42;
    }

    if (mSelector == 1667329635)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2000000000;
      LOBYTE(v45) = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 0x40000000;
      v35[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_7;
      v35[3] = &unk_1E8674470;
      v35[4] = &v42;
      v35[5] = this;
      v16 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v16, v35);
      goto LABEL_42;
    }

    if (mSelector != 1667658618)
    {
      goto LABEL_39;
    }

    goto LABEL_20;
  }

  if (mSelector > 1818452845)
  {
    if (mSelector == 1818452846)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x3802000000;
      v45 = __Block_byref_object_copy__5915;
      v46 = __Block_byref_object_dispose__5916;
      v47 = &unk_1F5991188;
      v48 = 0;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 0x40000000;
      v39[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_3;
      v39[3] = &unk_1E86743D0;
      v39[4] = &v42;
      v39[5] = this;
      v39[6] = a3;
      v14 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v14, v39);
    }

    else
    {
      if (mSelector != 1818455662)
      {
        goto LABEL_39;
      }

      v42 = 0;
      v43 = &v42;
      v44 = 0x3802000000;
      v45 = __Block_byref_object_copy__5915;
      v46 = __Block_byref_object_dispose__5916;
      v47 = &unk_1F5991188;
      v48 = 0;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 0x40000000;
      v38[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_4;
      v38[3] = &unk_1E86743F8;
      v38[4] = &v42;
      v38[5] = this;
      v38[6] = a3;
      v10 = (*(*this + 64))(this);
      HALB_CommandGate::ExecuteCommand(v10, v38);
    }

    HasProperty = v43[6] != 0;
    _Block_object_dispose(&v42, 8);
    v15 = &v47;
LABEL_37:
    OS::CF::UntypedObject::~UntypedObject(v15);
    return HasProperty & 1;
  }

  if (mSelector != 1668641652)
  {
    if (mSelector != 1751474532)
    {
      goto LABEL_39;
    }

    v42 = 0;
    v43 = &v42;
    v44 = 0x2000000000;
    LOBYTE(v45) = 0;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 0x40000000;
    v34[2] = ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke_8;
    v34[3] = &unk_1E8674498;
    v34[4] = &v42;
    v34[5] = this;
    v8 = (*(*this + 64))(this);
    HALB_CommandGate::ExecuteCommand(v8, v34);
    goto LABEL_42;
  }

  HasProperty = OS::CF::ArrayBase<__CFArray const*>::GetSize(*(this + 245)) != 0;
  return HasProperty & 1;
}

void sub_1DE20023C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose((v10 - 104), 8);
  _Block_object_dispose(va, 8);
  OS::CF::UntypedObject::~UntypedObject(va1);
  _Unwind_Resume(a1);
}

uint64_t ___ZNK15HALS_IOA2Device11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6 = 0;
  HALB_UCObject::CopyProperty_CFString((v2 + 1976), @"device name", &v6);
  v3 = v6;
  v4 = *(*(a1 + 32) + 8) + 40;

  return OS::CF::UntypedObject::operator=(v4, v3);
}

void sub_1DE20032C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void HALS_IOA2Device::GetCustomPropertyInfoByAddress(HALS_IOA2Device *this, const AudioObjectPropertyAddress *a2, CAPropertyAddress *a3)
{
  *this = &unk_1F5991008;
  *(this + 1) = 0;
  Size = OS::CF::ArrayBase<__CFArray const*>::GetSize(*&a2[163].mScope);
  if (*(this + 1))
  {
    v7 = 1;
  }

  else
  {
    v7 = Size == 0;
  }

  if (!v7)
  {
    v8 = Size;
    v9 = 1;
    do
    {
      OS::CF::ArrayBase<__CFArray const*>::operator[](v19, &a2[162].mElement, v9 - 1);
      OS::CF::UntypedObject::As<OS::CF::Dictionary>(&v20, v19);
      OS::CF::UntypedObject::~UntypedObject(v19);
      OS::CF::DictionaryBase<__CFDictionary const*>::operator[](v17, v21, @"property selector");
      OS::CF::UntypedObject::As<OS::CF::Number>(v19, v17);
      v18.mSelector = OS::CF::Number::GetValue<unsigned int>(v19[1], 0);
      OS::CF::DictionaryBase<__CFDictionary const*>::operator[](v15, v21, @"property scope");
      OS::CF::UntypedObject::As<OS::CF::Number>(v16, v15);
      v18.mScope = OS::CF::Number::GetValue<unsigned int>(v16[1], 707406378);
      OS::CF::DictionaryBase<__CFDictionary const*>::operator[](v13, v21, @"property element");
      OS::CF::UntypedObject::As<OS::CF::Number>(v14, v13);
      v18.mElement = OS::CF::Number::GetValue<unsigned int>(v14[1], 0xFFFFFFFFLL);
      OS::CF::UntypedObject::~UntypedObject(v14);
      OS::CF::UntypedObject::~UntypedObject(v13);
      OS::CF::UntypedObject::~UntypedObject(v16);
      OS::CF::UntypedObject::~UntypedObject(v15);
      OS::CF::UntypedObject::~UntypedObject(v19);
      OS::CF::UntypedObject::~UntypedObject(v17);
      if (CAPropertyAddress::IsCongruentAddress(a3, &v18, v10))
      {
        v11 = *(this + 1);
        *(this + 1) = v21;
        v21 = v11;
      }

      OS::CF::UntypedObject::~UntypedObject(&v20);
      if (*(this + 1))
      {
        break;
      }
    }

    while (v9++ < v8);
  }
}

_DWORD *HALS_IOA2Device::_FindCustomControlForDeviceAddress(HALS_IOA2Device *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3)
{
  v19 = *a2;
  v3 = *(this + 195);
  if (!v3)
  {
    return 0;
  }

  v7 = this + 1560;
  v8 = this + 1560;
  do
  {
    v9 = *(this + 200);
    if (!v9)
    {
      goto LABEL_48;
    }

    v10 = (*(*v9 + 48))(v9, v3 + 28, &v19);
    if (v10)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (!v10)
    {
      v8 = v3;
    }

    v3 = *&v3[v11];
  }

  while (v3);
  if (v7 == v8)
  {
    return 0;
  }

  v12 = *(this + 200);
  if (!v12)
  {
LABEL_48:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v12 + 48))(v12, &v19, v8 + 28))
  {
    return 0;
  }

  v13 = *(v8 + 10);
  if (!v13)
  {
    return 0;
  }

  result = HALS_ObjectMap::CopyObjectByObjectID(v13);
  if (a2->mScope == result[12] && a2->mElement == result[13])
  {
    v15 = result[42];
    if (v15)
    {
      for (i = 0; v15 != i; ++i)
      {
        if (a2->mSelector == result[i + 43])
        {
          *&a3->mScope = 1735159650;
          v17 = result[6];
          if (v17 > 1936483441)
          {
            switch(v17)
            {
              case 1953458028:
                if (!i)
                {
                  v18 = 1650685548;
                  goto LABEL_43;
                }

                break;
              case 1936744814:
                if (!i)
                {
                  v18 = 1936745334;
                  goto LABEL_43;
                }

                v18 = 1936745315;
                goto LABEL_39;
              case 1936483442:
                if (!i)
                {
                  v18 = 1935962742;
                  goto LABEL_43;
                }

                v18 = 1935962738;
LABEL_39:
                if (i != 1)
                {
                  break;
                }

                goto LABEL_43;
            }
          }

          else if (v17 == 1651273579)
          {
            v18 = 1651272546;
            if (!i)
            {
              goto LABEL_43;
            }

            if (i == 1)
            {
              v18 = 1651272548;
LABEL_43:
              a3->mSelector = v18;
            }
          }

          else
          {
            if (v17 != 1818588780)
            {
              if (v17 != 1936483188 || i >= 3)
              {
                continue;
              }

              v18 = dword_1DE790778[i];
              goto LABEL_43;
            }

            if (i < 6)
            {
              v18 = dword_1DE790760[i];
              goto LABEL_43;
            }
          }
        }
      }
    }
  }

  return result;
}

void HALB_CommandGate::ExecuteCommand(HALB_Mutex *a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v3 = HALB_Mutex::Lock(a1);
  v10 = v3;
  if (v3)
  {
    v4 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v4 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v6 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v5 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      v7 = *v6;
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    else
    {
      v7 = *v6;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v12 = "HALB_CommandGate.cpp";
      v13 = 1024;
      v14 = 82;
      _os_log_error_impl(&dword_1DE1F9000, v7, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_CommandGate::ExecuteCommand: locking the mutex failed", buf, 0x12u);
    }
  }

  (*(a2 + 16))(a2);
  HALB_Mutex::Locker::~Locker(&v9);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t HALS_IOProcessor::DriftCorrection_IsEnabled(HALS_IOProcessor *this)
{
  v2 = *(this + 25);
  if (v2)
  {
    v3 = *(v2 + 88);
    if (!v3)
    {
      return 0;
    }

    v4 = *(v3 + 80);
    if (!v4)
    {
      return 0;
    }

    if (!(*(*v4 + 24))(v4))
    {
      return 0;
    }

    v5 = *(*(this + 25) + 88);
    if (!v5)
    {
      return 0;
    }

    v6 = *(v5 + 80);
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (!(*(*this + 24))(this))
    {
      return 0;
    }

    v6 = *(this + 18);
  }

  v7 = *(*v6 + 32);

  return v7();
}

unint64_t AMCP::IO_Core::Play_State_Manager::get_debug_string(AMCP::IO_Core::Play_State_Manager *this, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = "Prewarmed";
  if (!a2)
  {
    v4 = "Stopped";
  }

  if (a3)
  {
    v4 = "Running";
  }

  snprintf(__str, 0x64uLL, "Prewarm: %llu Play: %llu State: %s", a2, a3, v4);
  result = strlen(__str);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(this + 23) = result;
  if (result)
  {
    result = memcpy(this, __str, result);
  }

  *(this + v6) = 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOContextDescription::GetNumberStreams(_BOOL8 this, int a2)
{
  v2 = this;
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = 0xCBEEA4E1A08AD8F3 * ((*(this + 64) - *(this + 56)) >> 3);
    v4 = v3;
  }

  else
  {
    v4 = (*(this + 88) - *(this + 80)) >> 5;
    v3 = 0xCBEEA4E1A08AD8F3 * ((*(this + 64) - *(this + 56)) >> 3);
  }

  if (v3 != *(this + 136))
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    this = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (this)
    {
      v15 = 136315394;
      v16 = "HALS_IOContextDescription.cpp";
      v17 = 1024;
      v18 = 1523;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Extra items in mStreamActiveState", &v15, 0x12u);
    }
  }

  if (*(v2 + 112) != (*(v2 + 88) - *(v2 + 80)) >> 5)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 136315394;
      v16 = "HALS_IOContextDescription.cpp";
      v17 = 1024;
      v18 = 1524;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Extra items in mStreamActiveState", &v15, 0x12u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return v4;
}

double HALS_IOContextDescription::GetStreamInfoAtIndex(void *a1, int a2, unsigned int a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 4) = a2;
  result = 0.0;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  if (a2)
  {
    v6 = a1[7];
    if (0xCBEEA4E1A08AD8F3 * ((a1[8] - v6) >> 3) > a3)
    {
      v7 = v6 + 472 * a3;
      if (!*(v7 + 108) || ((v8 = *(v7 + 112), *(v7 + 120) != v8) ? (v9 = v8 == 0) : (v9 = 1), v9))
      {
        v8 = (v7 + 456);
      }

      v10 = *v8;
      v11 = *(*v8 + 88);
      if (v11)
      {
        v12 = (*(*v11 + 336))(v11);
        if (v12)
        {
          v13 = *(v12 + 16);
        }

        else
        {
          v13 = 0;
        }

        *a4 = v13;
        *(a4 + 4) = *(v7 + 8);
        *(a4 + 8) = *(v7 + 104);
        *(a4 + 12) = *(v10 + 388);
        if (*(v7 + 108))
        {
          HALS_IODSPInfo::GetClientFormat(&v47, (v7 + 112));
        }

        else
        {
          v26 = *(v7 + 432);
          v47 = *(v7 + 416);
          v48 = v26;
          v49 = *(v7 + 448);
        }

        result = *&v47;
        v27 = v48;
        *(a4 + 16) = v47;
        *(a4 + 32) = v27;
        *(a4 + 48) = v49;
      }
    }

    return result;
  }

  v14 = a1[10];
  if (a3 >= ((a1[11] - v14) >> 5))
  {
    return result;
  }

  v15 = v14 + 32 * a3;
  v16 = *(v15 + 8);
  v17 = *(v15 + 16) - v16;
  if (!v17)
  {
    return result;
  }

  v18 = -1431655765 * (v17 >> 3);
  if (!v18)
  {
    return result;
  }

  if (v18 == 1)
  {
    v19 = *v16;
    if (!*(*v16 + 108) || ((v20 = *(v19 + 112), *(v19 + 120) != v20) ? (v21 = v20 == 0) : (v21 = 1), v21))
    {
      v20 = (v19 + 456);
    }

    v22 = *v20;
    v23 = *(*v20 + 88);
    if (v23)
    {
      v24 = (*(*v23 + 336))(v23);
      v25 = v24 ? *(v24 + 16) : 0;
      *a4 = v25;
      *(a4 + 4) = *(v19 + 8);
      *(a4 + 8) = *(v19 + 104);
      *(a4 + 12) = *(v22 + 388);
      if (*(v19 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v47, (v19 + 112));
      }

      else
      {
        v35 = *(v19 + 432);
        v47 = *(v19 + 416);
        v48 = v35;
        v49 = *(v19 + 448);
      }

      result = *&v47;
      v36 = v48;
      *(a4 + 16) = v47;
      *(a4 + 32) = v36;
      *(a4 + 48) = v49;
      if (*(a4 + 24) == 1819304813 && !*(v19 + 108))
      {
        v37 = *(v19 + 432);
        v47 = *(v19 + 416);
        v48 = v37;
        v49 = *(v19 + 448);
        v38 = *v15;
        if ((BYTE12(v47) & 0x20) != 0)
        {
          v39 = 1;
        }

        else
        {
          v39 = HIDWORD(v48);
          if (!HIDWORD(v48))
          {
            v40 = (v49 + 7) >> 3;
LABEL_60:
            if ((BYTE12(v47) & 0x20) != 0)
            {
              v45 = 1;
            }

            else
            {
              v45 = *v15;
            }

            DWORD2(v48) = v40 * v45;
            HIDWORD(v48) = v38;
            LODWORD(v48) = v40 * v45;
            DWORD1(v48) = 1;
            *(a4 + 48) = v49;
            result = *&v47;
            v46 = v48;
            *(a4 + 16) = v47;
            *(a4 + 32) = v46;
            return result;
          }
        }

        v40 = DWORD2(v48) / v39;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v28 = *v16;
    if (!*(*v16 + 108) || ((v29 = *(v28 + 112), *(v28 + 120) != v29) ? (v30 = v29 == 0) : (v30 = 1), v30))
    {
      v29 = (v28 + 456);
    }

    v31 = *v29;
    v32 = *(*v29 + 88);
    if (v32)
    {
      v33 = (*(*v32 + 336))(v32);
      v34 = v33 ? *(v33 + 16) : 0;
      *a4 = v34;
      *(a4 + 4) = *(v28 + 8);
      *(a4 + 8) = *(v28 + 104);
      *(a4 + 12) = *(v31 + 388);
      if (*(v28 + 108))
      {
        HALS_IODSPInfo::GetClientFormat(&v47, (v28 + 112));
      }

      else
      {
        v41 = *(v28 + 432);
        v47 = *(v28 + 416);
        v48 = v41;
        v49 = *(v28 + 448);
      }

      result = *&v47;
      v42 = v48;
      *(a4 + 16) = v47;
      *(a4 + 32) = v42;
      *(a4 + 48) = v49;
      if (*(a4 + 24) == 1819304813)
      {
        v43 = *v15;
        v44 = (((8 * *(a4 + 40)) / *(a4 + 44)) >> 3) * *v15;
        *(a4 + 40) = v44;
        *(a4 + 44) = v43;
        *(a4 + 32) = v44;
      }
    }
  }

  return result;
}

uint64_t HALS_IOContextDescription::GetNumberActiveStreams(HALS_IOContextDescription *this, int a2)
{
  v2 = 104;
  if (a2)
  {
    v2 = 128;
  }

  v3 = 112;
  if (a2)
  {
    v3 = 136;
  }

  return std::__count_BOOL[abi:ne200100]<true,std::vector<BOOL>,true>(*(this + v2), 0, *(this + v3));
}

uint64_t HALS_IOContextDescription::IsStreamEnabledAtIndex(HALS_IOContextDescription *this, int a2, unsigned int a3)
{
  if (a2)
  {
    if (*(this + 17) > a3)
    {
      v3 = this + 128;
      return (*(*v3 + ((a3 >> 3) & 0x1FFFFFF8)) >> a3) & 1;
    }
  }

  else if (*(this + 14) > a3)
  {
    v3 = this + 104;
    return (*(*v3 + ((a3 >> 3) & 0x1FFFFFF8)) >> a3) & 1;
  }

  return 1;
}

uint64_t HALB_IOBufferManager_Server::GetIOStatus(_BOOL8 this)
{
  v1 = this;
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(this + 56);
  if (v2)
  {
    goto LABEL_23;
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v5;
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v6 = *v5;
  }

  this = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (this)
  {
    v13 = 136315394;
    v14 = "HALB_IOBufferManager.cpp";
    v15 = 1024;
    v16 = 226;
    _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOBufferManager_Server::GetIOStatus: no shared buffer", &v13, 0x12u);
  }

  v2 = *(v1 + 56);
  if (v2)
  {
LABEL_23:
    if (!*(v2 + 8))
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v9 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315394;
        v14 = "HALB_IOBufferManager.cpp";
        v15 = 1024;
        v16 = 229;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALB_IOBufferManager_Server::GetIOStatus: the shared buffer isn't valid", &v13, 0x12u);
      }
    }

    result = *(*(v1 + 56) + 8);
  }

  else
  {
    result = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeID OS::CF::UntypedObject::As<OS::CF::Dictionary>(void *a1, uint64_t a2)
{
  TypeID = OS::CF::UntypedObject::GetTypeID(*(a2 + 8));
  result = CFDictionaryGetTypeID();
  if (TypeID == result)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      result = CFRetain(v6);
    }

    a1[1] = v6;
  }

  else
  {
    a1[1] = 0;
  }

  *a1 = &unk_1F5991008;
  return result;
}

CFTypeID OS::CF::UntypedObject::As<OS::CF::Number>(void *a1, uint64_t a2)
{
  TypeID = OS::CF::UntypedObject::GetTypeID(*(a2 + 8));
  result = CFNumberGetTypeID();
  if (TypeID == result)
  {
    v6 = *(a2 + 8);
    if (v6)
    {
      result = CFRetain(v6);
    }

    a1[1] = v6;
  }

  else
  {
    a1[1] = 0;
  }

  *a1 = &unk_1F5991138;
  return result;
}

const void *OS::CF::UntypedObject::GetTypeID(const void *this)
{
  if (this)
  {
    return CFGetTypeID(this);
  }

  return this;
}

uint64_t OS::CF::DictionaryBase<__CFDictionary const*>::operator[](uint64_t result, CFDictionaryRef theDict, void *key)
{
  *result = &unk_1F5991080;
  *(result + 8) = 0;
  if (theDict)
  {
    v3 = result;
    value = 0;
    result = CFDictionaryGetValueIfPresent(theDict, key, &value);
    if (result)
    {
      v4 = value;
      if (value)
      {
        CFRetain(value);
        v5 = v3;
        v6 = v4;
      }

      else
      {
        v5 = v3;
        v6 = 0;
      }

      return OS::CF::UntypedObject::operator=(v5, v6);
    }
  }

  return result;
}

uint64_t OS::CF::Number::GetValue<unsigned int>(const __CFNumber *a1, uint64_t a2)
{
  valuePtr = a2;
  if (a1)
  {
    CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return a2;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::GetSize(const __CFArray *result)
{
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *OS::CF::ArrayBase<__CFArray const*>::operator[](const __CFArray *result, uint64_t a2, CFIndex a3)
{
  *result = &unk_1F5991080;
  *(result + 1) = 0;
  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = result;
    result = *(a2 + 8);
    if (result)
    {
      result = CFArrayGetCount(result);
      if (result > a3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 8), a3);
        v7 = ValueAtIndex;
        if (ValueAtIndex)
        {
          CFRetain(ValueAtIndex);
          v8 = v4;
          v9 = v7;
        }

        else
        {
          v8 = v4;
          v9 = 0;
        }

        return OS::CF::UntypedObject::operator=(v8, v9);
      }
    }
  }

  return result;
}

float MonoMultiCoefsSRC_Neon(_OWORD *a1, uint64_t a2, float *a3, int a4, int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9)
{
  do
  {
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = (a2 + 4 * (a7 * a9));
    v15 = *a1;
    v16 = *(a1 + 1);
    v14 = (a1 + 2);
    v18 = *v13;
    v19 = v13[1];
    v17 = v13 + 2;
    v20 = a9 - 16;
    if (a9 != 16)
    {
      do
      {
        v22 = *v14;
        v23 = v14[1];
        v21 = v14 + 2;
        v9 = vmlaq_f32(v9, v15, v18);
        v20 -= 16;
        v25 = *v17;
        v26 = v17[1];
        v24 = v17 + 2;
        v10 = vmlaq_f32(v10, v16, v19);
        v15 = *v21;
        v16 = v21[1];
        v14 = v21 + 2;
        v11 = vmlaq_f32(v11, v22, v25);
        v18 = *v24;
        v19 = v24[1];
        v17 = v24 + 2;
        v12 = vmlaq_f32(v12, v23, v26);
      }

      while (v20);
    }

    a1 = (a1 + 4 * a6);
    a7 += HIWORD(a6);
    v27 = vaddq_f32(vmlaq_f32(v9, v15, v18), vmlaq_f32(v10, v16, v19));
    v28 = vaddq_f32(vmlaq_f32(v11, *v14, *v17), vmlaq_f32(v12, v14[1], v17[1]));
    if (a7 >= a8)
    {
      a7 -= a8;
      a1 = (a1 + 4);
    }

    v29 = vaddq_f32(v27, v28);
    result = vaddv_f32(*&vpaddq_f32(v29, v29));
    --a4;
    *a3 = result;
    a3 += a5;
  }

  while (a4);
  return result;
}

float StereoMultiCoefsSRC_Neon(_OWORD *a1, _OWORD *a2, uint64_t a3, float *a4, float *a5, int a6, int a7, unsigned int a8, unsigned int a9, unsigned int a10, int a11)
{
  do
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = (a3 + 4 * (a9 * a11));
    v22 = *a1;
    v23 = *(a1 + 1);
    v21 = (a1 + 2);
    v25 = *a2;
    v26 = *(a2 + 1);
    v24 = (a2 + 2);
    v28 = *v20;
    v29 = v20[1];
    v27 = v20 + 2;
    v30 = a11 - 16;
    if (a11 != 16)
    {
      do
      {
        v32 = *v21;
        v33 = v21[1];
        v31 = v21 + 2;
        v12 = vmlaq_f32(v12, v22, v28);
        v35 = *v24;
        v36 = v24[1];
        v34 = v24 + 2;
        v16 = vmlaq_f32(v16, v25, v28);
        v30 -= 16;
        v38 = *v27;
        v39 = v27[1];
        v37 = v27 + 2;
        v13 = vmlaq_f32(v13, v23, v29);
        v17 = vmlaq_f32(v17, v26, v29);
        v22 = *v31;
        v23 = v31[1];
        v21 = v31 + 2;
        v14 = vmlaq_f32(v14, v32, v38);
        v25 = *v34;
        v26 = v34[1];
        v24 = v34 + 2;
        v18 = vmlaq_f32(v18, v35, v38);
        v28 = *v37;
        v29 = v37[1];
        v27 = v37 + 2;
        v15 = vmlaq_f32(v15, v33, v39);
        v19 = vmlaq_f32(v19, v36, v39);
      }

      while (v30);
    }

    v40 = v27[1];
    a1 = (a1 + 4 * a8);
    a2 = (a2 + 4 * a8);
    a9 += HIWORD(a8);
    v41 = vaddq_f32(vmlaq_f32(v12, v22, v28), vmlaq_f32(v13, v23, v29));
    v42 = vaddq_f32(vmlaq_f32(v16, v25, v28), vmlaq_f32(v17, v26, v29));
    v43 = vaddq_f32(vmlaq_f32(v14, *v21, *v27), vmlaq_f32(v15, v21[1], v40));
    v44 = vaddq_f32(vmlaq_f32(v18, *v24, *v27), vmlaq_f32(v19, v24[1], v40));
    if (a9 >= a10)
    {
      a9 -= a10;
      a1 = (a1 + 4);
      a2 = (a2 + 4);
    }

    v45 = vaddq_f32(v41, v43);
    v46 = vaddq_f32(v42, v44);
    result = vaddv_f32(*&vpaddq_f32(v45, v45));
    --a6;
    *a4 = result;
    *a5 = vaddv_f32(*&vpaddq_f32(v46, v46));
    a4 += a7;
    a5 += a7;
  }

  while (a6);
  return result;
}

uint64_t AMCP::DAL::Audio_Samples_Data::allocate(AMCP::DAL::Audio_Samples_Data *this, uint64_t a2)
{
  v3 = this;
  if (*this && !*(this + 4))
  {
    v6 = caulk::audio_buffer_resource(this);
    this = (*(*v6 + 24))(v6, *v3, a2, 8);
    if (a2)
    {
      goto LABEL_4;
    }

LABEL_6:
    result = 0;
    goto LABEL_7;
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v4 = caulk::audio_buffer_resource(this);
  result = (*(*v4 + 16))(v4, a2, 8);
LABEL_7:
  *v3 = result;
  *(v3 + 1) = a2;
  *(v3 + 4) = 0;
  return result;
}

void AMCP::DAL::Audio_Samples_Data::~Audio_Samples_Data(AMCP::DAL::Audio_Samples_Data *this)
{
  if (*this)
  {
    if (!*(this + 4))
    {
      v2 = caulk::audio_buffer_resource(this);
      (*(*v2 + 24))(v2, *this, *(this + 1), 8);
    }
  }
}

uint64_t HALS_MetaDevice_HostedDSP::VisitSubdevices(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v2 = result;
    v3 = *(*result + 1496);
    v4 = *(*result + 1504);
    if (v3 != v4)
    {
      v6 = 0;
      do
      {
        v8 = *v3;
        v7 = v3[1];
        v3 += 3;
        v6 += (v7 - v8) >> 3;
      }

      while (v3 != v4);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          result = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(*v2 + 1496), *(*v2 + 1504), i);
          if (result)
          {
            v11 = result;
            v10 = *(a2 + 24);
            if (!v10)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            result = (*(*v10 + 48))(v10, &v11);
          }
        }
      }
    }
  }

  return result;
}

{
  if (*(a2 + 24))
  {
    v2 = result;
    v3 = *(*result + 1496);
    v4 = *(*result + 1504);
    if (v3 != v4)
    {
      v6 = 0;
      do
      {
        v8 = *v3;
        v7 = v3[1];
        v3 += 3;
        v6 += (v7 - v8) >> 3;
      }

      while (v3 != v4);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          result = HALS_MetaDeviceDescription::GetSubDeviceByIndex(*(*v2 + 1496), *(*v2 + 1504), i);
          if (result)
          {
            v11 = result;
            v10 = *(a2 + 24);
            if (!v10)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            result = (*(*v10 + 48))(v10, &v11);
          }
        }
      }
    }
  }

  return result;
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void ___ZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = a1[5];
  v1 = a1[6];
  v4 = *v1;
  v5 = *(v1 + 2);
  v3 = a1[7];
  operator new();
}

void sub_1DE202450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(HALS_MetaSubDevice const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(HALS_MetaSubDevice const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb_E3__0NS_9allocatorIS8_EEFvPK18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb_E3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if ((a2 & a1) < 0 != __OFSUB__(a1, a2))
  {
    return strcmp((a1 & 0x7FFFFFFFFFFFFFFFLL), (a2 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t _ZNSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb_E3__0NS_9allocatorIS8_EEFvPK18HALS_MetaSubDeviceEEclEOSD_(uint64_t result, HALS_MetaSubDevice **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    RealDeviceObjectID = HALS_MetaSubDevice::GetRealDeviceObjectID(*a2);
    result = (*(*v2 + 96))(v2, RealDeviceObjectID, v3 + 16, *(v3 + 32));
    **(v3 + 8) |= result;
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP11HasPropertyEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb_E3__0NS_9allocatorIS8_EEFvPK18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5960230;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_Client_block_invoke(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = a1[5];
  v1 = a1[6];
  v4 = *v1;
  v5 = *(v1 + 2);
  v3 = a1[7];
  operator new();
}

void sub_1DE20278C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(HALS_MetaSubDevice const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb0_E3__1NS_9allocatorIS8_EEFvPK18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb0_E3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb0_E3__1NS_9allocatorIS8_EEFvPK18HALS_MetaSubDeviceEEclEOSD_(uint64_t result, HALS_MetaSubDevice **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    RealDeviceObjectID = HALS_MetaSubDevice::GetRealDeviceObjectID(*a2);
    result = (*(*v2 + 96))(v2, RealDeviceObjectID, v3 + 16, *(v3 + 32));
    if (result)
    {
      v5 = HALS_MetaSubDevice::GetRealDeviceObjectID(v2);
      result = (*(*v2 + 104))(v2, v5, v3 + 16, *(v3 + 32));
      **(v3 + 8) |= result;
    }
  }

  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP18IsPropertySettableEjRK26AudioObjectPropertyAddressP11HALS_ClientEUb0_E3__1NS_9allocatorIS8_EEFvPK18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59602C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v5 = *v1;
  v6 = *(v1 + 2);
  v7 = 0;
  v3 = *(a1 + 72);
  v4 = *(a1 + 56);
  operator new();
}

void sub_1DE202A44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(HALS_MetaSubDevice const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_ClientEUb1_E3__2NS_9allocatorISA_EEFvPK18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_ClientEUb1_E3$_2"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_ClientEUb1_E3__2NS_9allocatorISA_EEFvPK18HALS_MetaSubDeviceEEclEOSF_(uint64_t result, HALS_MetaSubDevice **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    RealDeviceObjectID = HALS_MetaSubDevice::GetRealDeviceObjectID(*a2);
    result = (*(*v2 + 96))(v2, RealDeviceObjectID, v3 + 16, *(v3 + 40));
    if (result)
    {
      if (!**(v3 + 8))
      {
        v5 = HALS_MetaSubDevice::GetRealDeviceObjectID(v2);
        result = (*(*v2 + 112))(v2, v5, v3 + 16, *(v3 + 28), *(v3 + 32), *(v3 + 40));
        **(v3 + 8) = result;
      }
    }
  }

  return result;
}

void sub_1DE202B5C(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP19GetPropertyDataSizeEjRK26AudioObjectPropertyAddressjPKvP11HALS_ClientEUb1_E3__2NS_9allocatorISA_EEFvPK18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseISG_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5960340;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ___ZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_Client_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7 = *v1;
  v8 = *(v1 + 2);
  v3 = *(a1 + 48);
  v4 = *(a1 + 80);
  v5 = *(a1 + 84);
  v6 = *(a1 + 64);
  operator new();
}

void sub_1DE202D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(HALS_MetaSubDevice const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientEUb2_E3__3NS_9allocatorISC_EEFvPK18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientEUb2_E3$_3"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientEUb2_E3__3NS_9allocatorISC_EEFvPK18HALS_MetaSubDeviceEEclEOSH_(uint64_t result, HALS_MetaSubDevice **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    RealDeviceObjectID = HALS_MetaSubDevice::GetRealDeviceObjectID(*a2);
    result = (*(*v2 + 96))(v2, RealDeviceObjectID, v3 + 16, *(v3 + 64));
    if (result)
    {
      if ((**(v3 + 8) & 1) == 0)
      {
        v5 = HALS_MetaSubDevice::GetRealDeviceObjectID(v2);
        result = (*(*v2 + 120))(v2, v5, v3 + 16, *(v3 + 28), *(v3 + 32), **(v3 + 40), *(v3 + 48), *(v3 + 56), *(v3 + 64));
        **(v3 + 8) = 1;
      }
    }
  }

  return result;
}

void sub_1DE202E70(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

__n128 _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP15GetPropertyDataEjRK26AudioObjectPropertyAddressjRjPvjPKvP11HALS_ClientEUb2_E3__3NS_9allocatorISC_EEFvPK18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59603C0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ___ZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_Client_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = *(a1 + 40);
  v1 = *(a1 + 48);
  v7 = *v1;
  v8 = *(v1 + 2);
  v3 = *(a1 + 56);
  v4 = *(a1 + 80);
  v5 = *(a1 + 84);
  v6 = *(a1 + 64);
  operator new();
}

void sub_1DE203074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(HALS_MetaSubDevice *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(HALS_MetaSubDevice *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t _ZNKSt3__110__function6__funcIZZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS7_P11HALS_ClientEUb3_E3__4NS_9allocatorISA_EEFvP18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS4_P11HALS_ClientEUb3_E3$_4"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS7_P11HALS_ClientEUb3_E3__4NS_9allocatorISA_EEFvP18HALS_MetaSubDeviceEEclEOSE_(uint64_t result, HALS_MetaSubDevice **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    RealDeviceObjectID = HALS_MetaSubDevice::GetRealDeviceObjectID(*a2);
    result = (*(*v2 + 104))(v2, RealDeviceObjectID, v3 + 16, *(v3 + 56));
    if (result)
    {
      v5 = HALS_MetaSubDevice::GetRealDeviceObjectID(v2);
      result = (*(*v2 + 128))(v2, v5, v3 + 16, *(v3 + 28), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56));
      **(v3 + 8) = 1;
    }
  }

  return result;
}

void sub_1DE20320C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2031F4);
}

__n128 _ZNKSt3__110__function6__funcIZZN25HALS_MetaDevice_HostedDSP15SetPropertyDataEjRK26AudioObjectPropertyAddressjPKvjS7_P11HALS_ClientEUb3_E3__4NS_9allocatorISA_EEFvP18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5960440;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void ___ZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEb_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v1 = *(a1 + 40);
  v3 = *(*(*(a1 + 32) + 8) + 24);
  v2 = *(a1 + 48);
  operator new();
}

void sub_1DE2033D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(HALS_MetaSubDevice const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest>::~optional(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEbEUb4_E3__5NS_9allocatorIS3_EEFvPK18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEbEUb4_E3$_5"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEbEUb4_E3__5NS_9allocatorIS3_EEFvPK18HALS_MetaSubDeviceEEclEOS8_(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*a2)
  {
    v4 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*a2);
    if (v4)
    {
      HALS_Device::GetModelUID(&__p, v4);
      HALS_Device::GetDSPOffloadsRequested(&cf, v4, *(a1 + 8));
      if (cf)
      {
        if (**(a1 + 16))
        {
          v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v6 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v5);
          }

          v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
          v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
          if (v7)
          {
            atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
            v9 = *v8;
            std::__shared_weak_count::__release_shared[abi:ne200100](v7);
          }

          else
          {
            v9 = *v8;
          }

          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v18 = "HALS_MetaDevice_HostedDSP.cpp";
            v19 = 1024;
            v20 = 192;
            _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d [ahal_dsp] More than one subdevice is requesting DSP offloads, this is unsupported.", buf, 0x12u);
          }
        }

        else
        {
          v10 = **(a1 + 24);
          std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(v10, &__p);
          size = v10[1].__r_.__value_.__l.__size_;
          v12 = cf;
          v10[1].__r_.__value_.__l.__size_ = cf;
          if (v12)
          {
            CFRetain(v12);
          }

          if (size)
          {
            CFRelease(size);
          }

          **(a1 + 16) = 1;
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    HALS_ObjectMap::ReleaseObject(v4, v3);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1DE203644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest::~SubDeviceOffloadRequest(&__p);
  HALS_ObjectMap::ReleaseObject(v16, v18);
  _Unwind_Resume(a1);
}

uint64_t HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK18HALS_MetaSubDevice14CopyRealDeviceI11HALS_DeviceEEPT_v_block_invoke;
  v4[3] = &unk_1E8673088;
  v4[4] = &v5;
  v4[5] = a1;
  v1 = (*(*a1 + 64))(a1);
  HALB_CommandGate::ExecuteCommand(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1DE20377C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__optional_storage_base<std::string,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<std::string,false> const&>(std::string *this, const std::string *a2)
{
  if (this[1].__r_.__value_.__s.__data_[0] == a2[1].__r_.__value_.__s.__data_[0])
  {
    if (this[1].__r_.__value_.__s.__data_[0])
    {

      std::string::operator=(this, a2);
    }
  }

  else if (this[1].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(this->__r_.__value_.__l.__data_);
    }

    this[1].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(this, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
    }

    else
    {
      v3 = *&a2->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v3;
    }

    this[1].__r_.__value_.__s.__data_[0] = 1;
  }
}

void HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest::~SubDeviceOffloadRequest(HALS_MetaDevice_HostedDSP::SubDeviceOffloadRequest *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E8672F60, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

HALS_ObjectMap *___ZNK18HALS_MetaSubDevice14CopyRealDeviceI11HALS_DeviceEEPT_v_block_invoke(uint64_t a1)
{
  result = HALS_MetaSubDevice::_CopyRealDevice<HALS_Device>(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_1DE203A08(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

HALS_ObjectMap *HALS_MetaSubDevice::_CopyRealDevice<HALS_Device>(uint64_t a1)
{
  v1 = boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device * const>>((a1 + 56));
  if (!v1)
  {
    boost::throw_exception<boost::bad_get>();
  }

  v3 = *v1;
  HALS_ObjectMap::RetainObject(*v1, v2);
  return v3;
}

void sub_1DE203A90(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE203A54);
}

_DWORD *boost::variant<HALS_Device *,HALS_ClockDevice *>::apply_visitor<boost::detail::variant::get_visitor<HALS_Device * const>>(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
      result = 0;
      break;
    default:
      boost::detail::variant::forced_return<HALS_Device * const*>();
  }

  return result;
}

void boost::throw_exception<boost::bad_get>()
{
  exception = __cxa_allocate_exception(0x38uLL);
  exception[4] = 0;
  exception[5] = 0;
  *(exception + 12) = -1;
  *exception = &unk_1F5987358;
  exception[1] = &unk_1F5987388;
  exception[2] = &unk_1F59873B0;
  exception[3] = 0;
}

uint64_t boost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));
  return a1;
}

uint64_t *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && (*(*v2 + 32))(v2))
  {
    *a1 = 0;
  }

  return a1;
}

void non-virtual thunk toboost::wrapexcept<boost::bad_get>::~wrapexcept(void *a1)
{
  *a1 = &unk_1F59921B8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::exception::~exception(v1);

  JUMPOUT(0x1E12C1730);
}

{
  *a1 = &unk_1F59921B8;
  v1 = (a1 - 1);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::exception::~exception(v1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 8) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));
  std::exception::~exception(a1);

  JUMPOUT(0x1E12C1730);
}

{
  *(a1 + 8) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 16));

  std::exception::~exception(a1);
}

void boost::wrapexcept<boost::bad_get>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::exception::~exception((a1 + 8));

  JUMPOUT(0x1E12C1730);
}

void boost::wrapexcept<boost::bad_get>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x38uLL);
  boost::wrapexcept<boost::bad_get>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_get>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5992140;
  *(a1 + 8) = &unk_1F59873D0;
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F59921B8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F5987358;
  *(a1 + 8) = &unk_1F5987388;
  *(a1 + 16) = &unk_1F59873B0;
  return a1;
}

void sub_1DE2041C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

uint64_t boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *a1 = a2;
  if (a2)
  {
    v5 = *(*a2 + 24);

    return v5(a2);
  }

  return result;
}

void boost::bad_get::~bad_get(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x1E12C1730);
}

__n128 _ZNKSt3__110__function6__funcIZZNK25HALS_MetaDevice_HostedDSP39GetFirstDSPOffloadsRequestFromSubdeviceEbEUb4_E3__5NS_9allocatorIS3_EEFvPK18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseIS9_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F59604D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_Client_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  operator new();
}

void sub_1DE204494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(HALS_MetaSubDevice *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_ClientEUb5_E3__6NS_9allocatorIS5_EEFvP18HALS_MetaSubDeviceEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_ClientEUb5_E3$_6"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void _ZNSt3__110__function6__funcIZZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_ClientEUb5_E3__6NS_9allocatorIS5_EEFvP18HALS_MetaSubDeviceEEclEOS9_(void *a1, uint64_t *a2)
{
  if (*a2)
  {
    v3 = a1[3];
    v4 = HALS_MetaSubDevice::CopyRealDevice<HALS_Device>(*a2);
    v6 = v4;
    if (v4)
    {
      v7 = a1[2];
      if ((*v7 & 1) == 0)
      {
        v8 = *v3;
        v9 = v8[78];
        if (v9)
        {
          v9 = *(v4 + 624);
          if (v9)
          {
            v10 = a1[1];
            if (v10)
            {
              v11 = *(v10 + 16);
            }

            else
            {
              v11 = 0;
            }

            HALS_Device::DSP_AllocConfigProperties(v8, v11);
            HALS_DSPHostPerClientConfiguration::clone_configuration_from(v8[78], v6[78], v11);
            v7 = a1[2];
            LOBYTE(v9) = 1;
          }
        }

        *v7 = v9;
      }
    }

    HALS_ObjectMap::ReleaseObject(v6, v5);
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN25HALS_MetaDevice_HostedDSP40InitializeDSPStateFromSubdeviceForClientEbP11HALS_ClientEUb5_E3__6NS_9allocatorIS5_EEFvP18HALS_MetaSubDeviceEE7__cloneEPNS0_6__baseISA_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5960550;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void AMCP::Device::~Device(AMCP::Device *this)
{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E12C1730);
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_1F5964268;
  v1 = *(this + 3);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t AMCP::Device::Device(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Clock::Clock(a1, a2, a3);
  *v4 = &unk_1F59605D0;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x61646576);
  if ((v5 & 1) == 0)
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315650;
      v13 = "Device.cpp";
      v14 = 1024;
      v15 = 27;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_device)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE20485C(_Unwind_Exception *a1)
{
  *v1 = &unk_1F5964268;
  v2 = v1[3];
  if (v2)
  {
    v3 = a1;
    std::__shared_weak_count::__release_weak(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::Device::Device(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(**a2 + 16);
  *buf = &unk_1F59605F0;
  *&buf[8] = a3;
  *&v19[4] = buf;
  AMCP::Core::Broker::fetch_first_core_if (v16, v5, buf);
  *a1 = &unk_1F5964268;
  v6 = v16[0];
  if (v16[0])
  {
    v7 = *v16[0];
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 8) = v7;
  v8 = v16[1];
  *(a1 + 16) = v6;
  *(a1 + 24) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 32) = a2;
    *a1 = &unk_1F596A438;
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *(a1 + 32) = a2;
    *a1 = &unk_1F596A438;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](buf);
  *a1 = &unk_1F59605D0;
  v9 = AMCP::Object::constructed_correct_class(a1, 0x61646576);
  if ((v9 & 1) == 0)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v9);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Device.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 43;
      v18 = 2080;
      *v19 = "constructed_correct_class(k_class_id_device)";
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v10 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE204AC0(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<AMCP::Device::Device(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Device::Device(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP6DeviceC1ERNS_14System_ContextEN10applesauce2CF9StringRefEE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::__function::__func<AMCP::Device::Device(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Device::Device(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::operator()(uint64_t a1, AMCP::Core::Core **a2)
{
  simple_required = AMCP::Core::Core::get_simple_required_property<1650682995u>(*a2);
  if (!AMCP::is_base_of(0x61646576, simple_required))
  {
    return 0;
  }

  AMCP::Core::Core::get_simple_required_property<1969841184u>(&cf, *a2);
  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(**(a1 + 8), &cf) == kCFCompareEqualTo;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1650682995u>(AMCP::Core::Core *a1)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(buf, "slcbbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v3 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v5 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 4;
      strcpy(__p, "bcls");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v10 = 1024;
      v11 = 391;
      v12 = 2080;
      v13 = "optional_value.operator BOOL() == true";
      v14 = 2080;
      v15 = __p;
      v16 = 1024;
      v17 = 1735159650;
      v18 = 1024;
      v19 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE204DA0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::is_base_of(AMCP *this, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 1;
  if (this && this != a2)
  {
    AMCP::get_class_traits(&v6, a2);
    v5 = HIDWORD(v6.__r_.__value_.__r.__words[0]);
    if (v9 < 0)
    {
      operator delete(__p);
    }

    if (v6.__r_.__value_.__r.__words[2])
    {
      v7 = v6.__r_.__value_.__r.__words[2];
      operator delete(v6.__r_.__value_.__r.__words[2]);
    }

    return AMCP::is_base_of(this, v5, v4);
  }

  return result;
}

void AMCP::Core::Core::get_simple_required_property<1969841184u>(void *a1, AMCP::Core::Core *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  strcpy(buf, " diubolg");
  buf[9] = 0;
  *&buf[10] = 0;
  AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(&cf, a2, buf);
  if ((v13 & 1) == 0)
  {
    v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v6 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v8 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v7 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 4;
      strcpy(__p, "uid ");
      *buf = 136316418;
      *&buf[4] = "Core.h";
      v15 = 1024;
      v16 = 391;
      v17 = 2080;
      v18 = "optional_value.operator BOOL() == true";
      v19 = 2080;
      v20 = __p;
      v21 = 1024;
      v22 = 1735159650;
      v23 = 1024;
      v24 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v9, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = cf;
  if (cf)
  {
    CFRetain(cf);
    *a1 = v4;
    CFRelease(v4);
  }

  else
  {
    *a1 = 0;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1DE204FCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

CFComparisonResult applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(const __CFString *cf, const __CFString **a2)
{
  if (cf)
  {
    CFRetain(cf);
    v4 = *a2;
    if (!v4)
    {
      v5 = kCFCompareGreaterThan;
LABEL_9:
      CFRelease(cf);
      return v5;
    }
  }

  else
  {
    v4 = *a2;
    if (!*a2)
    {
      return 0;
    }
  }

  CFRetain(v4);
  if (cf)
  {
    v5 = CFStringCompare(cf, v4, 0);
  }

  else
  {
    v5 = kCFCompareLessThan;
  }

  CFRelease(v4);
  if (cf)
  {
    goto LABEL_9;
  }

  return v5;
}

void AMCP::Core::Core::get_typed_property_value<applesauce::CF::StringRef,std::enable_if<true,void>>(_BYTE *a1, AMCP::Core::Core *a2, const AMCP::Address *a3)
{
  if (!AMCP::Core::Core::has_property(a2, a3))
  {
LABEL_13:
    *a1 = 0;
    a1[8] = 0;
    return;
  }

  AMCP::Core::Core::find_operation(&v13, a2, a3);
  v6 = v13;
  if (!v13)
  {
    goto LABEL_9;
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
  {
    AMCP::Core::Operation::call_function<applesauce::CF::StringRef>(v11, v6);
    v8 = 0;
    *a1 = v11[0];
    a1[8] = 1;
    goto LABEL_10;
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v9))
  {
    AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v6);
    AMCP::Thing::convert_to<applesauce::CF::StringRef>(&v10, v11);
    *a1 = v10;
    a1[8] = 1;
    if (v12)
    {
      v12(0, v11, 0, 0);
    }

    v8 = 0;
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

LABEL_10:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (v8)
  {
    goto LABEL_13;
  }
}

uint64_t AMCP::Core::Core::has_property(AMCP::Core::Core *this, const AMCP::Address *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*a2 == 707406378 || *(a2 + 1) == 707406378 || *(a2 + 2) == -1)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(this);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315650;
      *&v13[4] = "Core.h";
      *&v13[12] = 1024;
      *&v13[14] = 224;
      v14 = 2080;
      v15 = "!in_address.has_wildcards()";
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", v13, 0x1Cu);
    }

    abort();
  }

  AMCP::Core::Core::find_operation(v13, this, a2);
  v4 = *v13;
  if (*v13)
  {
    Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, Has_Property))
    {
      v4 = AMCP::Core::Operation::call_function<BOOL,AMCP::Core::Has_Property_Function>(v4);
    }

    else
    {
      v6 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
      v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v4, v6) != 0;
    }
  }

  if (*&v13[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v13[8]);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE205338(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unsigned int *AMCP::Core::Core::find_operation(AMCP::Core::Core *this, int8x8_t *a2, unsigned int *a3)
{
  caulk::concurrent::shared_spin_lock::lock_shared(&a2[6]);
  v6 = a2[2];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = *a3;
  v8 = a3[1];
  v9 = a3[2];
  v10 = v8 & 0xFF000000 | (v7 << 32) | *&v9 & 0xFFFFFFLL;
  v11 = vcnt_s8(v6);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = v8 & 0xFF000000 | (v7 << 32) | *&v9 & 0xFFFFFFLL;
    if (v10 >= *&v6)
    {
      v12 = v10 % *&v6;
    }
  }

  else
  {
    v12 = v10 & (*&v6 - 1);
  }

  v13 = *(*&a2[1] + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_18:
    *this = 0;
    *(this + 1) = 0;
    return caulk::concurrent::shared_spin_lock::unlock_shared(&a2[6]);
  }

  while (1)
  {
    v15 = v14[1];
    if (v10 == v15)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
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

    if (v15 != v12)
    {
      goto LABEL_18;
    }

LABEL_17:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_18;
    }
  }

  if (v14[2] != __PAIR64__(v8, v7) || *(v14 + 6) != v9)
  {
    goto LABEL_17;
  }

  v17 = v14[5];
  *this = v14[4];
  *(this + 1) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  return caulk::concurrent::shared_spin_lock::unlock_shared(&a2[6]);
}

uint64_t AMCP::Core::Operation::call_function<applesauce::CF::StringRef>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::StringRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = applesauce::CF::StringRef, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE205910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Core::Operation::call_function<AMCP::Thing>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Thing, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = AMCP::Thing, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE205E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

CFTypeRef *AMCP::Thing::convert_to<applesauce::CF::StringRef>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_16;
  }

  v4 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    result = (*(a2 + 32))(4, a2, 0, v16);
    if (result)
    {
      v7 = *result;
      if (*result)
      {
        result = CFRetain(*result);
      }

      *a1 = v7;
      return result;
    }

LABEL_16:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  result = v17(4, v16, 0, &v15);
  if (!result)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v8 = *result;
  if (*result)
  {
    result = CFRetain(*result);
  }

  *a1 = v8;
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE2060AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<applesauce::CF::StringRef>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[465];
}

void AMCP::Thing::~Thing(AMCP::Thing *this)
{
  v1 = *(this + 4);
  if (v1)
  {
    v1(0, this, 0, 0);
  }
}

uint64_t AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[380];
}

void *std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
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

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
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
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

AMCP::Utility::With_Realtime_Disabled *AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(AMCP::Utility::With_Realtime_Disabled *this)
{
  *this = 0;
  v2 = pthread_self();
  is_thread_configured_for_realtime = AMCP::Utility::is_thread_configured_for_realtime(v2, v3);
  *this = is_thread_configured_for_realtime;
  if (is_thread_configured_for_realtime)
  {
    v5 = pthread_self();
    AMCP::Utility::configure_thread_for_normal_priority(v5, v6);
  }

  return this;
}

void caulk::make_string(caulk *this@<X0>, uint64_t a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = vsnprintf(0, 0, this, va);
  if (v5 <= 0)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::string::resize(a2, (v5 + 1), 0);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    v9 = vsnprintf(v7, v8, this, va);
    std::string::resize(a2, v9, 0);
  }
}

uint64_t boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &unk_1F5992140;
  std::runtime_error::runtime_error(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  *(a1 + 16) = &unk_1F59921B8;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F59920A0;
  *(a1 + 16) = &unk_1F59920D8;
  *(a1 + 56) = &unk_1F5992110;
  v10 = 0;
  v6 = *(a2 + 24);
  if (v6)
  {
    (*(*v6 + 40))(&v9);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt(&v10, v9);
    boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v9);
    v7 = v10;
  }

  else
  {
    v7 = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::adopt((a1 + 24), v7);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&v10);
  return a1;
}

{
  *(a1 + 56) = &unk_1F5992140;
  std::runtime_error::runtime_error(a1, a2);
  v4 = *(a2 + 24);
  *(a1 + 16) = &unk_1F59921B8;
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *a1 = &unk_1F59920A0;
  *(a1 + 16) = &unk_1F59920D8;
  *(a1 + 56) = &unk_1F5992110;
  return a1;
}

void sub_1DE206514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v10);
  _Unwind_Resume(a1);
}

void applesauce::backtrace::snapshot_N<64>::snapshot_N(void *a1)
{
  std::vector<void *>::vector[abi:ne200100](a1);
}

{
  std::vector<void *>::vector[abi:ne200100](a1);
}

void sub_1DE2066FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1E12C1730);
}

void boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(uint64_t a1)
{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

{
  *(a1 + 16) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled(AMCP::Utility::With_Realtime_Disabled *this)
{
  if (*this == 1)
  {
    v1 = pthread_self();
    AMCP::Utility::configure_thread_for_realtime(v1, 0x880DE, 0);
  }
}

void sub_1DE206938(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE206928);
}

void virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(void *a1)
{
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(a1 + *(*a1 - 40));
}

{
  v1 = a1 + *(*a1 - 40);
  *(v1 + 2) = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(v1 + 3);

  std::runtime_error::~runtime_error(v1);
}

void boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(exception, a1);
}

void sub_1DE206CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(v10);
  MEMORY[0x1E12C1730](v10, v11);
  _Unwind_Resume(a1);
}

void non-virtual thunk toboost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(void *a1)
{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void boost::shared_ptr<boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>>::shared_ptr<boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>>(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  operator new();
}

void sub_1DE206E44(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  __cxa_rethrow();
}

void sub_1DE206E7C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  boost::detail::shared_count::~shared_count(v1);
  _Unwind_Resume(a1);
}

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a1 + 8);
  v5 = *(a1 + 8);
  if (v5)
  {
    v7 = v5[4];
    if (v7 != a3)
    {
      v8 = *(a3 + 8);
      do
      {
        v9 = *(v7 + 8);
        if (strcmp((v8 & 0x7FFFFFFFFFFFFFFFLL), (v9 & 0x7FFFFFFFFFFFFFFFLL)) < 0)
        {
          v10 = *v5;
          v4 = v5;
          if (!*v5)
          {
            break;
          }
        }

        else
        {
          if ((strcmp((v9 & 0x7FFFFFFFFFFFFFFFLL), (v8 & 0x7FFFFFFFFFFFFFFFLL)) & 0x80000000) == 0)
          {
            break;
          }

          v4 = v5 + 1;
          v10 = v5[1];
          if (!v10)
          {
            break;
          }
        }

        v7 = v10[4];
        v5 = v10;
      }

      while (v7 != a3);
    }
  }

  else
  {
    v5 = (a1 + 8);
  }

  *a2 = v5;
  return v4;
}

uint64_t *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      boost::detail::shared_count::~shared_count(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
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

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

uint64_t boost::detail::sp_counted_impl_p<boost::exception_detail::error_info_base>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

BOOL boost::exception_detail::error_info_container_impl::release(boost::exception_detail::error_info_container_impl *this)
{
  v1 = *(this + 14) - 1;
  *(this + 14) = v1;
  if (this && !v1)
  {
    if (*(this + 55) < 0)
    {
      operator delete(*(this + 4));
    }

    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(*(this + 2));
    MEMORY[0x1E12C1730](this, 0x10B3C409A6CECE4);
  }

  return v1 == 0;
}

void std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(atomic_uint **a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(*a1);
    std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::destroy(a1[1]);
    boost::detail::shared_count::~shared_count(a1 + 6);

    operator delete(a1);
  }
}

void boost::exception_detail::error_info_container_impl::set(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __assert_rtn("set", "info.hpp", 77, "x");
  }

  v5 = *std::__tree<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::__map_value_compare<boost::exception_detail::type_info_,std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>,std::less<boost::exception_detail::type_info_>,true>,std::allocator<std::__value_type<boost::exception_detail::type_info_,boost::shared_ptr<boost::exception_detail::error_info_base>>>>::__find_equal<boost::exception_detail::type_info_>(a1 + 8, &v10, *a3);
  if (!v5)
  {
    operator new();
  }

  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1u, memory_order_relaxed);
  }

  v8 = *(v5 + 40);
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;
  v9 = v8;
  boost::detail::shared_count::~shared_count(&v9 + 1);
  if (*(a1 + 55) < 0)
  {
    **(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 32) = 0;
    *(a1 + 55) = 0;
  }
}

uint64_t boost::exception_detail::error_info_container_impl::get@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = (result + 16);
  v5 = *(result + 16);
  if (!v5)
  {
    goto LABEL_12;
  }

  v6 = *a2;
  v7 = (result + 16);
  do
  {
    v8 = v5[4];
    if (v8 == v6)
    {
      v7 = v5;
    }

    else
    {
      result = strcmp((*(v8 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL));
      if (result >= 0)
      {
        v7 = v5;
      }

      v5 = (v5 + ((result >> 28) & 8));
    }

    v5 = *v5;
  }

  while (v5);
  if (v4 != v7 && ((v9 = v7[4], v6 == v9) || (result = strcmp((*(v6 + 8) & 0x7FFFFFFFFFFFFFFFLL), (*(v9 + 8) & 0x7FFFFFFFFFFFFFFFLL)), (result & 0x80000000) == 0)))
  {
    v10 = v7[6];
    *a3 = v7[5];
    a3[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
LABEL_12:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

uint64_t boost::exception_detail::error_info_container_impl::diagnostic_information(boost::exception_detail::error_info_container_impl *this, const char *a2)
{
  if (a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v17);
    v4 = strlen(a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, a2, v4);
    v5 = *(this + 1);
    if (v5 != (this + 16))
    {
      do
      {
        v6 = *(v5 + 5);
        if (!v6)
        {
          __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
        }

        (**v6)(__p);
        if (v16 >= 0)
        {
          v7 = __p;
        }

        else
        {
          v7 = __p[0];
        }

        if (v16 >= 0)
        {
          v8 = HIBYTE(v16);
        }

        else
        {
          v8 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v17, v7, v8);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(__p[0]);
        }

        v9 = *(v5 + 1);
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = *(v5 + 2);
            v11 = *v10 == v5;
            v5 = v10;
          }

          while (!v11);
        }

        v5 = v10;
      }

      while (v10 != (this + 16));
    }

    std::ostringstream::str[abi:ne200100](__p, &v17);
    v12 = v16;
    v13 = *__p;
    *__p = *(this + 2);
    v16 = *(this + 6);
    *(this + 2) = v13;
    *(this + 6) = v12;
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *MEMORY[0x1E69E54E8];
    *(&v17 + *(v17 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v18 = MEMORY[0x1E69E5548] + 16;
    if (v20 < 0)
    {
      operator delete(v19[7].__locale_);
    }

    v18 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v19);
    std::ostream::~ostream();
    MEMORY[0x1E12C15F0](&v21);
  }

  result = this + 32;
  if (*(this + 55) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  a1[14] = MEMORY[0x1E69E5570] + 64;
  v3 = *(MEMORY[0x1E69E54E8] + 16);
  v4 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x1E69E5570] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_1DE207C40(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](v1);
  _Unwind_Resume(a1);
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E12C1190](v20, a1);
  if (v20[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, MEMORY[0x1E69E5318]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x1E12C11A0](v20);
  return a1;
}

void sub_1DE207F10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E12C11A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x1DE207EE4);
}

const void *std::ostringstream::str[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  result = std::stringbuf::view[abi:ne200100](a2 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    result = memmove(a1, result, v4);
  }

  a1[v5] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](a1 + 112);
  return a1;
}

{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    v2 = *(a1 + 16);
    v4 = *(a1 + 32);
  }

  else
  {
    return 0;
  }

  return v2;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E12C14A0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x1E69E5548] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_1DE208238(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

uint64_t boost::detail::sp_counted_impl_p<boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>::~error_info(void *a1)
{
  *a1 = &unk_1F5992258;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1E12C1730);
}

void *boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>::~error_info(void *a1)
{
  *a1 = &unk_1F5992258;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1DE20854C(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  MEMORY[0x1E12C1730](v1, v2);
  _Unwind_Resume(a1);
}

void std::allocator<void *>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void boost::error_info<applesauce::exceptions::tag_backtrace,applesauce::backtrace::snapshot_N<64>>::name_value_string(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  LODWORD(status.__r_.__value_.__l.__data_) = 0;
  outlen = 0;
  v4 = __cxa_demangle(("PN10applesauce10exceptions13tag_backtraceE" & 0x7FFFFFFFFFFFFFFFLL), 0, &outlen, &status);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = ("PN10applesauce10exceptions13tag_backtraceE" & 0x7FFFFFFFFFFFFFFFLL);
  }

  std::string::basic_string[abi:ne200100]<0>(&v18, v6);
  free(v5);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7.__i_ = &v18;
  }

  else
  {
    v7.__i_ = v18.__r_.__value_.__r.__words[0];
  }

  std::string::insert(&v18, v7, 91);
  v19 = v18;
  memset(&v18, 0, sizeof(v18));
  v8 = std::string::append(&v19, "] = ", 4uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&outlen);
  applesauce::backtrace::detail::symbolicate_snapshot(&status, a1 + 8);
  if ((status.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_status = &status;
  }

  else
  {
    p_status = status.__r_.__value_.__r.__words[0];
  }

  if ((status.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(status.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = status.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&outlen, p_status, size);
  if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(status.__r_.__value_.__l.__data_);
  }

  std::ostringstream::str[abi:ne200100](v16, &outlen);
  outlen = *MEMORY[0x1E69E54E8];
  *(&outlen + *(outlen - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v23 = MEMORY[0x1E69E5548] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](&v26);
  if ((v17 & 0x80u) == 0)
  {
    v12 = v16;
  }

  else
  {
    v12 = v16[0];
  }

  if ((v17 & 0x80u) == 0)
  {
    v13 = v17;
  }

  else
  {
    v13 = v16[1];
  }

  v14 = std::string::append(&v20, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  std::string::push_back(&v21, 10);
  *a2 = v21;
  memset(&v21, 0, sizeof(v21));
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_1DE2088DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void applesauce::backtrace::detail::symbolicate_snapshot(std::string *a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v4 = *(a2 + 8) - *a2;
  v37 = backtrace_symbols(*a2, v4 >> 3);
  if ((v4 >> 3) < 1)
  {
    goto LABEL_70;
  }

  v36 = v4 >> 3;
  v5 = 0;
  v6 = (v4 >> 3) & 0x7FFFFFFF;
  v7 = "%-3d\t%*p\t";
  do
  {
    v8 = *(*a2 + 8 * v5);
    snprintf(__str, 0x40uLL, v7, v5, 18, v8);
    v9 = strlen(__str);
    std::string::append(a1, __str, v9);
    memset(&v45, 0, sizeof(v45));
    if (dladdr(v8, &v45))
    {
      v10 = v45.dli_sname == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      std::string::basic_string[abi:ne200100]<0>(&v41, v45.dli_sname);
      LODWORD(status.__r_.__value_.__l.__data_) = 0;
      outlen.__r_.__value_.__r.__words[0] = 0;
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v17 = &v41;
      }

      else
      {
        v17 = v41.__r_.__value_.__r.__words[0];
      }

      v18 = __cxa_demangle(v17, 0, &outlen, &status);
      v19 = v18;
      data = status.__r_.__value_.__l.__data_;
      if (LODWORD(status.__r_.__value_.__l.__data_))
      {
        LOBYTE(__p[0]) = 0;
        v44 = 0;
        if (!v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v22 = v7;
        v23 = outlen.__r_.__value_.__r.__words[0] - 1;
        if (outlen.__r_.__value_.__r.__words[0] - 1 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v23 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v47) = outlen.__r_.__value_.__s.__data_[0] - 1;
        if (outlen.__r_.__value_.__r.__words[0] != 1)
        {
          memmove(&__dst, v18, v23);
        }

        *(&__dst + v23) = 0;
        *__p = __dst;
        v43 = v47;
        v44 = 1;
        v7 = v22;
        if (!v19)
        {
LABEL_24:
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          if (data)
          {
            dli_sname = v45.dli_sname;
            if (!v45.dli_sname)
            {
              dli_sname = v37[v5];
            }
          }

          else if (v43 >= 0)
          {
            dli_sname = __p;
          }

          else
          {
            dli_sname = __p[0];
          }

          dli_saddr = v45.dli_saddr;
          std::string::basic_string[abi:ne200100]<0>(&status, dli_sname);
          v25 = std::string::append(&status, " + ", 3uLL);
          v26 = *&v25->__r_.__value_.__l.__data_;
          outlen.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
          *&outlen.__r_.__value_.__l.__data_ = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v38, v8 - dli_saddr);
          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &v38;
          }

          else
          {
            v27 = v38.__r_.__value_.__r.__words[0];
          }

          if ((v38.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v38.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v38.__r_.__value_.__l.__size_;
          }

          v29 = std::string::append(&outlen, v27, size);
          v30 = *&v29->__r_.__value_.__l.__data_;
          v41.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
          *&v41.__r_.__value_.__l.__data_ = v30;
          v29->__r_.__value_.__l.__size_ = 0;
          v29->__r_.__value_.__r.__words[2] = 0;
          v29->__r_.__value_.__r.__words[0] = 0;
          v31 = std::string::append(&v41, "\n", 1uLL);
          v32 = *&v31->__r_.__value_.__l.__data_;
          v47 = v31->__r_.__value_.__r.__words[2];
          __dst = v32;
          v31->__r_.__value_.__l.__size_ = 0;
          v31->__r_.__value_.__r.__words[2] = 0;
          v31->__r_.__value_.__r.__words[0] = 0;
          if (v47 >= 0)
          {
            p_dst = &__dst;
          }

          else
          {
            p_dst = __dst;
          }

          if (v47 >= 0)
          {
            v34 = HIBYTE(v47);
          }

          else
          {
            v34 = *(&__dst + 1);
          }

          std::string::append(a1, p_dst, v34);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__dst);
          }

          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v38.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(outlen.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(outlen.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(status.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(status.__r_.__value_.__l.__data_);
          }

          if (!data && SHIBYTE(v43) < 0)
          {
            v16 = __p[0];
            goto LABEL_61;
          }

          goto LABEL_62;
        }
      }

      free(v19);
      goto LABEL_24;
    }

    v11 = std::string::basic_string[abi:ne200100]<0>(&__dst, v37[v5]);
    v12 = std::string::append(v11, "\n", 1uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v43 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (v43 >= 0)
    {
      v14 = __p;
    }

    else
    {
      v14 = __p[0];
    }

    if (v43 >= 0)
    {
      v15 = HIBYTE(v43);
    }

    else
    {
      v15 = __p[1];
    }

    std::string::append(a1, v14, v15);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v47) < 0)
    {
      v16 = __dst;
LABEL_61:
      operator delete(v16);
    }

LABEL_62:
    ++v5;
  }

  while (v6 != v5);
  if (v36 == 64)
  {
    std::string::append(a1, "[truncated?]\n", 0xDuLL);
  }

LABEL_70:
  if (v37)
  {
    free(v37);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void sub_1DE208EB4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void std::vector<void *>::vector[abi:ne200100](void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_1DE208F80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void *>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::allocator<void *>::allocate_at_least[abi:ne200100](v10);
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void non-virtual thunk toboost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(void *a1)
{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  JUMPOUT(0x1E12C1730);
}

{
  v1 = (a1 - 2);
  *a1 = &unk_1F59921B8;
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<applesauce::CF::StringRef ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[384];
}

unsigned int *caulk::concurrent::shared_spin_lock::lock_shared(unsigned int *this)
{
  v1 = this;
  for (i = 0; ; ++i)
  {
    v3 = atomic_load(v1);
    if (v3 <= 0x7FFFFFFE)
    {
      break;
    }

LABEL_6:
    if (i >= 0x65)
    {
      v5 = mach_absolute_time();
      this = mach_wait_until(v5 + 24000);
    }
  }

  v4 = v3;
  while (1)
  {
    atomic_compare_exchange_strong(v1, &v4, v3 + 1);
    if (v4 == v3)
    {
      return this;
    }

    v3 = v4;
    if (v4 >= 0x7FFFFFFF)
    {
      goto LABEL_6;
    }
  }
}

unsigned int *caulk::concurrent::shared_spin_lock::unlock_shared(unsigned int *this)
{
  v1 = atomic_load(this);
  v2 = v1 & 0x7FFFFFFF;
  if ((v1 & 0x7FFFFFFF) != 0)
  {
    while ((v1 & 0x80000000) == 0)
    {
      v3 = v2 - 1;
      v4 = v1;
      atomic_compare_exchange_strong(this, &v4, v3);
      if (v4 == v1)
      {
        return this;
      }

      v1 = v4;
      v2 = v4 & 0x7FFFFFFF;
      if (!v2)
      {
        goto LABEL_5;
      }
    }

    _os_assert_log();
    this = _os_crash();
    __break(1u);
  }

  else
  {
LABEL_5:
    _os_assert_log();
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t AMCP::Core::Operation::call_function<BOOL,AMCP::Core::Has_Property_Function>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  Has_Property = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, Has_Property);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <AMCP::Core::Has_Property_Function>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = BOOL, Argument_Types = <AMCP::Core::Has_Property_Function>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5, buf);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE2097B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::function<BOOL ()(AMCP::Core::Has_Property_Function)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[376];
}

void AMCP::get_class_traits(std::string *this, unsigned int a2)
{
  stock_class_traits_list = AMCP::get_stock_class_traits_list(this);
  v6 = *stock_class_traits_list;
  v5 = stock_class_traits_list[1];
  if (v5 == *stock_class_traits_list)
  {
    goto LABEL_11;
  }

  v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *stock_class_traits_list) >> 4);
  do
  {
    v8 = v7 >> 1;
    v9 = &v6[20 * (v7 >> 1)];
    v11 = *v9;
    v10 = v9 + 20;
    v7 += ~(v7 >> 1);
    if (v11 < a2)
    {
      v6 = v10;
    }

    else
    {
      v7 = v8;
    }
  }

  while (v7);
  if (v6 == v5 || *v6 != a2)
  {
LABEL_11:
    LODWORD(this->__r_.__value_.__l.__data_) = a2;
    HIDWORD(this->__r_.__value_.__r.__words[0]) = 0;
    this->__r_.__value_.__s.__data_[8] = 0;
    v14 = 1735159650;
    this->__r_.__value_.__r.__words[2] = 0;
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&this->__r_.__value_.__r.__words[2], &v14, &v15, 1uLL);
    LODWORD(this[1].__r_.__value_.__r.__words[2]) = -1;
    std::string::basic_string[abi:ne200100]<0>(&this[2], "Unknown");
    LODWORD(this[3].__r_.__value_.__l.__data_) = 0;
  }

  else
  {
    v12 = *v6;
    this->__r_.__value_.__s.__data_[8] = *(v6 + 8);
    this->__r_.__value_.__r.__words[0] = v12;
    this->__r_.__value_.__r.__words[2] = 0;
    this[1].__r_.__value_.__r.__words[0] = 0;
    this[1].__r_.__value_.__l.__size_ = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&this->__r_.__value_.__r.__words[2], *(v6 + 2), *(v6 + 3), (*(v6 + 3) - *(v6 + 2)) >> 2);
    LODWORD(this[1].__r_.__value_.__r.__words[2]) = v6[10];
    if (*(v6 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(this + 2, *(v6 + 6), *(v6 + 7));
    }

    else
    {
      v13 = *(v6 + 3);
      this[2].__r_.__value_.__r.__words[2] = *(v6 + 8);
      *&this[2].__r_.__value_.__l.__data_ = v13;
    }

    LODWORD(this[3].__r_.__value_.__l.__data_) = v6[18];
  }
}

void sub_1DE209A1C(void *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  __clang_call_terminate(a1);
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE209AA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<unsigned int>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE209BA0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(AMCP::Core::Core *a1, const AMCP::Address *a2)
{
  if (!AMCP::Core::Core::has_property(a1, a2))
  {
    goto LABEL_14;
  }

  AMCP::Core::Core::find_operation(&v13, a1, a2);
  v5 = v13;
  if (v13)
  {
    v6 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v6))
    {
      LODWORD(v5) = AMCP::Core::Operation::call_function<unsigned int>(v5);
LABEL_5:
      v7 = 0;
      v2 = v5 >> 8;
      goto LABEL_11;
    }

    v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
    if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v5, v8))
    {
      AMCP::Core::Operation::call_function<AMCP::Thing>(v11, v5);
      LODWORD(v5) = AMCP::Thing::convert_to<unsigned int>(v11);
      if (v12)
      {
        v12(0, v11, 0, 0);
      }

      goto LABEL_5;
    }

    LOBYTE(v5) = 0;
  }

  v7 = 1;
LABEL_11:
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (!v7)
  {
    v9 = 0x100000000;
    return v9 | v5 | (v2 << 8);
  }

LABEL_14:
  v9 = 0;
  LOBYTE(v5) = 0;
  return v9 | v5 | (v2 << 8);
}

uint64_t AMCP::Core::Operation::call_function<unsigned int>(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>();
  v3 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a1, v2);
  if (!v3)
  {
    v12 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v12 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v14 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v15, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = unsigned int, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v4 = v3;
  if (!*(v3 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>(), (v3 = (*(v4 + 7))(4, v4 + 24, 0, buf)) == 0))
  {
    v8 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v8 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v3);
    }

    v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v9 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v27 = 1024;
      v28 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v25);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v17);
    std::runtime_error::runtime_error(&v18, &v17);
    std::runtime_error::runtime_error(&v19, &v18);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = -1;
    v19.__vftable = &unk_1F5992170;
    v20 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v19);
    v29 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = unsigned int, Argument_Types = <>]";
    v30 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v31 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v16);
  }

  v5 = *(v3 + 3);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v5 + 48))(v5);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE20A150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Thing::convert_to<unsigned int>(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    goto LABEL_12;
  }

  type = AMCP::Implementation::get_type_marker<unsigned int>();
  v3 = *(a1 + 32);
  v17 = 0;
  if (v3)
  {
    v3(3, a1, 0, &v17);
    v3 = v17;
  }

  if (v3 == type)
  {
    *&v15[0] = type;
    v4 = (*(a1 + 32))(4, a1, 0, v15);
    if (v4)
    {
      return *v4;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<unsigned int>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a1 + 32))(6, a1, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = type;
  v6 = v16(4, v15, 0, &v14);
  if (!v6)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v5 = *v6;
  if (v16)
  {
    v16(0, v15, 0, 0);
  }

  return v5;
}

void sub_1DE20A37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<unsigned int>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      AMCP::Implementation::get_type_marker<unsigned int>(void)::s_type_marker = AMCP::Implementation::generate_type_marker(MEMORY[0x1E69E5480], v3);
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[487];
}

uint64_t AMCP::Implementation::get_type_marker<std::function<unsigned int ()(void)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[378];
}

uint64_t std::__function::__func<AMCP::Device::Device(AMCP::System_Context &,applesauce::CF::StringRef)::$_0,std::allocator<AMCP::Device::Device(AMCP::System_Context &,applesauce::CF::StringRef)::$_0>,BOOL ()(std::shared_ptr<AMCP::Core::Core> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F59605F0;
  a2[1] = v2;
  return result;
}

unint64_t AMCP::Device::get_input_safety_offset(AMCP::Device *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1935763060u>(v5, 0x696E7074u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::Core::Core::get_simple_required_property<1935763060u>(AMCP::Core::Core *a1, unsigned int a2)
{
  v23 = *MEMORY[0x1E69E9840];
  *buf = 1935763060;
  v12 = a2;
  result = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(a1, buf);
  if (!HIDWORD(result))
  {
    v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v5 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(result);
    }

    v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v6 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 4;
      strcpy(__p, "saft");
      *buf = 136316418;
      v12 = "Core.h";
      v13 = 1024;
      v14 = 391;
      v15 = 2080;
      v16 = "optional_value.operator BOOL() == true";
      v17 = 2080;
      v18 = __p;
      v19 = 1024;
      v20 = a2;
      v21 = 1024;
      v22 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE20A738(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::Device::get_output_safety_offset(AMCP::Device *this)
{
  v2 = *(this + 3);
  if (!v2)
  {
    return 0;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(this + 2);
  if (v5)
  {
    simple_required = AMCP::Core::Core::get_simple_required_property<1935763060u>(v5, 0x6F757470u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

void AMCP::Device::get_stream_list(AMCP::Device *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(this + 3);
  if (v5 && (v7 = std::__shared_weak_count::lock(v5)) != 0)
  {
    v8 = v7;
    v9 = *(this + 2);
    if (v9)
    {
      AMCP::Core::Core::get_simple_required_property<1937009955u>(a3, v9, a2);
    }

    else
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void AMCP::Core::Core::get_simple_required_property<1937009955u>(void *a1, AMCP::Core::Core *a2, unsigned int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  *buf = 1937009955;
  v19 = a3;
  AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(&v15, a2, buf);
  if ((v17 & 1) == 0)
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v5);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 4;
      strcpy(__p, "stm#");
      *buf = 136316418;
      v19 = "Core.h";
      v20 = 1024;
      v21 = 391;
      v22 = 2080;
      v23 = "optional_value.operator BOOL() == true";
      v24 = 2080;
      v25 = __p;
      v26 = 1024;
      v27 = a3;
      v28 = 1024;
      v29 = 0;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    abort();
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v6 = v15;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, v15, v16, (v16 - v15) >> 2);
  if (v6)
  {
    v7 = *MEMORY[0x1E69E9840];

    operator delete(v6);
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE20AA14(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::Core::Core::get_typed_property_value<std::vector<unsigned int>,std::enable_if<true,void>>(uint64_t a1, AMCP::Core::Core *this, AMCP::Address *a3)
{
  if (!AMCP::Core::Core::has_property(this, a3))
  {
LABEL_13:
    *a1 = 0;
    *(a1 + 24) = 0;
    return;
  }

  AMCP::Core::Core::find_operation(&v15, this, a3);
  v6 = v15;
  if (!v15)
  {
    goto LABEL_9;
  }

  v7 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v7))
  {
    AMCP::Core::Operation::call_function<std::vector<unsigned int>>(&v12, v6);
    v8 = 0;
    *a1 = v12;
    *(a1 + 16) = v13;
    *(a1 + 24) = 1;
    goto LABEL_10;
  }

  v9 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
  if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v6, v9))
  {
    AMCP::Core::Operation::call_function<AMCP::Thing>(&v12, v6);
    AMCP::Thing::convert_to<std::vector<unsigned int>>(&v10, &v12);
    *a1 = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = 1;
    if (v14)
    {
      v14(0, &v12, 0, 0);
    }

    v8 = 0;
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

LABEL_10:
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v8)
  {
    goto LABEL_13;
  }
}

uint64_t AMCP::Core::Operation::call_function<std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>();
  v4 = std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(a2, v3);
  if (!v4)
  {
    v13 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v13 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(0);
    }

    v15 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v14 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v15;
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    else
    {
      v16 = *v15;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 154;
      _os_log_error_impl(&dword_1DE1F9000, v16, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Operation does not have requested function", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Operation does not have requested function", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 154;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v5 = v4;
  if (!*(v4 + 7) || (*buf = AMCP::Implementation::get_type_marker<std::function<std::vector<unsigned int> ()(void)>>(), (v4 = (*(v5 + 7))(4, v5 + 24, 0, buf)) == 0))
  {
    v9 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v9 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
    }

    v11 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v10 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "Operation.h";
      v28 = 1024;
      v29 = 161;
      _os_log_error_impl(&dword_1DE1F9000, v12, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: Invalid cast", buf, 0x12u);
    }

    AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v26);
    __cxa_allocate_exception(0x40uLL);
    caulk::make_string("Invalid cast", &v18);
    std::runtime_error::runtime_error(&v19, &v18);
    std::runtime_error::runtime_error(&v20, &v19);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
    v20.__vftable = &unk_1F5992170;
    v21 = &unk_1F5992198;
    boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v20);
    v30 = "Return_Type AMCP::Core::Operation::call_function(Argument_Types...) const [Return_Type = std::vector<unsigned int>, Argument_Types = <>]";
    v31 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/MCP/AMCP/Core/Operation.h";
    v32 = 161;
    applesauce::backtrace::snapshot_N<64>::snapshot_N(&v17);
  }

  v6 = *(v4 + 3);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v6 + 48))(v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE20AFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, std::runtime_error a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a9)
  {
    operator delete(a9);
  }

  boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::~clone_impl(v25 - 128);
  boost::exception_detail::error_info_injector<std::runtime_error>::~error_info_injector(&a23);
  std::runtime_error::~runtime_error(&a22);
  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (v24)
  {
    __cxa_free_exception(v23);
  }

  AMCP::Utility::With_Realtime_Disabled::~With_Realtime_Disabled((v25 - 129));
  _Unwind_Resume(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<unsigned int>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *v6, v6[1], (v6[1] - *v6) >> 2);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<unsigned int>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, *v8, v8[1], (v8[1] - *v8) >> 2);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE20B248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<unsigned int>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[417];
}