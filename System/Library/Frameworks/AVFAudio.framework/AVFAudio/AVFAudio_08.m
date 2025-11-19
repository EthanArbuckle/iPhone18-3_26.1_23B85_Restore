void sub_1BA67A1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_4(void *a1)
{
  v2 = a1[4];
  v4 = a1[5];
  v3 = a1[6];
  v5 = v4;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(v2 + 16))(v2, &v5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1BA67A250(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void ControllerImpl::safeAllQueuesBarrier(ControllerImpl *this)
{
  v27 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "ControllerImpl.mm";
    v25 = 1024;
    v26 = 4592;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d before barrier", buf, 0x12u);
  }

LABEL_8:
  v4 = dispatch_group_create();
  v5 = v4;
  v6 = *(this + 4);
  if (v6)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN14ControllerImpl20safeAllQueuesBarrierEv_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_group_async(v4, v6, block);
  }

  v7 = *(this + 3);
  if (v7)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = ___ZN14ControllerImpl20safeAllQueuesBarrierEv_block_invoke_368;
    v21[3] = &__block_descriptor_40_e5_v8__0l;
    v21[4] = this;
    dispatch_group_async(v5, v7, v21);
  }

  v8 = +[AVVCKeepAliveManager sharedManager];
  v9 = [v8 getDispatchQueue];

  if (v9)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZN14ControllerImpl20safeAllQueuesBarrierEv_block_invoke_369;
    v19[3] = &unk_1E7EF6628;
    v20 = v9;
    dispatch_group_async(v5, v20, v19);
  }

  if (dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL))
  {
    v17 = CALog::LogObjIfEnabled(1, kAVVCScope);
    v18 = v17;
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "ControllerImpl.mm";
      v25 = 1024;
      v26 = 4620;
      _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVC_TIMEOUT occurred : safeAllQueuesBarrier timed out!", buf, 0x12u);
    }

    CAVerboseAbort();
  }

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "ControllerImpl.mm";
    v25 = 1024;
    v26 = 4624;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d after barrier", buf, 0x12u);
  }

LABEL_22:
  v12 = *(this + 4);
  if (v12)
  {
    dispatch_resume(v12);
  }

  v13 = *(this + 3);
  if (v13)
  {
    dispatch_resume(v13);
  }

  if (v9)
  {
    dispatch_resume(v9);
  }

  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v24 = "ControllerImpl.mm";
    v25 = 1024;
    v26 = 4640;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d after resume", buf, 0x12u);
  }

LABEL_35:
  v16 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl20safeAllQueuesBarrierEv_block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(a1 + 32) + 32));
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "ControllerImpl.mm";
    v6 = 1024;
    v7 = 4598;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mWorkQueue barrier", &v4, 0x12u);
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl20safeAllQueuesBarrierEv_block_invoke_368(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(*(a1 + 32) + 24));
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "ControllerImpl.mm";
    v6 = 1024;
    v7 = 4605;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mClientNotificationQueue barrier", &v4, 0x12u);
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl20safeAllQueuesBarrierEv_block_invoke_369(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  dispatch_suspend(*(a1 + 32));
  if (kAVVCScope)
  {
    v1 = *kAVVCScope;
    if (!v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = MEMORY[0x1E69E9C10];
    v2 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315394;
    v5 = "ControllerImpl.mm";
    v6 = 1024;
    v7 = 4614;
    _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d keepAliveDispatchQueue barrier", &v4, 0x12u);
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_371(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) streamID];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void __destroy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE72c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE72c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[10];
  result[9] = a2[9];
  result[10] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_373(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 48) userInfo:0];
  (*(v2 + 16))(v2, v3, 0);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_374(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 48) userInfo:0];
  (*(v2 + 16))(v2, v3, 0);
}

void ___ZN14ControllerImpl22prepareRecordForStreamEP17AVVoiceControllerP25AVVCPrepareRecordSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_375(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 48) userInfo:0];
  (*(v2 + 16))(v2, v3, 0);
}

void ControllerImpl::startRecordForStream(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v95 = *MEMORY[0x1E69E9840];
  v59 = a2;
  v11 = a3;
  v12 = a4;
  v58 = a5;
  v13 = a6;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v14 = *kAVVCScope;
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 4754;
          *&buf[18] = 2048;
          *&buf[20] = [v11 streamID];
          _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d startRecordForStream streamID(%lu)", buf, 0x1Cu);
        }
      }
    }
  }

  v16 = +[AVVCMetricsManager sharedManager];
  [v16 setCallToStartRecordHostTime:mach_absolute_time()];

  ControllerImpl::_lookupEngineForStreamID(&v84, *(a1 + 576), *(a1 + 584), [v11 streamID]);
  v17 = v84;
  if (!v84)
  {
    if (kAVVCScope)
    {
      v20 = *kAVVCScope;
      if (!v20)
      {
LABEL_36:
        if (!v12)
        {
          goto LABEL_48;
        }

        v35 = *(a1 + 24);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke;
        block[3] = &unk_1E7EF6710;
        v36 = &v83;
        v83 = v12;
        v37 = &v82;
        v82 = v11;
        dispatch_async(v35, block);
        goto LABEL_47;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v32 = MEMORY[0x1E69E9C10];
    }

    v33 = v20;
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [v11 streamID];
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4763;
      *&buf[18] = 2048;
      *&buf[20] = v34;
      _os_log_impl(&dword_1BA5AC000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_36;
  }

  v18 = *(v84 + 216);
  if (v18 <= 1)
  {
    if (kAVVCScope)
    {
      v19 = *kAVVCScope;
      if (!v19)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    v39 = v19;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [v11 streamID];
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4773;
      *&buf[18] = 2048;
      *&buf[20] = v40;
      _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Attempt to start stream(%ld) without calling prepare.", buf, 0x1Cu);
    }

LABEL_42:
    if (!v12)
    {
      goto LABEL_48;
    }

    v41 = *(a1 + 24);
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3321888768;
    v77[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_381;
    v77[3] = &unk_1F3848A20;
    v36 = v79;
    v79[0] = v12;
    v37 = &v78;
    v78 = v11;
    v79[1] = v17;
    v80 = v85;
    if (v85)
    {
      atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    dispatch_async(v41, v77);
    v42 = v80;
    if (!v80)
    {
      goto LABEL_47;
    }

LABEL_46:
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
LABEL_47:

    goto LABEL_48;
  }

  if ((v18 & 0x7FFFFFFFFFFFFFFELL) == 4)
  {
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
        goto LABEL_59;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v44 = MEMORY[0x1E69E9C10];
    }

    v45 = v21;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [v11 streamID];
      v47 = *(v17 + 216);
      if (v47 > 6)
      {
        v48 = "ILLEGAL";
      }

      else
      {
        v48 = off_1E7EF6338[v47];
      }

      *buf = 136315906;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4783;
      *&buf[18] = 2048;
      *&buf[20] = v46;
      *&buf[28] = 2080;
      *&buf[30] = v48;
      _os_log_impl(&dword_1BA5AC000, v45, OS_LOG_TYPE_DEFAULT, "%25s:%-5d startRecordForStream: Attempt to start stream(%ld) while stream is already %s. No-op.", buf, 0x26u);
    }

LABEL_59:
    if (v12)
    {
      v49 = *(a1 + 24);
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3321888768;
      v73[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_384;
      v73[3] = &unk_1F3848A20;
      v36 = v75;
      v75[0] = v12;
      v37 = &v74;
      v74 = v11;
      v75[1] = v17;
      v76 = v85;
      if (v85)
      {
        atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      dispatch_async(v49, v73);
      v42 = v76;
      if (!v76)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }

    goto LABEL_48;
  }

  *(v17 + 232) = [v11 startHostTime];
  *(v17 + 240) = [v11 startAnchorPoint];
  *(a1 + 344) = -1;
  *(a1 + 352) = -1;
  *(a1 + 336) = -1;
  *(a1 + 336) = [v11 startAlert];
  *(a1 + 344) = [v11 stopAlert];
  *(a1 + 352) = [v11 stopOnErrorAlert];
  *(a1 + 592) = 1;
  AVVCRecordingEngine::setStreamState(v17, 4);
  v22 = (*(*v17 + 64))(v17, 0);
  v23 = [v22 sessionState] == 7;

  if (!v23)
  {
    v30 = 0;
    goto LABEL_75;
  }

  v24 = *(v17 + 272);
  v25 = v85;
  if (v85)
  {
    atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke;
  *&buf[24] = &unk_1F3848780;
  v91 = a1;
  v92 = v24;
  v93 = v17;
  v94 = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *&buf[32] = &v86;
  v57 = v13;
  makeSynchronous(buf);
  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v94);
  }

  _Block_object_dispose(&v86, 8);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  *(a1 + 409) = 0;
  v26 = *(v17 + 264);
  v27 = *(a1 + 360) != 201;
  v28 = v59;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = ___ZN14ControllerImpl9playAlertEP17AVVoiceController16AVVoiceAlertTypebm_block_invoke;
  *&buf[24] = &unk_1E7EF5B80;
  v92 = a1;
  v29 = v28;
  LODWORD(v94) = 1;
  BYTE4(v94) = v27;
  v93 = v26;
  *&buf[32] = v29;
  v91 = &v86;
  makeSynchronous(buf);
  v30 = *(v87 + 6);

  v13 = v57;
  _Block_object_dispose(&v86, 8);

  if (!v30)
  {
    LOBYTE(v23) = 1;
    goto LABEL_75;
  }

  if (!kAVVCScope)
  {
    v31 = MEMORY[0x1E69E9C10];
    v50 = MEMORY[0x1E69E9C10];
LABEL_66:
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4833;
      *&buf[18] = 1024;
      *&buf[20] = v30;
      _os_log_impl(&dword_1BA5AC000, v31, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR in startRecordForStream, failed at playAlert: %d", buf, 0x18u);
    }

    goto LABEL_68;
  }

  v31 = *kAVVCScope;
  if (v31)
  {
    goto LABEL_66;
  }

LABEL_68:

  if (v12)
  {
    AVVCRecordingEngine::setStreamState(v17, 3);
    v51 = *(a1 + 24);
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3321888768;
    v67[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_385;
    v67[3] = &unk_1F3848898;
    v69 = v12;
    v68 = v11;
    v70 = v17;
    v71 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v72 = v30;
    dispatch_async(v51, v67);
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v71);
    }
  }

  LOBYTE(v23) = 0;
LABEL_75:
  AVVCRecordingEngine::setRecordErrorStatus(v17, v30, "startRecordForStream");
  (*(*v17 + 264))(v17);
  *(v17 + 200) = *(a1 + 424);
  (*(*v17 + 288))(v17);
  if (!v23)
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v65, *(a1 + 8), *(a1 + 16));
    RecordLock::RecordLock(buf, v65, v66);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v66);
    }

    v30 = (*(*v17 + 96))(v17);
    VCLocker::~VCLocker(buf);
  }

  if (!v30)
  {
    goto LABEL_48;
  }

  if (kAVVCScope)
  {
    v52 = *kAVVCScope;
    if (!v52)
    {
      goto LABEL_87;
    }
  }

  else
  {
    v52 = MEMORY[0x1E69E9C10];
    v53 = MEMORY[0x1E69E9C10];
  }

  v54 = v52;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
  {
    v55 = [v11 streamID];
    *buf = 136315906;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 4870;
    *&buf[18] = 2048;
    *&buf[20] = v55;
    *&buf[28] = 1024;
    *&buf[30] = v30;
    _os_log_impl(&dword_1BA5AC000, v54, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Error in startRecording for stream(%lu): %d", buf, 0x22u);
  }

LABEL_87:
  if (v12)
  {
    v56 = *(a1 + 24);
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3321888768;
    v60[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_389;
    v60[3] = &unk_1F3848898;
    v36 = v62;
    v62[0] = v12;
    v37 = &v61;
    v61 = v11;
    v62[1] = v17;
    v63 = v85;
    if (v85)
    {
      atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v64 = v30;
    dispatch_async(v56, v60);
    v42 = v63;
    if (!v63)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

LABEL_48:
  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  v43 = *MEMORY[0x1E69E9840];
}

void sub_1BA67B790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12)
{
  v18 = *(v16 - 232);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) streamID];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0, 0);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_381(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(*(a1 + 48) + 216);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11781 userInfo:0];
  (*(v2 + 16))(v2, v3, 0, v4);
}

uint64_t ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_384(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(v2 + 16);
  v5 = *(*(a1 + 48) + 216);

  return v4(v2, v3, 1, v5, 0);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_385(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(*(a1 + 48) + 216);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 64) userInfo:0];
  (*(v2 + 16))(v2, v3, 0, v4);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorEU13block_pointerFv16AVVoiceAlertType14AVVCAlertStateS6_EU13block_pointerFvmP15AVVCAudioBufferE_block_invoke_389(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(*(a1 + 48) + 216);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 64) userInfo:0];
  (*(v2 + 16))(v2, v3, 0, v4);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_390(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) streamID];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0, 0);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_391(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11781 userInfo:0];
  (*(v2 + 16))(v2, v3, 0, v4);
}

uint64_t ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_392(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(v2 + 16);
  v5 = *(a1 + 48);

  return v4(v2, v3, 1, v5, 0);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_400(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 80);
  v4 = *(a1 + 96);
  v21[0] = *(a1 + 88);
  v21[1] = v4;
  v5 = v2;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v5 = *(a1 + 64);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_401;
  v11[3] = &unk_1F3849118;
  v6 = *(a1 + 72);
  v16 = v5;
  v17 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 96);
  v9 = *(a1 + 104);
  v12 = v7;
  v10 = *(a1 + 88);
  v18 = v9;
  v19 = v10;
  v20 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(a1 + 48);
  v13 = *(a1 + 40);
  v15 = *(a1 + 56);
  ControllerImpl::configureAlertModeFromModeAndEngine(v2, v3, v21, v11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1BA67BEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE88c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE88c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
{
  v2 = a2[9];
  result[8] = a2[8];
  result[9] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[12];
  result[11] = a2[11];
  result[12] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_401(uint64_t a1)
{
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x2020000000;
  v18 = 0;
  v2 = *(a1 + 64);
  *(v2 + 409) = 0;
  v3 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_3_402;
  v8[3] = &unk_1F3847EC8;
  v4 = *(a1 + 80);
  v5 = *(a1 + 96);
  v13 = *(a1 + 88);
  v14 = v5;
  v6 = v2;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(a1 + 64);
  }

  v7 = *(a1 + 72);
  v15 = v6;
  v16 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 48);
  v9 = *(a1 + 40);
  v12 = v17;
  v11 = *(a1 + 56);
  ControllerImpl::playAlert(v2, v3, 1, v4, v8);

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Block_object_dispose(v17, 8);
}

void sub_1BA67C124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Block_object_dispose((v20 - 64), 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_3_402(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v5 = *(a1 + 64);
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_407;
    v13[3] = &unk_1E7EF5A90;
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v14 = v6;
    v15 = v7;
    (*(*v5 + 328))(v5, v13, "startRecordForStream_block_invoke");

    goto LABEL_18;
  }

  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_7;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
LABEL_7:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "ControllerImpl.mm";
      v26 = 1024;
      v27 = 5033;
      v28 = 1024;
      v29 = a2;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR in startRecordForStream, failed at playAlert: %d", buf, 0x18u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_403;
  v16[3] = &unk_1F38481D0;
  v10 = *(a1 + 64);
  v9 = *(a1 + 72);
  v19 = v10;
  v20 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 88);
  v21 = *(a1 + 80);
  v22 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = *(a1 + 40);
  v17 = *(a1 + 32);
  v23 = a2;
  (*(*v10 + 328))(v10, v16, "startRecordForStream_block_invoke");

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_403(uint64_t a1)
{
  AVVCRecordingEngine::setStreamState(*(a1 + 48), 3);
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 216);
  v4 = *(a1 + 64);
  v5 = v2 != 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_404;
  v6[3] = &unk_1E7EF5DD8;
  v8 = v2;
  v7 = *(a1 + 32);
  v9 = v3;
  v10 = *(a1 + 80);
  ControllerImpl::safeNotifyAlwaysAsync(v4, v5, v6);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_2_404(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 56) userInfo:0];
  (*(v2 + 16))(v2, v3, 0, v4);
}

void ___ZN14ControllerImpl20startRecordForStreamEP17AVVoiceControllerP23AVVCStartRecordSettingsU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_396(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) streamID];
  v4 = *(a1 + 48);
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 56) userInfo:0];
  (*(v2 + 16))(v2, v3, 0, v4);
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_418(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0, 0);
}

void __destroy_helper_block_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_40c42_ZTSNSt3__110shared_ptrI14ControllerImplEE56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl19stopRecordForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_419(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11781 userInfo:0];
  (*(v1 + 16))(v1, v2, 0, v3);
}

void ___ZN14ControllerImpl30getCurrentStreamStateForStreamEP17AVVoiceControllermU13block_pointerFvmb15AVVCStreamStateP7NSErrorE_block_invoke_426(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0, 0);
}

void __destroy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE56c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE56c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 5232;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d getRecordBufferDurationForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke_429;
    v22[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v23 = v13;
    v24 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v22);

    v3 = v26;
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F38484A8;
  v3 = v26;
  v17 = v25;
  v18 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "getRecordBufferDurationForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA67CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke_429(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0.0);
}

void ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke_2(void *a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = a1[5];
  v3 = *(v2 + 24);
  if (v3 == 0.0 || (v4 = *(v2 + 248)) == 0)
  {
    v6 = *(v2 + 256);
    goto LABEL_14;
  }

  if (*(v2 + 32) != 1936745848 || (v5 = *(v2 + 44), v5 == 1600) || v5 == 3200)
  {
    v6 = (1.0 / v4);
    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *&v9 = *(v2 + 248);
      *buf = 136315650;
      v25 = "AVVCRecordingEngine.mm";
      v26 = 1024;
      v27 = 456;
      v28 = 2048;
      v29 = v9;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getRecordBufferDuration: choice 2 mRecordBasePacketsPerSecond (%lu)", buf, 0x1Cu);
    }

LABEL_13:

    goto LABEL_14;
  }

  v6 = (2 * v5) / v3;
  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
