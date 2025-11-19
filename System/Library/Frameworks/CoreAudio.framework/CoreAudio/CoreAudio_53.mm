uint64_t ___ZN26HALS_IOContext_Legacy_ImplC2EP14HALS_IOContextN4AMCP11Power_StateENSt3__110shared_ptrINS2_7Utility14Dispatch_QueueEEE_block_invoke(_BOOL8 a1, uint64_t *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1560);
  if (!v6)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

    a1 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (a1)
    {
      v17 = 136315394;
      v18 = "HALS_IOContext_Legacy_Impl.cpp";
      v19 = 1024;
      v20 = 2484;
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryTop: there is no master engine info", &v17, 0x12u);
    }

    v6 = *(v5 + 1560);
    if (!v6)
    {
      goto LABEL_24;
    }
  }

  if (!*(v6 + 88))
  {
    v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v11 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
      v17 = 136315394;
      v18 = "HALS_IOContext_Legacy_Impl.cpp";
      v19 = 1024;
      v20 = 2487;
      _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryTop: there is no master engine", &v17, 0x12u);
    }
  }

  if (*(*(v5 + 1560) + 88))
  {
    if (HALS_IOContext_Legacy_Impl::IOWorkLoopGetInterval(v5, (v5 + 40), a2, a3))
    {
      if ((*(v5 + 1424) & 0xFFFFFFFE) == 2)
      {
        result = 2;
      }

      else
      {
        result = 1;
      }
    }

    else
    {
      result = 0;
      *(v5 + 289) = 1;
    }
  }

  else
  {
LABEL_24:
    result = 0;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN26HALS_IOContext_Legacy_ImplC2EP14HALS_IOContextN4AMCP11Power_StateENSt3__110shared_ptrINS2_7Utility14Dispatch_QueueEEE_block_invoke_2(_BOOL8 a1)
{
  v131 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 1560);
  if (v2)
  {
    goto LABEL_143;
  }

  v3 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v3 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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

  a1 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (a1)
  {
    LODWORD(__p.mSampleTime) = 136315394;
    *(&__p.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
    WORD2(__p.mHostTime) = 1024;
    *(&__p.mHostTime + 6) = 2522;
    _os_log_error_impl(&dword_1DE1F9000, v6, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryBottom: there is no master engine info", &__p, 0x12u);
  }

  v2 = *(v1 + 1560);
  if (v2)
  {
LABEL_143:
    if (!*(v2 + 88))
    {
      v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v7 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(a1);
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
        LODWORD(__p.mSampleTime) = 136315394;
        *(&__p.mSampleTime + 4) = "HALS_IOContext_Legacy_Impl.cpp";
        WORD2(__p.mHostTime) = 1024;
        *(&__p.mHostTime + 6) = 2525;
        _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d HALS_IOContext_Legacy_Impl::IOThreadEntryBottom: there is no master engine", &__p, 0x12u);
      }
    }

    if (*(*(v1 + 1560) + 88))
    {
      v11 = *(v1 + 1424);
      if (v11 == 3)
      {
        v12 = (v1 + 40);
      }

      else
      {
        v13 = *(*(v1 + 24) + 232);
        if ((*v13 & 1) != 0 || *(v13 + 1) == 1)
        {
          v14 = *(v1 + 624);
          v15 = *(v1 + 640);
          v16 = *(v13 + 8);
          *(v16 + 232) = *(v1 + 616);
          *(v16 + 240) = v14;
          *(v16 + 256) = v15;
          HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(v13);
          v11 = *(v1 + 1424);
        }

        v12 = (v1 + 40);
        if (v11 == 4)
        {
          *(v1 + 1424) = 0;
          *(v1 + 264) = 0;
          v17 = *(v1 + 1456);
          if (v17)
          {
            std::function<void ()(IORunningState)>::operator()(v17, 0);
          }

          HALS_IOContext_Legacy_Impl::UpdateEngineMixing(v1);
        }
      }

      if ((HALB_IOThread::HasBeenStopped((v1 + 312)) & 1) != 0 || *(v1 + 289) == 1)
      {
        v18 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v19 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(v18 + 8);
        HasBeenStopped = HALB_IOThread::HasBeenStopped((v1 + 312));
        if (!*MEMORY[0x1E69E3C08])
        {
          goto LABEL_140;
        }

        v22 = HasBeenStopped == 0;
        v23 = 2309;
        if (!v22)
        {
          v23 = 0x100000905;
        }

        v24 = v23 | (*(v1 + 289) << 40);
        v25 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
        *(v25 + 16) = 0;
        *(v25 + 20) = 0;
        *(v25 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
        *(v25 + 32) = v24;
        *v25 = &unk_1F5983080;
        *(v25 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v20, v25);
        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        *(v1 + 289) = 1;
      }

      else
      {
        v67 = *(v1 + 48);
        v68 = *(v1 + 1344);
        v69 = *(v1 + 56);
        v70 = *(v1 + 40);
        kdebug_trace();
        if ((HALS_IOContext_Legacy_Impl::UpdateTime(v1) || *(v1 + 1341) == 1) && *(v1 + 1424) != 3)
        {
          v72 = *(v1 + 1341);
          v73 = MEMORY[0x1E69E3C08];
          if (v72 == 1)
          {
            v74 = *(*(v1 + 24) + 16);
            v111 = HALS_IOContext_Legacy_Impl::ResetTimeline_Helper;
            v112 = v74;
            v110 = &unk_1F5983FE8;
            v114[0] = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(unsigned int,HALS_IOEngineInfo &),unsigned int,std::placeholders::__ph<1> const&>>;
            v114[1] = &v111;
            v113 = &off_1F5983F18;
            v115 = v114;
            *&v109.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterInactiveReferenceStreamOnlyEngines const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
            v109.mHostTime = &v115;
            VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), &v109, &v113, &v110);
            *(v1 + 1341) = 0;
            v75 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v76 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v76)
            {
              atomic_fetch_add_explicit(&v76->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!*v73)
            {
              goto LABEL_140;
            }

            v77 = *(v75 + 8);
            v78 = caulk::rt_safe_memory_resource::rt_allocate(*v73);
            *(v78 + 16) = 0;
            *(v78 + 20) = 0;
            *(v78 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
            *(v78 + 32) = 2329;
            *v78 = &unk_1F59830D8;
            *(v78 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v77, v78);
            if (v76)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v76);
            }
          }

          v79 = *(v1 + 1344);
          v80 = *(*(v1 + 24) + 16);
          kdebug_trace();
          *(v1 + 1352) = 0;
          HALS_IOContext_Legacy_Impl::AnchorTime(v1);
          v81 = *(v1 + 1560);
          if (v81)
          {
            if (*(v81 + 88))
            {
              v82 = *(v81 + 368);
              if (v82)
              {
                HALS_IOClock::GetCurrentTime(v82, (v1 + 48));
              }
            }
          }

          if ((v72 & 1) == 0)
          {
            *(v1 + 1424) = 4;
            v83 = *(v1 + 1456);
            if (v83)
            {
              std::function<void ()(IORunningState)>::operator()(v83, 4);
            }
          }

          v84 = HALS_IOContext_Legacy_Impl::ConfigureThreadForRealtimePriority(v1, *(v1 + 256));
          if (v84)
          {
            v85 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
            v86 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
            if (v86)
            {
              atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v87 = *(v85 + 8);
            v88 = __error();
            v89 = strerror(*v88);
            if (!*v73)
            {
              goto LABEL_140;
            }

            v90 = caulk::rt_safe_memory_resource::rt_allocate(*v73);
            *(v90 + 16) = 0;
            *(v90 + 20) = 16;
            *(v90 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
            *(v90 + 32) = 2363;
            *(v90 + 36) = v84;
            *(v90 + 40) = v89;
            *v90 = &unk_1F5983130;
            *(v90 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v87, v90);
            if (v86)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v86);
            }
          }

          atomic_store(0, (v1 + 1504));
          v71 = 1;
        }

        else
        {
          v71 = 0;
        }

        v91 = *(*(*(v1 + 24) + 72) + 40);
        v92 = *(*(v1 + 1560) + 368);
        v93 = v92 + 200;
        v94 = *(v92 + 200 + 40 * *(v92 + 192)) * 24000000.0 / 24000000.0;
        v95 = COERCE_DOUBLE(bswap64(*&v94));
        if (*(*(*(v1 + 24) + 72) + 40))
        {
          v94 = v95;
        }

        v96 = *(v1 + 1136);
        *v96 = v94;
        v97 = *(v93 + 40 * *(v92 + 192) + 8) * 24000000.0 / 24000000.0;
        v98 = COERCE_DOUBLE(bswap64(*&v97));
        if (v91)
        {
          v97 = v98;
        }

        *(v96 + 8) = v97;
        v99 = v93 + 40 * *(v92 + 192);
        if (v91)
        {
          v100 = bswap64(*(v99 + 16));
          v101 = bswap64(*(v93 + 40 * *(v92 + 192) + 24));
          v102 = bswap64(*(v93 + 40 * *(v92 + 192) + 32));
          v103 = 50331648;
        }

        else
        {
          v100 = *(v99 + 16);
          v101 = *(v93 + 40 * *(v92 + 192) + 24);
          v102 = *(v93 + 40 * *(v92 + 192) + 32);
          v103 = 3;
        }

        *(v96 + 16) = v100;
        *(v96 + 32) = v101;
        *(v96 + 40) = v102;
        *(v96 + 88) = v103;
        v104 = bswap32(*(v1 + 40));
        if (v91)
        {
          v105 = v104;
        }

        else
        {
          v105 = *(v1 + 40);
        }

        *(v96 + 24) = v105;
        __dmb(0xBu);
        v106 = *(v1 + 24);
        v108 = *(v106 + 88);
        v107 = *(v106 + 96);
        if (v107)
        {
          atomic_fetch_add_explicit(&v107->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v108)
        {
          memset(&__p, 0, sizeof(__p));
          __p.mFlags = 3;
          HALS_IOContext_Legacy_Impl::IOWorkLoop_CalculateOverloadTime(v1, *(v1 + 40), &__p, -1.0);
          v109 = __p;
          (*(*v108 + 56))(v108, &v109);
          HALS_IOContext_Legacy_Impl::_SetOverloadTimeOnEngines(v1, &__p);
        }

        if (v107)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v107);
        }

        *(v1 + 260) = HALS_IOContext_Legacy_Impl::PerformIO(v1, v1 + 48, *(v1 + 40), 0, *(v1 + 264), (v1 + 272), v71);
        if ((*(v1 + 289) & 1) == 0)
        {
          HALS_IOContext_Legacy_Impl::IOWorkLoopSyncTimeline(v1, v12);
        }
      }
    }
  }

  if ((*(v1 + 289) & 1) == 0 && !HALB_IOThread::HasBeenStopped((v1 + 312)))
  {
    goto LABEL_97;
  }

  v26 = HALS_IOThread::ClearAllSyscallMasks((v1 + 312));
  if (v26)
  {
    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v27 + 8);
    v30 = __error();
    v31 = strerror(*v30);
    if (*MEMORY[0x1E69E3C08])
    {
      v32 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v32 + 16) = 0;
      *(v32 + 20) = 16;
      *(v32 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
      *(v32 + 32) = 1992;
      *(v32 + 36) = v26;
      *(v32 + 40) = v31;
      *v32 = &unk_1F5982DC8;
      *(v32 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v29, v32);
      if (v28)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      goto LABEL_46;
    }

LABEL_140:
    __break(1u);
  }

LABEL_46:
  if (*(v1 + 288) == 1)
  {
    v117 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit(HALS_IOContext_Legacy_Impl::IOWorkLoopContext &)::$_0>;
    v118 = &v123;
    *&v122 = &v117;
    *buf = _ZN5caulk12function_refIFijR23HALS_IOStackDescriptionjjR17HALS_IOStreamInfoEE15functor_invokerIZN25HALS_IOContextDescription47ApplyToOutput_ButSkipReferenceStreamOnlyEnginesES6_EUljRT_jjRT0_E_EEiRKNS_7details15erased_callableIS5_EEjS2_jjS4_;
    *&buf[8] = &v122;
    v123 = v1;
    *&__p.mSampleTime = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
    __p.mHostTime = buf;
    VisitableVector<HALS_IOStackDescription>::apply<>(*(v1 + 1616), *(v1 + 1624), &__p);
    *(v1 + 1340) = 0;
    HALS_IOContext::OverloadReporter::SendAnyPendingOverloadReports(*(*(v1 + 24) + 232));
    (*(**(*(v1 + 24) + 104) + 752))(*(*(v1 + 24) + 104));
    kdebug_trace();
  }

  HALB_IOThread::ConfigureThreadForNormalPriority((v1 + 312));
  v33 = *(v1 + 1128);
  if (v33)
  {
    std::function<void ()(HALS_IOContext_Legacy_Impl *)>::operator()(v33, v1);
    std::__function::__value_func<void ()(HALS_IOContext_Legacy_Impl *)>::operator=[abi:ne200100](v1 + 1104);
  }

  *(v1 + 1340) = 0;
  atomic_store(0, (v1 + 1504));
  v117 = HALS_IOContext_Legacy_Impl::IOWorkLoop_Engine_EndIO;
  v118 = v1;
  *buf = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<int (&)(HALS_IOContext_Legacy_Impl *,HALS_IOEngineInfo &),HALS_IOContext_Legacy_Impl *,std::placeholders::__ph<1> const&>>;
  *&buf[8] = &v117;
  v123 = &off_1F5983F18;
  *&v122 = buf;
  *&__p.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  __p.mHostTime = &v122;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(v1 + 1568), *(v1 + 1576), &__p, &v123);
  HALB_IOThread::PostStateChange((v1 + 312), 1718185577);
  LODWORD(v123) = *(*(v1 + 24) + 16);
  *buf = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<HALS_IOContext_Legacy_Impl::UnregisterIOThread(void)::$_0>;
  *&buf[8] = &v123;
  *&v122 = &off_1F5983F18;
  v117 = buf;
  *&__p.mSampleTime = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  __p.mHostTime = &v117;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine>(*(v1 + 1568), *(v1 + 1576), &__p, &v122);
  kdebug_trace();
  v117 = 0;
  v118 = 0;
  v119 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v117, *(v1 + 1472), *(v1 + 1480), (*(v1 + 1480) - *(v1 + 1472)) >> 2);
  v120 = v1;
  v116 = &unk_1F5983F68;
  memset(&__p, 0, 24);
  v34 = v117;
  v35 = v118;
  v36 = (v118 - v117) >> 2;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v117, v118, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 1;
  *&v122 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v122 + 1) = &__p;
  v121 = &off_1F5983F18;
  v123 = &v122;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v123;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v121, &v116);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 2;
  *&v122 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v122 + 1) = &__p;
  v121 = &off_1F5983F18;
  v123 = &v122;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v123;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v121, &v116);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 3;
  *&v122 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v122 + 1) = &__p;
  v121 = &off_1F5983F18;
  v123 = &v122;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v123;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v121, &v116);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 4;
  *&v122 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v122 + 1) = &__p;
  v121 = &off_1F5983F18;
  v123 = &v122;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v123;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v121, &v116);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 5;
  *&v122 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v122 + 1) = &__p;
  v121 = &off_1F5983F18;
  v123 = &v122;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v123;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v121, &v116);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  memset(&__p, 0, 24);
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v34, v35, v36);
  __p.mWordClockTime = v1;
  *&__p.mSMPTETime.mSubframes = 6;
  *&v122 = caulk::function_ref<int ()(HALS_IOEngineInfo &)>::functor_invoker<std::__bind<HALS_IOContext_Legacy_Impl::StopHardware(std::vector<unsigned int> const&)::$_0 &,std::placeholders::__ph<1> const&,eStopWhichDevices>>;
  *(&v122 + 1) = &__p;
  v121 = &off_1F5983F18;
  v123 = &v122;
  *buf = caulk::function_ref<int ()(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)>::functor_invoker<int HALS_IOEngineInfoList::engine_apply<FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(caulk::function_ref<int ()(HALS_IOEngineInfo&)>,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream const&)::{lambda(VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex &)#1}>;
  *&buf[8] = &v123;
  VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::do_apply<std::vector<std::unique_ptr<HALS_IOEngineInfo>>,VisitableVector<std::unique_ptr<HALS_IOEngineInfo>>::ItemWithIndex,FilterEngineInfoWithoutEngine,FilterIfEngineOnlyNeedsReferenceStream>(*(v1 + 1568), *(v1 + 1576), buf, &v121, &v116);
  if (*&__p.mSampleTime)
  {
    __p.mHostTime = *&__p.mSampleTime;
    operator delete(*&__p.mSampleTime);
  }

  HALS_IOContext_Legacy_Impl::get_devices_that_are_not_reference_stream_only(buf, *(v1 + 1568), *(v1 + 1576));
  v37 = HALS_ObjectMap::CopyObjectByObjectID(**(*(v1 + 24) + 72));
  v39 = v37;
  if (v37)
  {
    *&__p.mSampleTime = MEMORY[0x1E69E9820];
    __p.mHostTime = 0x40000000;
    *&__p.mRateScalar = ___ZN11HALS_Client23DevicesStoppedByContextERKNSt3__16vectorIjNS0_9allocatorIjEEEES6__block_invoke;
    __p.mWordClockTime = &__block_descriptor_tmp_22_3147;
    *&__p.mSMPTETime.mSubframes = v37;
    *&__p.mSMPTETime.mType = buf;
    *&__p.mSMPTETime.mHours = v128;
    v40 = (*(*v37 + 64))(v37);
    HALB_CommandGate::ExecuteCommand(v40, &__p);
  }

  HALS_ObjectMap::ReleaseObject(v39, v38);
  if (*v128)
  {
    *&v128[8] = *v128;
    operator delete(*v128);
  }

  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  v41 = *(*(v1 + 24) + 88);
  if (v41)
  {
    (*(*v41 + 128))(v41);
  }

  for (i = *(v1 + 2088); i; i = *i)
  {
    if (i[40] == 1)
    {
      v43 = atomic_load(i + 42);
      if (v43)
      {
        HALS_MultiTap::writer_stop(*(i + 3), *(*(v1 + 24) + 16));
        atomic_store(0, i + 42);
        atomic_store(0, i + 41);
      }
    }
  }

  LOBYTE(v123) = 0;
  *&v122 = caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_0>;
  *(&v122 + 1) = &v123;
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContextDescription::ApplyToInput(caulk::function_ref<int ()(unsigned int,HALS_IOStreamInfo&)>)::$_0>;
  *&buf[8] = &v122;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*(v1 + 1592), *(v1 + 1600), buf);
  LOBYTE(v121) = 0;
  *&v122 = caulk::function_ref<int ()(unsigned int,HALS_IOStackDescription &,unsigned int,unsigned int,HALS_IOStreamInfo &)>::functor_invoker<HALS_IOContextDescription::FreeProcessors(void)::$_1>;
  *(&v122 + 1) = &v121;
  *buf = _ZN5caulk12function_refIFiRN15VisitableVectorI23HALS_IOStackDescriptionE13ItemWithIndexEEE15functor_invokerIZN25HALS_IOContextDescription13ApplyToOutputIJEEEiNS0_IFijRS2_jjR17HALS_IOStreamInfoEEEDpRKT_EUlS5_E_EEiRKNS_7details15erased_callableIS6_EES5_;
  *&buf[8] = &v122;
  VisitableVector<HALS_IOStackDescription>::apply<>(*(v1 + 1616), *(v1 + 1624), buf);
  HALS_IOContextDescription::UnregisterBuffers((v1 + 1536));
  LOBYTE(v121) = 0;
  v44 = *(v1 + 1776);
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_BufferFactory::free_buffers(void)::$_0>;
  *&buf[8] = &v121;
  VisitableVector<HALS_IOStreamInfo>::apply<>(*v44, v44[1], buf);
  v45 = *(v1 + 1784);
  *buf = &unk_1F596E948;
  *v128 = buf;
  v123 = buf;
  *&v122 = caulk::function_ref<int ()(VisitableVector<HALS_IOStackDescription>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGrid::apply_to_streams(std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>;
  *(&v122 + 1) = &v123;
  VisitableVector<HALS_IOStackDescription>::apply<>(*v45, v45[1], &v122);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](buf);
  v46 = *(v1 + 1744);
  if (v46)
  {
    (*(*v46 + 8))(v46);
  }

  *(v1 + 1744) = 0;
  *(v1 + 1136) = 0;
  if (v117)
  {
    operator delete(v117);
  }

  LOBYTE(v122) = 0;
  v117 = &unk_1F5987718;
  v118 = (v1 + 1536);
  *buf = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOContext_Legacy_Impl::TeardownForIsolatedIO(void)::$_0>;
  *&buf[8] = &v122;
  VisitableVector<HALS_IOStreamInfo>::do_apply<std::vector<HALS_IOStreamInfo>,VisitableVector<HALS_IOStreamInfo>::ItemWithIndex,HALS_IOContextDescription::ActiveInputsOnly>(*(v1 + 1592), *(v1 + 1600), buf, &v117);
  *(v1 + 1480) = *(v1 + 1472);
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v47 = *(*(v1 + 24) + 16);
    v48 = *(v1 + 1352);
    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2056;
    v126 = 1024;
    v127 = v47;
    *v128 = 2048;
    *&v128[2] = v48;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  IO Stopped Context %u after %lld frames.", buf, 0x22u);
  }

  HALS_IOContext_Legacy_Impl::SendIsRunningNotifications(v1);
  v49 = *(v1 + 24);
  v50 = *(v49 + 16);
  if ((*(*(v49 + 72) + 44) & 1) == 0)
  {
    HALS_IOContext_Legacy_Impl::ReleasePowerAssertions(v1);
  }

  v117 = 0;
  v118 = 0;
  HALS_System::GetInstance(buf, 0, &v117);
  HALS_System::SetIOContextIsRunning(*buf, v50, 0);
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  kdebug_trace();
  v51 = HALS_ObjectMap::CopyObjectByObjectID(*(v1 + 1552));
  v52 = *(v1 + 1560);
  v53 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (v51 && v52)
  {
    if (!v53)
    {
      goto LABEL_92;
    }

    v55 = (*(*v51 + 224))(v51);
    v56 = *(v1 + 1096);
    *buf = 136316418;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2081;
    v126 = 1024;
    v127 = v50;
    *v128 = 2082;
    *&v128[2] = v52 + 112;
    *&v128[10] = 2082;
    *&v128[12] = v55;
    v129 = 1024;
    v130 = v56;
    v57 = MEMORY[0x1E69E9C10];
    v58 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit: %u %{public}s (%{public}s): stopping with error %d";
    v59 = 50;
  }

  else
  {
    if (!v53)
    {
      goto LABEL_92;
    }

    v60 = *(v1 + 1096);
    *buf = 136315906;
    *&buf[4] = "HALS_IOContext_Legacy_Impl.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 2085;
    v126 = 1024;
    v127 = v50;
    *v128 = 1024;
    *&v128[2] = v60;
    v57 = MEMORY[0x1E69E9C10];
    v58 = "%25s:%-5d  HALS_IOContext_Legacy_Impl::IOWorkLoopDeinit: %u: stopping with error %d";
    v59 = 30;
  }

  _os_log_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_DEFAULT, v58, buf, v59);