LABEL_26:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *&v19 = *(v2 + 248);
      *buf = 136315650;
      v25 = "AVVCRecordingEngine.mm";
      v26 = 1024;
      v27 = 452;
      v28 = 2048;
      v29 = v19;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d getRecordBufferDuration: choice 1 mRecordBasePacketsPerSecond (%lu)", buf, 0x1Cu);
    }

    goto LABEL_13;
  }

  v7 = *kAVVCScope;
  if (v7)
  {
    goto LABEL_26;
  }

LABEL_14:
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "AVVCRecordingEngine.mm";
    v26 = 1024;
    v27 = 463;
    v28 = 2048;
    v29 = v6;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d getRecordBufferDuration: returning %.3f seconds", buf, 0x1Cu);
  }

LABEL_21:
  v12 = a1[7];
  v13 = a1[4];
  v14 = v13 != 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke_3;
  v20[3] = &unk_1E7EF5E28;
  v15 = v13;
  v16 = a1[9];
  v21 = v15;
  v22 = v16;
  v23 = v6;
  ControllerImpl::safeNotifyAlwaysAsync(v12, v14, v20);

  v17 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke_3(double *a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 5);
  v3 = a1[6];
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:0 userInfo:0];
  (*(v1 + 16))(v1, v2, v3);
}

double ControllerImpl::getRecordBufferDurationForStream(ControllerImpl *this, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN14ControllerImpl32getRecordBufferDurationForStreamEm_block_invoke;
  v4[3] = &unk_1E7EF5EC8;
  v4[5] = this;
  v4[6] = a2;
  v4[4] = &v5;
  makeSynchronous(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1BA67D1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32getRecordBufferDurationForStreamEm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl32getRecordBufferDurationForStreamEm_block_invoke_2;
  v11[3] = &unk_1E7EF5EA0;
  v6 = a1[4];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl32getRecordBufferDurationForStreamEmU13block_pointerFvmdP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "getRecordBufferDurationForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA67D31C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl32getRecordBufferDurationForStreamEm_block_invoke_2(uint64_t a1, double a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ControllerImpl::configureAlertBehaviorForStream(uint64_t a1, void *a2, void *a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v10 = *kAVVCScope;
      if (v10)
      {
        v11 = v10;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 5266;
          v23 = 2048;
          v24 = [v8 streamID];
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertBehaviorForStream completion streamID(%lu)", buf, 0x1Cu);
        }
      }
    }
  }

  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(buf, *(a1 + 8), *(a1 + 16));
  v12 = *buf;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke;
  v16[3] = &unk_1F38486D8;
  v19 = a1;
  v13 = v8;
  v17 = v13;
  v20 = v12;
  v21 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v14 = v9;
  v18 = v14;
  ControllerImpl::safeWork(v12, v16, "configureAlertBehaviorForStream");

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  ControllerImpl::_lookupEngineForStreamID(&v28, *(v2 + 576), *(v2 + 584), [*(a1 + 32) streamID]);
  v3 = v28;
  if (!v28)
  {
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    v13 = v11;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [*(a1 + 32) streamID];
      *buf = 136315650;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 5273;
      v34 = 2048;
      v35 = v14;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d startRecordForStream: Cannot find recording engine for streamID(%lu). Failing.", buf, 0x1Cu);
    }

LABEL_20:
    v15 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = v16 != 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_433;
    v26[3] = &unk_1E7EF6548;
    v27 = v16;
    ControllerImpl::safeNotifyAlwaysAsync(v15, v17, v26);

    v8 = v29;
    if (!v29)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v4 = *(a1 + 56);
  v4[43] = -1;
  v4[44] = -1;
  v4[42] = -1;
  v5 = *(a1 + 56);
  *(v5 + 336) = [*(a1 + 32) startAlert];
  v6 = *(a1 + 56);
  *(v6 + 344) = [*(a1 + 32) stopAlert];
  v7 = *(a1 + 56);
  *(v7 + 352) = [*(a1 + 32) stopOnErrorAlert];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3321888768;
  v18[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_2;
  v18[3] = &unk_1F3848080;
  v21 = v2;
  v22 = v3;
  v8 = v29;
  v23 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 64);
  v24 = *(a1 + 56);
  v25 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20 = *(a1 + 40);
  v19 = *(a1 + 32);
  (*(*v3 + 328))(v3, v18, "configureAlertBehaviorForStream_block_invoke");

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v8)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA67D8C8(_Unwind_Exception *a1)
{
  v4 = *(v2 - 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_433(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = (*(**(a1 + 56) + 64))(*(a1 + 56), 0);
  v4 = [v3 sessionState] == 7;

  v5 = *(a1 + 56);
  v6 = *(v5 + 272);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_3;
  v11[3] = &unk_1F3847E20;
  v20 = v4;
  v14 = v2;
  v15 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v16 = v5;
  v17 = v7;
  v9 = v8;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v9 = *(a1 + 72);
  }

  v10 = *(a1 + 80);
  v18 = v9;
  v19 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 40);
  v12 = *(a1 + 32);
  ControllerImpl::safeWork(v8, v11, "configureAlertBehaviorForStream_block_invoke");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1BA67DB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if (*(a1 + 96) != 1)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_17:
        v10 = *(a1 + 80);
        v11 = *(a1 + 40);
        v12 = v11 != 0;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_436;
        v14[3] = &unk_1E7EF6548;
        v15 = v11;
        ControllerImpl::safeNotifyAlwaysAsync(v10, v12, v14);

        goto LABEL_18;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 32) streamID];
      *buf = 136315650;
      v22 = "ControllerImpl.mm";
      v23 = 1024;
      v24 = 5310;
      v25 = 2048;
      v26 = v9;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d configureAlertBehaviorForStream: session not active so can't config alerts for streamID(%lu)", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a1 + 72);
  v20[0] = *(a1 + 64);
  v20[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_4;
  v16[3] = &unk_1F3848EC8;
  v5 = *(a1 + 88);
  v18 = *(a1 + 80);
  v19 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = *(a1 + 40);
  ControllerImpl::configureAlertModeFromModeAndEngine(v2, v3, v20, v16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_18:
  v13 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_4(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v3 != 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_5;
  v6[3] = &unk_1E7EF5A18;
  v7 = v3;
  v8 = a2;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v5, v6);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_436(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11782 userInfo:0];
  (*(v1 + 16))(v1);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettingsU13block_pointerFvP7NSErrorE_block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(a1 + 40) userInfo:0];
  (*(v1 + 16))(v1);
}

uint64_t ControllerImpl::configureAlertBehaviorForStream(ControllerImpl *this, AVVoiceController *a2, AVVCConfigureAlertBehaviorSettings *a3)
{
  v5 = a2;
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettings_block_invoke;
  v11[3] = &unk_1E7EF5D88;
  v15 = this;
  v7 = v5;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v16;
  makeSynchronous(v11);
  v9 = *(v17 + 6);

  _Block_object_dispose(&v16, 8);
  return v9;
}

void sub_1BA67E0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettings_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettings_block_invoke_2;
  v9[3] = &unk_1E7EF5A40;
  v6 = a1[6];
  v7 = a1[7];
  v10 = v3;
  v11 = v6;
  v8 = v3;
  ControllerImpl::configureAlertBehaviorForStream(v7, v4, v5, v9);
}

void ___ZN14ControllerImpl31configureAlertBehaviorForStreamEP17AVVoiceControllerP34AVVCConfigureAlertBehaviorSettings_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    LODWORD(v3) = [v3 code];
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);
  if (v4)
  {
    dispatch_semaphore_signal(v4);
  }
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_450(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void __destroy_helper_block_ea8_72c42_ZTSNSt3__110shared_ptrI14ControllerImplEE96c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_72c42_ZTSNSt3__110shared_ptrI14ControllerImplEE96c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[13];
  result[12] = a2[12];
  result[13] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_458(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void __destroy_helper_block_ea8_72c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE88c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_72c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE88c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[10];
  result[9] = a2[9];
  result[10] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[12];
  result[11] = a2[11];
  result[12] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_453(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_454(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_455(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_456(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl29activateAudioSessionForStreamEP17AVVoiceControllermbbU13block_pointerFvmbP7NSErrorE_block_invoke_457(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ControllerImpl::deactivateAudioSessionWithOptions(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  ControllerImpl::deactivateSessionForListening(a1, a2, a4, 1, a3, 3, a5);
}

{
  v9 = a2;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = ___ZN14ControllerImpl29deactivateSessionForListeningEP17AVVoiceControllermbm23AVVCDeactivationOptions_block_invoke;
  v13[3] = &unk_1E7EF5A68;
  v16 = a1;
  v20 = 1;
  v17 = a4;
  v18 = a3;
  v19 = 3;
  v12 = v9;
  v14 = v12;
  v15 = &v21;
  makeSynchronous(v13);
  v10 = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v11 = 0;
  if (a5)
  {
LABEL_3:
    v11 = v11;
    *a5 = v11;
  }

LABEL_4:
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_469(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_470(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_473(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_474(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_475(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl19setContextForStreamEP17AVVoiceControllerP19AVVCContextSettingsmU13block_pointerFvmbP7NSErrorE_block_invoke_476(void *a1)
{
  v1 = a1[4];
  v2 = a1[6];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(a1[5] + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ControllerImpl::playAlertWithCompletion(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a5;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v22, *(a1 + 8), *(a1 + 16));
  v11 = v22;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848160;
  v17 = a1;
  v18 = v22;
  v19 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = v10;
  v16 = v12;
  v21 = a3;
  v13 = v9;
  v15 = v13;
  v20 = a4;
  ControllerImpl::safeWork(v11, v14, "playAlertWithCompletion");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }
}

void sub_1BA67EE10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  v22 = *(v20 - 56);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x1E69E9840];
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  v2 = *(a1 + 48);
  v3 = ControllerImpl::sessionManagerForStreamID(*(a1 + 56), 0, 0);
  v4 = [v3 isSessionActive];

  if ((v4 & 1) == 0)
  {
    if (kAVVCScope)
    {
      v9 = *kAVVCScope;
      if (!v9)
      {
LABEL_12:
        *(v74 + 6) = -11782;
        v11 = *(a1 + 56);
        v12 = *(a1 + 40);
        v13 = v12 != 0;
        v69[0] = MEMORY[0x1E69E9820];
        v69[1] = 3221225472;
        v69[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_489;
        v69[3] = &unk_1E7EF5FB8;
        v14 = v12;
        v72 = *(a1 + 80);
        v70 = v14;
        v71 = &v73;
        ControllerImpl::safeNotifyAlwaysAsync(v11, v13, v69);
        v7 = v70;
        goto LABEL_13;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      v78 = 1024;
      v79 = 5947;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d playAlertWithCompletion: called when session inactive--do nothing and return error", buf, 0x12u);
    }

    goto LABEL_12;
  }

  v5 = ControllerImpl::sessionManagerForStreamID(*(a1 + 56), 0, 0);
  v6 = [v5 playbackRoute];
  v7 = [v6 copy];

  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "ControllerImpl.mm";
    v78 = 1024;
    v79 = 5962;
    v80 = 2112;
    v81 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Current Playback Route %@", buf, 0x1Cu);
  }

LABEL_18:
  v17 = [v7 isEqualToString:*MEMORY[0x1E698D648]];
  v18 = *(a1 + 80);
  v19 = v18 - 1;
  if (v17)
  {
    if (v19 > 2)
    {
      v27 = *(a1 + 56);
      v28 = *(a1 + 40);
      v29 = v28 != 0;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_494;
      v56[3] = &unk_1E7EF5A18;
      v57 = v28;
      v58 = *(a1 + 80);
      ControllerImpl::safeNotifyAlwaysAsync(v27, v29, v56);

      goto LABEL_13;
    }

    v20 = v18 + 1109;
    if (kAVVCScope)
    {
      v21 = *kAVVCScope;
      if (!v21)
      {
LABEL_37:
        *buf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        *&buf[8] = 257;
        CACFDictionary::AddBool(buf, *MEMORY[0x1E695A8C0]);
        objc_initWeak(&location, *(a1 + 32));
        v33 = *(a1 + 56);
        v32 = *(a1 + 64);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v59 = MEMORY[0x1E69E9820];
        v60 = 3321888768;
        v61 = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_490;
        v62 = &unk_1F3847B68;
        objc_copyWeak(v65, &location);
        v65[1] = v33;
        v66 = v32;
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v67 = *(a1 + 80);
        v63 = *(a1 + 40);
        v64 = &v73;
        AudioServicesPlaySystemSoundWithOptions();

        if (v66)
        {
          std::__shared_weak_count::__release_weak(v66);
        }

        objc_destroyWeak(v65);
        if (v32)
        {
          std::__shared_weak_count::__release_weak(v32);
        }

        objc_destroyWeak(&location);
        CACFDictionary::~CACFDictionary(buf);
        goto LABEL_13;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      v78 = 1024;
      v79 = 5968;
      v80 = 1024;
      LODWORD(v81) = v20;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d playAlertWithOverride: calling AudioServicesPlaySystemSoundWithOptions with sound ID %d", buf, 0x18u);
    }

    goto LABEL_37;
  }

  if (v19 >= 3)
  {
    if (kAVVCScope)
    {
      v30 = *kAVVCScope;
      if (!v30)
      {
LABEL_50:
        *(v74 + 6) = -11780;
        v35 = *(a1 + 56);
        v36 = *(a1 + 40);
        v37 = v36 != 0;
        v52[0] = MEMORY[0x1E69E9820];
        v52[1] = 3221225472;
        v52[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_495;
        v52[3] = &unk_1E7EF5FB8;
        v38 = v36;
        v55 = *(a1 + 80);
        v53 = v38;
        v54 = &v73;
        ControllerImpl::safeNotifyAlwaysAsync(v35, v37, v52);

        goto LABEL_13;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      v78 = 1024;
      v79 = 6000;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d playAlertWithCompletion: Illegal alertType", buf, 0x12u);
    }

    goto LABEL_50;
  }

  v22 = *(a1 + 72);
  v23 = v22 != -1;
  v24 = *(a1 + 56);
  v25 = *(v24 + 4 * v19 + 320);
  if (v22 < 5 || (v26 = v22 == -1, LODWORD(v22) = *(v24 + 4 * v19 + 320), !v26))
  {
    if (v18 == 3)
    {
      ControllerImpl::setStopWithErrorAlertMode(v24, v22);
    }

    else if (v18 == 2)
    {
      ControllerImpl::setStopAlertMode(v24, v22);
    }

    else
    {
      ControllerImpl::setStartAlertMode(v24, v22);
    }
  }

  v39 = *(a1 + 56);
  *(v39 + 409) = 1;
  v40 = *(a1 + 32);
  v41 = *(a1 + 80);
  v42 = *(v2 + 472);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3321888768;
  v44[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_2;
  v44[3] = &unk_1F3848588;
  v51 = v23;
  v49 = v41;
  v46 = &v73;
  v47 = v39;
  v43 = *(a1 + 64);
  v48 = v43;
  if (v43)
  {
    atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v50 = v25;
  v45 = *(a1 + 40);
  ControllerImpl::playAlert(v39, v40, v41, v42, v44);

  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

LABEL_13:

  _Block_object_dispose(&v73, 8);
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1BA67F5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  if (a41)
  {
    std::__shared_weak_count::__release_weak(a41);
  }

  objc_destroyWeak((v43 + 48));
  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  objc_destroyWeak((v44 - 224));
  CACFDictionary::~CACFDictionary((v44 - 128));

  _Block_object_dispose((v44 - 160), 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_489(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
  (*(v2 + 16))(v2, v1, 1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_490(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v23 = "ControllerImpl.mm";
    v24 = 1024;
    v25 = 5975;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlertWithOverride: Finished playing the alert beep", buf, 0x12u);
  }

LABEL_8:
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = *(a1 + 64);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_14;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  v7 = *(a1 + 56);
  if (WeakRetained && v7)
  {
    *(v7 + 208) = 2;
    v8 = *(v7 + 392);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_492;
    v19[3] = &unk_1E7EF5BA8;
    objc_copyWeak(v20, (a1 + 48));
    v21 = *(a1 + 72);
    v20[1] = 2;
    v20[2] = v8;
    ControllerImpl::safeNotify(v7, "playAlertWithCompletion: alertPlaybackFinishedWithSettings", v19);
    v9 = *(a1 + 32);
    LODWORD(v8) = v9 != 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_493;
    v15[3] = &unk_1E7EF5FB8;
    v10 = v9;
    v18 = *(a1 + 72);
    v11 = *(a1 + 40);
    v16 = v10;
    v17 = v11;
    ControllerImpl::safeNotifyAlwaysAsync(v7, v8, v15);

    objc_destroyWeak(v20);
LABEL_23:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_24;
  }

LABEL_15:
  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v23 = "ControllerImpl.mm";
    v24 = 1024;
    v25 = 5976;
    v26 = 2048;
    v27 = WeakRetained;
    v28 = 2048;
    v29 = v7;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_22:
  if (v6)
  {
    goto LABEL_23;
  }

LABEL_24:

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1BA67FA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 32));
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_494(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
  (*(v1 + 16))(v1, v2, 1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_495(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
  (*(v2 + 16))(v2, v1, 1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  if (*(a1 + 72) == 1)
  {
    v3 = *(a1 + 64);
    switch(v3)
    {
      case 3:
        ControllerImpl::setStopWithErrorAlertMode(*(a1 + 48), *(a1 + 68));
        break;
      case 2:
        ControllerImpl::setStopAlertMode(*(a1 + 48), *(a1 + 68));
        break;
      case 1:
        ControllerImpl::setStartAlertMode(*(a1 + 48), *(a1 + 68));
        break;
    }
  }

  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = v5 != 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1E7EF5FB8;
  v7 = v5;
  v12 = *(a1 + 64);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v6, v9);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
  (*(v2 + 16))(v2, v1, 1);
}

void __destroy_helper_block_ea8_56c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_56c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_492(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [[AVVCAlertInformation alloc] initWithAlertType:*(a1 + 56) mode:*(a1 + 40) endTime:*(a1 + 48)];
    [WeakRetained alertPlaybackFinishedWithSettings:v3];
  }

  else
  {
    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315650;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 5981;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1BA67FEB0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl23playAlertWithCompletionEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverrideU13block_pointerFvS2_14AVVCAlertStateP7NSErrorE_block_invoke_493(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
  (*(v2 + 16))(v2, v1, 1);
}

uint64_t ControllerImpl::playAlertWithOverride(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v7 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl21playAlertWithOverrideEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverride_block_invoke;
  v11[3] = &unk_1E7EF6008;
  v14 = a1;
  v8 = v7;
  v16 = a3;
  v15 = a4;
  v12 = v8;
  v13 = &v17;
  makeSynchronous(v11);
  v9 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_1BA680054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  _Block_object_dispose((v15 - 64), 8);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl21playAlertWithOverrideEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverride_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14ControllerImpl21playAlertWithOverrideEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverride_block_invoke_2;
  v10[3] = &unk_1E7EF5FE0;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v9 = v3;
  ControllerImpl::playAlertWithCompletion(v5, v8, v4, v6, v10);
}

void ___ZN14ControllerImpl21playAlertWithOverrideEP17AVVoiceController16AVVoiceAlertType20AVVoiceAlertOverride_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  *(*(*(a1 + 40) + 8) + 24) = [v6 code];
  v5 = *(a1 + 32);
  if (v5)
  {
    dispatch_semaphore_signal(v5);
  }
}

void ___ZN14ControllerImpl28getRecordDeviceInfoForStreamEP17AVVoiceControllermU13block_pointerFvmP20AVVCRecordDeviceInfoP7NSErrorE_block_invoke_503(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void __destroy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  result[8] = a2[8];
  result[9] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl26getRecordSettingsForStreamEP17AVVoiceControllermU13block_pointerFvmP12NSDictionaryP7NSErrorE_block_invoke_509(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 6150;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d isMeteringEnabledForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_513;
    v22[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v23 = v13;
    v24 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v22);

    v3 = v26;
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F38484A8;
  v3 = v26;
  v17 = v25;
  v18 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "isMeteringEnabledForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA6805E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_513(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 288);
  v4 = a1[7];
  v5 = v2 != 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v8[3] = &unk_1E7EF6080;
  v6 = v2;
  v7 = a1[9];
  v9 = v6;
  v10 = v7;
  v11 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v5, v8);
}

uint64_t ControllerImpl::isMeteringEnabledForStream(ControllerImpl *this, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN14ControllerImpl26isMeteringEnabledForStreamEm_block_invoke;
  v4[3] = &unk_1E7EF5EC8;
  v4[5] = this;
  v4[6] = a2;
  v4[4] = &v5;
  makeSynchronous(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN14ControllerImpl26isMeteringEnabledForStreamEm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl26isMeteringEnabledForStreamEm_block_invoke_2;
  v11[3] = &unk_1E7EF5D60;
  v6 = a1[4];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl26isMeteringEnabledForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "isMeteringEnabledForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA6809C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl26isMeteringEnabledForStreamEm_block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 6186;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d updateMeterLevelForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_516;
    v22[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v23 = v13;
    v24 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v22);

    v3 = v26;
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F38484A8;
  v3 = v26;
  v17 = v25;
  v18 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "updateMeterLevelForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA680C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_516(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = (*(**(a1 + 40) + 160))(*(a1 + 40));
  if (v2)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v16 = "ControllerImpl.mm";
      v17 = 1024;
      v18 = 6196;
      v19 = 1024;
      v20 = v2;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d updateMeterLevelForStream: Error updating meter levels: %d", buf, 0x18u);
    }
  }

LABEL_9:
  v5 = *(a1 + 56);
  v6 = *(a1 + 32);
  v7 = v6 != 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_517;
  v11[3] = &unk_1E7EF60A8;
  v8 = v6;
  v9 = *(a1 + 72);
  v12 = v8;
  v13 = v9;
  v14 = v2;
  ControllerImpl::safeNotifyAlwaysAsync(v5, v7, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_517(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48) == 0;
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:? userInfo:?];
  (*(v1 + 16))(v1, v2, v3);
}

uint64_t ControllerImpl::updateMeterLevelForStream(ControllerImpl *this, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN14ControllerImpl25updateMeterLevelForStreamEm_block_invoke;
  v4[3] = &unk_1E7EF5EC8;
  v4[5] = this;
  v4[6] = a2;
  v4[4] = &v5;
  makeSynchronous(v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN14ControllerImpl25updateMeterLevelForStreamEm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl25updateMeterLevelForStreamEm_block_invoke_2;
  v11[3] = &unk_1E7EF5D60;
  v6 = a1[4];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl25updateMeterLevelForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke;
  v14[3] = &unk_1F3848BA0;
  v9 = v19;
  v16 = v19;
  v17 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = v5;
  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "updateMeterLevelForStream");

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

void sub_1BA6811F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  v25 = *(v23 - 40);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl25updateMeterLevelForStreamEm_block_invoke_2(uint64_t a1, uint64_t a2, char a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v26, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v26;
  if (!v26)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 6226;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d getRecordSettingsForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_520;
    v23[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v24 = v13;
    v25 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v23);

    v3 = v27;
    if (!v27)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F3848208;
  v3 = v27;
  v17 = v26;
  v18 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 64);
  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "getPeakPowerForStreamAndChannel_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA6814D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_520(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, -160.0);
}

void ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 216) >= 2)
  {
    v3 = *(a1 + 80);
    v4 = *(v2 + 296);
    if (v4 && *(v2 + 52) > v3)
    {
      v5 = *(v4 + 8 * v3 + 4);
LABEL_20:
      if (kAVVCScope)
      {
        v6 = *kAVVCScope;
        if (!v6)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(v2 + 264);
        v14 = *(v2 + 52);
        v15 = *(v2 + 296);
        *buf = 136316674;
        v27 = "AVVCRecordingEngine.mm";
        v28 = 1024;
        v29 = 528;
        v30 = 2048;
        *v31 = v5;
        *&v31[8] = 2048;
        *v32 = v13;
        *&v32[8] = 1024;
        *v33 = v3;
        *&v33[4] = 1024;
        *&v33[6] = v14;
        v34 = 2048;
        v35 = v15;
        _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordingEngine::getPeakPowerForChannel: Returning peakPower(%f) for streamID(%llu) for channel(%d) with numChannels(%d) mRecordMeters(%p)", buf, 0x3Cu);
      }

      goto LABEL_26;
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_19:
        v5 = -160.0;
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(v2 + 52);
      v11 = *(v2 + 296);
      *buf = 136316418;
      v27 = "AVVCRecordingEngine.mm";
      v28 = 1024;
      v29 = 526;
      v30 = 1024;
      *v31 = v3;
      *&v31[4] = 1024;
      *&v31[6] = v10;
      *v32 = 2048;
      *&v32[2] = v11;
      *v33 = 2048;
      *&v33[2] = 0xC064000000000000;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCRecordingEngine::getPeakPowerForChannel: Requested channel(%d) of numChannels(%d) from mRecordMeters(%p). Returning default value (%f)", buf, 0x32u);
    }

    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_12;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_12:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "AVVCRecordingEngine.mm";
      v28 = 1024;
      v29 = 530;
      v30 = 2048;
      *v31 = 0xC064000000000000;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCRecordingEngine::getPeakPowerForChannel: Stream has not been prepared. Returning default value (%f)", buf, 0x1Cu);
    }

    v5 = -160.0;
LABEL_26:

    goto LABEL_27;
  }

  v5 = -160.0;
LABEL_27:
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  v18 = v17 != 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_3;
  v22[3] = &unk_1E7EF60A8;
  v19 = v17;
  v20 = *(a1 + 72);
  v23 = v19;
  v24 = v20;
  v25 = v5;
  ControllerImpl::safeNotifyAlwaysAsync(v16, v18, v22);

  v21 = *MEMORY[0x1E69E9840];
}

float ControllerImpl::getPeakPowerForStreamAndChannel(ControllerImpl *this, uint64_t a2, int a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1021313024;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmi_block_invoke;
  v5[3] = &unk_1E7EF60F8;
  v5[5] = this;
  v5[6] = a2;
  v6 = a3;
  v5[4] = &v7;
  makeSynchronous(v5);
  v3 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1BA681A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmi_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmi_block_invoke_2;
  v12[3] = &unk_1E7EF60D0;
  v7 = *(a1 + 32);
  v13 = v3;
  v14 = v7;
  v8 = v3;
  v9 = v12;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(v4 + 8), *(v4 + 16));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke;
  v15[3] = &unk_1F3848908;
  v10 = v21;
  v17 = v21;
  v18 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v5;
  v11 = v9;
  v16 = v11;
  v20 = v6;
  ControllerImpl::safeWork(v10, v15, "getPeakPowerForStreamAndChannel");

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1BA681B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v26 = *(v24 - 56);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl31getPeakPowerForStreamAndChannelEmi_block_invoke_2(uint64_t a1, float a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v26, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v26;
  if (!v26)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 6262;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d getAveragePowerForStreamAndChannel: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_528;
    v23[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v24 = v13;
    v25 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v23);

    v3 = v27;
    if (!v27)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F3848208;
  v3 = v27;
  v17 = v26;
  v18 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 64);
  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "getAveragePowerForStreamAndChannel_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA681E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_528(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, -160.0);
}

void ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 216) >= 2)
  {
    v3 = *(a1 + 80);
    v4 = *(v2 + 296);
    if (v4 && *(v2 + 52) > v3)
    {
      v5 = *(v4 + 8 * v3);
LABEL_20:
      if (kAVVCScope)
      {
        v6 = *kAVVCScope;
        if (!v6)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v6 = MEMORY[0x1E69E9C10];
        v12 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(v2 + 264);
        v14 = *(v2 + 52);
        v15 = *(v2 + 296);
        *buf = 136316674;
        v27 = "AVVCRecordingEngine.mm";
        v28 = 1024;
        v29 = 544;
        v30 = 2048;
        *v31 = v5;
        *&v31[8] = 2048;
        *v32 = v13;
        *&v32[8] = 1024;
        *v33 = v3;
        *&v33[4] = 1024;
        *&v33[6] = v14;
        v34 = 2048;
        v35 = v15;
        _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCRecordingEngine::getAveragePowerForChannel: Returning averagePower(%f) for streamID(%llu) for channel(%d) with numChannels(%d) mRecordMeters(%p)", buf, 0x3Cu);
      }

      goto LABEL_26;
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
LABEL_19:
        v5 = -160.0;
        goto LABEL_20;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = *(v2 + 52);
      v11 = *(v2 + 296);
      *buf = 136316418;
      v27 = "AVVCRecordingEngine.mm";
      v28 = 1024;
      v29 = 542;
      v30 = 1024;
      *v31 = v3;
      *&v31[4] = 1024;
      *&v31[6] = v10;
      *v32 = 2048;
      *&v32[2] = v11;
      *v33 = 2048;
      *&v33[2] = 0xC064000000000000;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCRecordingEngine::getAveragePowerForChannel: Requested channel(%d) of numChannels(%d) from mRecordMeters(%p). Returning default value (%f)", buf, 0x32u);
    }

    goto LABEL_19;
  }

  if (!kAVVCScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_12;
  }

  v6 = *kAVVCScope;
  if (v6)
  {
LABEL_12:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v27 = "AVVCRecordingEngine.mm";
      v28 = 1024;
      v29 = 546;
      v30 = 2048;
      *v31 = 0xC064000000000000;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d AVVCRecordingEngine::getAveragePowerForChannel: Stream has not been prepared. Returning default value (%f)", buf, 0x1Cu);
    }

    v5 = -160.0;
LABEL_26:

    goto LABEL_27;
  }

  v5 = -160.0;
LABEL_27:
  v16 = *(a1 + 56);
  v17 = *(a1 + 32);
  v18 = v17 != 0;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke_3;
  v22[3] = &unk_1E7EF60A8;
  v19 = v17;
  v20 = *(a1 + 72);
  v23 = v19;
  v24 = v20;
  v25 = v5;
  ControllerImpl::safeNotifyAlwaysAsync(v16, v18, v22);

  v21 = *MEMORY[0x1E69E9840];
}

float ControllerImpl::getAveragePowerForStreamAndChannel(ControllerImpl *this, uint64_t a2, int a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1021313024;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmi_block_invoke;
  v5[3] = &unk_1E7EF60F8;
  v5[5] = this;
  v5[6] = a2;
  v6 = a3;
  v5[4] = &v7;
  makeSynchronous(v5);
  v3 = v8[6];
  _Block_object_dispose(&v7, 8);
  return v3;
}

void sub_1BA682388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmi_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmi_block_invoke_2;
  v12[3] = &unk_1E7EF60D0;
  v7 = *(a1 + 32);
  v13 = v3;
  v14 = v7;
  v8 = v3;
  v9 = v12;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v21, *(v4 + 8), *(v4 + 16));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmiU13block_pointerFvmfP7NSErrorE_block_invoke;
  v15[3] = &unk_1F3848908;
  v10 = v21;
  v17 = v21;
  v18 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v5;
  v11 = v9;
  v16 = v11;
  v20 = v6;
  ControllerImpl::safeWork(v10, v15, "getAveragePowerForStreamAndChannel");

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }
}

void sub_1BA682500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v26 = *(v24 - 56);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl34getAveragePowerForStreamAndChannelEmi_block_invoke_2(uint64_t a1, float a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ControllerImpl::setRecordStatusChangeBlock(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 copy];
  v4 = *(a1 + 600);
  *(a1 + 600) = v3;
}

void ___ZN14ControllerImpl31enableSmartRoutingConsiderationEmbU13block_pointerFvmbP7NSErrorE_block_invoke_532(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl22setRecordModeForStreamEm27AVVoiceControllerRecordModeU13block_pointerFvmbP7NSErrorE_block_invoke_538(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v30, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 48));
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v2 = v30;
  if (!v30)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
LABEL_17:
        v11 = *(a1 + 56);
        v12 = *(a1 + 32);
        v13 = v12 != 0;
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke_546;
        v25[3] = &unk_1E7EF5F40;
        v14 = v12;
        v15 = *(a1 + 48);
        v26 = v14;
        v27 = v29;
        v28 = v15;
        ControllerImpl::safeNotifyAlwaysAsync(v11, v13, v25);

        v3 = v31;
        goto LABEL_18;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 48);
      *buf = 136315650;
      v33 = "ControllerImpl.mm";
      v34 = 1024;
      v35 = 6433;
      v36 = 2048;
      v37 = v10;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d getRecordModeForStream: Cannot find recording engine for streamID(%lu). Returning.", buf, 0x1Cu);
    }

    goto LABEL_17;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v17[2] = ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke_2;
  v17[3] = &unk_1F3848128;
  v3 = v31;
  v20 = v30;
  v21 = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  v4 = *(a1 + 64);
  v19 = v29;
  v22 = v5;
  v23 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  v18 = v6;
  v24 = v7;
  (*(*v2 + 328))(v2, v17, "getRecordModeForStream_block_invoke");

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

LABEL_18:
  _Block_object_dispose(v29, 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_1BA6829AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  v26 = *(v24 - 88);
  _Block_object_dispose((v24 - 128), 8);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke_546(void *a1)
{
  v1 = a1[6];
  v2 = a1[4];
  v3 = *(*(a1[5] + 8) + 24);
  v4 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v2 + 16))(v2, v1, v3);
}

void ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (*(v2 + 216) == 5)
  {
    *(*(a1[5] + 8) + 24) = *(v2 + 328);
  }

  v3 = a1[8];
  v4 = a1[4];
  v5 = v4 != 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1E7EF5F40;
  v6 = v4;
  v7 = a1[10];
  v8 = a1[5];
  v10 = v6;
  v11 = v8;
  v12 = v7;
  ControllerImpl::safeNotifyAlwaysAsync(v3, v5, v9);
}

uint64_t ControllerImpl::getRecordModeForStream(ControllerImpl *this, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN14ControllerImpl22getRecordModeForStreamEm_block_invoke;
  v4[3] = &unk_1E7EF5EC8;
  v4[5] = this;
  v4[6] = a2;
  v4[4] = &v5;
  makeSynchronous(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void ___ZN14ControllerImpl22getRecordModeForStreamEm_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___ZN14ControllerImpl22getRecordModeForStreamEm_block_invoke_2;
  v11[3] = &unk_1E7EF5F18;
  v6 = a1[4];
  v12 = v3;
  v13 = v6;
  v7 = v3;
  v8 = v11;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v20, *(v4 + 8), *(v4 + 16));
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl22getRecordModeForStreamEmU13block_pointerFvm27AVVoiceControllerRecordModeP7NSErrorE_block_invoke;
  v14[3] = &unk_1F38487B8;
  v16 = v4;
  v17 = v5;
  v9 = v20;
  v18 = v20;
  v19 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = v8;
  v15 = v10;
  ControllerImpl::safeWork(v9, v14, "getRecordModeForStream");

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }
}

void sub_1BA682DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  v28 = *(v26 - 56);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl22getRecordModeForStreamEm_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ___ZN14ControllerImpl32setAnnounceCallsEnabledForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_554(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ControllerImpl::getInputChannelInfoForStream(uint64_t a1, void *a2)
{
  v3 = a2;
  TraceMethod::TraceMethod(v10, "getInputChannelInfoCompletion");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v8, *(a1 + 8), *(a1 + 16));
  v4 = v8;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN14ControllerImpl28getInputChannelInfoForStreamEmU13block_pointerFvP12NSDictionaryP7NSErrorE_block_invoke;
  v6[3] = &unk_1E7EF6548;
  v5 = v3;
  v7 = v5;
  ControllerImpl::safeNotifyAlwaysAsync(v4, v3 != 0, v6);

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  TraceMethod::~TraceMethod(v10);
}

void sub_1BA682FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  TraceMethod::~TraceMethod((v16 - 40));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28getInputChannelInfoForStreamEmU13block_pointerFvP12NSDictionaryP7NSErrorE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11794 userInfo:0];
  (*(v1 + 16))(v1, 0);
}

void ___ZN14ControllerImpl22setDuckOthersForStreamEmP16AVVCDuckSettingsU13block_pointerFvmbP7NSErrorE_block_invoke_557(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl40isDuckingSupportedOnPickedRouteForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_566(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ControllerImpl::enableTriangleModeForStream(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v7 = a4;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v16, *(a1 + 8), *(a1 + 16));
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3321888768;
  v10[2] = ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke;
  v10[3] = &unk_1F3848940;
  v8 = v16;
  v12 = v16;
  v13 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = a2;
  v9 = v7;
  v11 = v9;
  v15 = a3;
  ControllerImpl::safeWork(v8, v10, "enableTriangleModeForStream");

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }
}

void sub_1BA683288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  v19 = *(v17 - 40);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v26, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v26;
  if (!v26)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "ControllerImpl.mm";
      v30 = 1024;
      v31 = 6772;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d enableTriangleModeForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_569;
    v23[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v24 = v13;
    v25 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v23);

    v3 = v27;
    if (!v27)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F3848320;
  v3 = v27;
  v17 = v26;
  v18 = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 64);
  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "enableTriangleModeForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA683544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  if (*(v25 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v25 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_569(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
  v3 = *(a1 + 80);
  v17 = 0;
  v4 = [v2 setEnableBTTriangleMode:v3 error:&v17];
  v5 = v17;
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = v7 != 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZN14ControllerImpl27enableTriangleModeForStreamEmbU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v12[3] = &unk_1E7EF6148;
  v9 = v7;
  v10 = *(a1 + 72);
  v14 = v9;
  v15 = v10;
  v16 = v4;
  v11 = v5;
  v13 = v11;
  ControllerImpl::safeNotifyAlwaysAsync(v6, v8, v12);
}