LABEL_92:
  HALS_ObjectMap::ReleaseObject(v51, v54);
  v61 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v62 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v62)
  {
    atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!*MEMORY[0x1E69E3C08])
  {
    goto LABEL_140;
  }

  v63 = *(v61 + 8);
  v64 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
  *(v64 + 16) = 0;
  *(v64 + 20) = 2;
  *(v64 + 24) = "HALS_IOContext_Legacy_Impl.cpp";
  *(v64 + 32) = 2090;
  *v64 = &unk_1F5982E20;
  *(v64 + 8) = 0;
  caulk::concurrent::messenger::enqueue(v63, v64);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

LABEL_97:
  result = *(v1 + 289);
  v66 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE612F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint8_t buf, int a36, int a37, __int16 a38)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    *(v38 + 289) = 1;
    __cxa_end_catch();
    JUMPOUT(0x1DE612E40);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE612FF0(void *a1, int a2)
{
  if (a2)
  {
    std::pair<std::vector<unsigned int>,std::vector<unsigned int>>::~pair(v2 - 160);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE6124B4);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE612FFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1DE612FE0);
  }

  JUMPOUT(0x1DE6130F0);
}

void sub_1DE613008(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a26)
    {
      operator delete(a26);
    }

    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE61299CLL);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE6130D8(uint64_t a1, HALS_Object *a2)
{
  if (a2)
  {
    HALS_ObjectMap::ReleaseObject(v2, a2);
    JUMPOUT(0x1DE6130E8);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE613104(uint64_t a1, int a2)
{
  if (a2)
  {
    if (v2)
    {
      JUMPOUT(0x1DE613114);
    }

    JUMPOUT(0x1DE61313CLL);
  }

  JUMPOUT(0x1DE612FE0);
}

void sub_1DE61311C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1DE613124);
  }

  JUMPOUT(0x1DE612FE0);
}

IOPMAssertionID **std::default_delete<HALS_IOContext_PowerAssertions>::operator()[abi:ne200100](IOPMAssertionID **result)
{
  if (result)
  {
    v1 = result;
    std::unique_ptr<HALB_PowerAssertion>::reset[abi:ne200100](result + 1, 0);
    std::unique_ptr<HALB_PowerAssertion>::reset[abi:ne200100](v1, 0);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

void std::__shared_ptr_emplace<HALS_DSPHostIntegrationPoint_IOContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5983410;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<HALS_IOContext_PowerAssertions  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__114default_deleteI30HALS_IOContext_PowerAssertionsEE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<HALS_IOContext_PowerAssertions  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

__CFString *AMCP::HAL::pack_property_data(int a1, unsigned int a2, CFStringRef *a3)
{
  switch(a1)
  {
    case 1:
    case 5:
    case 18:
      v3 = MEMORY[0x1E695DEF8];
      v4 = a2;
      goto LABEL_24;
    case 2:
    case 3:
    case 7:
    case 10:
      if (a2 < 4)
      {
        goto LABEL_18;
      }

      v3 = MEMORY[0x1E695DEF8];
      v4 = 4;
      goto LABEL_24;
    case 4:
    case 11:
      v3 = MEMORY[0x1E695DEF8];
      v4 = a2 & 0xFFFFFFFC;
      goto LABEL_24;
    case 6:
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      Length = CFStringGetLength(*a3);
      std::vector<unsigned short>::vector[abi:ne200100](&__p, Length);
      v17.length = (v14 - __p) >> 1;
      v17.location = 0;
      CFStringGetCharacters(v10, v17, __p);
      v7 = [MEMORY[0x1E695DEF8] dataWithBytes:__p length:v14 - __p];
      goto LABEL_21;
    case 8:
      if (a2 < 8)
      {
        goto LABEL_18;
      }

      v3 = MEMORY[0x1E695DEF8];
      v4 = 8;
      goto LABEL_24;
    case 9:
    case 17:
      v3 = MEMORY[0x1E695DEF8];
      v4 = a2 & 0xFFFFFFF8;
      goto LABEL_24;
    case 12:
      if (a2 < 0x28)
      {
        goto LABEL_18;
      }

      v3 = MEMORY[0x1E695DEF8];
      v4 = 40;
LABEL_24:
      v9 = [v3 dataWithBytes:a3 length:v4];
      goto LABEL_25;
    case 13:
      v3 = MEMORY[0x1E695DEF8];
      v4 = 40 * (a2 / 0x28uLL);
      goto LABEL_24;
    case 14:
      v3 = MEMORY[0x1E695DEF8];
      v4 = 56 * (a2 / 0x38uLL);
      goto LABEL_24;
    case 15:
      if (a2 < 8)
      {
        goto LABEL_18;
      }

      v8 = *a3;
      if (!v8)
      {
        goto LABEL_18;
      }

      v9 = [MEMORY[0x1E696AE40] dataWithPropertyList:v8 format:100 options:0 error:0];
LABEL_25:
      v10 = v9;
      break;
    case 16:
      if (a2 < 8 || !*a3)
      {
        goto LABEL_18;
      }

      v5 = CFURLGetString(*a3);
      v6 = CFStringGetLength(v5);
      std::vector<unsigned short>::vector[abi:ne200100](&__p, v6);
      v16.length = (v14 - __p) >> 1;
      v16.location = 0;
      CFStringGetCharacters(v5, v16, __p);
      v7 = [MEMORY[0x1E695DEF8] dataWithBytes:__p length:v14 - __p];
LABEL_21:
      v10 = v7;
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }

      break;
    default:
LABEL_18:
      v10 = 0;
      break;
  }

  return v10;
}

uint64_t AMCP::HAL::unpack_property_data(void *a1, int a2, unsigned int *a3, void *a4)
{
  v7 = 2003329396;
  v8 = a1;
  v9 = v8;
  v10 = *a3;
  switch(a2)
  {
    case 1:
    case 5:
    case 18:
      v11 = v8;
      if (!v11)
      {
        goto LABEL_64;
      }

      v12 = v11;
      if (a4)
      {
        v13 = *a3;
        if ([v11 length] > v13)
        {
          goto LABEL_63;
        }

        v14 = [v12 length];
        *a3 = v14;
        [v12 getBytes:a4 length:v14];
      }

      else
      {
        *a3 = [v11 length];
      }

      goto LABEL_75;
    case 2:
      v15 = v8;
      if (!v15)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        goto LABEL_67;
      }

      if (*a3 >= 4)
      {
        goto LABEL_44;
      }

      goto LABEL_63;
    case 3:
    case 10:
      v15 = v8;
      if (!v15)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        goto LABEL_67;
      }

      if (*a3 >= 4)
      {
        goto LABEL_44;
      }

      goto LABEL_63;
    case 4:
    case 11:
      v16 = v8;
      v17 = v16;
      if (!a4)
      {
        v42 = [v16 length] & 0xFFFFFFFC;
        goto LABEL_74;
      }

      if (*a3 - 1 < 3)
      {
        goto LABEL_63;
      }

      v18 = [v16 length];
      v19 = *a3;
      if (*a3 >= v18)
      {
        v19 = v18;
      }

      *a3 = v19 & 0xFFFFFFFC;
      [v17 getBytes:a4 length:?];
      goto LABEL_75;
    case 6:
      v41 = v8;
      if (!v41)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        goto LABEL_66;
      }

      if (*a3 < 8)
      {
        goto LABEL_63;
      }

      *a3 = 8;
      v34 = CFStringCreateWithCharacters(0, [v41 bytes], objc_msgSend(v41, "length") >> 1);
      goto LABEL_62;
    case 7:
      v15 = v8;
      if (!v15)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
LABEL_67:
        v42 = 4;
        goto LABEL_74;
      }

      if (*a3 < 4)
      {
        goto LABEL_63;
      }

LABEL_44:
      *a3 = 4;
      [v15 getBytes:a4 length:4];
      goto LABEL_75;
    case 8:
      v40 = v8;
      if (!v40)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
LABEL_66:
        v42 = 8;
        goto LABEL_74;
      }

      if (*a3 < 8)
      {
        goto LABEL_63;
      }

      *a3 = 8;
      [v40 getBytes:a4 length:8];
      goto LABEL_75;
    case 9:
      v28 = v8;
      v29 = v28;
      if (!a4)
      {
        goto LABEL_71;
      }

      if (*a3 - 1 < 7)
      {
        goto LABEL_63;
      }

      v30 = [v28 length];
      v31 = *a3;
      if (*a3 >= v30)
      {
        v31 = v30;
      }

      goto LABEL_29;
    case 12:
      v32 = v8;
      if (!v32)
      {
        goto LABEL_64;
      }

      if (!a4)
      {
        v42 = 40;
        goto LABEL_74;
      }

      if (*a3 < 0x28)
      {
        goto LABEL_63;
      }

      *a3 = 40;
      [v32 getBytes:a4 length:40];
      goto LABEL_75;
    case 13:
      v36 = v8;
      v37 = v36;
      if (!a4)
      {
        v42 = 40 * (([v36 length] & 0xFFFFFFF8) / 0x28);
        goto LABEL_74;
      }

      if (*a3 - 1 < 0x27)
      {
        goto LABEL_63;
      }

      v38 = [v36 length];
      v39 = *a3;
      if (*a3 >= v38)
      {
        v39 = v38;
      }

      *a3 = 40 * (v39 / 0x28);
      [v37 getBytes:a4 length:?];
      goto LABEL_75;
    case 14:
      v24 = v8;
      v25 = v24;
      if (!a4)
      {
        v42 = 56 * ([v24 length] / 0x38);
        goto LABEL_74;
      }

      if (*a3 - 1 < 0x37)
      {
        goto LABEL_63;
      }

      v26 = [v24 length];
      v27 = *a3;
      if (*a3 >= v26)
      {
        v27 = v26;
      }

      *a3 = 56 * (v27 / 0x38);
      [v25 getBytes:a4 length:?];
      goto LABEL_75;
    case 15:
      v33 = v8;
      if (!a4)
      {
        goto LABEL_66;
      }

      if (*a3 < 8)
      {
        goto LABEL_63;
      }

      *a3 = 8;
      v34 = [MEMORY[0x1E696AE40] propertyListWithData:v33 options:0 format:0 error:0];
LABEL_62:
      *a4 = v34;
      goto LABEL_75;
    case 16:
      v20 = v8;
      if (!a4)
      {
        goto LABEL_66;
      }

      if (*a3 != 8)
      {
        goto LABEL_63;
      }

      v21 = CFStringCreateWithCharacters(0, [v20 bytes], objc_msgSend(v20, "length") >> 1);
      cf = v21;
      if (v21)
      {
        v22 = CFGetTypeID(v21);
        if (v22 != CFStringGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v23 = cf;
      }

      else
      {
        v23 = 0;
      }

      *a4 = CFURLCreateWithString(0, v23, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      goto LABEL_75;
    case 17:
      v28 = v8;
      v29 = v28;
      if (!a4)
      {
LABEL_71:
        v42 = [v28 length] & 0xFFFFFFF8;
LABEL_74:
        *a3 = v42;
        goto LABEL_75;
      }

      if (*a3 - 1 >= 7)
      {
        v35 = [v28 length];
        v31 = *a3;
        if (*a3 >= v35)
        {
          v31 = v35;
        }

LABEL_29:
        *a3 = v31 & 0xFFFFFFF8;
        [v29 getBytes:a4 length:?];
LABEL_75:

        v7 = 0;
        goto LABEL_76;
      }

LABEL_63:
      v7 = 561211770;
LABEL_64:

LABEL_65:
      bzero(a4, v10);
      *a3 = 0;
LABEL_76:

      return v7;
    default:
      goto LABEL_65;
  }
}

void sub_1DE613A94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  __cxa_free_exception(v10);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a10);

  __clang_call_terminate(a1);
}

CFDictionaryRef HALS_ClockDevice::GetPropertyData(CFDictionaryRef this, uint64_t a2, AudioObjectPropertyAddress *a3, unsigned int a4, unsigned int *a5, uint64_t *a6, unsigned int a7, const void *a8, HALS_Client *a9)
{
  v23 = *MEMORY[0x1E69E9840];
  mSelector = a3->mSelector;
  if (a3->mSelector > 1819569762)
  {
    if (mSelector > 1853059699)
    {
      if (mSelector == 1853059700)
      {
        if (a4 <= 7)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v19 = 136315394;
          v20 = "HALS_ClockDevice.cpp";
          v21 = 1024;
          v22 = 346;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  HALS_Device::_GetPropertyData: bad property data size for kAudioClockDevicePropertyNominalSampleRate";
          goto LABEL_48;
        }

        *a6 = 0;
        goto LABEL_28;
      }

      if (mSelector == 1953653102)
      {
        if (a4 <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            goto LABEL_49;
          }

          v19 = 136315394;
          v20 = "HALS_ClockDevice.cpp";
          v21 = 1024;
          v22 = 283;
          v13 = MEMORY[0x1E69E9C10];
          v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyTransportType";
          goto LABEL_48;
        }

        goto LABEL_33;
      }

      if (mSelector != 1969841184)
      {
        goto LABEL_37;
      }

LABEL_12:
      if (a4 <= 7)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        v19 = 136315394;
        v20 = "HALS_ClockDevice.cpp";
        v21 = 1024;
        v22 = 274;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  HALS_Control::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceUID";
        goto LABEL_48;
      }

      this = PropertyListDeepImmutableCopy(*(this + 13));
      *a6 = this;
LABEL_28:
      v15 = 8;
LABEL_35:
      *a5 = v15;
      goto LABEL_36;
    }

    if (mSelector != 1819569763)
    {
      v12 = 1853059619;
LABEL_18:
      if (mSelector == v12)
      {
        *a5 = 0;
LABEL_36:
        v16 = *MEMORY[0x1E69E9840];
        return this;
      }

      goto LABEL_37;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v19 = 136315394;
      v20 = "HALS_ClockDevice.cpp";
      v21 = 1024;
      v22 = 319;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyLatency";
      goto LABEL_48;
    }

LABEL_33:
    *a6 = 0;
    goto LABEL_34;
  }

  if (mSelector <= 1668639075)
  {
    if (mSelector != 1668049764)
    {
      v12 = 1668575852;
      goto LABEL_18;
    }

    if (a4 <= 3)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      v19 = 136315394;
      v20 = "HALS_ClockDevice.cpp";
      v21 = 1024;
      v22 = 292;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyClockDomain";
      goto LABEL_48;
    }

    goto LABEL_33;
  }

  switch(mSelector)
  {
    case 1668639076:
      goto LABEL_12;
    case 1735354734:
      if (a4 <= 3)
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        v19 = 136315394;
        v20 = "HALS_ClockDevice.cpp";
        v21 = 1024;
        v22 = 310;
        v13 = MEMORY[0x1E69E9C10];
        v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsRunning";
        goto LABEL_48;
      }

      goto LABEL_33;
    case 1818850926:
      if (a4 > 3)
      {
        *a6 = 1;
LABEL_34:
        v15 = 4;
        goto LABEL_35;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        *exception = off_1F5991DD8;
        exception[2] = 561211770;
      }

      v19 = 136315394;
      v20 = "HALS_ClockDevice.cpp";
      v21 = 1024;
      v22 = 301;
      v13 = MEMORY[0x1E69E9C10];
      v14 = "%25s:%-5d  HALS_ClockDevice::GetPropertyData: bad property data size for kAudioClockDevicePropertyDeviceIsAlive";
LABEL_48:
      _os_log_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, v14, &v19, 0x12u);
      goto LABEL_49;
  }

LABEL_37:
  v17 = *MEMORY[0x1E69E9840];

  return HALS_Object::GetPropertyData(this, a2, a3, a4, a5, a6);
}

uint64_t HALS_ClockDevice::GetPropertyDataSize(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 8;
  if (*a3 > 1819569762)
  {
    if (v3 > 1853059699)
    {
      if (v3 != 1853059700 && v3 != 1969841184)
      {
        v5 = 1953653102;
LABEL_19:
        if (v3 == v5)
        {
          return 4;
        }

        return HALS_Object::GetPropertyDataSize(8, a2, a3);
      }

      return result;
    }

    if (v3 == 1819569763)
    {
      return 4;
    }

    v7 = 1853059619;
LABEL_17:
    if (v3 == v7)
    {
      return 0;
    }

    return HALS_Object::GetPropertyDataSize(8, a2, a3);
  }

  if (v3 <= 1668639075)
  {
    if (v3 == 1668049764)
    {
      return 4;
    }

    v7 = 1668575852;
    goto LABEL_17;
  }

  if (v3 != 1668639076)
  {
    if (v3 != 1735354734)
    {
      v5 = 1818850926;
      goto LABEL_19;
    }

    return 4;
  }

  return result;
}

uint64_t HALS_ClockDevice::IsPropertySettable(uint64_t a1, uint64_t a2, int *a3)
{
  result = 0;
  v4 = *a3;
  if (*a3 <= 1819569762)
  {
    if (v4 > 1735354733)
    {
      v6 = v4 == 1735354734;
      v7 = 1818850926;
    }

    else
    {
      v6 = v4 == 1668049764;
      v7 = 1668639076;
    }
  }

  else
  {
    if (v4 > 1853059699)
    {
      if (v4 != 1969841184 && v4 != 1953653102)
      {
        if (v4 == 1853059700)
        {
          return 1;
        }

        return HALS_Object::IsPropertySettable(0, a2, a3);
      }

      return result;
    }

    v6 = v4 == 1819569763;
    v7 = 1853059619;
  }

  if (!v6 && v4 != v7)
  {
    return HALS_Object::IsPropertySettable(0, a2, a3);
  }

  return result;
}

uint64_t HALS_ClockDevice::HasProperty(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  result = 1;
  if (*a3 <= 1819569762)
  {
    if (v3 <= 1668575851)
    {
      if (v3 != 1650682995 && v3 != 1668047219 && v3 != 1668049764)
      {
        return 0;
      }

      return result;
    }

    if (v3 > 1735354733)
    {
      if (v3 == 1735354734)
      {
        return result;
      }

      v5 = 1818850926;
    }

    else
    {
      if (v3 == 1668575852)
      {
        return result;
      }

      v5 = 1668639076;
    }
  }

  else if (v3 > 1870098019)
  {
    if (v3 > 1953653101)
    {
      if (v3 == 1953653102)
      {
        return result;
      }

      v5 = 1969841184;
    }

    else
    {
      if (v3 == 1870098020)
      {
        return result;
      }

      v5 = 1937007734;
    }
  }

  else if (v3 > 1853059699)
  {
    if (v3 == 1853059700)
    {
      return result;
    }

    v5 = 1869638759;
  }

  else
  {
    if (v3 == 1819569763)
    {
      return result;
    }

    v5 = 1853059619;
  }

  if (v3 != v5)
  {
    return 0;
  }

  return result;
}

uint64_t HALS_ClockDevice::GetMIGDispatchQueue(HALS_ClockDevice *this)
{
  return *(this + 12);
}

{
  return *(this + 12);
}

uint64_t HALS_ClockDevice::GetCommandGate(HALS_ClockDevice *this)
{
  return *(this + 10);
}

{
  return *(this + 10);
}

void HALS_ClockDevice::HALS_ClockDevice(HALS_ClockDevice *this, HALS_DeviceManager *a2, const __CFString *a3, uint64_t a4, HALS_Object *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  HALS_Object::HALS_Object(this, 1633905771, 0, a2, a5);
  *(v6 + 64) = 0;
  *(v6 + 56) = 0;
  *(v6 + 48) = v6 + 56;
  *(v6 + 72) = 0;
  *v6 = &unk_1F5983460;
  *(v6 + 104) = a3;
  v8 = (v6 + 104);
  *(v6 + 88) = 0;
  *(v6 + 96) = 0;
  *(v6 + 80) = 0;
  *(v6 + 112) = 1;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 0u;
  *(v6 + 152) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 0u;
  *(v6 + 232) = 0u;
  *(v6 + 248) = 0u;
  *(v6 + 264) = 0u;
  *(v6 + 280) = 0u;
  *(v6 + 296) = 0u;
  *(v6 + 312) = 0u;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0u;
  if (a3)
  {
    *v15 = 256;
    CACFString::GetCString(a3, (v6 + 120), v15, v7);
    if (*v8)
    {
      v9 = CFStringGetLength(*v8) + 1;
    }

    else
    {
      v9 = 1;
    }

    *v14 = v9;
    MEMORY[0x1EEE9AC00]();
    CACFString::GetCString(*v8, (v14 - ((v10 + 15) & 0x1FFFFFFF0) + 8), v14, v11);
    operator new[]();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    buf = 136315394;
    buf_4 = "HALS_ClockDevice.cpp";
    v18 = 1024;
    v19 = 38;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_ClockDevice::HALS_ClockDevice: all clock devices have to have a UID", &buf, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  *exception = off_1F5991DD8;
  exception[2] = 1852797029;
}

void sub_1DE614648(_Unwind_Exception *a1)
{
  MEMORY[0x1E12C1700](v3, v4);
  CACFString::~CACFString(v2);
  v6 = *(v1 + 11);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  HALS_IODevice::~HALS_IODevice(v1);
  _Unwind_Resume(a1);
}

void HALS_IODevice::~HALS_IODevice(HALS_IODevice *this)
{
  *this = &unk_1F598F798;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 7));

  HALS_Object::~HALS_Object(this);
}

void HALS_ClockDevice::~HALS_ClockDevice(HALS_ClockDevice *this)
{
  *this = &unk_1F5983460;
  v2 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    AMCP::Utility::Dispatch_Queue::~Dispatch_Queue(v3);
    MEMORY[0x1E12C1730]();
  }

  CACFString::~CACFString((this + 104));
  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_1F598F798;
  std::__tree<DSP_Host_Types::AudioProcessingType>::destroy(*(this + 7));

  HALS_Object::~HALS_Object(this);
}

uint64_t caulk::function_ref<int ()(VisitableVector<HALS_IOStreamGroup>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGroupList::apply_to_streams(unsigned long,std::function<int ()(unsigned long,HALS_IOStreamInfo &)>)::$_0>(uint64_t **a1, uint64_t **a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v3 = **a1;
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::__value_func[abi:ne200100](v9, (*a1 + 1));
  v8[0] = v9;
  v8[1] = v3;
  *&v7 = caulk::function_ref<int ()(VisitableVector<HALS_IOStreamInfo>::ItemWithIndex &)>::functor_invoker<HALS_IOStreamGroup::apply_to_streams(unsigned long,std::function<int ()(unsigned long,HALS_IOStreamInfo&)>)::$_0>;
  *(&v7 + 1) = v8;
  v4 = VisitableVector<HALS_IOStreamInfo>::apply<>(*v2, v2[1], &v7);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](v9);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void sub_1DE614860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<int ()(unsigned long,HALS_IOStreamInfo &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

BOOL HALS_Stream::GetStreamIsActive(unsigned int *a1)
{
  v1 = a1[4];
  v3 = 0x676C6F6273616374;
  v4 = 0;
  v5 = 0;
  (*(*a1 + 120))(a1, v1, &v3, 4, &v5, &v5 + 4, 0, 0, 0);
  return HIDWORD(v5) != 0;
}

AudioConverterRef **std::unique_ptr<FormatConverter>::reset[abi:ne200100](AudioConverterRef **result, AudioConverterRef *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    AudioConverterDispose(*v2);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t std::__shared_ptr_emplace<HALS_IOStreamDSP>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  if (*(a1 + 128))
  {
    std::vector<std::vector<std::byte>>::clear[abi:ne200100]((a1 + 128));
    operator delete(*(a1 + 128));
  }

  std::unique_ptr<AudioBufferList,std::function<void ()(AudioBufferList*)>>::reset[abi:ne200100]((a1 + 88), 0);
  std::__function::__value_func<void ()(AudioBufferList *)>::~__value_func[abi:ne200100](a1 + 96);
  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    for (i = *(a1 + 40); i != v4; std::allocator_traits<std::allocator<HALS_IOStreamDSP::InputChannelData>>::destroy[abi:ne200100]<HALS_IOStreamDSP::InputChannelData,void,0>(i))
    {
      i -= 88;
    }

    *(a1 + 40) = v4;
    operator delete(*(a1 + 32));
  }

  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

void std::__shared_ptr_emplace<HALS_IOStreamDSP>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5983658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t *HALS_IOEngine2_StreamInfo::CreateCaptureFile(uint64_t *result)
{
  v1 = result;
  v64 = *MEMORY[0x1E69E9840];
  v2 = *(result + 17);
  v55 = *(result + 15);
  v56 = v2;
  v57 = result[19];
  if (*(result + 6) == 1)
  {
    v3 = result[25];
    v4 = *(result + 7);
    v55 = *(result + 5);
    v56 = v4;
    v57 = result[9];
    if (!v3 && DWORD2(v55) == 1819304813)
    {
      v5 = 1;
LABEL_10:
      v53 = 0;
      v54 = 0uLL;
      v6 = *result;
      v7 = (*(**v1 + 336))();
      v8 = (*(*v7 + 224))(v7);
      std::string::basic_string[abi:ne200100]<0>(__p, v8);
      LODWORD(v58) = 0;
      v9 = v54;
      if (v54 >= *(&v54 + 1))
      {
        v10 = std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__emplace_back_slow_path<HALB_CaptureFile_NameBuilder_Label,std::string const&>(&v53, &v58, __p);
      }

      else
      {
        std::construct_at[abi:ne200100]<HALB_CaptureFile_NameBuilder::ComponentBase,HALB_CaptureFile_NameBuilder_Label,std::string const&,HALB_CaptureFile_NameBuilder::ComponentBase*>(v54, 0, __p);
        v10 = v9 + 40;
      }

      *&v54 = v10;
      v11 = v1[2];
      if (v10 >= *(&v54 + 1))
      {
        v13 = 0xCCCCCCCCCCCCCCCDLL * ((v10 - v53) >> 3);
        if (v13 + 1 > 0x666666666666666)
        {
          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v14 = 0x999999999999999ALL * ((*(&v54 + 1) - v53) >> 3);
        if (v14 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v54 + 1) - v53) >> 3) >= 0x333333333333333)
        {
          v15 = 0x666666666666666;
        }

        else
        {
          v15 = v14;
        }

        v61 = &v53;
        if (v15)
        {
          std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v15);
        }

        v16 = 40 * v13;
        v58 = 0;
        v59 = v16;
        *(&v60 + 1) = 0;
        v63 = v11;
        v62 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v16 = 4;
        *(v16 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v16 + 16) = 0;
        *(v16 + 16) = v11;
        std::any::reset[abi:ne200100](&v62);
        *&v60 = v16 + 40;
        v17 = &v53[v16 / 8] - v54;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v53, v54, v17);
        v18 = v53;
        v19 = *(&v54 + 1);
        v53 = v17;
        v47 = v60;
        v54 = v60;
        *&v60 = v18;
        *(&v60 + 1) = v19;
        v58 = v18;
        v59 = v18;
        std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v58);
        v12 = v47;
      }

      else
      {
        v59 = v11;
        v58 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v10 = 4;
        *(v10 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v10 + 16) = 0;
        *(v10 + 16) = v11;
        std::any::reset[abi:ne200100](&v58);
        v12 = v10 + 40;
      }

      *&v54 = v12;
      v20 = v1[3];
      if (v12 >= *(&v54 + 1))
      {
        v22 = 0xCCCCCCCCCCCCCCCDLL * ((v12 - v53) >> 3);
        if (v22 + 1 > 0x666666666666666)
        {
          goto LABEL_61;
        }

        v23 = 0x999999999999999ALL * ((*(&v54 + 1) - v53) >> 3);
        if (v23 <= v22 + 1)
        {
          v23 = v22 + 1;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v54 + 1) - v53) >> 3) >= 0x333333333333333)
        {
          v24 = 0x666666666666666;
        }

        else
        {
          v24 = v23;
        }

        v61 = &v53;
        if (v24)
        {
          std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v24);
        }

        v25 = 40 * v22;
        v58 = 0;
        v59 = v25;
        *(&v60 + 1) = 0;
        v63 = v20;
        v62 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v25 = 3;
        *(v25 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v25 + 16) = 0;
        *(v25 + 16) = v20;
        std::any::reset[abi:ne200100](&v62);
        *&v60 = v25 + 40;
        v26 = &v53[v25 / 8] - v54;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v53, v54, v26);
        v27 = v53;
        v28 = *(&v54 + 1);
        v53 = v26;
        v48 = v60;
        v54 = v60;
        *&v60 = v27;
        *(&v60 + 1) = v28;
        v58 = v27;
        v59 = v27;
        std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v58);
        v21 = v48;
      }

      else
      {
        v59 = v20;
        v58 = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *v12 = 3;
        *(v12 + 8) = std::__any_imp::_SmallHandler<unsigned int>::__handle[abi:ne200100];
        *(v12 + 16) = 0;
        *(v12 + 16) = v20;
        std::any::reset[abi:ne200100](&v58);
        v21 = v12 + 40;
      }

      *&v54 = v21;
      if (v21 < *(&v54 + 1))
      {
        v59 = v5;
        v58 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *v21 = 5;
        *(v21 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *(v21 + 16) = 0;
        *(v21 + 16) = v5;
        std::any::reset[abi:ne200100](&v58);
        v29 = v21 + 40;
        goto LABEL_46;
      }

      v30 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v53) >> 3);
      if (v30 + 1 <= 0x666666666666666)
      {
        v31 = 0x999999999999999ALL * ((*(&v54 + 1) - v53) >> 3);
        if (v31 <= v30 + 1)
        {
          v31 = v30 + 1;
        }

        if (0xCCCCCCCCCCCCCCCDLL * ((*(&v54 + 1) - v53) >> 3) >= 0x333333333333333)
        {
          v32 = 0x666666666666666;
        }

        else
        {
          v32 = v31;
        }

        v61 = &v53;
        if (v32)
        {
          std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v32);
        }

        v33 = 40 * v30;
        v58 = 0;
        v59 = v33;
        *(&v60 + 1) = 0;
        v63 = v5;
        v62 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *v33 = 5;
        *(v33 + 8) = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
        *(v33 + 16) = 0;
        *(v33 + 16) = v5;
        std::any::reset[abi:ne200100](&v62);
        *&v60 = v33 + 40;
        v34 = &v53[v33 / 8] - v54;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v53, v54, v34);
        v35 = v53;
        v36 = *(&v54 + 1);
        v53 = v34;
        v49 = v60;
        v54 = v60;
        *&v60 = v35;
        *(&v60 + 1) = v36;
        v58 = v35;
        v59 = v35;
        std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v58);
        v29 = v49;
LABEL_46:
        *&v54 = v29;
        v37 = *(v1 + 20);
        if (v29 >= *(&v54 + 1))
        {
          v39 = 0xCCCCCCCCCCCCCCCDLL * ((v29 - v53) >> 3);
          if (v39 + 1 > 0x666666666666666)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v40 = 0x999999999999999ALL * ((*(&v54 + 1) - v53) >> 3);
          if (v40 <= v39 + 1)
          {
            v40 = v39 + 1;
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((*(&v54 + 1) - v53) >> 3) >= 0x333333333333333)
          {
            v41 = 0x666666666666666;
          }

          else
          {
            v41 = v40;
          }

          v61 = &v53;
          if (v41)
          {
            std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>::allocate_at_least[abi:ne200100](v41);
          }

          v42 = 40 * v39;
          v58 = 0;
          v59 = v42;
          *(&v60 + 1) = 0;
          v63 = v37;
          v62 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *v42 = 2;
          *(v42 + 8) = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *(v42 + 16) = 0;
          *(v42 + 16) = v37;
          std::any::reset[abi:ne200100](&v62);
          *&v60 = v42 + 40;
          v43 = &v53[v42 / 8] - v54;
          std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HALB_CaptureFile_NameBuilder::ComponentBase>,HALB_CaptureFile_NameBuilder::ComponentBase*>(v53, v54, v43);
          v44 = v53;
          v45 = *(&v54 + 1);
          v53 = v43;
          v50 = v60;
          v54 = v60;
          *&v60 = v44;
          *(&v60 + 1) = v45;
          v58 = v44;
          v59 = v44;
          std::__split_buffer<HALB_CaptureFile_NameBuilder::ComponentBase>::~__split_buffer(&v58);
          v38 = v50;
        }

        else
        {
          v59 = v37;
          v58 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *v29 = 2;
          *(v29 + 8) = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
          *(v29 + 16) = 0;
          *(v29 + 16) = v37;
          std::any::reset[abi:ne200100](&v58);
          v38 = v29 + 40;
        }

        *&v54 = v38;
        if (v52 < 0)
        {
          operator delete(__p[0]);
        }

        operator new();
      }

LABEL_61:
      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }
  }

  else if (!result[25] && DWORD2(v55) == 1819304813)
  {
    if (*(result + 21))
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  v46 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE6151C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  *(v18 - 120) = &a17;
  std::vector<HALB_CaptureFile_NameBuilder::ComponentBase>::__destroy_vector::operator()[abi:ne200100]((v18 - 120));
  _Unwind_Resume(a1);
}

void *std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<AMCP::Direction>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](*(a4 + 8), "N4AMCP9DirectionE");
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<AMCP::Direction>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