void ControllerImpl::startKeepAliveQueueForStream(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v13, *(a1 + 8), *(a1 + 16));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke;
  v8[3] = &unk_1F3848BA0;
  v6 = v13;
  v10 = v13;
  v11 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2;
  v7 = v5;
  v9 = v7;
  ControllerImpl::safeWork(v6, v8, "startKeepAliveQueueForStream");

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1BA683888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 6802;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d startKeepAliveQueueForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_572;
    v22[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v23 = v13;
    v24 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v22);

    v3 = v26;
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F38484A8;
  v3 = v26;
  v17 = v25;
  v18 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "startKeepAliveQueueForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA683B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_572(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  if (AVVCRouteManager::isOutputHandsFree(*(*(a1 + 40) + 368)))
  {
    v2 = +[AVVCKeepAliveManager sharedManager];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3321888768;
    v17[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_3;
    v17[3] = &unk_1F3848BD8;
    v3 = *(a1 + 64);
    v19 = *(a1 + 56);
    v20 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 72);
    v18 = v4;
    v21 = v5;
    [v2 createWithCompletion:v17];

    v6 = (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
    v7 = v6;
    if (v6 && [v6 sessionState] >= 5)
    {
      v8 = +[AVVCKeepAliveManager sharedManager];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3321888768;
      v12[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_575;
      v12[3] = &unk_1F3848BD8;
      v9 = *(a1 + 64);
      v14 = *(a1 + 56);
      v15 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 72);
      v13 = v10;
      v16 = v11;
      [v8 startWithCompletion:v12];

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }
  }
}

void sub_1BA683DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 code])
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = v4 != 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_4;
    v9[3] = &unk_1E7EF5DB0;
    v7 = v4;
    v8 = a1[7];
    v11 = v7;
    v12 = v8;
    v10 = v3;
    ControllerImpl::safeNotifyAlwaysAsync(v5, v6, v9);
  }
}

void ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_575(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = v4 != 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2_576;
  v10[3] = &unk_1E7EF5DB0;
  v7 = v4;
  v8 = a1[7];
  v12 = v7;
  v13 = v8;
  v11 = v3;
  v9 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v5, v6, v10);
}

uint64_t ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2_576(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) code] == 0;
  v5 = *(a1 + 32);
  v6 = *(v3 + 16);

  return v6(v3, v2, v4, v5);
}

uint64_t ___ZN14ControllerImpl28startKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) code] == 0;
  v5 = *(a1 + 32);
  v6 = *(v3 + 16);

  return v6(v3, v2, v4, v5);
}

void ControllerImpl::stopKeepAliveQueueForStream(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v13, *(a1 + 8), *(a1 + 16));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke;
  v8[3] = &unk_1F3848BA0;
  v6 = v13;
  v10 = v13;
  v11 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a2;
  v7 = v5;
  v9 = v7;
  ControllerImpl::safeWork(v6, v8, "stopKeepAliveQueueForStream");

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }
}

void sub_1BA6841E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  v18 = *(v16 - 40);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  ControllerImpl::_lookupEngineForStreamID(&v25, *(*(a1 + 40) + 576), *(*(a1 + 40) + 584), *(a1 + 56));
  v2 = v25;
  if (!v25)
  {
    if (kAVVCScope)
    {
      v8 = *kAVVCScope;
      if (!v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v28 = "ControllerImpl.mm";
      v29 = 1024;
      v30 = 6841;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d stopKeepAliveQueueForStream: Nil recording engine", buf, 0x12u);
    }

LABEL_20:
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = v10 != 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_579;
    v22[3] = &unk_1E7EF6590;
    v13 = v10;
    v14 = *(a1 + 56);
    v23 = v13;
    v24 = v14;
    ControllerImpl::safeNotifyAlwaysAsync(v11, v12, v22);

    v3 = v26;
    if (!v26)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2;
  v15[3] = &unk_1F38484A8;
  v3 = v26;
  v17 = v25;
  v18 = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 48);
  v19 = *(a1 + 40);
  v20 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v16 = v5;
  v21 = v6;
  (*(*v2 + 328))(v2, v15, "stopKeepAliveQueueForStream_block_invoke");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v3)
  {
LABEL_11:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_12:
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1BA684494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (*(v23 - 72))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v23 - 72));
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_579(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11793 userInfo:0];
  (*(v1 + 16))(v1, v2, 0);
}

void ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v2 = (*(**(a1 + 40) + 64))(*(a1 + 40), 0);
  v3 = v2;
  if (v2 && [v2 sessionState] >= 4)
  {
    v4 = +[AVVCKeepAliveManager sharedManager];
    [v4 stopWithCompletion:0];
  }

  v5 = +[AVVCKeepAliveManager sharedManager];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_3;
  v9[3] = &unk_1F3848BD8;
  v6 = *(a1 + 64);
  v11 = *(a1 + 56);
  v12 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 72);
  v10 = v7;
  v13 = v8;
  [v5 destroyWithCompletion:v9];

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = a1[5];
  v6 = v4 != 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_4;
  v10[3] = &unk_1E7EF5DB0;
  v7 = v4;
  v8 = a1[7];
  v12 = v7;
  v13 = v8;
  v11 = v3;
  v9 = v3;
  ControllerImpl::safeNotifyAlwaysAsync(v5, v6, v10);
}

uint64_t ___ZN14ControllerImpl27stopKeepAliveQueueForStreamEmU13block_pointerFvmbP7NSErrorE_block_invoke_4(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  v4 = [*(a1 + 32) code] == 0;
  v5 = *(a1 + 32);
  v6 = *(v3 + 16);

  return v6(v3, v2, v4, v5);
}

void Initialize_Logging(void)
{
  v31 = *MEMORY[0x1E69E9840];
  if (Initialize_Logging(void)::once != -1)
  {
    dispatch_once(&Initialize_Logging(void)::once, &__block_literal_global_6010);
  }

  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"debug_level", @"com.apple.avfoundation.avvc", 0);
  v1 = AppIntegerValue;
  v2 = 0;
  v3 = 7;
  if (AppIntegerValue <= 0)
  {
    if (AppIntegerValue == -1)
    {
      v2 = 1;
      v3 = 1;
      goto LABEL_19;
    }

    if (AppIntegerValue)
    {
      goto LABEL_19;
    }

    if (kAVVCScope)
    {
      v4 = *kAVVCScope;
      if (!*kAVVCScope)
      {
LABEL_18:
        v2 = 0;
        v3 = 5;
        goto LABEL_19;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 46;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d NOTE: AVVC Details logging is turned on by default for development", &v23, 0x12u);
    }

    goto LABEL_18;
  }

  switch(AppIntegerValue)
  {
    case 1:
      v2 = 0;
      v3 = 4;
      break;
    case 2:
      goto LABEL_18;
    case 3:
      v2 = 0;
      v3 = 6;
      break;
  }

LABEL_19:
  if (!CFPreferencesGetAppBooleanValue(@"debug_encoding", @"com.apple.avfoundation.avvc", 0))
  {
    v6 = 0;
    goto LABEL_28;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
LABEL_25:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 54;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d debug_encoding on", &v23, 0x12u);
    }

    goto LABEL_27;
  }

  v5 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_25;
  }

LABEL_27:
  v6 = 0x800000000;
LABEL_28:
  if (!CFPreferencesGetAppBooleanValue(@"debug_endpoint", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_36;
  }

  if (!kAVVCScope)
  {
    v7 = MEMORY[0x1E69E9C10];
LABEL_33:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 55;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d debug_endpoint on", &v23, 0x12u);
    }

    goto LABEL_35;
  }

  v7 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_33;
  }

LABEL_35:
  v6 |= 0x1000000000uLL;
LABEL_36:
  if (!CFPreferencesGetAppBooleanValue(@"debug_callbacks", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_44;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
LABEL_41:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 56;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d debug_callbacks on", &v23, 0x12u);
    }

    goto LABEL_43;
  }

  v8 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_41;
  }

LABEL_43:
  v6 |= 0x2000000000uLL;
LABEL_44:
  if (!CFPreferencesGetAppBooleanValue(@"debug_locking", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_52;
  }

  if (!kAVVCScope)
  {
    v9 = MEMORY[0x1E69E9C10];
LABEL_49:
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 57;
      _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d debug_locking on", &v23, 0x12u);
    }

    goto LABEL_51;
  }

  v9 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_49;
  }

LABEL_51:
  v6 |= 0x8000000000uLL;
LABEL_52:
  if (!CFPreferencesGetAppBooleanValue(@"debug_state", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_60;
  }

  if (!kAVVCScope)
  {
    v10 = MEMORY[0x1E69E9C10];
LABEL_57:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 58;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d debug_state on", &v23, 0x12u);
    }

    goto LABEL_59;
  }

  v10 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_57;
  }

LABEL_59:
  v6 |= 0x4000000000uLL;
LABEL_60:
  if (!CFPreferencesGetAppBooleanValue(@"debug_trace", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_68;
  }

  if (!kAVVCScope)
  {
    v11 = MEMORY[0x1E69E9C10];
LABEL_65:
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 59;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d debug_trace on", &v23, 0x12u);
    }

    goto LABEL_67;
  }

  v11 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_65;
  }

LABEL_67:
  v6 |= 0x10000000000uLL;
LABEL_68:
  if (!CFPreferencesGetAppBooleanValue(@"debug_timing", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_76;
  }

  if (!kAVVCScope)
  {
    v12 = MEMORY[0x1E69E9C10];
LABEL_73:
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 60;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_INFO, "%25s:%-5d debug_timing on", &v23, 0x12u);
    }

    goto LABEL_75;
  }

  v12 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_73;
  }

LABEL_75:
  v6 |= 0x40000000000uLL;
LABEL_76:
  if (!CFPreferencesGetAppBooleanValue(@"debug_delegate", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_84;
  }

  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
LABEL_81:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 61;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_INFO, "%25s:%-5d debug_delegate on", &v23, 0x12u);
    }

    goto LABEL_83;
  }

  v13 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_81;
  }

LABEL_83:
  v6 |= 0x20000000000uLL;
LABEL_84:
  if (!CFPreferencesGetAppBooleanValue(@"debug_playback", @"com.apple.avfoundation.avvc", 0))
  {
    goto LABEL_92;
  }

  if (!kAVVCScope)
  {
    v14 = MEMORY[0x1E69E9C10];
LABEL_89:
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 62;
      _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_INFO, "%25s:%-5d debug_playback on", &v23, 0x12u);
    }

    goto LABEL_91;
  }

  v14 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_89;
  }

LABEL_91:
  v6 |= 0x400000000uLL;
LABEL_92:
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"debug_deviceselect", @"com.apple.avfoundation.avvc", 0);
  v16 = kAVVCScope;
  if (!AppBooleanValue)
  {
    goto LABEL_100;
  }

  if (!kAVVCScope)
  {
    v17 = MEMORY[0x1E69E9C10];
LABEL_97:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 63;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_INFO, "%25s:%-5d debug_deviceselect on", &v23, 0x12u);
      v16 = kAVVCScope;
    }

    goto LABEL_99;
  }

  v17 = *kAVVCScope;
  if (*kAVVCScope)
  {
    goto LABEL_97;
  }

LABEL_99:
  v6 |= 0x80000000000uLL;
LABEL_100:
  if (v16)
  {
    v18 = *v16;
    if (!*v16)
    {
      goto LABEL_106;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v23 = 136315650;
    v24 = "AVVC_Log.mm";
    v25 = 1024;
    v26 = 86;
    v27 = 1024;
    v28 = v1;
    _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_INFO, "%25s:%-5d debug_level = %d", &v23, 0x18u);
    v16 = kAVVCScope;
  }

LABEL_106:
  v19 = v2 ^ 1;
  if (!v6)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    if (v16)
    {
      v20 = *v16;
      if (!*v16)
      {
        goto LABEL_124;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 136315394;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 88;
      _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEFAULT, "%25s:%-5d resetting debug_level to Notify to allow scoped logging", &v23, 0x12u);
      v16 = kAVVCScope;
    }

    v3 = 3;
  }

  if (!v16)
  {
    v21 = MEMORY[0x1E69E9C10];
LABEL_120:
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v23 = 136315906;
      v24 = "AVVC_Log.mm";
      v25 = 1024;
      v26 = 91;
      v27 = 1024;
      v28 = v3;
      v29 = 2048;
      v30 = v6;
      _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEBUG, "%25s:%-5d debug priority: %u scopes: 0x%llx", &v23, 0x22u);
    }

    goto LABEL_122;
  }

  v21 = *v16;
  if (*v16)
  {
    goto LABEL_120;
  }

LABEL_122:
  if (v3 >= 6)
  {
    *(kAVVCScope + 8) = v6;
  }

LABEL_124:
  v22 = *MEMORY[0x1E69E9840];
}

void ___Z11GetImplTypev_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.avfoundation.avvc"];
  v1 = [v0 objectForKey:@"keepAliveType"];

  if (v1)
  {
    GetImplType(void)::type = [v0 integerForKey:@"keepAliveType"];
  }

  if (kAVVCScope)
  {
    v2 = *kAVVCScope;
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v5 = 136315650;
    v6 = "AVVCKeepAliveManager.mm";
    v7 = 1024;
    v8 = 40;
    v9 = 1024;
    v10 = GetImplType(void)::type;
    _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d Using AVVCKeepAliveImpl of type %d", &v5, 0x18u);
  }

LABEL_10:
  v4 = *MEMORY[0x1E69E9840];
}

void *___ZL25LoadCoreMediaFunctionPtrsv_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/CoreMedia.framework/CoreMedia", 1);
  if (result)
  {
    v1 = result;
    sCMAudioFormatDescriptionGetStreamBasicDescription = dlsym(result, "CMAudioFormatDescriptionGetStreamBasicDescription");
    sCMAudioFormatDescriptionCreate = dlsym(v1, "CMAudioFormatDescriptionCreate");
    sCMAudioFormatDescriptionGetChannelLayout = dlsym(v1, "CMAudioFormatDescriptionGetChannelLayout");
    result = dlsym(v1, "CMAudioFormatDescriptionGetMagicCookie");
    sCMAudioFormatDescriptionGetMagicCookie = result;
  }

  return result;
}