void *std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100](int a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      *(a3 + 8) = *(a2 + 8);
      *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    *(a3 + 8) = *(a2 + 8);
    *a3 = std::__any_imp::_SmallHandler<HALB_CaptureFile_ReferenceStreamState>::__handle[abi:ne200100];
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
    v6 = std::type_info::operator==[abi:ne200100](*(a4 + 8), "37HALB_CaptureFile_ReferenceStreamState");
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<HALB_CaptureFile_ReferenceStreamState>::__id;
  }

  if (v6)
  {
    return (a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t std::vector<float,HALB_IOBufferManager_Server::Allocator<float>>::shrink_to_fit(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *result;
  v3 = *(result + 16) - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = result;
    v16 = result;
    if (v1 == v2)
    {
      Buffer = 0;
    }

    else
    {
      Buffer = HALB_IOBufferManager_Server::AllocateBuffer(v4 & 0xFFFFFFFC);
      v2 = *v5;
      v3 = *(v5 + 16) - *v5;
    }

    v7 = Buffer + 4 * (v4 >> 2);
    v12 = Buffer;
    v13 = v7;
    v14 = v7;
    v15 = v7;
    if (v4 < v3)
    {
      v8 = *(v5 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      v10 = *v5;
      *v5 = v9;
      *(v5 + 8) = v7;
      v11 = *(v5 + 16);
      *(v5 + 16) = v7;
      v14 = v10;
      v15 = v11;
      v12 = v10;
      v13 = v10;
    }

    return std::__split_buffer<float,HALB_IOBufferManager_Server::Allocator<float> &>::~__split_buffer(&v12);
  }

  return result;
}

void sub_1DE615480(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61546CLL);
}

AudioConverterRef *FormatConverter::FormatConverter(AudioConverterRef *a1, const AudioStreamBasicDescription *a2, const AudioStreamBasicDescription *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v4 = AudioConverterNew(a2, a3, a1);
  if (v4)
  {
    v9[0] = HIBYTE(v4);
    v9[1] = BYTE2(v4);
    v9[2] = BYTE1(v4);
    v7 = v4;
    v9[3] = v4;
    v9[4] = 0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v11 = "HALS_IOEngine2_StreamInfo.cpp";
      v12 = 1024;
      v13 = 292;
      v14 = 1024;
      v15 = v7;
      v16 = 2080;
      v17 = v9;
      _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  HALS_IOEngine2_StreamInfo::StartIO: couldn't create the format converter, Error: %d (%s)", buf, 0x22u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = off_1F5991DD8;
    exception[2] = v7;
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

uint64_t std::__split_buffer<float,HALB_IOBufferManager_Server::Allocator<float> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    HALB_IOBufferManager_Server::FreeBuffer(v4, (*(a1 + 24) - v4) & 0xFFFFFFFC);
  }

  return a1;
}

uint64_t HALS_IOEngine2_StreamInfo::GetPointersForMixBuffer(uint64_t this, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v4 = *(a2 + 36);
  if (v4)
  {
    v5 = v4 >= a4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 && ((v6 = *(a2 + 464), (*(a2 + 52) & 0x20) != 0) ? (v7 = 1) : (v7 = *(a2 + 68)), ((*(a2 + 472) - v6) >> 2) / v7 >= a4))
  {
    v14 = a3 % v4;
    v15 = *(a2 + 64);
    v16 = a3 % v4 + a4;
    v10 = v4 - a3 % v4;
    v17 = a3 % v4 - v4 + a4;
    v18 = v16 > v4;
    if (v16 <= v4)
    {
      v11 = 0;
    }

    else
    {
      v11 = a3 % v4 - v4 + a4;
    }

    if (v18)
    {
      v12 = v17 * v15;
    }

    else
    {
      v12 = 0;
    }

    if (v18)
    {
      v13 = *(a2 + 464);
    }

    else
    {
      v13 = 0;
    }

    if (v18)
    {
      v8 = v10 * v15;
    }

    else
    {
      v10 = a4;
      v8 = v15 * a4;
    }

    v9 = v15 * v14;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v6 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *this = v6;
  *(this + 8) = v9;
  *(this + 12) = v8;
  *(this + 16) = v10;
  *(this + 24) = v13;
  *(this + 32) = 0;
  *(this + 36) = v12;
  *(this + 40) = v11;
  return this;
}

uint64_t HALS_IOEngine2_StreamInfo::ApplyDSP(uint64_t a1, __int128 *a2, int a3, uint64_t *a4, uint64_t a5, uint64_t a6, double a7)
{
  v48 = *MEMORY[0x1E69E9840];
  result = **(a1 + 184);
  if (!result)
  {
    goto LABEL_13;
  }

  result = (*(*result + 16))(result);
  if (!result)
  {
    goto LABEL_13;
  }

  v15 = *(a1 + 184);
  v41 = *a2;
  v42 = a2[1];
  v43 = a2[2];
  v44 = a2[3];
  v17 = *a4;
  v16 = a4[1];
  v18 = (v16 - *a4) >> 4;
  v19 = *(v15 + 8);
  v20 = *(v15 + 16);
  v21 = 0x2E8BA2E8BA2E8BA3 * ((v20 - v19) >> 3);
  if (v18 != v21)
  {
    v33 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v33 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v35 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v36 = *v35;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 299;
      *&buf[18] = 2080;
      *&buf[20] = "inputStreams.size() == mInputChannelData.size()";
LABEL_28:
      _os_log_error_impl(&dword_1DE1F9000, v36, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s ", buf, 0x1Cu);
    }

LABEL_29:
    abort();
  }

  v40 = *(v17 + 4);
  v22 = *(v15 + 56);
  if (v16 != v17)
  {
    if (!(v18 >> 60))
    {
      std::allocator<HALS_DSPStreamData>::allocate_at_least[abi:ne200100](v18);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  if (v21)
  {
    v37 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v37 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v18);
    }

    v39 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v38 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v36 = *v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v36 = *v39;
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "HALS_IOStreamDSP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 269;
      *&buf[18] = 2080;
      *&buf[20] = "inputStreams.size() == mInputChannelData.size()";
      goto LABEL_28;
    }

    goto LABEL_29;
  }

  if (v20 != v19)
  {
    v23 = 1;
    v24 = 8;
    v25 = (v19 + 40);
    do
    {
      v27 = *v25;
      v25 += 11;
      v26 = v27;
      *v27 = 1;
      v28 = *(v24 - 8);
      v29 = 4 * v28 * *(v24 - 4);
      v30 = *v24;
      v24 += 16;
      v26[2] = v28;
      v26[3] = v29;
      *(v26 + 2) = v30;
      --v23;
    }

    while (v23);
  }

  v31 = *(v15 + 64);
  *v31 = 1;
  *(v31 + 8) = v22;
  *(v31 + 12) = 4 * v22 * v40;
  *(v31 + 16) = a5;
  result = *v15;
  if (*v15)
  {
    *buf = v41;
    *&buf[16] = v42;
    v46 = v43;
    v47 = v44;
    result = (*(*result + 96))(result, buf, a3 == 0, a4, v15 + 8, *(v15 + 64), a6, a7);
  }

LABEL_13:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t HALS_IOA2Engine2::_WriteToStream_Write(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  result = 560947818;
  if (*a6)
  {
    v8 = *(a3 + 168);
    if (v8)
    {
      v11 = *a6 + *(a6 + 8);
      v12 = *(*(a1 + 808) + 16);
      if (*(a3 + 128) == 1667326771)
      {
        v13 = 4;
      }

      else
      {
        v13 = *(a3 + 144);
      }

      v14 = *(a4 + 144) % v12;
      v15 = a5;
      if (v14 + a5 <= v12)
      {
        v16 = a5;
      }

      else
      {
        v16 = v12 - v14;
      }

      memcpy(&v8[v14 * v13], (*a6 + *(a6 + 8)), v16 * v13);
      if (v15 != v16)
      {
        memcpy(v8, (v11 + v16 * v13), (v15 - v16) * v13);
      }

      v17 = *(*(a1 + 1136) + 2024);
      if (v17 && (v18 = *(a4 + 144) + a5, v18 > *(v17 + 32)))
      {
        result = 0;
        *(v17 + 32) = v18;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t HALS_IOA2Engine2::_EndWriting(HALS_IOA2Engine2 *this, unsigned int a2, unsigned int a3, const HALS_IOEngineInfo *a4)
{
  v4 = *(this + 142);
  v5 = *(v4 + 2024);
  if (v5)
  {
    v6 = *(a4 + 82) + a3;
    if (v6 > *(v5 + 32))
    {
      *(v5 + 32) = v6;
    }
  }

  if (*(this + 1145) == 1)
  {
    v7 = *(a4 + 82);
    v8 = *(a4 + 83);
    HALS_IOA2UCDevice::DoIO((v4 + 1976));
  }

  return 0;
}

void HALS_IOA2Engine2::_ReadFromStream_Read(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t *a6)
{
  v6 = *a6;
  if (*a6)
  {
    v10 = (v6 + *(a6 + 2));
    v11 = *(a4 + 80);
    if (v11 >= 0.0)
    {
      v12 = *(a3 + 168);
      v13 = *(*(a1 + 808) + 16);
      if (*(a3 + 128) == 1667326771)
      {
        v14 = 4;
      }

      else
      {
        v14 = *(a3 + 144);
      }

      v15 = v11 % v13;
      if (v15 + a5 <= v13)
      {
        v16 = a5;
      }

      else
      {
        v16 = v13 - v15;
      }

      memcpy(v10, &v12[v15 * v14], v16 * v14);
      if (a5 != v16)
      {
        memcpy(&v10[v16 * v14], v12, (a5 - v16) * v14);
      }
    }

    else
    {
      bzero((v6 + *(a6 + 2)), a5);
    }

    v17 = *(*(a1 + 1136) + 2024);
    if (v17)
    {
      v18 = *(a4 + 80) + a5;
      if (v18 > *(v17 + 24))
      {
        *(v17 + 24) = v18;
      }
    }
  }
}

uint64_t HALS_IOA2Engine2::_BeginReading(HALS_IOA2Engine2 *this, unsigned int a2, unsigned int a3, const HALS_IOEngineInfo *a4)
{
  if (*(this + 1144) == 1)
  {
    v4 = fmax(*(a4 + 74), 0.0);
    v5 = *(a4 + 75);
    HALS_IOA2UCDevice::DoIO((*(this + 142) + 1976));
  }

  return 0;
}

uint64_t HALS_IOA2Engine2::_FirstIOThreadStarted(HALS_IOA2Engine2 *this, unsigned int a2, const HALS_IOEngineInfo *a3)
{
  v4 = *(this + 142);
  v8 = 0;
  HALB_UCObject::CopyProperty_BOOL((v4 + 1976), @"wants input trap", &v8);
  *(this + 1144) = v8;
  v5 = *(this + 142);
  v9 = 0;
  HALB_UCObject::CopyProperty_BOOL((v5 + 1976), @"wants output trap", &v9);
  *(this + 1145) = v9;
  v6 = *(*(this + 142) + 2024);
  if (v6)
  {
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
  }

  return 0;
}

void HALS_IOA2Engine2::_TellHardwareToStop(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*(*(a1 + 1136) + 1976) + 48))(*(a1 + 1136) + 1976);
  if (a3 == 1)
  {
    if (v6)
    {
      v7 = (*(a1 + 1136) + 1976);
      v8 = 1;
LABEL_6:
      HALS_IOA2UCDevice::StopIOWithFlags(v7, v8);
    }
  }

  else
  {
    v9 = *(a1 + 1136);
    if (v6)
    {
      v7 = (v9 + 1976);
      v8 = 0;
      goto LABEL_6;
    }

    v10 = 1937010544;
    v11 = *(v9 + 1988);
    if (!v11 || *(v9 + 2010) != 1 || (v10 = IOConnectCallMethod(v11, 1u, 0, 0, 0, 0, 0, 0, 0, 0), v10))
    {
      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v13 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*MEMORY[0x1E69E3C08])
      {
        __break(1u);
        return;
      }

      v14 = *(v12 + 8);
      v15 = (v10 << 32) | 0x501;
      v16 = caulk::rt_safe_memory_resource::rt_allocate(*MEMORY[0x1E69E3C08]);
      *(v16 + 16) = 0;
      *(v16 + 20) = 16;
      *(v16 + 24) = "HALS_IOA2UCDevice.cpp";
      *(v16 + 32) = v15;
      *v16 = &unk_1F5963848;
      *(v16 + 8) = 0;
      caulk::concurrent::messenger::enqueue(v14, v16);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  v17 = atomic_load((a1 + 1112));
  if (a3 != 2 && v17 == 2)
  {
    if (*(a1 + 808))
    {
      v18 = *(a2 + 16);
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 0x40000000;
      v20[2] = ___ZN14HALS_IOEngine239ClearOutputStreamsUsedOnlyByThisContextEj_block_invoke;
      v20[3] = &__block_descriptor_tmp_23_13475;
      v20[4] = a1;
      v21 = v18;
      v19 = (*(*a1 + 64))(a1);
      HALB_CommandGate::ExecuteCommand(v19, v20);
    }
  }
}

caulk::rt_safe_memory_resource *HALS_IOA2Engine2::_TellHardwareToStart(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (!(*(*(*(a1 + 1136) + 1976) + 48))(*(a1 + 1136) + 1976))
  {
    if (a4)
    {
      a4 = 1937010544;
      v8 = *(a1 + 1136);
      v9 = *(v8 + 1988);
      if (!v9 || *(v8 + 2010) != 1 || (a4 = IOConnectCallMethod(v9, 0, 0, 0, 0, 0, 0, 0, 0, 0), a4))
      {
        v10 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        result = *MEMORY[0x1E69E3C08];
        if (!*MEMORY[0x1E69E3C08])
        {
          __break(1u);
          return result;
        }

        v13 = *(v10 + 8);
        v14 = caulk::rt_safe_memory_resource::rt_allocate(result);
        *(v14 + 16) = 0;
        *(v14 + 20) = 16;
        *(v14 + 24) = "HALS_IOA2UCDevice.cpp";
        *(v14 + 32) = (a4 << 32) | 0x4ED;
        *v14 = &unk_1F5963798;
        *(v14 + 8) = 0;
        caulk::concurrent::messenger::enqueue(v13, v14);
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }
      }
    }

    return a4;
  }

  v7 = (*(a1 + 1136) + 1976);

  return HALS_IOA2UCDevice::StartIOWithFlags(v7, a3 == 1);
}

void HALS_IOA2Engine2::TimelineWasReset(HALS_IOA2Engine2 *this, int a2, int a3)
{
  HALS_IOEngine2::TimelineWasReset(this, a2, a3);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN16HALS_IOA2Engine216TimelineWasResetEjj_block_invoke;
  v5[3] = &__block_descriptor_tmp_14101;
  v5[4] = this;
  v4 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v4, v5);
}

uint64_t ___ZN16HALS_IOA2Engine216TimelineWasResetEjj_block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 32) + 1136) + 2024);
  if (v1)
  {
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
  }

  return result;
}

uint64_t HALS_IOA2Engine2::GetZeroTimeStamp(HALS_IOA2Engine2 *this, unsigned int a2, double *a3, unint64_t *a4, unint64_t *a5)
{
  v5 = *(*(this + 142) + 2024);
  if (!v5)
  {
    return 1937010544;
  }

  v6 = v5[2];
  v7 = v5[1];
  v8 = *v5;
  result = 0;
  *a3 = *v5;
  *a4 = v7;
  *a5 = v6;
  return result;
}

void HALS_IOA2Engine2::~HALS_IOA2Engine2(HALS_IOA2Engine2 *this)
{
  HALS_IOEngine2::~HALS_IOEngine2(this);

  JUMPOUT(0x1E12C1730);
}

void non-virtual thunk toAMCP::Meta::Driver::~Driver(AMCP::Meta::Driver *this)
{
  AMCP::Meta::Driver::~Driver((this - 24));

  JUMPOUT(0x1E12C1730);
}

{
  AMCP::Meta::Driver::~Driver((this - 24));
}

void AMCP::Meta::Driver::~Driver(AMCP::Meta::Driver *this)
{
  *this = &unk_1F5983C38;
  *(this + 3) = &unk_1F5983C60;
  v2 = (this + 56);
  if (*(this + 7))
  {
    std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](this + 7);
    operator delete(*v2);
  }

  *(this + 3) = &unk_1F59748E8;
  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  AMCP::Meta::Driver::~Driver(this);

  JUMPOUT(0x1E12C1730);
}

void AMCP::Meta::Driver::shutdown(AMCP::Meta::Driver *this)
{
  v1 = this;
  v25 = *MEMORY[0x1E69E9840];
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    this = AMCP::Log::AMCP_Scope_Registry::initialize(this);
  }

  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v4 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(v3 + 16);
  switch(v5)
  {
    case 3:
      v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v14 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = *v16;
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      else
      {
        v17 = *v16;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = 136315394;
        v22 = "Meta_Driver_Core.cpp";
        v23 = 1024;
        v24 = 33;
        v18 = v17;
        v19 = OS_LOG_TYPE_INFO;
LABEL_29:
        _os_log_impl(&dword_1DE1F9000, v18, v19, "%32s:%-5d Tearing down Meta Driver", &v21, 0x12u);
      }

      break;
    case 2:
      v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v10 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v13 = *v12;
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      }

      else
      {
        v13 = *v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v21 = 136315394;
        v22 = "Meta_Driver_Core.cpp";
        v23 = 1024;
        v24 = 33;
        _os_log_debug_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down Meta Driver", &v21, 0x12u);
      }

      break;
    case 1:
      v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v6 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 136315394;
        v22 = "Meta_Driver_Core.cpp";
        v23 = 1024;
        v24 = 33;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_29;
      }

      break;
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::vector<std::shared_ptr<DSP_Host_Types::DeviceConfiguration>>::clear[abi:ne200100](v1 + 7);
  AMCP::Core::Broker::destroy_core(*(*(v1 + 4) + 16), *(v1 + 12));
  v20 = *MEMORY[0x1E69E9840];
}

void sub_1DE6166E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

char **std::dynamic_pointer_cast[abi:ne200100]<AMCP::Meta::Driver,AMCP::Core::Driver>(char ***a1, char ***a2)
{
  result = *a2;
  {
    v6 = v4[1];
    *a1 = result;
    a1[1] = v6;
  }

  else
  {
    v4 = a1;
  }

  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t AMCP::Implementation::get_type_marker<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[365];
}

uint64_t std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t AMCP::Implementation::get_type_marker<std::function<void ()(unsigned int)>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[367];
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<void ()(unsigned int)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<void ()>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v11 = 0;
        memset(v10, 0, sizeof(v10));
        AMCP::swap(v10, a3, a3);
        if (v11)
        {
          v11(0, v10, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<void ()>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<void ()>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    std::__function::__value_func<void ()>::__value_func[abi:ne200100](a3, a2);
    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<void ()>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Driver10build_coreEvE3$_1"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::operator()(uint64_t a1, int *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  operator new();
}

void sub_1DE616C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v15 - 72);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Driver10build_coreEvENK3$_1clEjEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (!is_valid)
  {
    v54 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v54 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
    }

    v56 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v55 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      v57 = *v56;
      std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    }

    else
    {
      v57 = *v56;
    }

    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      *v58 = 136315650;
      *&v58[4] = "Meta_Driver_Core.cpp";
      v59 = 1024;
      v60 = 107;
      v61 = 2080;
      v62 = "expiration_check.is_valid()";
      _os_log_error_impl(&dword_1DE1F9000, v57, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", v58, 0x1Cu);
    }

    abort();
  }

  v3 = **(a1 + 40);
  v5 = *(v3 + 56);
  v4 = *(v3 + 64);
  if (v5 != v4)
  {
    while (*(*v5 + 40) != **(a1 + 48))
    {
      v5 += 2;
      if (v5 == v4)
      {
        goto LABEL_67;
      }
    }
  }

  if (v5 != v4)
  {
    v6 = *(*(*v5 + 8) + 32);
    v7 = *(*v5 + 168);
    std::__shared_mutex_base::lock((v6 + 1400));
    if (*(v6 + 1568) == 1)
    {
      v8 = *(v6 + 1576);
      v9 = *(v6 + 1584);
      if (v8 != v9)
      {
        v10 = -v8;
        while (1)
        {
          v11 = *(v8 + 16);
          if (AMCP::Utility::Sorted_Vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,AMCP::Utility::Extract_Key_Get_N<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,0ul>,std::less<unsigned long long>,std::allocator<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>>::find(*(v8 + 8), v11, v7))
          {
            break;
          }

          v8 += 40;
          v10 -= 40;
          if (v8 == v9)
          {
            goto LABEL_26;
          }
        }

        v13 = v12;
        if (v12 + 5 != v11)
        {
          do
          {
            v14 = v13 + 5;
            std::__memberwise_forward_assign[abi:ne200100]<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>,unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>,0ul,1ul>(v13, v13 + 5);
            v15 = v13 + 10;
            v13 += 5;
          }

          while (v15 != v11);
          v11 = *(v8 + 16);
          v13 = v14;
        }

        for (; v11 != v13; v11 -= 5)
        {
          std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100]((v11 - 4));
        }

        *(v8 + 16) = v13;
        if (*(v8 + 8) == v13)
        {
          v16 = *(v6 + 1584);
          if (v8 + 40 != v16)
          {
            v17 = *(v6 + 1576);
            v18 = -v17;
            v19 = v17 - v10;
            do
            {
              v20 = v19 + v18;
              *v20 = *(v19 + v18 + 40);
              v21 = *(v19 + v18 + 8);
              *(v20 + 8) = *(v19 + v18 + 48);
              *(v20 + 48) = v21;
              v22 = *(v19 + v18 + 24);
              *(v20 + 24) = *(v19 + v18 + 64);
              *(v20 + 64) = v22;
              v19 += 40;
              v8 = v19 + v18;
            }

            while (v19 + v18 + 40 != v16);
            v16 = *(v6 + 1584);
          }

          if (v16 != v8)
          {
            do
            {
              v23 = v16 - 40;
              *v58 = v16 - 32;
              std::vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>::__destroy_vector::operator()[abi:ne200100](v58);
              v16 = v23;
            }

            while (v23 != v8);
          }

          *(v6 + 1584) = v8;
        }
      }
    }

LABEL_26:
    std::__shared_mutex_base::unlock((v6 + 1400));
    v25 = *v5;
    v26 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v26 & 1) == 0)
    {
      v24 = AMCP::Log::AMCP_Scope_Registry::initialize(v24);
    }

    v27 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v29 = *(v27 + 16);
    switch(v29)
    {
      case 3:
        v38 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v38 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
        }

        v40 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v39 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v39)
        {
          atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
          v41 = *v40;
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        else
        {
          v41 = *v40;
        }

        if (!os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
        {
          goto LABEL_55;
        }

        v43 = *(v25 + 40);
        *v58 = 136315650;
        *&v58[4] = "Meta_Device_Core.cpp";
        v59 = 1024;
        v60 = 56;
        v61 = 1024;
        LODWORD(v62) = v43;
        v44 = v41;
        v45 = OS_LOG_TYPE_INFO;
        break;
      case 2:
        v34 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v34 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
        }

        v36 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v35 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          v37 = *v36;
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        else
        {
          v37 = *v36;
        }

        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v42 = *(v25 + 40);
          *v58 = 136315650;
          *&v58[4] = "Meta_Device_Core.cpp";
          v59 = 1024;
          v60 = 56;
          v61 = 1024;
          LODWORD(v62) = v42;
          _os_log_debug_impl(&dword_1DE1F9000, v37, OS_LOG_TYPE_DEBUG, "%32s:%-5d Tearing down Device with object id %u", v58, 0x18u);
        }

        goto LABEL_55;
      case 1:
        v30 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v30 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v24);
        }

        v32 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v31 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          v33 = *v32;
          std::__shared_weak_count::__release_shared[abi:ne200100](v31);
        }

        else
        {
          v33 = *v32;
        }

        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
LABEL_55:
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          AMCP::Core::Broker::destroy_core(*(*(v25 + 8) + 16), *(v25 + 40));
          v47 = *(v3 + 64);
          if (v5 + 2 != v47)
          {
            do
            {
              v48 = *(v5 + 1);
              v5[2] = 0;
              v5[3] = 0;
              v49 = v5[1];
              *v5 = v48;
              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              v50 = v5 + 2;
              v51 = v5 + 4;
              v5 += 2;
            }

            while (v51 != v47);
            v47 = *(v3 + 64);
            v5 = v50;
          }

          while (v47 != v5)
          {
            v52 = *(v47 - 1);
            if (v52)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v52);
            }

            v47 -= 2;
          }

          *(v3 + 64) = v5;
          goto LABEL_67;
        }

        v46 = *(v25 + 40);
        *v58 = 136315650;
        *&v58[4] = "Meta_Device_Core.cpp";
        v59 = 1024;
        v60 = 56;
        v61 = 1024;
        LODWORD(v62) = v46;
        v44 = v33;
        v45 = OS_LOG_TYPE_DEFAULT;
        break;
      default:
        goto LABEL_55;
    }

    _os_log_impl(&dword_1DE1F9000, v44, v45, "%32s:%-5d Tearing down Device with object id %u", v58, 0x18u);
    goto LABEL_55;
  }

LABEL_67:
  v53 = *MEMORY[0x1E69E9840];
}

void sub_1DE617284(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5983E38;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983E38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_1::operator() const(unsigned int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983E38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5983DC8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983DC8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_1,std::allocator<AMCP::Meta::Driver::build_core(void)::$_1>,void ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983DC8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>::dispatch(int a1, uint64_t a2, AMCP::Thing *a3, uint64_t *a4)
{
  result = 0;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        v9 = AMCP::Implementation::get_type_marker<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>();
        result = 0;
        *a4 = v9;
        break;
      case 4:
        if (*a4 == AMCP::Implementation::get_type_marker<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>())
        {
          return a2;
        }

        else
        {
          return 0;
        }

      case 6:
        v12 = 0;
        memset(v11, 0, sizeof(v11));
        AMCP::swap(v11, a3, a3);
        if (v12)
        {
          v12(0, v11, 0, 0);
        }

        return 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_6:
      std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::~__value_func[abi:ne200100](a2);
      result = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    }

    if (a1 != 1)
    {
      if (a1 != 2)
      {
        return result;
      }

      *a3 = 0u;
      *(a3 + 1) = 0u;
      std::__function::__value_func<unsigned int ()(Aggregate_Device_Description const&,int)>::__value_func[abi:ne200100](a3, a2);
      *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>::dispatch;
      goto LABEL_6;
    }

    *a3 = 0u;
    *(a3 + 1) = 0u;
    v10 = *(a2 + 24);
    if (v10)
    {
      if (v10 == a2)
      {
        *(a3 + 3) = a3;
        (*(**(a2 + 24) + 24))(*(a2 + 24), a3);
      }

      else
      {
        *(a3 + 3) = (*(*v10 + 16))(v10);
      }
    }

    result = 0;
    *(a3 + 4) = AMCP::Implementation::In_Place_Storage<std::function<unsigned int ()(Aggregate_Device_Description const&,int)>>::dispatch;
  }

  return result;
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZN4AMCP4Meta6Driver10build_coreEvE3$_0"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::operator()(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v3 = 0;
  operator new();
}

void sub_1DE617970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v17 - 88);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a9);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN4AMCP4Meta6Driver10build_coreEvENK3$_0clERK28Aggregate_Device_DescriptioniEUlvE_"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::operator()(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  is_valid = AMCP::Utility::Expiration_Check::is_valid((a1 + 8));
  if (is_valid)
  {
    v3 = *(a1 + 48);
    v9 = **(a1 + 56);
    v4 = *(**(a1 + 40) + 32);
    if (*(&v4 + 1))
    {
      atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v5 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v5 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(is_valid);
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
    *buf = 136315650;
    *&buf[4] = "Meta_Driver_Core.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 91;
    v11 = 2080;
    v12 = "expiration_check.is_valid()";
    _os_log_error_impl(&dword_1DE1F9000, v8, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s caller has gone out of scope", buf, 0x1Cu);
  }

  abort();
}

void sub_1DE618BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  *(v34 + 1584) = v33;
  std::vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  a26 = &a15;
  std::vector<std::tuple<unsigned long long,std::function<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>>>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100](v35 - 176);
  std::unique_lock<std::shared_mutex>::~unique_lock[abi:ne200100](&a24);
  std::__function::__value_func<void ()(unsigned int,BOOL,std::tuple<std::vector<unsigned int>,std::vector<unsigned int>,std::unordered_map<unsigned int,std::tuple<std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>,std::unordered_map<AMCP::Address,AMCP::Thing,AMCP::Address::Hash,AMCP::Address::Is_Exact_Match,std::allocator<std::pair<AMCP::Address const,AMCP::Thing>>>>>> const&)>::~__value_func[abi:ne200100](&a32);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<AMCP::Meta::Device>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5983EC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::destroy_deallocate(void *a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 8);

  operator delete(a1);
}