void sub_1BA6860C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  ElapsedTime::~ElapsedTime(va);
  if (v7)
  {
    std::recursive_mutex::unlock((v5 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA686450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  ElapsedTime::~ElapsedTime(va);
  if (v7)
  {
    std::recursive_mutex::unlock((v5 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA6867D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  ElapsedTime::~ElapsedTime(va);
  if (v7)
  {
    std::recursive_mutex::unlock((v5 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA686A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ElapsedTime::~ElapsedTime(&a9);
  if (v10)
  {
    std::recursive_mutex::unlock((v9 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA68729C(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA687418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v11;

  if (v12)
  {
    std::recursive_mutex::unlock((v10 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA6876F4(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA687E3C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void sub_1BA6887A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39)
{
  if (a12)
  {
    std::recursive_mutex::unlock((a16 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA688EE8(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA689000(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA689118(_Unwind_Exception *a1)
{
  if (v3)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA689B24(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA68B414(_Unwind_Exception *a1)
{
  if (v5)
  {
    std::recursive_mutex::unlock((v1 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA68BA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25)
{
  _Block_object_dispose(&a20, 8);

  if (a11)
  {
    std::recursive_mutex::unlock((v25 + 24));
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6402(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1BA68C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  ElapsedTime::~ElapsedTime(va);
  if (v10)
  {
    std::recursive_mutex::unlock((v7 + 24));
  }

  _Unwind_Resume(a1);
}

void sub_1BA68C54C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  if (v10)
  {
    std::recursive_mutex::unlock((v8 + 24));
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA68CA08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  if (v10)
  {
    std::recursive_mutex::unlock((v8 + 24));
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA68CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  if (v10)
  {
    std::recursive_mutex::unlock((v7 + 24));
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA68D530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  if (v11)
  {
    std::recursive_mutex::unlock((v9 + 24));
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA68E610(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  if (v18)
  {
    std::recursive_mutex::unlock((v15 + 24));
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA68F524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  if (a10)
  {
    std::recursive_mutex::unlock((v28 + 24));
  }

  ElapsedTime::~ElapsedTime(&a28);
  _Unwind_Resume(a1);
}

void sub_1BA68F990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  if (v6)
  {
    std::recursive_mutex::unlock((v5 + 24));
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void sub_1BA68FF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  if (v20)
  {
    std::recursive_mutex::unlock((v16 + 24));
  }

  ElapsedTime::~ElapsedTime(va);

  _Unwind_Resume(a1);
}

void sub_1BA690AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);

  if (v18)
  {
    std::recursive_mutex::unlock((v15 + 24));
  }

  ElapsedTime::~ElapsedTime(va);
  _Unwind_Resume(a1);
}

void AVVCAudioCapturer_AudioDiagnostics::dispose(AVVCAudioCapturer_AudioDiagnostics *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(this + 32) == 1)
  {
    v2 = *(this + 5);
    *(this + 5) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = "AVVCAudioCapturer.mm";
      v8 = 1024;
      v9 = 220;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d mCapturer is reset to NULL", &v6, 0x12u);
    }
  }

LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
}

void AVVCAudioCapturer_AudioDiagnostics::logCaptures(AVVCAudioCapturer_AudioDiagnostics *this, AVAudioBuffer *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (*(this + 32) == 1 && v5 && *(this + 5))
  {
    v7 = [(AVAudioBuffer *)v5 format];
    v8 = *([v7 streamDescription] + 8);

    if (v8 == 1936745848 || v8 == 1869641075)
    {
      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v10 = *kAVVCScope;
          if (v10)
          {
            v11 = v10;
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
            {
              v21 = 136315394;
              v22 = "AVVCAudioCapturer.mm";
              v23 = 1024;
              v24 = 206;
              _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCAudioCapturer:logCapture: logging non-lpcm audio", &v21, 0x12u);
            }
          }
        }
      }

      v12 = v6;
      v13 = (*(**(this + 5) + 16))(*(this + 5), [(AVAudioBuffer *)v12 data], a3, [(AVAudioBuffer *)v12 packetDescriptions], [(AVAudioBuffer *)v12 packetCount]);
    }

    else
    {
      if (v8 != 1819304813)
      {
        goto LABEL_32;
      }

      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v14 = *kAVVCScope;
          if (v14)
          {
            v15 = v14;
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              v21 = 136315394;
              v22 = "AVVCAudioCapturer.mm";
              v23 = 1024;
              v24 = 201;
              _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d AVVCAudioCapturer:logCapture: logging lpcm audio", &v21, 0x12u);
            }
          }
        }
      }

      v16 = v6;
      v13 = (*(**(this + 5) + 24))(*(this + 5), [(AVAudioBuffer *)v16 frameLength], [(AVAudioBuffer *)v16 audioBufferList], 1);
    }

    v17 = v13;

    if (v17)
    {
      if (kAVVCScope)
      {
        v18 = *kAVVCScope;
        if (!v18)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = 136315650;
        v22 = "AVVCAudioCapturer.mm";
        v23 = 1024;
        v24 = 211;
        v25 = 1024;
        v26 = v17;
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d Error while logging audio: %d", &v21, 0x18u);
      }
    }
  }

LABEL_32:

  v20 = *MEMORY[0x1E69E9840];
}

void AVVCAudioCapturer_AudioDiagnostics::setup(AVVCAudioCapturer_AudioDiagnostics *this, unint64_t a2, AudioStreamBasicDescription *a3, AudioStreamBasicDescription *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  if (*(this + 32) != 1)
  {
    goto LABEL_76;
  }

  v8 = NSHomeDirectory();
  snprintf(__str, 0x400uLL, "%s/Library/Logs/CrashReporter/Assistant/AVVCCapture/", [v8 UTF8String]);

  v9 = strlen(__str);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v42 = v9;
  if (v9)
  {
    memcpy(&__dst, __str, v9);
  }

  *(&__dst + v10) = 0;
  v11 = *(this + 31);
  if (v11 >= 0)
  {
    v12 = *(this + 31);
  }

  else
  {
    v12 = *(this + 2);
  }

  if (v12 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v12 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v37, 0, sizeof(v37));
  *(&v37.__r_.__value_.__s + 23) = v12 + 1;
  if (v12)
  {
    if ((v11 & 0x80u) == 0)
    {
      v13 = this + 8;
    }

    else
    {
      v13 = *(this + 1);
    }

    memmove(&v37, v13, v12);
  }

  *(&v37.__r_.__value_.__l.__data_ + v12) = 45;
  std::to_string(&v36, a2);
  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v36;
  }

  else
  {
    v14 = v36.__r_.__value_.__r.__words[0];
  }

  if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v36.__r_.__value_.__l.__size_;
  }

  v16 = std::string::append(&v37, v14, size);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  v18 = std::string::append(&v38, "-", 1uLL);
  v19 = *&v18->__r_.__value_.__l.__data_;
  *&__str[16] = *(&v18->__r_.__value_.__l + 2);
  *__str = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = [MEMORY[0x1E696AE30] processInfo];
  std::to_string(&v35, [v20 processIdentifier]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v35;
  }

  else
  {
    v21 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v22 = v35.__r_.__value_.__l.__size_;
  }

  v23 = std::string::append(__str, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v40 = v23->__r_.__value_.__r.__words[2];
  *__p = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if ((__str[23] & 0x80000000) != 0)
  {
    operator delete(*__str);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (a3->mFormatID == 1869641075)
  {
    a3->mFramesPerPacket = 320;
  }

  if (v42 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if (v40 >= 0)
  {
    v26 = __p;
  }

  else
  {
    v26 = __p[0];
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once != -1)
  {
    dispatch_once(&NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::once, &__block_literal_global_6538);
  }

  if (NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction)
  {
    v27 = NewAudioCapturer(AudioCapturerOptions,char const*,char const*,unsigned int,AudioStreamBasicDescription const*,AudioStreamBasicDescription const&)::sImplFunction(278802, p_dst, v26, 1667327590, a4, a3);
  }

  else
  {
    v27 = 0;
  }

  v28 = *(this + 5);
  *(this + 5) = v27;
  if (v28)
  {
    (*(*v28 + 8))(v28);
    v27 = *(this + 5);
  }

  if (v27)
  {
    if (kAVVCScope)
    {
      v29 = *kAVVCScope;
      if (!v29)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    v30 = v29;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = (*(**(this + 5) + 56))(*(this + 5));
      *__str = 136315906;
      *&__str[4] = "AVVCAudioCapturer.mm";
      *&__str[12] = 1024;
      *&__str[14] = 185;
      *&__str[18] = 2048;
      *&__str[20] = a2;
      v44 = 2080;
      v45 = v32;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Dumping Audio for stream(%lu) at %s", __str, 0x26u);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v30 = *kAVVCScope;
      if (!v30)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v33 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *__str = 136315394;
      *&__str[4] = "AVVCAudioCapturer.mm";
      *&__str[12] = 1024;
      *&__str[14] = 188;
      _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d Error setting up audio captures", __str, 0x12u);
    }
  }

LABEL_72:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__p[0]);
  }

  if (v42 < 0)
  {
    operator delete(__dst);
  }

LABEL_76:
  v34 = *MEMORY[0x1E69E9840];
}

void sub_1BA691774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
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

void AVVCAudioCapturer_AudioDiagnostics::~AVVCAudioCapturer_AudioDiagnostics(AVVCAudioCapturer_AudioDiagnostics *this)
{
  AVVCAudioCapturer_AudioDiagnostics::~AVVCAudioCapturer_AudioDiagnostics(this);

  JUMPOUT(0x1BFAF5800);
}

{
  v15 = *MEMORY[0x1E69E9840];
  *this = &unk_1F38496E8;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "AVVCAudioCapturer.mm";
    v13 = 1024;
    v14 = 168;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ~AVVCAudioCapturer_AudioDiagnostics(): mCapturer is reset to NULL", &v11, 0x12u);
  }

LABEL_10:
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "AVVCAudioCapturer.mm";
    v13 = 1024;
    v14 = 169;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ~AVVCAudioCapturer_AudioDiagnostics(): destroyed", &v11, 0x12u);
  }

LABEL_17:
  v7 = *(this + 5);
  *(this + 5) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *this = &unk_1F384B680;
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 136315394;
    v12 = "AVVCAudioCapturer.mm";
    v13 = 1024;
    v14 = 31;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d ~AVVCAudioCapturer(): destroyed", &v11, 0x12u);
  }

LABEL_26:
  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA6923C8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1BA692E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AVAUPresetEvent;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<AVAudioFileImpl>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      ExtAudioFileDispose(v3);
      *(v2 + 8) = 0;
    }

    v4 = *(v2 + 64);
    *(v2 + 64) = 0;
    if (v4)
    {
      MEMORY[0x1BFAF5800](v4, 0x1060C406D570707);
    }

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t AVAudioFileImpl::CheckClientFormatSet(AVAudioFileImpl *this)
{
  if (*(this + 16) == 1)
  {
    return *(this + 5);
  }

  *(this + 16) = 1;
  v3 = [*(this + 3) streamDescription];
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v5;
  v7 = v4;
  result = ExtAudioFileSetProperty(*(this + 1), 0x63666D74u, 0x28u, v6);
  *(this + 5) = result;
  return result;
}

void sub_1BA6936B8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3 + 18);

  _Unwind_Resume(a1);
}

uint64_t _AVAE_CheckAndReturnErr(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v6 = 0;
  }

  else
  {
    v6 = a5;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v11 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v19 = "AVAEInternal.h";
      v20 = 1024;
      v21 = 83;
      v22 = 2080;
      v23 = "AVAudioFile.mm";
      v24 = 1024;
      v25 = a1;
      v26 = 2080;
      v27 = a2;
      v28 = 2080;
      v29 = a3;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    if (a6)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = MEMORY[0x1E695DF20];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a3];
      v15 = [v13 dictionaryWithObjectsAndKeys:{v14, @"false condition", 0}];
      *a6 = [v12 errorWithDomain:@"com.apple.coreaudio.avfaudio" code:v6 userInfo:v15];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", a3}];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1BA693C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = AVAudioFile;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1BA694618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14)
{
  v21 = *(v16 + 64);
  *(v16 + 64) = 0;
  if (v21)
  {
    MEMORY[0x1BFAF5800](v21, 0x1060C406D570707);
  }

  MEMORY[0x1BFAF5800](v16, 0x10A0C40707FDA01);
  _Unwind_Resume(a1);
}

uint64_t fileTypeFromExtension(NSString *a1)
{
  inSpecifier = a1;
  outDataSize = 0;
  if (AudioFileGetGlobalInfoSize(0x74657874u, 8u, &inSpecifier, &outDataSize))
  {
    goto LABEL_4;
  }

  v1 = malloc_type_malloc(outDataSize, 0x100004052888210uLL);
  if (AudioFileGetGlobalInfo(0x74657874u, 8u, &inSpecifier, &outDataSize, v1))
  {
    free(v1);
LABEL_4:
    v2 = 0;
    goto LABEL_5;
  }

  if (outDataSize > 3)
  {
    v4 = *v1;
    free(v1);
    if (v4 == 1095321158)
    {
      v2 = 1095321155;
    }

    else
    {
      v2 = v4;
    }
  }

  else
  {
    free(v1);
    v2 = 1667327590;
  }

LABEL_5:

  return v2;
}

uint64_t asbdFromSettingsAndFileType2(NSDictionary *a1, NSArray *a2, int a3, AudioStreamBasicDescription *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v10 = v8;
  *outDataSize = 0;
  *&a4->mSampleRate = 0u;
  *&a4->mBytesPerPacket = 0u;
  *&a4->mBitsPerChannel = 0;
  if (getUInt32ForKey(v9, &cfstr_Avformatidkey.isa, outDataSize, &outDataSize[1]))
  {
    v12 = outDataSize[0];
  }

  else
  {
    v13 = outDataSize[1];
    if (outDataSize[1])
    {
      goto LABEL_20;
    }

    v12 = 1819304813;
  }

  a4->mFormatID = v12;
  inSpecifier = 0.0;
  if (getFloat64ForKey(v9, &inSpecifier, &outDataSize[1], v11))
  {
    v14 = 8000.0;
    if (inSpecifier >= 8000.0)
    {
      v14 = inSpecifier;
      if (inSpecifier > 192000.0)
      {
        v14 = 192000.0;
      }
    }

    goto LABEL_14;
  }

  v13 = outDataSize[1];
  if (outDataSize[1])
  {
LABEL_20:

    goto LABEL_21;
  }

  if (a4->mFormatID == 1768710755)
  {
    v14 = 8000.0;
  }

  else
  {
    v15 = [AudioSessionClass() sharedInstance];
    [v15 setActive:1 error:0];

    v16 = [AudioSessionClass() sharedInstance];
    [v16 sampleRate];
    a4->mSampleRate = v17;

    if (a4->mSampleRate != 0.0)
    {
      goto LABEL_15;
    }

    v14 = 44100.0;
  }

LABEL_14:
  a4->mSampleRate = v14;
LABEL_15:
  if (getUInt32ForKey(v9, &cfstr_Avnumberofchan.isa, outDataSize, &outDataSize[1]))
  {
    v18 = outDataSize[0];
    if (outDataSize[0])
    {
      if (outDataSize[0] > 0x400)
      {
        v13 = 1718449215;
        goto LABEL_20;
      }
    }

    else
    {
      v18 = 1;
      outDataSize[0] = 1;
    }

    goto LABEL_23;
  }

  v13 = outDataSize[1];
  if (outDataSize[1])
  {
    goto LABEL_20;
  }

  if (a4->mFormatID == 1768710755)
  {
    a4->mChannelsPerFrame = 1;
    goto LABEL_91;
  }

  if (v10)
  {
    a4->mChannelsPerFrame = [(NSArray *)v10 count];
  }

  else
  {
    v28 = [AudioSessionClass() sharedInstance];
    [v28 setActive:1 error:0];

    v29 = [AudioSessionClass() sharedInstance];
    a4->mChannelsPerFrame = [v29 inputNumberOfChannels];

    if (!a4->mChannelsPerFrame)
    {
      v18 = 1;
LABEL_23:
      a4->mChannelsPerFrame = v18;
    }
  }

  mFormatID = a4->mFormatID;
  if (mFormatID == 1634492771)
  {
    if (!getUInt32ForKey(v9, &cfstr_Avencoderbitde.isa, outDataSize, &outDataSize[1]))
    {
      goto LABEL_91;
    }

    HIDWORD(v25) = outDataSize[0] - 16;
    LODWORD(v25) = outDataSize[0] - 16;
    v24 = v25 >> 2;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v24 = 3;
        goto LABEL_59;
      }

      if (v24 == 4)
      {
LABEL_59:
        a4->mFormatFlags = v24;
        goto LABEL_91;
      }
    }

    else
    {
      if (!v24)
      {
        v24 = 1;
        goto LABEL_59;
      }

      if (v24 == 1)
      {
        v24 = 2;
        goto LABEL_59;
      }
    }

    v26 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    NSLog(&cfstr_AlacDoesNotSup.isa, v26);

    goto LABEL_91;
  }

  if (mFormatID != 1819304813)
  {
    goto LABEL_91;
  }

  if (getUInt32ForKey(v9, &cfstr_Avlinearpcmisn.isa, outDataSize, &outDataSize[1]) && outDataSize[0] && a4->mChannelsPerFrame != 1)
  {
    NSLog(&cfstr_AudioFilesCann.isa);
  }

  mFormatFlags = a4->mFormatFlags;
  v22 = mFormatFlags | 8;
  a4->mFormatFlags = mFormatFlags | 8;
  if (a3 > 1380333107)
  {
    if (a3 == 1667327590)
    {
      if (getUInt32ForKey(v9, &cfstr_Avlinearpcmisb.isa, outDataSize, &outDataSize[1]))
      {
        v22 = a4->mFormatFlags;
        if (outDataSize[0])
        {
          v27 = v22 | 2;
          goto LABEL_62;
        }
      }

      else
      {
        v22 = a4->mFormatFlags;
      }
    }

    goto LABEL_61;
  }

  if (a3 > 1113011763)
  {
    if (a3 == 1113011764)
    {
      goto LABEL_61;
    }

    v23 = 1315264596;
    goto LABEL_50;
  }

  if (a3 != 1095321155)
  {
    v23 = 1095321158;
LABEL_50:
    if (a3 == v23)
    {
      goto LABEL_51;
    }

LABEL_61:
    v27 = v22 & 0xFFFFFFFD;
    goto LABEL_62;
  }

LABEL_51:
  v27 = mFormatFlags | 0xA;
LABEL_62:
  a4->mFormatFlags = v27;
  UInt32ForKey = getUInt32ForKey(v9, &cfstr_Avlinearpcmisf.isa, outDataSize, &outDataSize[1]);
  if (outDataSize[0])
  {
    v31 = UInt32ForKey;
  }

  else
  {
    v31 = 0;
  }

  if (v31 != 1)
  {
    goto LABEL_111;
  }

  if (a3 > 1463170149)
  {
    if (a3 == 1463170150 || a3 == 1667327590)
    {
      goto LABEL_74;
    }

    v32 = 1463899717;
  }

  else
  {
    if (a3 == 1095321155 || a3 == 1113011764)
    {
      goto LABEL_74;
    }

    v32 = 1380333108;
  }

  if (a3 != v32)
  {
LABEL_111:
    if (getUInt32ForKey(v9, &cfstr_Avlinearpcmbit.isa, outDataSize, &outDataSize[1]))
    {
      v13 = 1718449215;
      v34 = outDataSize[0] + 7;
      v35 = (outDataSize[0] + 7) & 0xFFFFFFF8;
      a4->mBitsPerChannel = v35;
      if (v34 < 8 || v35 > 0x20)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = outDataSize[1];
      if (outDataSize[1])
      {
        goto LABEL_20;
      }

      v35 = 16;
      a4->mBitsPerChannel = 16;
    }

    if (a3 > 1463170149)
    {
      if (a3 != 1463899717)
      {
        v36 = 1463170150;
LABEL_86:
        if (a3 != v36)
        {
          goto LABEL_89;
        }
      }
    }

    else if (a3 != 1113011764)
    {
      v36 = 1380333108;
      goto LABEL_86;
    }

    if (v35 == 8)
    {
      v33 = 1;
      goto LABEL_90;
    }

LABEL_89:
    a4->mFormatFlags |= 4u;
    v33 = v35 >> 3;
    goto LABEL_90;
  }

LABEL_74:
  a4->mFormatFlags |= 1u;
  a4->mBitsPerChannel = 32;
  v33 = 4;
LABEL_90:
  v37 = a4->mChannelsPerFrame * v33;
  a4->mBytesPerPacket = v37;
  a4->mFramesPerPacket = 1;
  a4->mBytesPerFrame = v37;
LABEL_91:
  v38 = 1819304813;

  v39 = a4->mFormatID;
  if (v39 != 1819304813)
  {
    LODWORD(inSpecifier) = 0;
    if (AudioFormatGetPropertyInfo(0x61636F66u, 0, 0, &inSpecifier))
    {
      goto LABEL_100;
    }

    v42 = malloc_type_malloc(LODWORD(inSpecifier), 0x100004052888210uLL);
    if (AudioFormatGetProperty(0x61636F66u, 0, 0, &inSpecifier, v42) || LODWORD(inSpecifier) < 4)
    {
LABEL_106:
      v13 = 1718449215;
      free(v42);
      goto LABEL_21;
    }

    v43 = 0;
    while (*&v42[v43] != v39)
    {
      v43 += 4;
      if ((LODWORD(inSpecifier) & 0xFFFFFFFC) == v43)
      {
        goto LABEL_106;
      }
    }

    free(v42);
    v38 = a4->mFormatID;
  }

  LODWORD(inSpecifier) = a3;
  outDataSize[1] = 0;
  if (AudioFileGetGlobalInfoSize(0x666D6964u, 4u, &inSpecifier, &outDataSize[1]))
  {
LABEL_100:
    v13 = 1718449215;
    goto LABEL_21;
  }

  v40 = malloc_type_malloc(outDataSize[1], 0x100004052888210uLL);
  if (AudioFileGetGlobalInfo(0x666D6964u, 4u, &inSpecifier, &outDataSize[1], v40) || outDataSize[1] < 4)
  {
LABEL_98:
    free(v40);
    goto LABEL_100;
  }

  v41 = 0;
  while (*&v40[v41] != v38)
  {
    v41 += 4;
    if ((outDataSize[1] & 0xFFFFFFFC) == v41)
    {
      goto LABEL_98;
    }
  }

  free(v40);
  v13 = 0;
LABEL_21:

  return v13;
}

uint64_t AVAudioFileImpl::SetFormats(AVAudioFileImpl *this, AVAudioCommonFormat a2, uint64_t a3, const AudioStreamBasicDescription *a4, AVAudioChannelLayout *a5)
{
  v9 = a5;
  v10 = [[AVAudioFormat alloc] initWithStreamDescription:a4 channelLayout:v9];
  v11 = 1718449215;
  v12 = *(this + 5);
  *(this + 5) = v10;

  if (*(this + 5))
  {
    if (v9)
    {
      v13 = [[AVAudioFormat alloc] initWithCommonFormat:a2 sampleRate:a3 interleaved:v9 channelLayout:a4->mSampleRate];
    }

    else
    {
      v13 = [[AVAudioFormat alloc] initWithCommonFormat:a2 sampleRate:a4->mChannelsPerFrame channels:a3 interleaved:a4->mSampleRate];
    }

    v14 = *(this + 3);
    *(this + 3) = v13;

    if (*(this + 3))
    {
      v11 = 0;
    }

    else
    {
      v11 = 1718449215;
    }
  }

  return v11;
}

uint64_t AVAudioFileImpl::ReadMagicCookie(AVAudioFileImpl *this)
{
  _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 403, "ReadMagicCookie", "_fileFormat", *(this + 5) != 0);
  if (!*(this + 14))
  {
    _AVAE_Check("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 407, "ReadMagicCookie", "_processingFormat", *(this + 3) != 0);
    AVAudioFileImpl::CheckClientFormatSet(this);
  }

  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(*(this + 1), 0x6166696Cu, &ioPropertyDataSize, &outPropertyData);
  result = _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 414, "ReadMagicCookie", "ExtAudioFileGetProperty(_extAudioFile, kExtAudioFileProperty_AudioFile, &propSize, &fileID)", Property, 0);
  if (result)
  {
    v4 = 0;
    result = AudioFileGetPropertyInfo(outPropertyData, 0x6D676963u, &v4, 0);
    if (!result)
    {
      if (v4)
      {
        operator new();
      }
    }
  }

  return result;
}

uint64_t AVAudioFileImpl::GetAudioConverter(OpaqueExtAudioFile *a1, void *a2)
{
  outPropertyData = 0;
  ioPropertyDataSize = 8;
  Property = ExtAudioFileGetProperty(a1, 0x61636E76u, &ioPropertyDataSize, &outPropertyData);
  if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 437, "GetAudioConverter", "ExtAudioFileGetProperty(_extAudioFile, kExtAudioFileProperty_AudioConverter, &size, &converter)", Property, a2))
  {
    return outPropertyData;
  }

  else
  {
    return 0;
  }
}

void AVAudioFileImpl::setBitRate(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 objectForKey:@"AVEncoderBitRateKey"];
  v7 = [v5 objectForKey:@"AVEncoderBitRatePerChannelKey"];
  if (v6 | v7)
  {
    AudioConverter = AVAudioFileImpl::GetAudioConverter(*(a1 + 8), a3);
    if (AudioConverter)
    {
      if (v6)
      {
        inPropertyData = [v6 intValue];
        v9 = AudioConverterSetProperty(AudioConverter, 0x62726174u, 4u, &inPropertyData);
        _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 597, "setBitRate", "AudioConverterSetProperty(converter, kAudioConverterEncodeBitRate, sizeof(UInt32), &bitRate)", v9, a3);
      }

      else if (v7)
      {
        v10 = [0 intValue];
        v12 = [*(a1 + 40) channelCount] * v10;
        v11 = AudioConverterSetProperty(AudioConverter, 0x62726174u, 4u, &v12);
        _AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 600, "setBitRate", "AudioConverterSetProperty(converter, kAudioConverterEncodeBitRate, sizeof(UInt32), &bitRatePerChannel)", v11, a3);
      }
    }
  }
}

void sub_1BA6955A0(_Unwind_Exception *a1)
{
  v4 = *(v2 + 64);
  *(v2 + 64) = 0;
  if (v4)
  {
    MEMORY[0x1BFAF5800](v4, 0x1060C406D570707);
  }

  MEMORY[0x1BFAF5800](v2, 0x10A0C40707FDA01);
  _Unwind_Resume(a1);
}

void AVAudioFileImpl::_initCommonReading(uint64_t a1, AVAudioCommonFormat a2, uint64_t a3, void *a4)
{
  ioPropertyDataSize = 40;
  Property = ExtAudioFileGetProperty(*(a1 + 8), 0x66666D74u, &ioPropertyDataSize, &outPropertyData);
  if (!_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 311, "_initCommonReading", "ExtAudioFileGetProperty(_extAudioFile, kExtAudioFileProperty_FileDataFormat, &propSize, &fileASBD)", Property, a4))
  {
    return;
  }

  v9 = 0;
  if (!ExtAudioFileGetPropertyInfo(*(a1 + 8), 0x66636C6Fu, &ioPropertyDataSize, 0))
  {
    v9 = malloc_type_malloc(ioPropertyDataSize, 0x1000040E0EAB150uLL);
    if (!ExtAudioFileGetProperty(*(a1 + 8), 0x66636C6Fu, &ioPropertyDataSize, v9))
    {
      v12 = *v9 & 0xFFFF0000;
      if (v12 == -65536 || v12 == 9633792)
      {
        if (outPropertyData.mChannelsPerFrame == *v9)
        {
          goto LABEL_6;
        }
      }

      else if (v12 || v9[2])
      {
        goto LABEL_6;
      }
    }
  }

  free(v9);
  if (outPropertyData.mChannelsPerFrame < 3)
  {
    v10 = 0;
    v9 = 0;
    goto LABEL_8;
  }

  v9 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040E0EAB150uLL);
  *v9 = outPropertyData.mChannelsPerFrame | 0x930000;
LABEL_6:
  v10 = [[AVAudioChannelLayout alloc] initWithLayout:v9];
LABEL_8:
  free(v9);
  v11 = AVAudioFileImpl::SetFormats(a1, a2, a3, &outPropertyData, v10);
  if (_AVAE_CheckNoErr("/Library/Caches/com.apple.xbs/Sources/AVFAudio/Source/AVFAudio/AVAudioEngine/AVAudioFile.mm", 351, "_initCommonReading", "SetFormats(format, interleaved, fileASBD, avacl)", v11, a4))
  {
    AVAudioFileImpl::ReadMagicCookie(a1);
  }
}

void sub_1BA695DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, void *a20)
{
  MEMORY[0x1BFAF5800](v24, 0x1060C406D570707);

  v26 = *(a16 + 64);
  *(a16 + 64) = 0;
  if (v26)
  {
    MEMORY[0x1BFAF5800](v26, 0x1060C406D570707);
  }

  MEMORY[0x1BFAF5800](a16, 0x10A0C40707FDA01);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::SegmentReader::readProc(_anonymous_namespace_::SegmentReader *this, char *a2, int a3, void *__buf, _DWORD *a5, unsigned int *a6)
{
  v6 = *this;
  v7 = (*(this + 1) + *this);
  v8 = *(this + 2);
  if (v8)
  {
    v9 = v7 > v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    return 4294967256;
  }

  v11 = &a2[v6];
  if (v7 >= &a2[v6])
  {
    v12 = &a2[v6];
  }

  else
  {
    v12 = (*(this + 1) + *this);
  }

  if (v7 >= &v12[a3])
  {
    v7 = &v12[a3];
  }

  if (v11 >= v7)
  {
    result = 4294967256;
    if (!a5)
    {
      return result;
    }

    v14 = 0;
    goto LABEL_16;
  }

  v13 = pread(*(this + 10), __buf, v7 - v12, v12);
  if (a5)
  {
    v14 = v13;
    result = 0;
LABEL_16:
    *a5 = v14;
    return result;
  }

  return 0;
}

void sub_1BA6961A0(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v2, 0x10A0C40707FDA01);

  _Unwind_Resume(a1);
}

void AVAudioNodeImplBase::GetAttachAndEngineLock(AVAudioNodeImplBase *this, uint64_t a2)
{
  v4 = (a2 + 96);
  while (1)
  {
    std::recursive_mutex::lock(v4);
    v5 = *(a2 + 8);
    if (!v5)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v6 = v5 + 112;
    if (std::recursive_mutex::try_lock((v5 + 112)))
    {
      break;
    }

    std::recursive_mutex::unlock(v4);
    __ns.__rep_ = 5000000;
    std::this_thread::sleep_for (&__ns);
  }

  LOBYTE(v5) = 1;
LABEL_7:
  *this = v4;
  *(this + 8) = 1;
  *(this + 2) = v6;
  *(this + 24) = v5;
}

uint64_t AVAudioNodeImplBase::GetMixingImpl(AVAudioNodeImplBase *this)
{
  result = *(this + 7);
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t AVAudioNodeImplBase::GetMixingDestination(AVAudioNodeImplBase *this, AVAudioNode *a2, unsigned int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioNode.mm";
      v17 = 1024;
      v18 = 885;
      v19 = 2080;
      v20 = "GetMixingDestination";
      v21 = 2080;
      v22 = "inMixerAVNode";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "inMixerAVNode"}];
  }

  v7 = *(this + 8);
  if (v7 && *(v7 + 16) && (v8 = std::__tree<std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>,std::__map_value_compare<std::pair<AVAudioNode *,unsigned int>,std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>,std::less<std::pair<AVAudioNode *,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>>>::find<std::pair<AVAudioNode *,unsigned int>>(v7, a2, a3), v7 + 8 != v8))
  {
    result = *(v8 + 48);
  }

  else
  {
    result = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t std::__tree<std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>,std::__map_value_compare<std::pair<AVAudioNode *,unsigned int>,std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>,std::less<std::pair<AVAudioNode *,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>>>::find<std::pair<AVAudioNode *,unsigned int>>(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v5 = *(a1 + 8);
  v3 = a1 + 8;
  v4 = v5;
  if (!v5)
  {
    return v3;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = *(v4 + 40) < a3;
    }

    v9 = !v8;
    if (v8)
    {
      v10 = 8;
    }

    else
    {
      v10 = 0;
    }

    if (v9)
    {
      v6 = v4;
    }

    v4 = *(v4 + v10);
  }

  while (v4);
  if (v6 == v3)
  {
    return v3;
  }

  v11 = *(v6 + 32);
  v9 = v11 == a2;
  v12 = v11 > a2;
  if (v9)
  {
    v12 = *(v6 + 40) > a3;
  }

  if (v12)
  {
    return v3;
  }

  return v6;
}

void sub_1BA6985D0(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 96));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

void sub_1BA698688(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 96));
  std::recursive_mutex::unlock((v1 + 112));
  _Unwind_Resume(a1);
}

AVAudioClock *AVAudioNodeImplBase::CreateClock(AVAudioNodeImplBase *this)
{
  v2 = [AVAudioClock alloc];

  return [(AVAudioClock *)v2 initWithNode:this];
}

double AVAudioNodeImplBase::GetOutputPresentationLatency(AVAudioNodeImplBase *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = COERCE_DOUBLE(atomic_load(this + 11));
  v2 = *(this + 1);
  if (v2)
  {
    v4 = *(v2 + 8);
    v5 = *v4;
    if (std::recursive_mutex::try_lock((*v4 + 112)))
    {
      if (!AVAudioEngineGraph::IsNodeInGraph(v4, this))
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v6 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v12 = "AVAEInternal.h";
          v13 = 1024;
          v14 = 71;
          v15 = 2080;
          v16 = "AVAudioEngineGraph.mm";
          v17 = 1024;
          v18 = 3263;
          v19 = 2080;
          v20 = "GetOutputDeviceLatencyForNode";
          v21 = 2080;
          v22 = "IsNodeInGraph(inImpl)";
          _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsNodeInGraph(inImpl)"}];
      }

      v7 = 0.0;
      if ((*(AVAudioEngineGraph::GetNodeFromMap(v4, this) + 32) & 2) != 0)
      {
        NodeFromMap = AVAudioEngineGraph::GetNodeFromMap(v4, *(v4 + 3));
        if (NodeFromMap)
        {
          v7 = (*(**(NodeFromMap + 24) + 216))(*(NodeFromMap + 24));
          v4[28] = v7;
        }
      }

      std::recursive_mutex::unlock((v5 + 112));
    }

    else
    {
      v7 = v4[28];
    }
  }

  else
  {
    v7 = 0.0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7 + v1;
}

void AVAudioNodeImplBase::WillDisconnectFromMixer(AVAudioNodeImplBase *this, AVAudioNode *a2, unsigned int a3, int a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 7))
  {
    v5 = *(this + 8);
    if (v5)
    {
      if (v5[2])
      {
        if (a4)
        {
          v6 = *v5;
          if (*v5 != v5 + 1)
          {
            do
            {

              v7 = v6[1];
              if (v7)
              {
                do
                {
                  v8 = v7;
                  v7 = *v7;
                }

                while (v7);
              }

              else
              {
                do
                {
                  v8 = v6[2];
                  v9 = *v8 == v6;
                  v6 = v8;
                }

                while (!v9);
              }

              v6 = v8;
            }

            while (v8 != v5 + 1);
            v5 = *(this + 8);
          }

          std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(v5[1]);
          *v5 = v5 + 1;
          v5[2] = 0;
          v5[1] = 0;
        }

        else
        {
          MixingDestination = AVAudioNodeImplBase::GetMixingDestination(this, a2, a3);
          if (!MixingDestination)
          {
            if (AVAudioEngineLogCategory(void)::once != -1)
            {
              dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
            }

            v13 = *AVAudioEngineLogCategory(void)::category;
            if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
            {
              *buf = 136316418;
              v23 = "AVAEInternal.h";
              v24 = 1024;
              v25 = 71;
              v26 = 2080;
              v27 = "AVAudioNode.mm";
              v28 = 1024;
              v29 = 949;
              v30 = 2080;
              v31 = "WillDisconnectFromMixer";
              v32 = 2080;
              v33 = "mixingDest";
              _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
            }

            [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "mixingDest"}];
          }

          v14 = *(this + 8);
          v15 = std::__tree<std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>,std::__map_value_compare<std::pair<AVAudioNode *,unsigned int>,std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>,std::less<std::pair<AVAudioNode *,unsigned int>>,true>,std::allocator<std::__value_type<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>>>::find<std::pair<AVAudioNode *,unsigned int>>(v14, a2, a3);
          if (v14 + 1 != v15)
          {
            v16 = v15;
            v17 = *(v15 + 8);
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
              v19 = v15;
              do
              {
                v18 = v19[2];
                v9 = *v18 == v19;
                v19 = v18;
              }

              while (!v9);
            }

            if (*v14 == v15)
            {
              *v14 = v18;
            }

            v20 = v14[1];
            --v14[2];
            std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, v16);
            operator delete(v16);
          }
        }
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

uint64_t AVAudioNodeImplBase::DidConnectToMixer(AVAudioNodeImplBase *this, AVAudioNode *a2, unsigned int a3)
{
  v6 = [(AVAudioNode *)a2 impl];
  if (((*(*this + 408))(this) & 1) != 0 || (v7 = (*(*this + 256))(this), result = ValidSourceComponentTypeForMixingProtocol(*v7, v7[1]), result))
  {
    v9 = (*(*v6 + 256))(v6);
    result = ValidSourceComponentTypeForMixingProtocol(*v9, v9[1]);
    if (result)
    {
      result = AVAudioNodeImplBase::GetMixingDestination(this, a2, a3);
      if (!result)
      {
        result = (*(*v6 + 256))(v6);
        v10 = *(result + 4);
        if (v10 == 862217581)
        {
          operator new();
        }

        if (v10 == 1835232632)
        {
          operator new();
        }
      }
    }
  }

  return result;
}

BOOL ValidSourceComponentTypeForMixingProtocol(const AudioComponentDescription *a1, int a2)
{
  v2 = a1;
  result = 1;
  if (v2 <= 1635085687)
  {
    if (v2 == 1635084142 || v2 == 1635085685)
    {
      return result;
    }

    return 0;
  }

  if (v2 == 1635086953 || v2 == 1635086197)
  {
    return result;
  }

  if (v2 != 1635085688)
  {
    return 0;
  }

  return a2 == 1835232632 || a2 == 862217581;
}

uint64_t *std::unique_ptr<std::map<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::__map_value_compare<AUGraphNodeBaseV3 *,std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>,std::less<AUGraphNodeBaseV3 *>,true>,std::allocator<std::__value_type<AUGraphNodeBaseV3 *,std::pair<AUGraphNodeBaseV3 *,unsigned int>>>>::destroy(*(v2 + 8));

    JUMPOUT(0x1BFAF5800);
  }

  return result;
}

uint64_t AVAudioNodeImplBase::CurrentTime(AVAudioNodeImplBase *this)
{
  (*(*this + 32))(this);
  v2 = *(this + 1);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 208);
  v5 = (v3 + 184);
  v6 = (v2 + 64);
  if (!v4)
  {
    v6 = v5;
  }

  if (*v6 != 1 || *(this + 48) != 1)
  {
    return 0;
  }

  v7 = *(this + 2);
  if (!v7)
  {
    v9 = 0;
    (*(*this + 352))(this);
    [*(this + 2) awaitIOCycle:&v9];
    v7 = *(this + 2);
  }

  return [v7 currentTime];
}