__n128 std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5983D38;
  AMCP::Utility::Expiration_Check::Expiration_Check(a2 + 8, (a1 + 8));
  result = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983D38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1},std::allocator<AMCP::Meta::Driver::build_core(void)::$_0::operator() const(Aggregate_Device_Description const&,int)::{lambda(void)#1}>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_1F5983D38;
  std::__variant_detail::__dtor<std::__variant_detail::__traits<std::shared_ptr<std::byte>,std::weak_ptr<std::byte>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5983CB8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983CB8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1E12C1730);
}

void *std::__function::__func<AMCP::Meta::Driver::build_core(void)::$_0,std::allocator<AMCP::Meta::Driver::build_core(void)::$_0>,unsigned int ()(Aggregate_Device_Description const&,int)>::~__func(void *a1)
{
  *a1 = &unk_1F5983CB8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

uint64_t FilterIfEngineOnlyNeedsReferenceStream::should_exclude(uint64_t a1, void **a2)
{
  result = (*(***a2 + 136))(**a2);
  if (result)
  {
    return (*(***a2 + 144))(**a2) ^ 1;
  }

  return result;
}

uint64_t FilterClocklessReferenceStreamOnlyEngines::should_exclude(uint64_t a1, void **a2)
{
  result = (*(***a2 + 136))(**a2);
  if (result)
  {
    if ((*(***a2 + 328))(**a2))
    {
      return 0;
    }

    else
    {
      return (*(***a2 + 144))(**a2) ^ 1;
    }
  }

  return result;
}

uint64_t FilterInactiveReferenceStreamOnlyEngines::should_exclude(uint64_t a1, void **a2)
{
  v2 = **a2;
  if (v2[829] == 1)
  {
    return (*(*v2 + 344))(v2) ^ 1;
  }

  else
  {
    return 0;
  }
}

void AMCP::IOContext::~IOContext(AMCP::IOContext *this)
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

AMCP::IOContext *AMCP::IOContext::IOContext(AMCP::IOContext *this, AMCP::System_Context *a2, unsigned int a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMCP::Node::Node(this, a2, a3);
  *v4 = &unk_1F5984028;
  v5 = AMCP::Object::constructed_correct_class(v4, 0x696F636E);
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
      v13 = "IOContext.cpp";
      v14 = 1024;
      v15 = 27;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_iocontext_node)";
      _os_log_error_impl(&dword_1DE1F9000, v11, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", &v12, 0x1Cu);
    }

    abort();
  }

  v6 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_1DE61973C(_Unwind_Exception *a1)
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

AMCP::Object *AMCP::IOContext::IOContext(AMCP::Object *a1, uint64_t a2, CFTypeRef *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  cf = *a3;
  *a3 = 0;
  AMCP::Node::Node(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  *a1 = &unk_1F5984028;
  v4 = AMCP::Object::constructed_correct_class(a1, 0x696F636E);
  if ((v4 & 1) == 0)
  {
    v7 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v7 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v4);
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
      *buf = 136315650;
      v13 = "IOContext.cpp";
      v14 = 1024;
      v15 = 34;
      v16 = 2080;
      v17 = "constructed_correct_class(k_class_id_iocontext_node)";
      _os_log_error_impl(&dword_1DE1F9000, v10, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s the core is not of the proper class", buf, 0x1Cu);
    }

    abort();
  }

  v5 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1DE6198D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, char a10)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOContext::start_running(AMCP::IOContext *this)
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
    v8 = 0x676C6F6273747274;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t AMCP::IOContext::stop_running(AMCP::IOContext *this)
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
    v8 = 0x676C6F6273746F70;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t AMCP::IOContext::start_prewarming(AMCP::IOContext *this)
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
    v8 = 0x676C6F6273747077;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

uint64_t AMCP::IOContext::stop_prewarming(AMCP::IOContext *this)
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
    v8 = 0x676C6F6273707077;
    v9 = 0;
    v6 = AMCP::Core::Core::call_operation_function<BOOL>(v5, &v8);
  }

  else
  {
    v6 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return v6;
}

AMCP::Core::Core *AMCP::IOContext::get_transport_state(AMCP::IOContext *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(this + 2);
      if (!v5)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
        goto LABEL_20;
      }

      v21 = 0x676C6F6274727374;
      v22 = 0;
      has_property = AMCP::Core::Core::has_property(v5, &v21);
      if (!has_property)
      {
LABEL_21:
        v14 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v14 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(has_property);
        }

        v16 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v15 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          v17 = *v16;
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        else
        {
          v17 = *v16;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v20 = 4;
          strcpy(&__p, "trst");
          *buf = 136316418;
          v24 = "Core.h";
          v25 = 1024;
          v26 = 391;
          v27 = 2080;
          v28 = "optional_value.operator BOOL() == true";
          v29 = 2080;
          *v30 = &__p;
          *&v30[8] = 1024;
          v31 = 1735159650;
          v32 = 1024;
          v33 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v17, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v20 < 0)
          {
            operator delete(__p);
          }
        }

        abort();
      }

      AMCP::Core::Core::find_operation(&__p, v5, &v21);
      v7 = __p;
      if (__p)
      {
        v8 = AMCP::Implementation::get_type_marker<std::function<AMCP::Transport_State ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v8))
        {
          LODWORD(v7) = AMCP::Core::Operation::call_function<AMCP::Transport_State>(v7);
LABEL_8:
          v9 = 0;
          v10 = v7 & 0xFFFFFF00;
          goto LABEL_15;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<AMCP::Thing ()(void)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v7, v11))
        {
          AMCP::Core::Operation::call_function<AMCP::Thing>(buf, v7);
          LODWORD(v7) = AMCP::Thing::convert_to<AMCP::Transport_State>(buf);
          if (*&v30[2])
          {
            (*&v30[2])(0, buf, 0, 0);
          }

          goto LABEL_8;
        }

        LOBYTE(v7) = 0;
      }

      v10 = 0;
      v9 = 1;
LABEL_15:
      has_property = v19;
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v9 & 1) == 0)
      {
        v5 = (v10 | v7);
        goto LABEL_19;
      }

      goto LABEL_21;
    }
  }

  v5 = 0;
LABEL_20:
  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1DE619E28(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t AMCP::IOContext::start_at_time(AMCP::IOContext *this, uint64_t a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *(this + 2);
  if (v7)
  {
    v10 = 0x676C6F6273746174;
    v11 = 0;
    v8 = AMCP::Core::Core::call_operation_function<BOOL,unsigned long long>(v7, &v10, a2);
  }

  else
  {
    v8 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  return v8;
}

unint64_t AMCP::IOContext::get_buffer_frame_size(AMCP::IOContext *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1718839674u>(v5);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

uint64_t AMCP::IOContext::set_buffer_frame_size(AMCP::IOContext *this, int a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1718839674u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

unint64_t AMCP::IOContext::get_min_and_max_buffer_frame_size(AMCP::IOContext *this)
{
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      simple_required = AMCP::Core::Core::get_simple_required_property<1718843939u>(v5);
      v7 = simple_required & 0xFFFFFFFF00000000;
      v8 = simple_required;
    }

    else
    {
      v7 = 0x100000000000;
      v8 = 16;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0x100000000000;
    v8 = 16;
  }

  return v8 | v7;
}

float AMCP::IOContext::get_io_cycle_usage(AMCP::IOContext *this)
{
  v2 = *(this + 3);
  simple_required = 1.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        simple_required = AMCP::Core::Core::get_simple_required_property<1852012899u>(v6);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return simple_required;
}

uint64_t AMCP::IOContext::set_io_cycle_usage(AMCP::IOContext *this, float a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
LABEL_19:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        return v7;
      }

      v14 = 0x676C6F626E637963;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
LABEL_17:
        v7 = 0;
        goto LABEL_19;
      }

      AMCP::Core::Core::find_operation(&v18, v7, &v14);
      v8 = v18;
      if (v18)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(float const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,float const&>(v8, &v13);
LABEL_8:
          v10 = 0;
          goto LABEL_14;
        }

        v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
        {
          memset(v16, 0, sizeof(v16));
          *v16 = a2;
          v17 = AMCP::Implementation::In_Place_Storage<float>::dispatch;
          AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v16);
          if (v17)
          {
            v17(0, v16, 0, 0);
          }

          goto LABEL_8;
        }
      }

      v10 = 1;
LABEL_14:
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      if ((v10 & 1) == 0)
      {
        v7 = 1;
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  return 0;
}

void sub_1DE61A1C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AMCP::Thing::~Thing(va);
  v7 = *(v5 - 40);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61A190);
}

double AMCP::IOContext::get_actual_sample_rate(AMCP::IOContext *this)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  v3 = 48000.0;
  if (v2)
  {
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = *(this + 2);
      if (v6)
      {
        strcpy(buf, "trsabolg");
        buf[9] = 0;
        *&buf[10] = 0;
        v7 = AMCP::Core::Core::get_typed_property_value<double,std::enable_if<true,void>>(v6, buf);
        if ((v8 & 1) == 0)
        {
          v11 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
          if ((v11 & 1) == 0)
          {
            AMCP::Log::AMCP_Scope_Registry::initialize(v7);
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
            v16 = 4;
            strcpy(__p, "asrt");
            *buf = 136316418;
            *&buf[4] = "Core.h";
            v18 = 1024;
            v19 = 391;
            v20 = 2080;
            v21 = "optional_value.operator BOOL() == true";
            v22 = 2080;
            v23 = __p;
            v24 = 1024;
            v25 = 1735159650;
            v26 = 1024;
            v27 = 0;
            _os_log_error_impl(&dword_1DE1F9000, v14, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }

          abort();
        }

        v3 = *&v7;
      }

      else
      {
        v3 = 48000.0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1DE61A3BC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

unint64_t AMCP::IOContext::get_latency(AMCP::IOContext *this)
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
    simple_required = AMCP::Core::Core::get_simple_required_property<1819569763u>(v5, 0x676C6F62u);
  }

  else
  {
    simple_required = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  return simple_required;
}

unint64_t AMCP::IOContext::get_tail_time(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "liatbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<unsigned int,std::enable_if<true,void>>(v5, buf);
      if (!HIDWORD(v6))
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "tail");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1DE61A5E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void AMCP::IOContext::get_os_workgroup_handle(AMCP::IOContext *this@<X0>, uint64_t a2@<X8>)
{
  v4 = *(this + 3);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_6;
  }

  v5 = std::__shared_weak_count::lock(v4);
  if (!v5 || (v6 = *(this + 2)) == 0)
  {
LABEL_6:
    v7 = MEMORY[0x1E69E3C20] + 16;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = v7;
    if (!v5)
    {
      return;
    }

    goto LABEL_7;
  }

  AMCP::Core::Core::get_simple_required_property<2003267184u>(a2, v6);
LABEL_7:

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
}

uint64_t AMCP::IOContext::set_os_workgroup_handle(AMCP::IOContext *this, const caulk::mach::os_workgroup_interval_managed *a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (!v7)
      {
        goto LABEL_15;
      }

      v14 = 0x676C6F6277676E70;
      v15 = 0;
      if (!AMCP::Core::Core::is_property_settable(v7, &v14))
      {
        goto LABEL_15;
      }

      AMCP::Core::Core::find_operation(&v20, v7, &v14);
      v8 = v20;
      if (v20)
      {
        v9 = AMCP::Implementation::get_type_marker<std::function<void ()(caulk::mach::os_workgroup_interval_managed const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
        {
          AMCP::Core::Operation::call_function<void,caulk::mach::os_workgroup_interval_managed const&>(v8, a2);
          v10 = 0;
          goto LABEL_12;
        }

        v12 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
        if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v12))
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = AMCP::Implementation::Outboard_Storage<caulk::mach::os_workgroup_interval_managed>::dispatch;
          operator new();
        }
      }

      v10 = 1;
LABEL_12:
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }

      if ((v10 & 1) == 0)
      {
        v11 = 1;
        goto LABEL_16;
      }

LABEL_15:
      v11 = 0;
LABEL_16:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v11;
    }
  }

  return 0;
}

void sub_1DE61A854(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  AMCP::Thing::~Thing(va);
  v6 = *(v4 - 40);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61A824);
}

uint64_t AMCP::IOContext::handle_overload_with_catchup_mode(AMCP::IOContext *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F62686F636DLL;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE61A9D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61A9B0);
}

uint64_t AMCP::IOContext::will_handle_overload_with_catchup_mode(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "mcohbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "hocm");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6 & 1;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 | 0x100u;
}

void sub_1DE61ABCC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_should_resume_after_config_change(AMCP::IOContext *this, char a2)
{
  v13 = a2;
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        v18 = 0x676C6F62696F7372;
        v19 = 0;
        if (AMCP::Core::Core::is_property_settable(v7, &v18))
        {
          AMCP::Core::Core::find_operation(&v16, v7, &v18);
          v8 = v16;
          if (v16)
          {
            v9 = AMCP::Implementation::get_type_marker<std::function<void ()(BOOL const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v9))
            {
              AMCP::Core::Operation::call_function<void,BOOL const&>(v8, &v13);
LABEL_8:
              if (v17)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v17);
              }

              v10 = 1;
              goto LABEL_18;
            }

            v11 = AMCP::Implementation::get_type_marker<std::function<void ()(AMCP::Thing const&)>>();
            if (std::__hash_table<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::__unordered_map_hasher<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,AMCP::Type_ID::Hash,std::equal_to<AMCP::Type_ID>,true>,std::__unordered_map_equal<AMCP::Type_ID,std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>,std::equal_to<AMCP::Type_ID>,AMCP::Type_ID::Hash,true>,std::allocator<std::__hash_value_type<AMCP::Type_ID,AMCP::Thing>>>::find<AMCP::Type_ID>(v8, v11))
            {
              memset(v14, 0, sizeof(v14));
              LOBYTE(v14[0]) = a2;
              v15 = AMCP::Implementation::In_Place_Storage<BOOL>::dispatch;
              AMCP::Core::Operation::call_function<void,AMCP::Thing const&>(v8, v14);
              if (v15)
              {
                v15(0, v14, 0, 0);
              }

              goto LABEL_8;
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }
      }

      v10 = 0;
LABEL_18:
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      return v10;
    }
  }

  return 0;
}

void sub_1DE61AD2C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  AMCP::Thing::~Thing(&a11);
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61AD04);
}

uint64_t AMCP::IOContext::get_should_resume_after_config_change(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "rsoibolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "iosr");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

void sub_1DE61AF20(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::can_play_during_notification_wake(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "wndpbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "pdnw");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6 & 1;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 | 0x100u;
}

void sub_1DE61B0E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_can_play_during_notification_wake(AMCP::IOContext *this, char a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1885630071u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

uint64_t AMCP::IOContext::can_play_during_dark_wake(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "wddpbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "pddw");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6 & 1;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 | 0x100u;
}

void sub_1DE61B318(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_can_play_during_dark_wake(AMCP::IOContext *this, char a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1885627511u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

uint64_t AMCP::IOContext::sleeping_is_allowed(AMCP::IOContext *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(this + 3);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(this + 2);
    if (v5)
    {
      strcpy(buf, "ailsbolg");
      buf[9] = 0;
      *&buf[10] = 0;
      v6 = AMCP::Core::Core::get_typed_property_value<BOOL,std::enable_if<true,void>>(v5, buf);
      if (v6 <= 0xFFu)
      {
        v10 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
        if ((v10 & 1) == 0)
        {
          AMCP::Log::AMCP_Scope_Registry::initialize(v6);
        }

        v12 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
        v11 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
          v13 = *v12;
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        else
        {
          v13 = *v12;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = 4;
          strcpy(__p, "slia");
          *buf = 136316418;
          *&buf[4] = "Core.h";
          v17 = 1024;
          v18 = 391;
          v19 = 2080;
          v20 = "optional_value.operator BOOL() == true";
          v21 = 2080;
          v22 = __p;
          v23 = 1024;
          v24 = 1735159650;
          v25 = 1024;
          v26 = 0;
          _os_log_error_impl(&dword_1DE1F9000, v13, OS_LOG_TYPE_ERROR, "%32s:%-5d Assertion Failed: %s a required property is missing '%s':%u:%u", buf, 0x32u);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }
        }

        abort();
      }

      v7 = v6 & 1;
    }

    else
    {
      v7 = 0;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7 | 0x100u;
}

void sub_1DE61B54C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::IOContext::set_sleeping_is_allowed(AMCP::IOContext *this, char a2)
{
  v9 = a2;
  v3 = *(this + 3);
  if (!v3)
  {
    return 0;
  }

  v4 = std::__shared_weak_count::lock(v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = *(this + 2);
  if (v6)
  {
    v7 = AMCP::Core::Core::set_simple_property_value<1936484705u>(v6, &v9);
  }

  else
  {
    v7 = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  return v7;
}

void HALB_CaptureFile::TimeStampMessage::perform(HALB_CaptureFile::TimeStampMessage *this)
{
  v27 = *MEMORY[0x1E69E9840];
  v1 = *(this + 12);
  if ((*(v1 + 2152) - 2) >= 3)
  {
    v4 = *(this + 4);
    switch(v4)
    {
      case 2:
        if (*(v1 + 2096) != *(v1 + 2104))
        {
          operator new();
        }

        break;
      case 1:
        v11 = *(v1 + 2104);
        if (*(v1 + 2096) != v11)
        {
          *(v11 - 40) += *(this + 7);
        }

        break;
      case 0:
        v5 = *(v1 + 2104);
        v6 = *(v1 + 2112);
        if (v5 >= v6)
        {
          v12 = *(v1 + 2096);
          v13 = v5 - v12;
          v14 = 0x8E38E38E38E38E39 * ((v5 - v12) >> 3);
          v15 = v14 + 1;
          if (v14 + 1 > 0x38E38E38E38E38ELL)
          {
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          v16 = 0x8E38E38E38E38E39 * ((v6 - v12) >> 3);
          if (2 * v16 > v15)
          {
            v15 = 2 * v16;
          }

          if (v16 >= 0x1C71C71C71C71C7)
          {
            v17 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            if (v17 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v18 = 72 * v14;
          v19 = *(this + 40);
          v20 = *(this + 72);
          *(v18 + 32) = *(this + 56);
          *(v18 + 48) = v20;
          *(v18 + 64) = *(this + 11);
          *v18 = *(this + 24);
          *(v18 + 16) = v19;
          v10 = 72 * v14 + 72;
          v21 = 72 * v14 - v13;
          memcpy((v18 - v13), v12, v13);
          *(v1 + 2096) = v21;
          *(v1 + 2104) = v10;
          *(v1 + 2112) = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          *v5 = *(this + 24);
          v7 = *(this + 40);
          v8 = *(this + 56);
          v9 = *(this + 72);
          *(v5 + 64) = *(this + 11);
          *(v5 + 32) = v8;
          *(v5 + 48) = v9;
          *(v5 + 16) = v7;
          v10 = v5 + 72;
        }

        *(v1 + 2104) = v10;
        break;
    }

    v22 = *(*(this + 12) + 2120);
    v23 = atomic_load((v22 + 16));
    if ((v23 & 1) == 0)
    {
      HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>::~HALB_AsyncMessageQueue(v22);
      v26 = *MEMORY[0x1E69E9840];

      JUMPOUT(0x1E12C1730);
    }

    v24 = *(v22 + 8);
    v25 = *MEMORY[0x1E69E9840];

    OSAtomicEnqueue(v24, this, 0x68uLL);
  }

  else
  {
    v2 = *MEMORY[0x1E69E9840];
  }
}

void sub_1DE61BB00(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE61B918);
  }

  _Unwind_Resume(exception_object);
}

void HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>::~HALB_AsyncMessageQueue(uint64_t a1)
{
  atomic_store(0, (a1 + 16));
  ca::concurrent::details::service_thread::drain(*a1);
  for (i = OSAtomicDequeue(*(a1 + 8), 0x68uLL); i; i = OSAtomicDequeue(*(a1 + 8), 0x68uLL))
  {
    (*(*i + 8))(i);
  }

  v3 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v3)
  {
    MEMORY[0x1E12C1730](v3, 0x1080C40FC6463CFLL);
  }

  ca::concurrent::messenger::~messenger(a1);
}

void std::__shared_ptr_emplace<std::array<char,2048ul>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5984430;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void std::__shared_ptr_emplace<std::vector<HALB_CaptureFile::TimeStampData>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::__shared_ptr_emplace<std::vector<HALB_CaptureFile::TimeStampData>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F59843E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::unique_ptr<HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>::~HALB_AsyncMessageQueue(result);

    JUMPOUT(0x1E12C1730);
  }

  return result;
}

uint64_t caulk::concurrent::details::rt_message_call<HALB_CaptureFile::HALB_CaptureFile(HALB_CaptureFile_NameBuilder const&,AudioStreamBasicDescription const&,AudioCapturerMode)::$_1,std::tuple<char const*,int>>::perform(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v2 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    v4 = *v3;
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v4 = *v3;
  }

  v5 = *(a1 + 20);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v10 = 136315394;
    v11 = v6;
    v12 = 1024;
    v13 = v7;
    _os_log_impl(&dword_1DE1F9000, v4, v5, "%32s:%-5d Failed to allocate audio capturer.", &v10, 0x12u);
  }

  caulk::concurrent::message::~message(a1);
  if (!*MEMORY[0x1E69E3C08])
  {
    __break(1u);
  }

  result = caulk::rt_safe_memory_resource::rt_deallocate(*MEMORY[0x1E69E3C08], a1);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void caulk::concurrent::details::rt_message_call<HALB_CaptureFile::HALB_CaptureFile(HALB_CaptureFile_NameBuilder const&,AudioStreamBasicDescription const&,AudioCapturerMode)::$_1,std::tuple<char const*,int>>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12C1730);
}

uint64_t std::__shared_ptr_pointer<AudioCapturerIfc *,std::shared_ptr<AudioCapturerIfc>::__shared_ptr_default_delete<AudioCapturerIfc,AudioCapturerIfc>,std::allocator<AudioCapturerIfc>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "NSt3__110shared_ptrI16AudioCapturerIfcE27__shared_ptr_default_deleteIS1_S1_EE"))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__shared_ptr_pointer<AudioCapturerIfc *,std::shared_ptr<AudioCapturerIfc>::__shared_ptr_default_delete<AudioCapturerIfc,AudioCapturerIfc>,std::allocator<AudioCapturerIfc>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__shared_ptr_pointer<AudioCapturerIfc *,std::shared_ptr<AudioCapturerIfc>::__shared_ptr_default_delete<AudioCapturerIfc,AudioCapturerIfc>,std::allocator<AudioCapturerIfc>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12C1730);
}

void *___Z16NewAudioCapturer20AudioCapturerOptionsPKcS1_jPK27AudioStreamBasicDescriptionRS3__block_invoke()
{
  result = dlopen("/usr/local/lib/libAudioDiagnostics.dylib", 5);
  if (result)
  {
    result = dlsym(result, "NewAudioCapturerImpl");
    if (result)
    {
      NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction = result;
    }
  }

  return result;
}

caulk::rt_safe_memory_resource *HALB_CaptureFile::HALB_CaptureFile(_OWORD *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v50[51] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 16);
  v8 = *(a3 + 32);
  *a1 = *a3;
  a1[1] = v7;
  *(a1 + 4) = v8;
  *(a1 + 5) = 0;
  a1[131] = 0u;
  a1[132] = 0u;
  a1[133] = 0u;
  *(a1 + 268) = 0;
  *(a1 + 538) = a4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 0, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 1, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 2, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 5, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 6, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 4, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 3, &v41);
  HALB_CaptureFile_NameBuilder::FindAndBuild(*a2, a2[1], 7, &v41);
  if ((v49 & 0x10) != 0)
  {
    v10 = v48;
    if (v48 < v45)
    {
      v48 = v45;
      v10 = v45;
    }

    v11 = __src;
  }

  else
  {
    if ((v49 & 8) == 0)
    {
      v9 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
      goto LABEL_14;
    }

    v11 = v42;
    v10 = v43;
  }

  v9 = v10 - v11;
  if (v10 - v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10 - v11;
  if (v9)
  {
    memmove(&__dst, v11, v9);
  }

LABEL_14:
  __dst.__r_.__value_.__s.__data_[v9] = 0;
  v41.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54E8];
  *(v41.__r_.__value_.__r.__words + *(v41.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v41.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5548] + 16;
  if (v47 < 0)
  {
    operator delete(__p);
  }

  v41.__r_.__value_.__l.__size_ = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v41.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x1E12C15F0](v50);
  v12 = std::string::insert(&__dst, 0, "HAL_", 4uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v40 = v12->__r_.__value_.__r.__words[2];
  *v39 = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v14 = SHIBYTE(v40);
  v15 = v39;
  if (v40 < 0)
  {
    v15 = v39[0];
  }

  if (v40 < 0)
  {
    v14 = v39[1];
  }

  for (; v14; v14 = v14 - 1)
  {
    v16 = *v15;
    if (v16 == 47 || v16 == 32)
    {
      *v15 = 95;
    }

    v15 = (v15 + 1);
  }

  v17 = *(a1 + 538) - 2;
  if (v17 > 2)
  {
    v18 = 270609;
  }

  else
  {
    v18 = qword_1DE797160[v17];
  }

  v19 = &v41;
  get_audio_capture_folder(&v41);
  if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v19 = v41.__r_.__value_.__r.__words[0];
  }

  if (v40 >= 0)
  {
    v20 = v39;
  }

  else
  {
    v20 = v39[0];
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
  {
    dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_14173);
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
  {
    v21 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(v18, v19, v20, 1667327590, 0, a3);
  }

  else
  {
    v21 = 0;
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v21)
  {
    operator new();
  }

  v22 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v23 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v25 = *(v22 + 8);
    v26 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v26 + 16) = 0;
    *(v26 + 20) = 16;
    *(v26 + 24) = "HALB_CaptureFile.cpp";
    *(v26 + 32) = 224;
    *v26 = &unk_1F5984388;
    *(v26 + 8) = 0;
    v27 = caulk::concurrent::messenger::enqueue(v25, v26);
    if (v23)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    v28 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v28 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v27);
    }

    v30 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v29 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v31 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v31 = *v30;
    }

    v32 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
    if ((v32 & 1) == 0)
    {
      AMCP::Log::AMCP_Scope_Registry::initialize(v29);
    }

    v33 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
    v34 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = os_signpost_id_make_with_pointer(*v33, a1);
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      v35 = os_signpost_id_make_with_pointer(*v33, a1);
    }

    if (v35 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
    {
      v36 = v39;
      if (v40 < 0)
      {
        v36 = v39[0];
      }

      LODWORD(v41.__r_.__value_.__l.__data_) = 136446210;
      *(v41.__r_.__value_.__r.__words + 4) = v36;
      _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v35, "AudioHAL Capture", "%{public}s", &v41, 0xCu);
    }

    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }

    v37 = *MEMORY[0x1E69E9840];
    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DE61C8DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  v36 = (v34 + 262);
  v37 = v34[268];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  std::unique_ptr<HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>>::reset[abi:ne200100](v34 + 265, 0);
  v38 = *v36;
  if (*v36)
  {
    v34[263] = v38;
    operator delete(v38);
  }

  _Unwind_Resume(a1);
}

void HALB_CaptureFile::~HALB_CaptureFile(ca::concurrent::details::service_thread ***this)
{
  v2 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v2 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(this);
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

  v6 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
  if ((v6 & 1) == 0)
  {
    AMCP::Log::AMCP_Scope_Registry::initialize(v3);
  }

  v7 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
  v8 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = os_signpost_id_make_with_pointer(*v7, this);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  else
  {
    v9 = os_signpost_id_make_with_pointer(*v7, this);
  }

  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v19[0] = 0;
    _os_signpost_emit_with_name_impl(&dword_1DE1F9000, v5, OS_SIGNPOST_INTERVAL_END, v9, "AudioHAL Capture", &unk_1DE836302, v19, 2u);
  }

  if ((*(this + 538) - 2) >= 3)
  {
    v10 = this[265];
    if (v10)
    {
      v11 = OSAtomicDequeue(v10[1], 0x68uLL);
      if (v11)
      {
        *(v11 + 4) = 2;
        v12 = this[265];
        v13 = atomic_load(v12 + 16);
        if (v13)
        {
          v14 = *v12;
          do
          {
            v15 = *v14;
            atomic_store(*v14, v11 + 1);
            v16 = v15;
            atomic_compare_exchange_strong(v14, &v16, v11);
          }

          while (v16 != v15);
          ca::sync::semaphore::signal(v14 + 36);
        }

        else
        {
          (*(*v11 + 8))(v11);
        }
      }

      ca::concurrent::details::service_thread::drain(*this[265]);
    }
  }

  v17 = this[268];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::unique_ptr<HALB_AsyncMessageQueue<HALB_CaptureFile::TimeStampMessage,void>>::reset[abi:ne200100](this + 265, 0);
  v18 = this[262];
  if (v18)
  {
    this[263] = v18;
    operator delete(v18);
  }
}

void sub_1DE61CC10(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE61CBD0);
}

atomic_uint *HALB_CaptureFile::Write(atomic_uint *result, uint64_t a2, double *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *(result + 267);
  if (v6)
  {
    v8 = result;
    v10 = result[6];
    v9 = result[7];
    v24[0] = 1;
    v24[2] = v9;
    v24[3] = v10 * a5;
    v25 = a6;
    if (!a6)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "HALB_CaptureFile.cpp";
        *v28 = 1024;
        *&v28[2] = 359;
        _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  data buffer is NULL", buf, 0x12u);
      }

      exception = __cxa_allocate_exception(4uLL);
      *exception = 1852797029;
    }

    if (a3)
    {
      v14 = *(result + 266);
      if (v14 != 0.0 && *a3 > v14)
      {
        v15 = fmin(*a3 - v14, 8192.0);
        v16 = *(result + 268);
        v23 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = result[6];
          v9 = result[7];
        }

        *buf = 1;
        HIDWORD(v27) = v9;
        v17 = v10 * v15;
        if (v17)
        {
          if (v17 > 0x2000)
          {
            do
            {
              if (v17 == 0x2000)
              {
                break;
              }

              v18 = v17 - 0x2000 >= 0x2000 ? 0x2000 : v17 - 0x2000;
              v19 = v18 / v8[6];
              *v28 = v18;
              *&v28[4] = &HALB_CaptureFile::mSilenceBuffer;
              (*(*v6 + 24))(v6, v19, buf, 0);
              v17 -= v18;
            }

            while (v17);
          }

          else
          {
            *v28 = v10 * v15;
            *&v28[4] = &HALB_CaptureFile::mSilenceBuffer;
            (*(*v6 + 24))(v6);
          }
        }

        if (v23)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }
      }
    }

    (*(**(v8 + 267) + 96))(*(v8 + 267), a5, v24, 0, *(v8 + 266));
    v20 = (v8 + 532);
    if (a3)
    {
      v20 = a3;
    }

    *(v8 + 266) = *v20 + a5;
    result = HALB_CaptureFile::WriteTimestamps(v8, a2, a3, a4, a5);
  }

  v21 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1DE61CEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::__shared_weak_count *a9)
{
  if (a2)
  {
    if (a9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a9);
    }

    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x1DE61CE20);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *HALB_CaptureFile::WriteTimestamps(atomic_uint *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(result + 267))
  {
    return result;
  }

  v8 = result;
  v9 = 0.0;
  if (a2)
  {
    v10 = *(a2 + 8);
    v11 = *a2;
    if (a4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    v12 = 0;
    if (a3)
    {
      goto LABEL_5;
    }

LABEL_8:
    v16 = 0;
    v14 = 0;
    v15 = 0.0;
    goto LABEL_9;
  }

  v10 = 0;
  v11 = 0.0;
  if (!a4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v9 = *a4;
  v12 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (!a3)
  {
    goto LABEL_8;
  }

LABEL_5:
  v14 = *(a3 + 8);
  v15 = *(a3 + 16);
  v16 = *a3;
LABEL_9:
  if ((result[538] - 2) <= 2)
  {
    result = AMCP::Feature_Flags::allow_ring_buffer_capture_trace(result);
    if (result)
    {
      return (*(**(v8 + 267) + 128))(*(v8 + 267), v10, v11, a5, v16, v14, a5, v9, v15, v12, v13, a3 == 0);
    }
  }

  v17 = *(v8 + 265);
  if (v17)
  {
    result = OSAtomicDequeue(*(v17 + 8), 0x68uLL);
    if (result)
    {
      if (a3)
      {
        result[4] = 0;
        *(result + 3) = v11;
        *(result + 4) = v10;
        v18 = *(a3 + 8);
        *(result + 5) = *a3;
        *(result + 6) = v18;
        *(result + 7) = a5;
        *(result + 8) = *(a3 + 16);
        *(result + 9) = v9;
        *(result + 10) = v12;
        *(result + 11) = v13;
        v19 = *(v8 + 265);
        LOBYTE(v18) = atomic_load(v19 + 16);
        if (v18)
        {
          v20 = *v19;
          do
          {
            v21 = *v20;
            atomic_store(*v20, result + 1);
            v22 = v21;
            atomic_compare_exchange_strong(v20, &v22, result);
          }

          while (v22 != v21);
          return ca::sync::semaphore::signal((v20 + 144));
        }
      }

      else
      {
        if (a2)
        {
          return result;
        }

        result[4] = 1;
        *(result + 7) = a5;
        v23 = *(v8 + 265);
        v24 = atomic_load(v23 + 16);
        if (v24)
        {
          v20 = *v23;
          do
          {
            v25 = *v20;
            atomic_store(*v20, result + 1);
            v26 = v25;
            atomic_compare_exchange_strong(v20, &v26, result);
          }

          while (v26 != v25);
          return ca::sync::semaphore::signal((v20 + 144));
        }
      }

      v27 = *(*result + 8);

      return v27();
    }
  }

  return result;
}

void sub_1DE61D194(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

void non-virtual thunk toHALS_IOUADevice::~HALS_IOUADevice(HALS_IOUADevice *this)
{
  HALS_IOUADevice::~HALS_IOUADevice((this - 1456));

  JUMPOUT(0x1E12C1730);
}

{
  HALS_IOUADevice::~HALS_IOUADevice((this - 1456));
}

void HALS_IOUADevice::~HALS_IOUADevice(HALS_IOUADevice *this)
{
  *this = &unk_1F5984490;
  v2 = (this + 1456);
  *(this + 182) = &unk_1F5984890;
  v3 = *(this + 197);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    HALS_ObjectMap::ObjectIsDead(*(this + 197), v4);
    *(this + 197) = 0;
  }

  AMCP::Utility::Dispatch_Queue::~Dispatch_Queue((this + 1584));
  v6 = *(this + 194);
  if (v6)
  {
    *(this + 195) = v6;
    operator delete(v6);
  }

  for (i = 0; i != -48; i -= 24)
  {
    v8 = *(this + i + 1528);
    if (v8)
    {
      *(this + i + 1536) = v8;
      operator delete(v8);
    }
  }

  HALS_IOUAObject::~HALS_IOUAObject(v2, v5);

  HALS_Device::~HALS_Device(this);
}

{
  HALS_IOUADevice::~HALS_IOUADevice(this);

  JUMPOUT(0x1E12C1730);
}

uint64_t HALS_IOUADevice::ExecuteWorkSyncOnConfigChangeQueue(uint64_t a1, uint64_t a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 1174405120;
  block[2] = ___ZN15HALS_IOUADevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_20_14307;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v7, a2);
  v3 = atomic_load((a1 + 1616));
  if (v3)
  {
    atomic_store(1u, (a1 + 1617));
  }

  dispatch_sync(*(a1 + 1584), block);
  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v7);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___ZN15HALS_IOUADevice34ExecuteWorkSyncOnConfigChangeQueueENSt3__18functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void sub_1DE61D428(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t HALS_IOUADevice::PerformNonDriverConfigChange(HALS_IOUADevice *this, BOOL a2, int a3)
{
  v4 = 0uLL;
  v5 = 0;
  return HALS_IOUADevice::HandleConfigurationChangeRequest(this, &v4, a3);
}

uint64_t HALS_IOUADevice::HandleConfigurationChangeRequest(uint64_t a1, __int128 *a2, int a3)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbj_block_invoke;
  v5[3] = &unk_1E86782D0;
  v8 = a3;
  v6 = *a2;
  v7 = *(a2 + 2);
  v5[4] = &v9;
  v5[5] = a1;
  AMCP::Utility::Dispatch_Queue::async(a1 + 1584, v5);
  v3 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void ___ZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbj_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  kdebug_trace();
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "HALS_IOUADevice.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 1317;
    v24 = 2080;
    v25 = v1 + 41;
    _os_log_impl(&dword_1DE1F9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  HALS_IOUADevice::HandleConfigurationChangeRequest: %s  --->", buf, 0x1Cu);
  }

  v20 = 0u;
  v21 = 0u;
  v14 = v1;
  v3 = v1[4];
  strcpy(buf, "bgfcbolg");
  buf[9] = 0;
  *&buf[10] = 0;
  HALS_NotificationManager::PropertiesChanged_Sync(v3, 0, 1, buf, v2);
  memset(v19, 0, sizeof(v19));
  v18[0] = 0;
  v18[1] = 0;
  HALS_System::GetInstance(buf, 0, v18);
  v4 = *buf;
  v5 = (*(*v14 + 208))(v14);
  v6 = v5;
  if (v5)
  {
    CFRetain(v5);
    cf = v6;
    v7 = CFGetTypeID(v6);
    if (v7 != CFStringGetTypeID())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    cf = 0;
  }

  HALS_System::GetRawDeviceListUsingClockDevice(v4, v19, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v9 = *(v14 + 197);
  memset(v16, 0, sizeof(v16));
  if (v9)
  {
    (*(*v9 + 224))(v9, v16);
  }

  v15[0] = 0;
  v15[1] = 0;
  HALS_System::GetInstance(buf, 0, v15);
  v12 = HALS_System::CopyClientByObjectID(*buf, *(a1 + 72));
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  HALS_ObjectMap::RetainObject(v12, v10);
  HALS_ObjectMap::RetainObject(v12, v11);
  v22 = 0;
  operator new();
}

void sub_1DE61E9CC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, HALS_ObjectMap *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2)
  {
    HALS_DeviceState::~HALS_DeviceState(&a71);
    HALS_ObjectMap::ReleaseObject(a11, v72);
    HALS_ObjectMap::ReleaseObject(a11, v73);
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1DE61E420);
  }

  _Unwind_Resume(a1);
}

void HALS_IOUADevice::UpdateStreams(HALS_IOUADevice *this, BOOL *a2)
{
  *a2 = 0;
  HALS_IOUADevice::get_stream_list(&v72, this, 0);
  HALS_IOUADevice::get_stream_list(&v70, this, 1);
  v4 = v72;
  v5 = v70;
  v62 = 0;
  v63 = &v62;
  v64 = 0x4002000000;
  v65 = __Block_byref_object_copy__12;
  v66 = __Block_byref_object_dispose__13;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v54 = 0;
  v55 = &v54;
  v56 = 0x4002000000;
  v57 = __Block_byref_object_copy__12;
  v58 = __Block_byref_object_dispose__13;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x4002000000;
  v49 = __Block_byref_object_copy__12;
  v50 = __Block_byref_object_dispose__13;
  v51 = 0;
  v52 = 0;
  v53 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3002000000;
  v43 = __Block_byref_object_copy__14;
  v44 = __Block_byref_object_dispose__15;
  v45 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4002000000;
  v35 = __Block_byref_object_copy__12;
  v36 = __Block_byref_object_dispose__13;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1174405120;
  v23[2] = ___ZN15HALS_IOUADevice13UpdateStreamsEPb_block_invoke;
  v23[3] = &unk_1F59848B8;
  v23[9] = this;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&v24, v72, v73, (v73 - v72) >> 2);
  v27 = v4;
  __p = 0;
  v29 = 0;
  v30 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(&__p, v70, v71, (v71 - v70) >> 2);
  v23[4] = &v62;
  v23[5] = &v54;
  v23[6] = &v40;
  v23[7] = &v46;
  v31 = v5;
  v23[8] = &v32;
  v6 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v6, v23);
  v10 = v41;
  *a2 = *(v41 + 40);
  a2[1] = *(v10 + 41);
  v11 = v63[5];
  v12 = v63[6];
  while (v11 != v12)
  {
    (***v11)(*v11, v7, v8, v9);
    ++v11;
  }

  v13 = v55[5];
  v14 = v55[6];
  while (v13 != v14)
  {
    (***v13)(*v13, v7, v8, v9);
    ++v13;
  }

  v15 = v47[5];
  v16 = v47[6];
  while (v15 != v16)
  {
    v17 = *v15;
    HALS_IOUAStream::SynchronizeWithHardware(*v15);
    HALS_ObjectMap::ReleaseObject(v17, v18);
    ++v15;
  }

  v19 = v33[5];
  v20 = v33[6];
  while (v19 != v20)
  {
    v21 = *v19;
    HALS_IOUAStream::SynchronizeWithHardware(*v19);
    HALS_ObjectMap::ReleaseObject(v21, v22);
    ++v19;
  }

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  _Block_object_dispose(&v32, 8);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v46, 8);
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  _Block_object_dispose(&v54, 8);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  _Block_object_dispose(&v62, 8);
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void sub_1DE61F130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a27, 8);
  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  if (a46)
  {
    a47 = a46;
    operator delete(a46);
  }

  _Block_object_dispose((v47 - 224), 8);
  v49 = *(v47 - 184);
  if (v49)
  {
    *(v47 - 176) = v49;
    operator delete(v49);
  }

  _Block_object_dispose((v47 - 160), 8);
  v50 = *(v47 - 120);
  if (v50)
  {
    *(v47 - 112) = v50;
    operator delete(v50);
  }

  v51 = *(v47 - 96);
  if (v51)
  {
    *(v47 - 88) = v51;
    operator delete(v51);
  }

  v52 = *(v47 - 72);
  if (v52)
  {
    *(v47 - 64) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

uint64_t HALS_IOUADevice::UpdateControls(HALS_IOUADevice *this)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x2000000000;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x4002000000;
  v22 = __Block_byref_object_copy__14330;
  v23 = __Block_byref_object_dispose__14331;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x4002000000;
  v14 = __Block_byref_object_copy__14330;
  v15 = __Block_byref_object_dispose__14331;
  __p = 0;
  v17 = 0;
  v18 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___ZN15HALS_IOUADevice14UpdateControlsEv_block_invoke;
  v10[3] = &unk_1E86782A8;
  v10[4] = &v27;
  v10[5] = &v19;
  v10[6] = &v11;
  v10[7] = this;
  v1 = (*(*this + 64))(this);
  HALB_CommandGate::ExecuteCommand(v1, v10);
  v2 = v20[5];
  v3 = v20[6];
  while (v2 != v3)
  {
    (***v2++)();
  }

  v4 = v12[5];
  for (i = v12[6]; v4 != i; ++v4)
  {
    v6 = *v4;
    if (HALS_IOUAControl::RefreshCache(*v4))
    {
      *(v28 + 24) = 1;
    }

    HALS_ObjectMap::ReleaseObject(v6, v7);
  }

  v8 = *(v28 + 24);
  _Block_object_dispose(&v11, 8);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&v19, 8);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  _Block_object_dispose(&v27, 8);
  return v8;
}