uint64_t AVAudioNodeImplBase::DisconnectInput(AVAudioNodeImplBase *this, uint64_t a2, AVAudioNodeImplBase *a3, uint64_t a4)
{
  (*(*this + 32))(this);
  v8 = (*(*this + 40))(this);
  if (a3)
  {
    v9 = (*(*a3 + 40))(a3);
  }

  else
  {
    v9 = 0;
  }

  (*(*v8 + 224))(v8, 0, a2, v9, a4);
  if (*(this + 4) > a2)
  {
    *(*(this + 3) + ((a2 >> 3) & 0x1FFFFFF8)) &= ~(1 << a2);
  }

  v10 = (*(*this + 40))(this);
  (*(*v10 + 64))(v10, 1, a2, 0);
  if (a3)
  {
    v11 = (*(*a3 + 40))(a3);
    (*(*v11 + 64))(v11, 0, a4, 0);
  }

  return 1;
}

uint64_t AVAudioNodeImplBase::ConnectInput(AVAudioNodeImplBase *this, uint64_t a2, AVAudioNodeImplBase *a3, uint64_t a4)
{
  (*(*this + 32))(this);
  v8 = (*(*this + 40))(this);
  if (a3)
  {
    v9 = (*(*a3 + 40))(a3);
  }

  else
  {
    v9 = 0;
  }

  (*(*v8 + 224))(v8, 1, a2, v9, a4);
  v10 = *(this + 4);
  if (v10 <= a2)
  {
    while (1)
    {
      v12 = *(this + 5);
      if (v10 == v12 << 6)
      {
        if ((v10 + 1) < 0)
        {
          goto LABEL_19;
        }

        if (v10 > 0x3FFFFFFFFFFFFFFELL)
        {
          goto LABEL_13;
        }

        v13 = v12 << 7;
        if (v13 <= (v10 & 0x3FFFFFFFFFFFFFC0) + 64)
        {
          v13 = (v10 & 0x3FFFFFFFFFFFFFC0) + 64;
        }

        if (v10 < v13)
        {
          if ((v13 & 0x8000000000000000) != 0)
          {
LABEL_19:
            std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
          }

LABEL_13:
          operator new();
        }

        v10 = *(this + 4);
      }

      *(this + 4) = v10 + 1;
      v11 = *(this + 3);
      *(v11 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v10);
      v10 = *(this + 4);
      if (v10 > a2)
      {
        goto LABEL_16;
      }
    }
  }

  v11 = *(this + 3);
LABEL_16:
  *(v11 + ((a2 >> 3) & 0x1FFFFFF8)) |= 1 << a2;
  v14 = (*(*this + 40))(this);
  (*(*v14 + 64))(v14, 1, a2, 1);
  if (a3)
  {
    v15 = (*(*a3 + 40))(a3);
    (*(*v15 + 64))(v15, 0, a4, 1);
  }

  return 1;
}