void sub_1DE61F42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31)
{
  _Block_object_dispose(&a17, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  if (a30)
  {
    a31 = a30;
    operator delete(a30);
  }

  _Block_object_dispose((v31 - 80), 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__14330(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__14331(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN15HALS_IOUADevice14UpdateControlsEv_block_invoke(uint64_t a1)
{
  v70 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = *(v2 + 1464);
  v4 = *(v3 + 736);
  v5 = *(v3 + 744);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v4 + 4), "lrtcbolg", *(v2 + 1472), 0, 0);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (PropertySize >= 4)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&__p, PropertySize >> 2);
    v9 = __p;
    *buf = v59 - __p;
    v10 = *(v2 + 1464);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v11 + 4), "lrtcbolg", *(v2 + 1472), 0, 0, v9, buf);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }

    v7 = __p;
    v8 = v59;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    __p = 0;
    v59 = 0;
    v60 = 0;
  }

  v13 = v8 - v7;
  v55 = a1;
  v56 = *(*(a1 + 40) + 8);
  v14 = *(v2 + 1552);
  v15 = *(v2 + 1560);
  v16 = 0;
  while (v14 != v15)
  {
    v18 = *v14++;
    v17 = v18;
    *(v18 + 13) = 0;
    if (*(v18 + 60) == 1)
    {
      v16 = v17;
    }
  }

  if ((v13 & 0x3FFFFFFFCLL) != 0)
  {
    v19 = 0;
    v57 = (v13 >> 2);
    do
    {
      *buf = 0;
      v20 = *(v2 + 1552);
      v21 = *(v2 + 1560);
      if (v20 != v21)
      {
        while (!*v20 || *(*v20 + 88) != v7[v19])
        {
          v20 += 8;
          if (v20 == v21)
          {
            goto LABEL_25;
          }
        }
      }

      if (v20 == v21)
      {
LABEL_25:
        v22 = v7[v19];
        if (v22)
        {
          v23 = *(v2 + 1464);
          v24 = *(v23 + 736);
          v25 = *(v23 + 744);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          outputStruct = 0;
          v61 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v24 + 4), "salcbolg", v22, 0, 0, &outputStruct, &v61);
          if (v25)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v25);
          }

          v26 = *(v2 + 1464);
          v27 = *(v26 + 736);
          v28 = *(v26 + 744);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v64 = 0;
          v63 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v27 + 4), "slcbbolg", v22, 0, 0, &v64, &v63);
          if (v28)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          v29 = *(v2 + 1464);
          v30 = *(v29 + 736);
          v31 = *(v29 + 744);
          if (v31)
          {
            atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v66 = 0;
          v65 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v30 + 4), "pcscbolg", v22, 0, 0, &v66, &v65);
          if (v31)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v31);
          }

          v32 = *(v2 + 1464);
          v33 = *(v32 + 736);
          v34 = *(v32 + 744);
          if (v34)
          {
            atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v68 = 0;
          v67 = 4;
          HALS_IOUAUCDriver::GetPropertyData(*(v33 + 4), "mlecbolg", v22, 0, 0, &v68, &v67);
          if (v34)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v34);
          }

          operator new();
        }
      }

      else
      {
        *(*v20 + 13) = 1;
      }

      ++v19;
    }

    while (v19 != v57);
  }

  if (*(v2 + 1512) != *(v2 + 1504))
  {
    if ((*(v2 + 464) & 0x1FFFFFFFFLL) != 0x100000001 || v16 == 0)
    {
      operator new();
    }

    *(v16 + 13) = 1;
  }

  v36 = *(v2 + 1552);
  v37 = *(v2 + 1560);
  if (v36 == v37)
  {
    v39 = 0;
  }

  else
  {
    while (1)
    {
      v38 = *v36;
      if (*v36)
      {
        if (*(v38 + 13) != 1)
        {
          break;
        }
      }

      if (++v36 == v37)
      {
        v39 = 0;
        v36 = *(v2 + 1560);
        goto LABEL_65;
      }
    }

    (*(*v38 + 8))(v38);
    HALS_ObjectMap::ObjectIsDead(*v36, v40);
    v39 = 1;
    if (v36 != v37)
    {
      v41 = v36 + 1;
      if (v36 + 1 != v37)
      {
        do
        {
          v42 = *v41;
          if (*v41 && (*(v42 + 13) & 1) == 0)
          {
            (*(*v42 + 8))(v42);
            HALS_ObjectMap::ObjectIsDead(*v41, v43);
          }

          else
          {
            *v36++ = v42;
          }

          ++v41;
        }

        while (v41 != v37);
        v39 = 1;
      }
    }
  }

LABEL_65:
  v44 = (v2 + 1552);
  v45 = *(v2 + 1560);
  if (v36 != v45)
  {
    v46 = *(v2 + 1560);
    v45 = v36;
    *(v2 + 1560) = v36;
  }

  v48 = *(v56 + 40);
  v47 = *(v56 + 48);
  if (v47 != v48)
  {
    do
    {
      *buf = *v48;
      std::vector<HALS_Device *>::push_back[abi:ne200100](v2 + 1552, buf);
      ++v48;
    }

    while (v48 != v47);
    v45 = *(v2 + 1560);
    v39 = 1;
  }

  v49 = *v44;
  if (*v44 != v45)
  {
    v50 = *v44;
    while (*(*v50 + 20) != 1702259059)
    {
      v50 += 8;
      if (v50 == v45)
      {
        goto LABEL_76;
      }
    }

    *(v2 + 464) = *(*v50 + 60);
    *(v2 + 468) = 1;
  }

LABEL_76:
  *(*(*(v55 + 32) + 8) + 24) = v39;
  v51 = *(*(v55 + 48) + 8);
  if (v44 != (v51 + 40))
  {
    std::vector<HALS_IOUAControl *>::__assign_with_size[abi:ne200100]<HALS_IOUAControl **,HALS_IOUAControl **>((v51 + 40), v49, v45, (v45 - v49) >> 3);
  }

  v52 = *(v51 + 40);
  v53 = *(v51 + 48);
  while (v52 != v53)
  {
    HALS_ObjectMap::RetainObject(*v52++, v49);
  }

  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  v54 = *MEMORY[0x1E69E9840];
}

void sub_1DE61FC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void HALS_IOUADevice::get_stream_list(HALS_IOUADevice *this, uint64_t a2, int a3)
{
  v14.mElement = 0;
  *&v14.mSelector = *"#mtsptuo";
  if (a3)
  {
    v14.mScope = 1768845428;
  }

  v5 = *(a2 + 1464);
  v6 = *(v5 + 736);
  v7 = *(v5 + 744);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v6 + 4), &v14, *(a2 + 1472), 0, 0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (PropertySize > 3)
  {
    std::vector<unsigned int>::vector[abi:ne200100](this, PropertySize >> 2);
    v9 = *this;
    v13 = *(this + 1) - *this;
    v10 = *(a2 + 1464);
    v11 = *(v10 + 736);
    v12 = *(v10 + 744);
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *this;
    }

    HALS_IOUAUCDriver::GetPropertyData(*(v11 + 4), &v14, *(a2 + 1472), 0, 0, v9, &v13);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
  }
}

void sub_1DE61FDCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__12(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__13(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void ___ZN15HALS_IOUADevice13UpdateStreamsEPb_block_invoke(void *a1)
{
  v1 = 0;
  v19 = *MEMORY[0x1E69E9840];
  v2 = (a1[11] - a1[10]) >> 2;
  v3 = a1[13];
  v4 = (a1[15] - a1[14]) >> 2;
  v5 = a1[17];
  v6 = *(a1[5] + 8);
  v7 = *(a1[6] + 8);
  v8 = *(v6 + 40);
  v18 = a1[9];
  *(*(a1[4] + 8) + 48) = *(*(a1[4] + 8) + 40);
  *(v6 + 48) = v8;
  v9 = v18 + 1504;
  v10 = 1;
  while (1)
  {
    v11 = v10;
    v12 = *(v9 + 24 * v1);
    v13 = *(v9 + 24 * v1 + 8) - v12;
    if ((v13 & 0x7FFFFFFF8) != 0)
    {
      v14 = v13 >> 3;
      v15 = (v13 >> 3);
      do
      {
        if (!v14)
        {
          std::vector<std::tuple<unsigned int,void *,unsigned int>>::__throw_out_of_range[abi:ne200100]();
        }

        v16 = *v12++;
        *(v16 + 13) = 0;
        --v14;
        --v15;
      }

      while (v15);
    }

    v10 = 0;
    *(v7 + 40 + v1) = 0;
    v1 = 1;
    if ((v11 & 1) == 0)
    {
      v17 = *(v18 + 464) & 0x1FFFFFFFFLL;
      HALS_ReferenceStreamStateManager::ReferenceStreamIsEnabledForAnyClientOrContext(*(v18 + 448));
      operator new();
    }
  }
}

void __destroy_helper_block_e8_80c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE112c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    a1[15] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;

    operator delete(v3);
  }
}

uint64_t __copy_helper_block_e8_80c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE112c39_ZTSNSt3__16vectorIjNS_9allocatorIjEEEE(void *a1, uint64_t *a2)
{
  a1[10] = 0;
  a1[11] = 0;
  a1[12] = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 10), a2[10], a2[11], (a2[11] - a2[10]) >> 2);
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((a1 + 14), a2[14], a2[15], (a2[15] - a2[14]) >> 2);
}

void sub_1DE620688(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void HALS_IOUADevice::_CopyStreamList(uint64_t a1, char *a2, void **a3)
{
  v4 = (a1 + 24 * a2 + 1504);
  if (v4 == a3)
  {
    v13 = a3[1];
  }

  else
  {
    v5 = *v4;
    v6 = *(a1 + 24 * a2 + 1512);
    v7 = v6 - *v4;
    v8 = a3[2];
    v9 = *a3;
    if (v8 - *a3 < v7)
    {
      v10 = v7 >> 3;
      if (v9)
      {
        a3[1] = v9;
        operator delete(v9);
        v8 = 0;
        *a3 = 0;
        a3[1] = 0;
        a3[2] = 0;
      }

      if (!(v10 >> 61))
      {
        v11 = v8 >> 2;
        if (v8 >> 2 <= v10)
        {
          v11 = v7 >> 3;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (!(v12 >> 61))
        {
          std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
        }
      }

      std::vector<void *>::__throw_length_error[abi:ne200100]();
    }

    v14 = a3[1];
    v15 = v14 - v9;
    if (v14 - v9 >= v7)
    {
      if (v6 != v5)
      {
        memmove(v9, v5, v7);
      }

      v13 = &v9[v7];
    }

    else
    {
      if (v14 != v9)
      {
        memmove(*a3, v5, v14 - v9);
        v14 = a3[1];
      }

      a2 = &v5[v15];
      v16 = v6 - &v5[v15];
      if (v16)
      {
        memmove(v14, a2, v16);
      }

      v13 = &v14[v16];
    }

    a3[1] = v13;
  }

  for (i = *a3; i != v13; ++i)
  {
    v18 = *i;
    HALS_ObjectMap::RetainObject(v18, a2);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](*(a2 + 8), "ZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS_19ConfigChangePayloadEbjEUb_E3$_8"))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEEclESB_(uint64_t a1, _DWORD *a2)
{
  if (*a2 != 1752122448 || *(a1 + 8) == 0)
  {
    return 0;
  }

  else
  {
    return *(a1 + 8);
  }
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE18destroy_deallocateEv(HALS_ObjectMap **a1, HALS_Object *a2)
{
  HALS_ObjectMap::ReleaseObject(a1[1], a2);

  operator delete(a1);
}

void _ZNKSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, HALS_Object *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5984960;
  *(a2 + 1) = v2;
  HALS_ObjectMap::RetainObject(v2, a2);
}

void _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED0Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5984960;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);

  JUMPOUT(0x1E12C1730);
}

uint64_t _ZNSt3__110__function6__funcIZZN15HALS_IOUADevice32HandleConfigurationChangeRequestENS2_19ConfigChangePayloadEbjEUb_E3__8NS_9allocatorIS4_EEFP11HALS_ClientRK26AudioObjectPropertyAddressEED1Ev(uint64_t a1, HALS_Object *a2)
{
  *a1 = &unk_1F5984960;
  HALS_ObjectMap::ReleaseObject(*(a1 + 8), a2);
  return a1;
}

uint64_t HALS_IOUADevice::_SetDSPForClient(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = xmmword_1DE758170;
  v5 = 0;
  if (a3)
  {
    LODWORD(a3) = *(a3 + 16);
  }

  return HALS_IOUADevice::HandleConfigurationChangeRequest(a1, &v4, a3);
}

void HALS_IOUADevice::GetDefaultChannelLayoutPropertyData(HALS_IOUADevice *this, unsigned int a2, const AudioObjectPropertyAddress *a3, AudioChannelLayout *a4, unsigned int *a5, _DWORD *a6, unsigned int a7, void *a8, HALS_Client *a9, unsigned int a10, unsigned int *a11, unsigned int a12, BOOL a13)
{
  *a6 = 0;
  a6[2] = a12;
  if (a12)
  {
    v15 = a6 + 4;
    v16 = a12;
    do
    {
      *(v15 - 1) = -1;
      *v15 = 0;
      v15[1] = 0;
      v15 = (v15 + 20);
      --v16;
    }

    while (v16);
  }

  *a5 = a10;
  v17.mElement = 1936879204;
  v18 = *(this + 183);
  v19 = *(v18 + 736);
  v20 = *(v18 + 744);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&v17.mSelector = *(this + 368);
  HALS_IOUAUCDriver::get_array_property(&theArray, v19, v17, 0x676C6F62, a8);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = theArray;
  if (!theArray)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v22 = 0;
  v23 = 3;
  while (v22 < CFArrayGetCount(v21) && v22 < a6[2])
  {
    if (!theArray)
    {
      v25 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v25, "Could not construct");
      __cxa_throw(v25, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    a6[v23] = applesauce::CF::details::at_to<unsigned int>(theArray, v22++);
    v21 = theArray;
    v23 += 5;
    if (!theArray)
    {
      goto LABEL_14;
    }
  }

  HALS_Device::ThrowIfInvalidACL(a6, a4, a12);
  if (theArray)
  {
    CFRelease(theArray);
  }
}

void sub_1DE620C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ArrayRef::~ArrayRef(va);
  _Unwind_Resume(a1);
}

uint64_t applesauce::CF::details::at_to<unsigned int>(const __CFArray *a1, unint64_t a2)
{
  if (CFArrayGetCount(a1) <= a2 || (ValueAtIndex = CFArrayGetValueAtIndex(a1, a2)) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::not_found(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::convert_to<unsigned int,0>(ValueAtIndex);
}

HALS_ObjectMap *HALS_IOUADevice::_CopyControlByDescription(HALS_IOUADevice *this, HALS_Object *a2, int a3, int a4)
{
  v4 = *(this + 194);
  v5 = *(this + 195);
  if (v4 != v5)
  {
    while (1)
    {
      v6 = *v4;
      if (*v4)
      {
        if (*(v6 + 5) == a2 && *(v6 + 12) == a3 && *(v6 + 13) == a4)
        {
          break;
        }
      }

      if (++v4 == v5)
      {
        return 0;
      }
    }
  }

  if (v4 == v5)
  {
    return 0;
  }

  v7 = *v4;
  HALS_ObjectMap::RetainObject(*v4, a2);
  return v7;
}

HALS_ObjectMap *HALS_IOUADevice::_CopyControlByIndex(HALS_IOUADevice *this, HALS_Object *a2)
{
  v2 = *(this + 194);
  if (a2 >= ((*(this + 195) - v2) >> 3))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 8 * a2);
  }

  HALS_ObjectMap::RetainObject(v3, a2);
  return v3;
}

void HALS_IOUADevice::_CopyControls(HALS_IOUADevice *this, HALS_Device::BasicControlList *a2)
{
  v2 = *(this + 194);
  for (i = *(this + 195); v2 != i; ++v2)
  {
    HALS_ObjectMap::RetainObject(*v2, a2);
    v5 = *v2;
    v7 = *(a2 + 1);
    v6 = *(a2 + 2);
    if (v7 >= v6)
    {
      v9 = (v7 - *a2) >> 3;
      if ((v9 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v10 = v6 - *a2;
      v11 = v10 >> 2;
      if (v10 >> 2 <= (v9 + 1))
      {
        v11 = v9 + 1;
      }

      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v12);
      }

      v13 = (8 * v9);
      *v13 = v5;
      v8 = 8 * v9 + 8;
      v14 = *(a2 + 1) - *a2;
      v15 = v13 - v14;
      memcpy(v13 - v14, *a2, v14);
      v16 = *a2;
      *a2 = v15;
      *(a2 + 1) = v8;
      *(a2 + 2) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v7 = v5;
      v8 = (v7 + 1);
    }

    *(a2 + 1) = v8;
  }
}

void HALS_IOUADevice::_CopyStreamList(uint64_t a1, unsigned int a2, void *a3)
{
  a3[1] = *a3;
  v4 = a1 + 24 * a2;
  std::vector<HALS_Stream *>::reserve(a3, (*(v4 + 1512) - *(v4 + 1504)) >> 3);
  v6 = *(v4 + 1504);
  for (i = *(v4 + 1512); v6 != i; ++v6)
  {
    HALS_ObjectMap::RetainObject(*v6, v5);
    v8 = *v6;
    v10 = a3[1];
    v9 = a3[2];
    if (v10 >= v9)
    {
      v12 = (v10 - *a3) >> 3;
      if ((v12 + 1) >> 61)
      {
        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v9 - *a3;
      v14 = v13 >> 2;
      if (v13 >> 2 <= (v12 + 1))
      {
        v14 = v12 + 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v15 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v14;
      }

      if (v15)
      {
        std::allocator<HALS_Device *>::allocate_at_least[abi:ne200100](v15);
      }

      v16 = (8 * v12);
      *v16 = v8;
      v11 = 8 * v12 + 8;
      v17 = a3[1] - *a3;
      v18 = v16 - v17;
      memcpy(v16 - v17, *a3, v17);
      v19 = *a3;
      *a3 = v18;
      a3[1] = v11;
      a3[2] = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v10 = v8;
      v11 = (v10 + 1);
    }

    a3[1] = v11;
  }
}

uint64_t HALS_IOUADevice::_GetTotalNumberChannels(HALS_IOUADevice *this, unsigned int a2)
{
  v2 = this + 24 * a2;
  v3 = *(v2 + 188);
  if (v3 == *(v2 + 189))
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = v2 + 1504;
  do
  {
    v6 = *v3++;
    v7 = v6[4];
    v11 = 0x676C6F6270667420;
    v12 = 0;
    v13 = 0;
    (*(*v6 + 120))(v6, v7, &v11, 40, &v13, v9, 0, 0, 0);
    v4 = (v10 + v4);
  }

  while (v3 != *(v5 + 1));
  return v4;
}

CFTypeRef HALS_IOUADevice::_CopyDefaultElementName(HALS_IOUADevice *this, AudioObjectPropertyScope a2, AudioObjectPropertyElement a3)
{
  cf[3] = *MEMORY[0x1E69E9840];
  v15.mSelector = 1818454126;
  v15.mScope = a2;
  v15.mElement = a3;
  v5 = *(this + 183);
  v6 = *(v5 + 736);
  v7 = *(v5 + 744);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v6 + 4), &v15, *(this + 368));
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (HasProperty)
  {
    v9 = *(this + 183);
    v10 = *(v9 + 736);
    v11 = *(v9 + 744);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&v17.mSelector = *(this + 368);
    v17.mElement = v15.mSelector;
    HALS_IOUAUCDriver::get_string_property(cf, v10, v17, a3, 0);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    v12 = CFRetain(cf[0]);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1DE6212F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

HALS_ObjectMap *HALS_IOUADevice::_CopyStreamByIndex(HALS_IOUADevice *this, HALS_Object *a2, unsigned int a3)
{
  v3 = this + 24 * a2;
  v4 = *(v3 + 189);
  v5 = *(v3 + 188);
  if (a3 >= ((v4 - v5) >> 3))
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v5 + 8 * a3);
  }

  HALS_ObjectMap::RetainObject(v6, a2);
  return v6;
}

BOOL HALS_IOUADevice::IsClockStable(HALS_IOUADevice *this)
{
  v5 = 0;
  v4 = *"btscbolg";
  v2 = 4;
  v3 = 0;
  (*(*this + 120))(this, *(this + 368), &v4, 4, &v2, &v3, 0, 0, 0);
  return v3 != 0;
}

uint64_t HALS_IOUADevice::GetClockAlgorithm(HALS_IOUADevice *this)
{
  v5 = 0;
  v4 = *"kolcbolg";
  v2 = 4;
  v3 = 0;
  (*(*this + 120))(this, *(this + 368), &v4, 4, &v2, &v3, 0, 0, 0);
  return v3;
}

uint64_t HALS_IOUADevice::DoAnyQueuesHaveWorkAfterFlush(HALS_IOUADevice *this)
{
  v1 = atomic_load(this + 817);
  if (v1 & 1) != 0 || (v2 = atomic_load(this + 1153), (v2))
  {
    v3 = atomic_load(this + 1617);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void HALS_IOUADevice::FlushAllQueues(HALS_IOUADevice *this)
{
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 784));
  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1120));

  AMCP::Utility::Dispatch_Queue::flush_all_work((this + 1584));
}

void HALS_IOUADevice::SetPropertyData(HALS_IOUADevice *this, const AudioObjectPropertyAddress *a2, AudioObjectPropertyAddress *a3, unsigned int a4, AudioObjectPropertyAddress *a5, unsigned int a6, _DWORD *a7, AudioObjectPropertyAddress *a8)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a3->mSelector == 1853059700)
  {
    if (a4 <= 7)
    {
      v27 = atomic_load(StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics_initialized);
      if ((v27 & 1) == 0)
      {
        AMCP::Log::AMCP_Scope_Registry::initialize(this);
      }

      v29 = **StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics;
      v28 = *(*StaticContainer<AMCP::Log::AMCP_Scope_Registry_Statics>::s_statics + 8);
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
        v30 = *v29;
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      else
      {
        v30 = *v29;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v41 = "HALS_IOUADevice.cpp";
        v42 = 1024;
        v43 = 673;
        v44 = 2080;
        v45 = "inDataSize < SizeOf32(Float64)";
        _os_log_error_impl(&dword_1DE1F9000, v30, OS_LOG_TYPE_ERROR, "%32s:%-5d Throwing Exception: %s bad property data size for kAudioDevicePropertyNominalSampleRate", buf, 0x1Cu);
      }

      AMCP::Utility::With_Realtime_Disabled::With_Realtime_Disabled(&v39);
      __cxa_allocate_exception(0x40uLL);
      std::runtime_error::runtime_error(&v32, "kAudioHardwareBadPropertySizeError");
      std::runtime_error::runtime_error(&v33, &v32);
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = -1;
      v33.__vftable = &unk_1F5992170;
      v34 = &unk_1F5992198;
      boost::exception_detail::clone_impl<boost::exception_detail::error_info_injector<std::runtime_error>>::clone_impl(buf, &v33);
      v46 = "virtual void HALS_IOUADevice::SetPropertyData(AudioObjectID, const AudioObjectPropertyAddress &, UInt32, const void *, UInt32, const void *, HALS_Client *)";
      v47 = "/Library/Caches/com.apple.xbs/Sources/AudioHAL/Source/HAL/Core/IOUserAudio/HALS_IOUADevice.cpp";
      v48 = 673;
      applesauce::backtrace::snapshot_N<64>::snapshot_N(&v31);
    }

    v14 = *(this + 183);
    v15 = *(v14 + 736);
    v16 = *(v14 + 744);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HALS_IOUAUCDriver::SetPropertyData(v15, a3, *(this + 368), a7, a6, a5, a4);
    if (v16)
    {
      v17 = *MEMORY[0x1E69E9840];

      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v26 = *MEMORY[0x1E69E9840];
    }
  }

  else if (HALS_Device::HasProperty(this, a2, a3, a8))
  {
    v24 = *MEMORY[0x1E69E9840];

    HALS_Device::SetPropertyData(this, a2, a3, a4, &a5->mSelector, a6, a7, a8);
  }

  else
  {
    v25 = *MEMORY[0x1E69E9840];

    HALS_IOUAObject::SetPropertyData((this + 1456), &a3->mSelector, a5, a7, v20, v21, v22, v23);
  }
}

void sub_1DE621920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, std::runtime_error a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_1DE622CEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::GetPropertyDataSize(HALS_IOUADevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, unsigned int a4, _DWORD *a5, AudioObjectPropertyAddress *a6)
{
  mSelector = a3->mSelector;
  PropertySize = 8;
  if (a3->mSelector <= 1819107690)
  {
    if (mSelector > 1735354733)
    {
      if (mSelector > 1768124269)
      {
        if (mSelector <= 1818850144)
        {
          if (mSelector != 1768124270)
          {
            v15 = 1768777573;
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        if (mSelector == 1818850145)
        {
          goto LABEL_51;
        }

        v15 = 1818850162;
      }

      else
      {
        if (mSelector <= 1751412336)
        {
          if (mSelector != 1735354734)
          {
            v14 = 1735356005;
            goto LABEL_16;
          }

          return 4;
        }

        if (mSelector == 1751412337)
        {
          goto LABEL_51;
        }

        v15 = 1751737454;
      }

LABEL_50:
      if (mSelector != v15)
      {
        goto LABEL_56;
      }

      goto LABEL_51;
    }

    if (mSelector <= 1668510817)
    {
      if (mSelector != 1634429294 && mSelector != 1668049764)
      {
        v15 = 1668050795;
        goto LABEL_50;
      }
    }

    else
    {
      if (mSelector > 1668641651)
      {
        if (mSelector == 1668641652)
        {
          return (*(this + 372) - *(this + 370)) & 0xFFFFFFFC;
        }

        v15 = 1684434036;
        goto LABEL_50;
      }

      if (mSelector != 1668510818)
      {
        v13 = 1668639076;
        goto LABEL_25;
      }
    }

LABEL_51:
    v16 = *(this + 183);
    v17 = *(v16 + 736);
    v18 = *(v16 + 744);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    PropertySize = HALS_IOUAUCDriver::GetPropertySize(*(v17 + 4), a3, *(this + 368), a5, a4);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }

    return PropertySize;
  }

  if (mSelector > 1919251298)
  {
    if (mSelector > 1935763059)
    {
      if (mSelector > 1953653101)
      {
        if (mSelector == 1969841184)
        {
          return PropertySize;
        }

        v15 = 1953653102;
        goto LABEL_50;
      }

      if (mSelector != 1935763060)
      {
        v15 = 1936092276;
        goto LABEL_50;
      }
    }

    else
    {
      if (mSelector <= 1919512166)
      {
        if (mSelector != 1919251299)
        {
          v14 = 1919251302;
LABEL_16:
          if (mSelector != v14)
          {
            goto LABEL_56;
          }

          return 4;
        }

        return 4;
      }

      if (mSelector != 1919512167)
      {
        v15 = 1920168547;
        goto LABEL_50;
      }
    }

    goto LABEL_51;
  }

  if (mSelector <= 1836411235)
  {
    if (mSelector <= 1819173228)
    {
      if (mSelector != 1819107691)
      {
        v13 = 1819111268;
        goto LABEL_25;
      }

      return PropertySize;
    }

    if (mSelector == 1819173229)
    {
      return PropertySize;
    }

    v15 = 1819569763;
    goto LABEL_50;
  }

  if (mSelector > 1853059618)
  {
    if (mSelector == 1853059619)
    {
      NumberStreams = HALS_IODevice::GetNumberStreams(this, 0);
      if (NumberStreams || HALS_IODevice::GetNumberStreams(this, 1))
      {
        v26 = HALS_IODevice::CopyStreamByIndex(this, NumberStreams == 0, 0);
        if (v26)
        {
          NumberAvailablePhysicalFormats = HALS_Stream::GetNumberAvailablePhysicalFormats(v26);
        }

        else
        {
          NumberAvailablePhysicalFormats = 0;
        }

        v37 = NumberAvailablePhysicalFormats;
        operator new[]();
      }

      *&__p.mSelector = 0x676C6F626E737223;
      __p.mElement = 0;
      v28 = *(this + 183);
      v29 = *(v28 + 736);
      v30 = *(v28 + 744);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v29 + 4), &__p, *(this + 368));
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (!HasProperty)
      {
        return 16;
      }

      v32 = *(this + 183);
      v33 = *(v32 + 736);
      v34 = *(v32 + 744);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = HALS_IOUAUCDriver::GetPropertySize(*(v33 + 4), &__p, *(this + 368), a5, a4);
      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      return (2 * v35) & 0xFFFFFFF0;
    }

    v15 = 1853059700;
    goto LABEL_50;
  }

  if (mSelector == 1836411236)
  {
    return PropertySize;
  }

  v13 = 1851878764;
LABEL_25:
  if (mSelector == v13)
  {
    return PropertySize;
  }

LABEL_56:
  if (HALS_Device::HasProperty(this, a2, a3, a6))
  {

    return HALS_Device::GetPropertyDataSize(this, v20, a3, a4, a5, a6);
  }

  else
  {

    return HALS_IOUAObject::GetPropertyDataSize((this + 1456), a3, v21, v22, v23, v24);
  }
}

void sub_1DE623504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::IsPropertySettable(HALS_IOUADevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  IsPropertySettable = 0;
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1819111267)
  {
    if (mSelector <= 1735356004)
    {
      if (mSelector <= 1668510817)
      {
        if (mSelector != 1634429294 && mSelector != 1668049764 && mSelector != 1668050795)
        {
          goto LABEL_59;
        }

        goto LABEL_54;
      }

      if (mSelector <= 1668641651)
      {
        if (mSelector == 1668510818)
        {
          goto LABEL_54;
        }

        v9 = 1668639076;
        goto LABEL_53;
      }

      if (mSelector != 1668641652)
      {
        v12 = 1735354734;
LABEL_45:
        if (mSelector != v12)
        {
          goto LABEL_59;
        }
      }
    }

    else
    {
      if (mSelector > 1768777572)
      {
        if (mSelector > 1818850161)
        {
          if (mSelector == 1818850162)
          {
            goto LABEL_54;
          }

          v9 = 1819107691;
        }

        else
        {
          if (mSelector == 1768777573)
          {
            goto LABEL_54;
          }

          v9 = 1818850145;
        }

        goto LABEL_53;
      }

      if (mSelector > 1751737453)
      {
        if (mSelector == 1751737454)
        {
          goto LABEL_54;
        }

        v9 = 1768124270;
        goto LABEL_53;
      }

      if (mSelector != 1735356005)
      {
        v9 = 1751412337;
        goto LABEL_53;
      }
    }

    return IsPropertySettable;
  }

  if (mSelector > 1919251301)
  {
    if (mSelector > 1936092275)
    {
      if (mSelector > 1953653101)
      {
        if (mSelector == 1969841184)
        {
          goto LABEL_54;
        }

        v9 = 1953653102;
      }

      else
      {
        if (mSelector == 1936092276)
        {
          goto LABEL_54;
        }

        v9 = 1937009955;
      }

      goto LABEL_53;
    }

    if (mSelector > 1920168546)
    {
      if (mSelector == 1920168547)
      {
        goto LABEL_54;
      }

      v9 = 1935763060;
      goto LABEL_53;
    }

    if (mSelector != 1919251302)
    {
      v9 = 1919512167;
      goto LABEL_53;
    }

    return IsPropertySettable;
  }

  if (mSelector > 1851878763)
  {
    if (mSelector <= 1853059699)
    {
      if (mSelector == 1851878764)
      {
        goto LABEL_54;
      }

      v9 = 1853059619;
      goto LABEL_53;
    }

    if (mSelector == 1853059700)
    {
      goto LABEL_54;
    }

    v12 = 1919251299;
    goto LABEL_45;
  }

  if (mSelector <= 1819569762)
  {
    if (mSelector != 1819111268)
    {
      v9 = 1819173229;
      goto LABEL_53;
    }

LABEL_54:
    v13 = *(this + 183);
    v14 = *(v13 + 736);
    v15 = *(v13 + 744);
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    IsPropertySettable = HALS_IOUAUCDriver::GetIsPropertySettable(*(v14 + 4), a3, *(this + 368));
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    return IsPropertySettable;
  }

  if (mSelector == 1819569763)
  {
    goto LABEL_54;
  }

  v9 = 1836411236;
LABEL_53:
  if (mSelector == v9)
  {
    goto LABEL_54;
  }

LABEL_59:
  if (HALS_Device::HasProperty(this, a2, a3, a4))
  {

    return HALS_Device::IsPropertySettable(this, v17, a3, a4);
  }

  else
  {

    return HALS_IOUAObject::IsPropertySettable((this + 1456), a3, v18, v19);
  }
}

void sub_1DE6238F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::HasProperty(HALS_IOUADevice *this, unsigned int a2, AudioObjectPropertyAddress *a3, AudioObjectPropertyAddress *a4)
{
  mSelector = a3->mSelector;
  if (a3->mSelector <= 1819107690)
  {
    HasProperty = 1;
    if (mSelector <= 1735356004)
    {
      if (mSelector <= 1668639075)
      {
        if (mSelector > 1668050794)
        {
          if (mSelector != 1668050795)
          {
            v7 = 1668510818;
            goto LABEL_50;
          }
        }

        else if (mSelector != 1634429294)
        {
          v7 = 1668049764;
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (mSelector > 1684434035)
      {
        if (mSelector == 1684434036)
        {
          goto LABEL_51;
        }

        if (mSelector != 1735354734)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (mSelector == 1668639076)
        {
          goto LABEL_51;
        }

        if (mSelector != 1668641652)
        {
          goto LABEL_58;
        }

        return *(this + 186) != *(this + 185);
      }
    }

    else
    {
      if (mSelector > 1768777572)
      {
        if (mSelector > 1818455661)
        {
          if (mSelector == 1818455662 || mSelector == 1818850145)
          {
            goto LABEL_51;
          }

          v7 = 1818850162;
          goto LABEL_50;
        }

        if (mSelector != 1768777573)
        {
          v7 = 1818452846;
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (mSelector > 1751737453)
      {
        if (mSelector != 1751737454)
        {
          v7 = 1768124270;
          goto LABEL_50;
        }

        goto LABEL_51;
      }

      if (mSelector != 1735356005)
      {
        v7 = 1751412337;
        goto LABEL_50;
      }
    }

    return HasProperty;
  }

  if (mSelector > 1919251301)
  {
    if (mSelector <= 1936092275)
    {
      if (mSelector > 1920168546)
      {
        if (mSelector != 1920168547)
        {
          v7 = 1935763060;
          goto LABEL_50;
        }
      }

      else if (mSelector != 1919251302)
      {
        v7 = 1919512167;
        goto LABEL_50;
      }
    }

    else
    {
      if (mSelector > 1937009954)
      {
        if (mSelector == 1937009955 || mSelector == 1969841184)
        {
          goto LABEL_51;
        }

        v7 = 1953653102;
        goto LABEL_50;
      }

      if (mSelector != 1936092276)
      {
        v7 = 1936879204;
        goto LABEL_50;
      }
    }

LABEL_51:
    v9 = *(this + 183);
    v10 = *(v9 + 736);
    v11 = *(v9 + 744);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    HasProperty = HALS_IOUAUCDriver::GetHasProperty(*(v10 + 4), a3, *(this + 368));
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    return HasProperty;
  }

  if (mSelector <= 1836411235)
  {
    if (mSelector > 1819173228)
    {
      if (mSelector != 1819173229)
      {
        v7 = 1819569763;
        goto LABEL_50;
      }
    }

    else if (mSelector != 1819107691)
    {
      v7 = 1819111268;
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (mSelector <= 1853059618)
  {
    if (mSelector != 1836411236)
    {
      v7 = 1851878764;
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (mSelector == 1853059619 || mSelector == 1853059700)
  {
    goto LABEL_51;
  }

  v7 = 1919251299;
LABEL_50:
  if (mSelector == v7)
  {
    goto LABEL_51;
  }

LABEL_58:
  if (HALS_Device::HasProperty(this, a2, a3, a4))
  {
    return 1;
  }

  v13 = a3->mSelector;
  v14 = *(*(this + 182) + 16);

  return v14();
}

void sub_1DE623CE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HALS_IOUADevice::_Deactivate(HALS_IOUADevice *this)
{
  v2 = 0;
  v3 = this + 1504;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = &v3[24 * v2];
    v7 = *v6;
    if (*(v6 + 1) != *v6)
    {
      v8 = 0;
      v9 = 1;
      do
      {
        v10 = *(v7 + 8 * v8);
        (*(*v10 + 8))(v10);
        HALS_ObjectMap::ObjectIsDead(v10, v11);
        v8 = v9;
        v7 = *v6;
        ++v9;
      }

      while (v8 < (*(v6 + 1) - *v6) >> 3);
    }

    v4 = 0;
    *(v6 + 1) = v7;
    v2 = 1;
  }

  while ((v5 & 1) != 0);
  v12 = *(this + 194);
  v13 = *(this + 195);
  if (v12 != v13)
  {
    do
    {
      (*(**v12 + 8))();
      v14 = *v12++;
      HALS_ObjectMap::ObjectIsDead(v14, v15);
    }

    while (v12 != v13);
    v12 = *(this + 194);
  }

  *(this + 195) = v12;

  return HALS_Device::_Deactivate(this);
}

void HALS_IOUADevice::Activate(HALS_IOUADevice *this)
{
  HALS_IOUADevice::UpdateStreams(this, &v2);
  HALS_IOUADevice::UpdateControls(this);
  operator new();
}

void sub_1DE624028(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<HALS_IOUAEngine::io_ipc_info_t>>>>::destroy(*(v1 + 1216));
  v5 = *(v1 + 1152);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  HALS_IOEngine2::~HALS_IOEngine2(v1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x1E12C1730](v1, v2);
  _Unwind_Resume(a1);
}

const __CFArray *CACFArray::GetCFType(CFArrayRef *this, unsigned int a2, const void **a3)
{
  result = *this;
  if (result)
  {
    if (CFArrayGetCount(result) <= a2)
    {
      return 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*this, a2);
      *a3 = ValueAtIndex;
      return (ValueAtIndex != 0);
    }
  }

  return result;
}

uint64_t CACFArray::GetUInt32(CFArrayRef *this, unsigned int a2, unsigned int *a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt32Type, a3);
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetDictionary(CFArrayRef *this, unsigned int a2, const __CFDictionary **a3)
{
  cf = 0;
  CFType = CACFArray::GetCFType(this, a2, &cf);
  result = 0;
  if (CFType)
  {
    v6 = cf;
    if (cf)
    {
      v7 = CFGetTypeID(cf);
      if (v7 == CFDictionaryGetTypeID())
      {
        *a3 = v6;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t CACFArray::GetCACFDictionary(CFArrayRef *this, unsigned int a2, CFTypeRef *a3)
{
  if (*(a3 + 8) == 1 && *a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  *(a3 + 9) = 0;
  cf = 0;
  result = CACFArray::GetCFType(this, a2, &cf);
  if (result)
  {
    v7 = cf;
    if (cf)
    {
      v8 = CFGetTypeID(cf);
      result = CFDictionaryGetTypeID();
      if (v8 == result)
      {

        return CACFDictionary::operator=(a3, v7);
      }
    }
  }

  return result;
}

double AMCP::Null::Engine::convert_host_to_sample_time(os_unfair_lock_s *this, unint64_t a2)
{
  os_unfair_lock_lock(this + 164);
  v4 = AMCP::IO_Clock::convert_host_to_sample_time_internal(&this[144], a2);
  os_unfair_lock_unlock(this + 164);
  return v4;
}

double AMCP::Null::Engine::get_current_host_ticks_per_frame(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 164);
  v2 = *&this[160]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(this + 164);
  return v2;
}

double AMCP::Null::Engine::get_zero_time_stamp@<D0>(const __CFString **this@<X0>, uint64_t a2@<X8>)
{
  if (((*this)[4].info)(this) < 1)
  {
    goto LABEL_7;
  }

  v4 = CFStringCreateWithBytes(0, "fail_to_deliver_time_stamp", 26, 0x8000100u, 0);
  *&v12[0] = v4;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v5 = applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(this[92], v12);
  CFRelease(v4);
  if (v5)
  {
    v6 = mach_absolute_time();
    AMCP::IO_Clock::get_current_zts(v12, (this + 72));
    if (*(&v12[0] + 1))
    {
      v7 = *(&v12[0] + 1) + 24000000;
      if (v6 <= *(&v12[0] + 1) + 24000000)
      {
        v9 = v12[1];
        *a2 = v12[0];
        *(a2 + 16) = v9;
        result = *&v13;
        v10 = v14;
        *(a2 + 32) = v13;
        *(a2 + 48) = v10;
        return result;
      }

      *a2 = *v12 + *(this + 4);
      *(a2 + 8) = v7;
    }

    else
    {
      *a2 = (*(this + 186) + *(this + 186));
      *(a2 + 8) = v6;
    }

    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
LABEL_7:
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  *&result = 3;
  *(a2 + 56) = 3;
  return result;
}