uint64_t AVAudioNodeImplBase::RemoveStreamFormatObserver(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 40))(a1);
  v4 = *a2;
  v5 = a2[1];
  result = (*(*v3 + 264))();
  if (result)
  {
    v7 = result;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 104;
      v14 = 2080;
      v15 = "AVAudioNode.mm";
      v16 = 1024;
      v17 = 979;
      v18 = 2080;
      v19 = "RemoveStreamFormatObserver";
      v20 = 2080;
      v21 = "AUI().RemoveV2PropertyListener(kAudioUnitProperty_StreamFormat, observer.mProc, observer.mUserData)";
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v7}];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVAudioNodeImplBase::AddStreamFormatObserver(uint64_t a1, uint64_t *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 40))(a1);
  v4 = *a2;
  v5 = a2[1];
  result = (*(*v3 + 256))();
  if (result)
  {
    v7 = result;
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316674;
      v11 = "AVAEInternal.h";
      v12 = 1024;
      v13 = 104;
      v14 = 2080;
      v15 = "AVAudioNode.mm";
      v16 = 1024;
      v17 = 974;
      v18 = 2080;
      v19 = "AddStreamFormatObserver";
      v20 = 2080;
      v21 = "AUI().AddV2PropertyListener(kAudioUnitProperty_StreamFormat, observer.mProc, observer.mUserData)";
      v22 = 1024;
      v23 = v7;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d [%s:%d:%s: (%s): error %d", buf, 0x3Cu);
    }

    result = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"error %d", v7}];
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AVAudioNodeImplBase::SetPropertyAndReturnError(AVAudioNodeImplBase *this, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6)
{
  v11 = (*(*this + 40))(this);
  v12 = *(*v11 + 232);

  return v12(v11, a2, a3, a4, a5, a6);
}

BOOL AVAudioNodeImplBase::GetProperty(AVAudioNodeImplBase *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6)
{
  v12 = a6;
  v10 = (*(*this + 40))(this);
  return (*(*v10 + 240))(v10, a2, a3, a4, a5, &v12) == 0;
}

uint64_t AVAudioNodeImplBase::GetParameter(AVAudioNodeImplBase *this, uint64_t a2, uint64_t a3, uint64_t a4, float *a5)
{
  v9 = (*(*this + 40))(this);
  v10 = *(*v9 + 128);

  return v10(v9, a2, a3, a4, a5);
}

uint64_t AVAudioNodeImplBase::SetParameter(AVAudioNodeImplBase *this, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v9 = (*(*this + 40))(this);
  v10 = *(*v9 + 120);
  v11.n128_f32[0] = a5;

  return v10(v9, a2, a3, a4, v11);
}

uint64_t AVAudioNodeImplBase::Reset(AVAudioNodeImplBase *this)
{
  v1 = *(*(*(*this + 40))(this) + 56);

  return v1();
}

uint64_t AVAudioNodeImplBase::SetInputFormat(AVAudioNodeImplBase *this, uint64_t a2, AVAudioFormat *a3)
{
  v6 = (*(*this + 40))(this);
  v7 = (*(*this + 240))(this, a2);
  v8 = *(*v6 + 48);

  return v8(v6, 1, v7, a3);
}

uint64_t AVAudioNodeImplBase::GetInputFormat(AVAudioNodeImplBase *this, uint64_t a2)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 240))(this, a2);
  v6 = *(*v4 + 40);

  return v6(v4, 1, v5);
}

uint64_t AVAudioNodeImplBase::SetOutputFormat(AVAudioNodeImplBase *this, uint64_t a2, AVAudioFormat *a3)
{
  v6 = (*(*this + 40))(this);
  v7 = (*(*this + 240))(this, a2);
  v8 = *(*v6 + 48);

  return v8(v6, 0, v7, a3);
}

uint64_t AVAudioNodeImplBase::GetOutputFormat(AVAudioNodeImplBase *this, uint64_t a2)
{
  v4 = (*(*this + 40))(this);
  v5 = (*(*this + 240))(this, a2);
  v6 = *(*v4 + 40);

  return v6(v4, 0, v5);
}

AVAudioNodeImplBase *AVAudioNodeImplBase::AVAE_CheckNodeHasEngine(AVAudioNodeImplBase *this)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!*(this + 1))
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v1 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v4 = "AVAEInternal.h";
      v5 = 1024;
      v6 = 71;
      v7 = 2080;
      v8 = "AVAudioNodeImpl.h";
      v9 = 1024;
      v10 = 78;
      v11 = 2080;
      v12 = "AVAE_CheckNodeHasEngine";
      v13 = 2080;
      v14 = "_engine != nil";
      _os_log_impl(&dword_1BA5AC000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    this = [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_engine != nil"}];
  }

  v2 = *MEMORY[0x1E69E9840];
  return this;
}

void AVAudioNodeImplBase::DidDetachFromEngine(AVAudioNodeImplBase *this, AVAudioEngine *a2)
{
  std::recursive_mutex::lock((this + 96));
  *(this + 1) = 0;

  std::recursive_mutex::unlock((this + 96));
}

void AVAudioNodeImplBase::DidAttachToEngine(AVAudioNodeImplBase *this, AVAudioEngine *a2)
{
  std::recursive_mutex::lock((this + 96));
  *(this + 1) = [(AVAudioEngine *)a2 implementation];

  std::recursive_mutex::unlock((this + 96));
}

uint64_t AVAudioNodeImpl::CurrentTime(AVAudioNodeImplBase *this)
{
  if (*(this + 40))
  {
    if (*(this + 48) == 1)
    {
      v2 = *(this + 2);
      if (!v2)
      {
        v4 = 0;
        (*(*this + 352))(this);
        result = [*(this + 2) awaitIOCycle:&v4];
        if (!result)
        {
          return result;
        }

        v2 = *(this + 2);
      }

      return [v2 currentTime];
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return AVAudioNodeImplBase::CurrentTime(this);
  }
}

void AVAudioNodeImpl::GetConverterNodes(uint64_t a1, uint64_t a2)
{
  if (*(*(*a1 + 256))(a1) == 1635083875)
  {
    v5 = *(a2 + 8);
    v4 = *(a2 + 16);
    if (v5 >= v4)
    {
      v7 = *a2;
      v8 = v5 - *a2;
      v9 = v8 >> 3;
      v10 = (v8 >> 3) + 1;
      if (v10 >> 61)
      {
        std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        v12 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *(8 * v9) = a1;
      v6 = 8 * v9 + 8;
      memcpy(0, v7, v8);
      *a2 = 0;
      *(a2 + 8) = v6;
      *(a2 + 16) = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v5 = a1;
      v6 = (v5 + 1);
    }

    *(a2 + 8) = v6;
  }
}

void AVAudioNodeImpl::~AVAudioNodeImpl(id *this)
{
  AVAudioNodeImpl::~AVAudioNodeImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384C300;

  this[2] = 0;
  v2 = this[21];
  this[21] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  AVAudioNodeImplBase::~AVAudioNodeImplBase(this);
}

void AVAudioNodeImplBase::~AVAudioNodeImplBase(AVAudioNodeImplBase *this)
{
  *this = &unk_1F384B100;

  v2 = *(this + 8);
  if (v2)
  {
    v5 = *v2;
    v3 = v2 + 1;
    v4 = v5;
    if (v5 != v3)
    {
      do
      {

        v6 = v4[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v4[2];
            v8 = *v7 == v4;
            v4 = v7;
          }

          while (!v8);
        }

        v4 = v7;
      }

      while (v7 != v3);
    }
  }

  std::recursive_mutex::~recursive_mutex((this + 96));
  std::unique_ptr<std::map<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>>::reset[abi:ne200100](this + 8, 0);
  v9 = *(this + 7);
  *(this + 7) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(this + 3);
  if (v10)
  {
    operator delete(v10);
  }
}

void AVAudioNodeImplBase::AVAudioNodeImplBase(AVAudioNodeImplBase *this)
{
  *this = &unk_1F384B100;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 34) = 0u;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 72) = 0;
  *(this + 10) = 1;
  *(this + 11) = 0;
  MEMORY[0x1BFAF5690](this + 96);
}

void sub_1BA69BF20(_Unwind_Exception *a1)
{
  std::unique_ptr<std::map<std::pair<AVAudioNode *,unsigned int>,AVAudioMixingDestination *>>::reset[abi:ne200100](v1 + 8, 0);
  v3 = v1[7];
  v1[7] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = v1[3];
  if (v4)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void AVAudioNodeImpl::AVAudioNodeImpl(AVAudioNodeImplBase *a1, uint64_t a2, uint64_t a3, int a4)
{
  AVAudioNodeImplBase::AVAudioNodeImplBase(a1);
  *v5 = &unk_1F384C300;
  *(v5 + 160) = a4;
  *(v5 + 168) = 0;
  operator new();
}

void sub_1BA69C048(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v2, 0x10A1C4060B6163ELL);
  v4 = *(v1 + 168);
  *(v1 + 168) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  AVAudioNodeImplBase::~AVAudioNodeImplBase(v1);
  _Unwind_Resume(a1);
}

uint64_t AUInterfaceBaseV3::ScheduleMIDIEventListBlock(AUInterfaceBaseV3 *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUInterfaceBaseV3::ScheduleMIDIEventBlock(AUInterfaceBaseV3 *this)
{
  v1 = *(this + 9);
  if (v1)
  {
    return *v1;
  }

  else
  {
    return 0;
  }
}

uint64_t AUInterfaceBaseV3::ParameterTree(AUInterfaceBaseV3 *this)
{
  v1 = (*(*this + 304))(this);

  return [v1 parameterTree];
}

void AUInterfaceV3::~AUInterfaceV3(const void ***this)
{
  AUInterfaceBaseV3::~AUInterfaceBaseV3(this);

  JUMPOUT(0x1BFAF5800);
}

void sub_1BA69C530(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::pair<std::unique_lock<std::recursive_mutex>,std::unique_lock<std::recursive_mutex>>::~pair(va);
  _Unwind_Resume(a1);
}

void AVAudioUnitSamplerImpl::SetSoundBankURL(AVAudioUnitSamplerImpl *this, CFTypeRef cf)
{
  if (cf)
  {
    *(this + 176) = 1;
    v4 = *(this + 23);
    if (v4)
    {
      CFRelease(v4);
    }

    *(this + 23) = cf;

    CFRetain(cf);
  }

  else
  {
    v5 = *(this + 23);
    if (v5)
    {
      CFRelease(v5);
      *(this + 23) = 0;
    }

    *(this + 176) = 0;
  }
}

void AVAudioUnitSamplerImpl::~AVAudioUnitSamplerImpl(AVAudioUnitSamplerImpl *this)
{
  AVAudioUnitSamplerImpl::~AVAudioUnitSamplerImpl(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384A300;
  if (*(this + 176) == 1)
  {
    v2 = *(this + 23);
    if (v2)
    {
      CFRelease(v2);
    }
  }

  AVAudioUnitImpl::~AVAudioUnitImpl(this);
}

AVAudioFormat *AVAudioIOUnit::_GetHWFormat(AVAudioIOUnit *this, int a2, unsigned int *a3)
{
  v3 = a3;
  v41 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *a3 & 1;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = 32;
  }

  else
  {
    v6 = 40;
  }

  v7 = *(this + v6);
  if (!v7 || ([*(this + v6) sampleRate], v8 <= 0.0) || (!-[AVAudioFormat channelCount](v7, "channelCount") ? (v9 = 1) : (v9 = v5), v9 == 1))
  {
    v28 = v3;
    v10 = 0;
    v11 = 0;
    v12 = 1;
    while (1)
    {
      v13 = v12;
      if (v11)
      {
        v14 = 32;
      }

      else
      {
        v14 = 40;
      }

      v15 = *(this + v14);
      if (v15)
      {
        [*(this + v14) sampleRate];
        if (v16 > 0.0)
        {
          v17 = [v15 channelCount] ? v5 : 1;
          if (v17 != 1)
          {
            goto LABEL_38;
          }
        }
      }

      v18 = (*(*this + 16))(this);
      v19 = (*(*v18 + 40))(v18, v11 & 1, v11);
      if (v19)
      {
        v20 = v19;
        [(AVAudioFormat *)v19 sampleRate];
        if (v21 > 0.0 && [(AVAudioFormat *)v20 channelCount]&& [(AVAudioFormat *)v20 isInterleaved])
        {
          v22 = [(NSDictionary *)[(AVAudioFormat *)v20 settings] mutableCopy];
          [v22 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInteger:", 1), @"AVLinearPCMIsNonInterleaved"}];
          v20 = [[AVAudioFormat alloc] initWithSettings:v22];
        }
      }

      else
      {
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v23 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316418;
          v30 = "AVAEInternal.h";
          v31 = 1024;
          v32 = 71;
          v33 = 2080;
          v34 = "AVAudioIONodeImpl.mm";
          v35 = 1024;
          v36 = 430;
          v37 = 2080;
          v38 = "_GetHWFormat";
          v39 = 2080;
          v40 = "hwFormat";
          _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
        }

        [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "hwFormat"}];
        v20 = 0;
      }

      if (!*(this + v14))
      {
        break;
      }

      if (![(AVAudioFormat *)v20 isEqual:?])
      {
        v24 = *(this + v14);
LABEL_37:

        *(this + v14) = v20;
        v25 = v20;
        v10 |= 2u;
      }

LABEL_38:
      v12 = 0;
      v11 = 1;
      if ((v13 & 1) == 0)
      {
        v3 = v28;
        v7 = *(this + v6);
        if (v28)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }
    }

    v24 = 0;
    goto LABEL_37;
  }

  v10 = 0;
  if (v3)
  {
LABEL_40:
    *v3 = v10;
  }

LABEL_41:
  if (!v7)
  {
    v7 = +[AVAudioFormat formatWithInvalidSampleRateAndChannelCount];
  }

  v26 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t AVAudioIOUnit::IsRunning(AVAudioIOUnit *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = *(this + 1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZNK13AVAudioIOUnit9IsRunningEv_block_invoke;
  v4[3] = &unk_1E7EF64B0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK13AVAudioIOUnit9IsRunningEv_block_invoke(uint64_t a1)
{
  v2 = *(*(**(a1 + 40) + 16))(*(a1 + 40));
  result = (*(v2 + 336))();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t AVAudioIOUnit::GetDeviceLatency(AVAudioIOUnit *this, int a2)
{
  v3 = [MEMORY[0x1E698D708] sharedInstance];
  if (a2)
  {

    return [v3 inputLatency];
  }

  else
  {

    return [v3 outputLatency];
  }
}

uint64_t AVAudioIOUnit::GetClientFormat(AVAudioIOUnit *this, int a2)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7294;
  v11 = __Block_byref_object_dispose__7295;
  v12 = 0;
  v2 = *(this + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN13AVAudioIOUnit15GetClientFormatEj_block_invoke;
  block[3] = &unk_1E7EF6488;
  v6 = a2;
  block[4] = &v7;
  block[5] = this;
  dispatch_sync(v2, block);
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v3;
}

uint64_t ___ZN13AVAudioIOUnit15GetClientFormatEj_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48) == 0;
  v3 = (*(**(a1 + 40) + 16))(*(a1 + 40));
  result = (*(*v3 + 40))(v3, v2, *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

uint64_t AVAudioIOUnit::GetHWFormat(AVAudioIOUnit *this, int a2, unsigned int *a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__7294;
  v12 = __Block_byref_object_dispose__7295;
  v13 = 0;
  v3 = *(this + 1);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN13AVAudioIOUnit11GetHWFormatEjPj_block_invoke;
  v6[3] = &unk_1E7EF6460;
  v6[4] = &v8;
  v6[5] = this;
  v7 = a2;
  v6[6] = a3;
  dispatch_sync(v3, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

id ___ZN13AVAudioIOUnit11GetHWFormatEjPj_block_invoke(uint64_t a1)
{
  *(*(*(a1 + 32) + 8) + 40) = (*(**(a1 + 40) + 72))(*(a1 + 40), *(a1 + 56), *(a1 + 48));
  v2 = *(*(*(a1 + 32) + 8) + 40);

  return v2;
}

void AVAudioIOUnit::~AVAudioIOUnit(dispatch_queue_t *this)
{
  AVAudioIOUnit::~AVAudioIOUnit(this);

  JUMPOUT(0x1BFAF5800);
}

{
  *this = &unk_1F384C988;
  v2 = IOUnitPropertyList();
  v3 = *v2;
  v4 = *(v2 + 8);
  while (v3 != v4)
  {
    v5 = *v3;
    v6 = ((*this)[2].isa)(this);
    (*(*v6 + 264))(v6, v5, AVAudioIOUnit::IOUnitPropertyListener, this);
    ++v3;
  }

  dispatch_sync(this[1], &__block_literal_global_7296);
  dispatch_release(this[1]);

  v7 = this[9];
  if (v7)
  {
    this[10] = v7;
    operator delete(v7);
  }

  v8 = this[3];
  this[3] = 0;
  if (v8)
  {
    (*(v8->isa + 1))(v8);
  }
}

uint64_t IOUnitPropertyList(void)
{
  v2 = *MEMORY[0x1E69E9840];
  {
    operator new();
  }

  result = IOUnitPropertyList(void)::sPropList;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BA69D494(_Unwind_Exception *a1)
{
  MEMORY[0x1BFAF5800](v1, 0x10C402FEFCB83);
  _Unwind_Resume(a1);
}

void AVAudioIOUnit::IOUnitPropertyListener(NSObject **this, void *a2, OpaqueAudioComponentInstance *a3, int a4, int a5)
{
  if (a3 == 2001)
  {
    v6 = *((*this)[2].isa)(this, a2);
    if ((*(v6 + 336))())
    {
      return;
    }

    v7 = this[1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN13AVAudioIOUnit24Listener_IsRunningChangeEv_block_invoke;
    v13[3] = &__block_descriptor_40_e5_v8__0l;
    v13[4] = this;
    v8 = v13;
  }

  else
  {
    v7 = this[1];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN13AVAudioIOUnit22IOUnitPropertyListenerEPvP28OpaqueAudioComponentInstancejjj_block_invoke;
    block[3] = &__block_descriptor_60_e5_v8__0l;
    v10 = a3;
    v11 = a5;
    v12 = a4;
    block[4] = this;
    block[5] = a2;
    v8 = block;
  }

  dispatch_async(v7, v8);
}

void ___ZN13AVAudioIOUnit22IOUnitPropertyListenerEPvP28OpaqueAudioComponentInstancejjj_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 48);
  if (v3 != 19 && v3 != 8)
  {
    return;
  }

  block[9] = v1;
  block[10] = v2;
  v6 = *(a1 + 52);
  if (!v6)
  {
    if (*(a1 + 56) != 2)
    {
      goto LABEL_23;
    }

LABEL_11:
    v7 = *(a1 + 32);
    v8 = 4;
    if (!v6)
    {
      v8 = 5;
    }

    v9 = v7[v8];
    if (v9)
    {
      [v7[v8] sampleRate];
      LODWORD(v9) = v10 > 0.0 && [v9 channelCount] != 0;
    }

    v18 = 1;
    (*(*v7 + 72))(v7, v6, &v18);
    if ((v18 & 2) != 0 && v9)
    {
      v11 = v7[2];
      if (!*(v11 + 88))
      {
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = ___ZN17AVAudioEngineImpl26IOUnitConfigurationChangedEv_block_invoke;
        block[3] = &__block_descriptor_40_e5_v8__0l;
        block[4] = v11;
        *(v11 + 88) = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, block);
      }

      v12 = *(v11 + 72);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___ZN17AVAudioEngineImpl26IOUnitConfigurationChangedEv_block_invoke_2;
      v19[3] = &__block_descriptor_40_e5_v8__0l;
      v19[4] = v11;
      dispatch_async(v12, v19);
    }

    v3 = *(a1 + 48);
    goto LABEL_23;
  }

  if (v6 == 1 && *(a1 + 56) == 1)
  {
    goto LABEL_11;
  }

LABEL_23:
  if (v3 == 8)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 72);
    v15 = *(v13 + 80);
    while (v14 != v15)
    {
      v17 = *v14;
      v16 = *(v14 + 8);
      v14 += 16;
      v17(v16, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 52));
    }
  }
}

void ___ZN13AVAudioIOUnit24Listener_IsRunningChangeEv_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = *(v1 + 72);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN17AVAudioEngineImpl13IOUnitStoppedEv_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v1;
  dispatch_async(v2, block);
}

void sub_1BA69D8D0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AVAudioIONodeImpl::GetAudioUnitV3(AVAudioIONodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 304);

  return v1();
}

uint64_t AVAudioIONodeImpl::GetAudioUnitV2(AVAudioIONodeImpl *this)
{
  v1 = *(*(*(*this + 40))(this) + 272);

  return v1();
}

void AVAudioIONodeImpl::RemoveStreamFormatObserver(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN13AVAudioIOUnit26RemoveStreamFormatObserverERK30AVAEStreamFormatObserverStruct_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_sync(v3, v4);
}

uint64_t ___ZN13AVAudioIOUnit26RemoveStreamFormatObserverERK30AVAEStreamFormatObserverStruct_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v3 = *(v1 + 72);
  v2 = *(v1 + 80);
  if (v3 != v2)
  {
    v4 = *(result + 40);
    v5 = *(v1 + 72);
    while (*v5 != *v4 || v5[1] != v4[1])
    {
      v5 += 2;
      if (v5 == v2)
      {
        return result;
      }
    }

    if (v5 != v2)
    {
      if (v3 != v2)
      {
        while (*v3 != *v4 || v3[1] != v4[1])
        {
          v3 += 2;
          if (v3 == v2)
          {
            return result;
          }
        }

        if (v3 != v2)
        {
          v6 = v3 + 2;
          if (v3 + 2 != v2)
          {
            do
            {
              if (*v6 != *v4 || v6[1] != v4[1])
              {
                *v3 = *v6;
                v3 += 2;
              }

              v6 += 2;
            }

            while (v6 != v2);
            v2 = *(v1 + 80);
          }
        }
      }

      if (v3 != v2)
      {
        *(v1 + 80) = v3;
      }
    }
  }

  return result;
}

void AVAudioIONodeImpl::AddStreamFormatObserver(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 160);
  v3 = *(v2 + 8);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN13AVAudioIOUnit23AddStreamFormatObserverERK30AVAEStreamFormatObserverStruct_block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_sync(v3, v4);
}

void ___ZN13AVAudioIOUnit23AddStreamFormatObserverERK30AVAEStreamFormatObserverStruct_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = v2[9];
  v3 = v2[10];
  v5 = v4;
  if (v4 != v3)
  {
    v5 = v2[9];
    while (*v5 != *v1 || *(v5 + 1) != v1[1])
    {
      v5 += 16;
      if (v5 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v5 == v3)
  {
LABEL_8:
    v6 = v2[11];
    if (v3 >= v6)
    {
      v8 = v3 - v4;
      v9 = (v3 - v4) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        std::vector<AUGraphNodeBaseV3 *>::__throw_length_error[abi:ne200100]();
      }

      v11 = v6 - v4;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v12 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v12 = v10;
      }

      if (v12)
      {
        if (!(v12 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v13 = v9;
      v14 = (16 * v9);
      *v14 = *v1;
      v7 = 16 * v9 + 16;
      v15 = &v14[-v13];
      memcpy(v15, v4, v8);
      v2[9] = v15;
      v2[10] = v7;
      v2[11] = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      *v3 = *v1;
      v7 = (v3 + 16);
    }

    v2[10] = v7;
  }
}

uint64_t AVAudioIONodeImpl::SetInputFormat(AVAudioIONodeImpl *this, uint64_t a2, AVAudioFormat *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(this + 168) == 1)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioIONodeImpl.mm";
      v17 = 1024;
      v18 = 1329;
      v19 = 2080;
      v20 = "SetInputFormat";
      v21 = 2080;
      v22 = "!_isInput";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "!_isInput"}];
  }

  if (!a3 || ([(AVAudioFormat *)a3 sampleRate], v7 <= 0.0) || ![(AVAudioFormat *)a3 channelCount])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v12 = "AVAEInternal.h";
      v13 = 1024;
      v14 = 71;
      v15 = 2080;
      v16 = "AVAudioIONodeImpl.mm";
      v17 = 1024;
      v18 = 1330;
      v19 = 2080;
      v20 = "SetInputFormat";
      v21 = 2080;
      v22 = "IsFormatSampleRateAndChannelCountValid(format)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
  }

  result = AVAudioNodeImplBase::SetInputFormat(this, a2, a3);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

AVAudioFormat *AVAudioIONodeImpl::GetInputFormat(AVAudioIONodeImpl *this)
{
  if (*(this + 168) == 1)
  {
    v2 = *(this + 48);
    if ((v2 & 1) != 0 || (v3 = (*(*this + 40))(this), !(*(*v3 + 24))(v3)))
    {
      v4 = (*(**(this + 20) + 24))(*(this + 20), 1, 0);
      if ((v2 & 1) == 0)
      {
        v5 = (*(*this + 40))(this);
        (*(*v5 + 32))(v5);
      }

      if (v4)
      {
        return v4;
      }
    }
  }

  else
  {
    v4 = (*(**(this + 20) + 32))(*(this + 20), 0);
    if (v4)
    {
      return v4;
    }
  }

  return +[AVAudioFormat formatWithInvalidSampleRateAndChannelCount];
}

uint64_t AVAudioIONodeImpl::SetOutputFormat(AVAudioIONodeImpl *this, uint64_t a2, AVAudioFormat *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if ((*(this + 168) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioIONodeImpl.mm";
      v32 = 1024;
      *v33 = 1315;
      *&v33[4] = 2080;
      *&v33[6] = "SetOutputFormat";
      v34 = 2080;
      v35 = "_isInput";
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "_isInput"}];
  }

  if (!a3 || ([(AVAudioFormat *)a3 sampleRate], v7 <= 0.0) || ![(AVAudioFormat *)a3 channelCount])
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v8 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAudioIONodeImpl.mm";
      v32 = 1024;
      *v33 = 1316;
      *&v33[4] = 2080;
      *&v33[6] = "SetOutputFormat";
      v34 = 2080;
      v35 = "IsFormatSampleRateAndChannelCountValid(format)";
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "IsFormatSampleRateAndChannelCountValid(format)"}];
  }

  v9 = (*(*this + 256))(this);
  if (*v9 == 1635086197 && v9[1] == 1987078511 && v9[2] == 1634758764)
  {
    goto LABEL_39;
  }

  v12 = (*(*this + 72))(this, a2);
  if (v12)
  {
    if (a3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v13 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316418;
      v27 = "AVAEInternal.h";
      v28 = 1024;
      v29 = 71;
      v30 = 2080;
      v31 = "AVAEUtility.mm";
      v32 = 1024;
      *v33 = 165;
      *&v33[4] = 2080;
      *&v33[6] = "AVAE_CheckFormatsValidAndMatching";
      v34 = 2080;
      v35 = "hwFormat != nil";
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
    }

    [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "hwFormat != nil"}];
    if (a3)
    {
LABEL_24:
      if (!v12)
      {
LABEL_40:
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v21 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v27 = "AVAEUtility.mm";
          v28 = 1024;
          v29 = 168;
          _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: input hw format invalid", buf, 0x12u);
        }

        v22 = MEMORY[0x1E695DF30];
        v23 = @"Input HW format is invalid";
        v24 = &unk_1F385A300;
        goto LABEL_50;
      }

      goto LABEL_36;
    }
  }

  if (AVAudioEngineLogCategory(void)::once != -1)
  {
    dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
  }

  v14 = *AVAudioEngineLogCategory(void)::category;
  if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316418;
    v27 = "AVAEInternal.h";
    v28 = 1024;
    v29 = 71;
    v30 = 2080;
    v31 = "AVAEUtility.mm";
    v32 = 1024;
    *v33 = 166;
    *&v33[4] = 2080;
    *&v33[6] = "AVAE_CheckFormatsValidAndMatching";
    v34 = 2080;
    v35 = "clientFormat != nil";
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d required condition is false: [%s:%d:%s: (%s)]", buf, 0x36u);
  }

  [MEMORY[0x1E695DF30] raise:@"com.apple.coreaudio.avfaudio" format:{@"required condition is false: %s", "clientFormat != nil"}];
  if (!v12)
  {
    goto LABEL_40;
  }

LABEL_36:
  [v12 sampleRate];
  if (v15 <= 0.0 || ![v12 channelCount])
  {
    goto LABEL_40;
  }

  [(AVAudioFormat *)a3 sampleRate];
  v17 = v16;
  [v12 sampleRate];
  if (v17 != v18)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v25 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v27 = "AVAEUtility.mm";
      v28 = 1024;
      v29 = 176;
      v30 = 2112;
      v31 = v12;
      v32 = 2112;
      *v33 = a3;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d Format mismatch: input hw %@, client format %@", buf, 0x26u);
    }

    v22 = MEMORY[0x1E695DF30];
    v23 = @"Input HW format and tap format not matching";
    v24 = &unk_1F385A328;
LABEL_50:
    objc_exception_throw([v22 exceptionWithName:@"com.apple.coreaudio.avfaudio" reason:v23 userInfo:v24]);
  }

LABEL_39:
  result = AVAudioNodeImplBase::SetOutputFormat(this, a2, a3);
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

AVAudioFormat *AVAudioIONodeImpl::GetOutputFormat(AVAudioIONodeImpl *this, unint64_t a2, char a3)
{
  if (a3)
  {
    v4 = *(this + 168);
    v5 = *(this + 20);
    dispatch_assert_queue_V2(v5[1]);
    v6 = ((*v5)[2].isa)(v5);
    result = (*(*v6 + 40))(v6, v4, v4 ^ 1);
    if (!result)
    {

      return +[AVAudioFormat formatWithInvalidSampleRateAndChannelCount];
    }
  }

  else
  {
    v8 = *(*this + 48);

    return v8();
  }

  return result;
}

AVAudioFormat *AVAudioIONodeImpl::GetOutputFormat(AVAudioIONodeImpl *this)
{
  if (*(this + 168))
  {
    v2 = (*(**(this + 20) + 32))(*(this + 20), 1);
  }

  else
  {
    v3 = *(this + 48);
    if ((v3 & 1) == 0)
    {
      v4 = (*(*this + 40))(this);
      if ((*(*v4 + 24))(v4))
      {
        goto LABEL_9;
      }
    }

    v2 = (*(**(this + 20) + 24))(*(this + 20), 0, 0);
    if ((v3 & 1) == 0)
    {
      v5 = (*(*this + 40))(this);
      (*(*v5 + 32))(v5);
    }
  }

  if (v2)
  {
    return v2;
  }

LABEL_9:

  return +[AVAudioFormat formatWithInvalidSampleRateAndChannelCount];
}