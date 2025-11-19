void sub_1BA66BD50(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ControllerImpl::deleteRecordingEngines(ControllerImpl *this)
{
  v7[4] = *MEMORY[0x1E69E9840];
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v5, *(this + 1), *(this + 2));
  v2 = *(this + 72);
  v3 = *(this + 73);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      *(this + 59) = 0;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      goto LABEL_11;
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  v7[0] = &unk_1F3847D30;
  v7[3] = v7;
  AVVCRecordingEngineMap::for_each_engine(v2, v7, "deleteRecordingEngines");
  std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](v7);
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::recursive_mutex::lock((v2 + 24));
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::destroy(*(v2 + 8));
    *v2 = v2 + 8;
    *(v2 + 16) = 0;
    *(v2 + 8) = 0;
    std::recursive_mutex::unlock((v2 + 24));
    if (!v3)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  std::__tree<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<AVVCRecordingEngine>>>>::destroy(*(v2 + 8));
  *v2 = v2 + 8;
  *(v2 + 16) = 0;
  *(v2 + 8) = 0;
  if (v3)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

LABEL_10:
  *(this + 59) = 0;
LABEL_11:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1BA66BEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12)
{
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void std::__function::__func<ControllerImpl::deleteRecordingEngines(void)::$_0,std::allocator<ControllerImpl::deleteRecordingEngines(void)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  AVVCRecordingEngine::resetCompletionBlocks(*(v3 + 8), *(v3 + 16));
  *(v3 + 512) = 1;
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "AVVCRecordingEngine.mm";
    v10 = 1024;
    v11 = 1093;
    v12 = 1024;
    v13 = 1;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVCRecordingEngine::setAVVCTeardownCompleted(%d)", &v8, 0x18u);
  }

LABEL_8:
  if (v2)
  {
    v6 = *MEMORY[0x1E69E9840];

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];
  }
}

void ControllerImpl::setEndpointerDelegate(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v27, *(a1 + 8), *(a1 + 16));
  WeakRetained = objc_loadWeakRetained(v27 + 52);
  LOBYTE(a1) = WeakRetained == v8;

  if (a1)
  {
    goto LABEL_25;
  }

  ControllerImpl::waitForAllStopRecordCompletion(v27, v7);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3321888768;
  v23[2] = ___ZN14ControllerImpl21setEndpointerDelegateEP17AVVoiceControllerPU21objcproto10Endpointer11objc_objectm_block_invoke;
  v23[3] = &unk_1F3848DF0;
  v10 = v27;
  v25 = v27;
  v26 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = v8;
  ControllerImpl::safeNotifySync(v10, "set endpointer delegate", v23);
  v11 = objc_loadWeakRetained(v27 + 52);
  v12 = v11 == 0;

  if (!v12)
  {
    v13 = v27;
    v14 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3321888768;
    v21[2] = ___ZN14ControllerImpl21setEndpointerDelegateEP17AVVoiceControllerPU21objcproto10Endpointer11objc_objectm_block_invoke_148;
    v21[3] = &__block_descriptor_48_ea8_32c39_ZTSNSt3__18weak_ptrI14ControllerImplEE_e5_v8__0l;
    v21[4] = v13;
    v22 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    ControllerImpl::safeNotify(v13, "endpointer reset", v21);
    v15 = objc_loadWeakRetained(v27 + 52);
    *(v27 + 424) = objc_opt_respondsToSelector() & 1;

    if (kAVVCScope)
    {
      v16 = *kAVVCScope;
      if (!v16)
      {
LABEL_19:
        ControllerImpl::setupEndpointer(v27, a4);
        if (v22)
        {
          std::__shared_weak_count::__release_weak(v22);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_weak(v14);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v16 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(v27 + 424) == 0;
      *buf = 136315650;
      v30 = "ControllerImpl.mm";
      if (v18)
      {
        v19 = "external";
      }

      else
      {
        v19 = "internal Speex";
      }

      v31 = 1024;
      v32 = 966;
      v33 = 2080;
      v34 = v19;
      _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d #### setEndpointerDelegate: using %s endpointer ####", buf, 0x1Cu);
    }

    goto LABEL_19;
  }

LABEL_23:

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

LABEL_25:
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void sub_1BA66C400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::waitForAllStopRecordCompletion(ControllerImpl *this, AVVoiceController *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(this + 72);
  v5 = *(this + 73);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      if (!*(v4 + 16))
      {
        goto LABEL_34;
      }
    }

    else
    {
      std::recursive_mutex::lock((v4 + 24));
      v6 = *(v4 + 16);
      std::recursive_mutex::unlock((v4 + 24));
      if (!v6)
      {
        goto LABEL_34;
      }
    }

    if (kAVVCScope)
    {
      v7 = *kAVVCScope;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v23 = "ControllerImpl.mm";
      v24 = 1024;
      v25 = 1424;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d waitForAllStopRecordCompletion: wait for all didStops to be delivered to the client", buf, 0x12u);
    }

LABEL_17:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v19, *(this + 1), *(this + 2));
    v10 = v19;
    v9 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21[0] = &unk_1F384DF28;
    v21[1] = v10;
    v21[2] = v9;
    v21[3] = v21;
    AVVCRecordingEngineMap::for_each_engine(v4, v21, "waitForAllStopRecordCompletion");
    std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](v21);
    v11 = *(this + 22);
    if (!v11)
    {
      goto LABEL_32;
    }

    v12 = dispatch_time(0, 3000000000);
    if (!dispatch_group_wait(v11, v12))
    {
LABEL_31:
      v17 = *(this + 22);
      *(this + 22) = 0;

LABEL_32:
      if (v20)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      }

      goto LABEL_34;
    }

    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
LABEL_28:
        v15 = *kAVVCScope;
        v16 = CALog::Scope::oslog(*kAVVCScope);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
        {
          *buf = 134217984;
          v23 = 0x4008000000000000;
          _os_log_fault_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_FAULT, "DelegateDispatchGroup timed out after %f seconds", buf, 0xCu);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v23 = "ControllerImpl.mm";
      v24 = 1024;
      v25 = 4412;
      v26 = 2048;
      v27 = 0x4008000000000000;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d DelegateDispatchGroup timed out after %f seconds", buf, 0x1Cu);
    }

    goto LABEL_28;
  }

LABEL_34:
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_1BA66C79C(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::safeNotifySync(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }

    if (IsSerializationEnabled(void)::enable == 1)
    {
      std::recursive_mutex::lock((a1 + 40));
      v5[2](v5);
      std::recursive_mutex::unlock((a1 + 40));
      goto LABEL_14;
    }

    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_13:
        v5[2](v5);
        goto LABEL_14;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315650;
      v10 = "ControllerImpl.mm";
      v11 = 1024;
      v12 = 4552;
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling %s synchronously", &v9, 0x1Cu);
    }

    goto LABEL_13;
  }

LABEL_14:

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1BA66C960(_Unwind_Exception *a1)
{
  std::recursive_mutex::unlock((v2 + 40));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl21setEndpointerDelegateEP17AVVoiceControllerPU21objcproto10Endpointer11objc_objectm_block_invoke_148(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        WeakRetained = objc_loadWeakRetained((v4 + 416));
        [WeakRetained reset];

LABEL_14:
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v9 = 136315650;
    v10 = "ControllerImpl.mm";
    v11 = 1024;
    v12 = 961;
    v13 = 2048;
    v14 = 0;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (impl: %p). Bailing", &v9, 0x1Cu);
  }

LABEL_13:
  if (v3)
  {
    goto LABEL_14;
  }

LABEL_15:
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1BA66CABC(_Unwind_Exception *a1)
{
  v3 = v2;

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void ControllerImpl::setupEndpointer(ControllerImpl *this, unint64_t a2)
{
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v18, *(this + 1), *(this + 2));
  ControllerImpl::_getCurrentRecordingEngine(&v16, this, a2, 0, "setupEndpointer");
  v4 = *(this + 107);
  v8 = *(this + 27);
  v5 = *(this + 56);
  WeakRetained = objc_loadWeakRetained((v18 + 416));
  if (WeakRetained)
  {
    v7 = v16;

    if (v7)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3321888768;
      v9[2] = ___ZN14ControllerImpl15setupEndpointerEm_block_invoke;
      v9[3] = &__block_descriptor_92_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE48c42_ZTSNSt3__110shared_ptrI14ControllerImplEE_e5_v8__0l;
      v9[4] = v7;
      v10 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = v18;
      v12 = v19;
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = v4;
      v13 = v8;
      v14 = v5;
      (*(*v7 + 328))(v7, v9, "setupEndpointer");
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

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }
}

void sub_1BA66CC60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v21 = *(v19 - 56);
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN14ControllerImpl15setupEndpointerEm_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 248);
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x5812000000;
  v15[3] = __Block_byref_object_copy__153;
  v15[4] = __Block_byref_object_dispose__154;
  v15[5] = 0;
  v3 = *(v1 + 56);
  v4 = *(v1 + 40);
  v16 = *(v1 + 24);
  v17 = v4;
  v18 = v3;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v7 = *(a1 + 48);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3321888768;
  v9[2] = ___ZN14ControllerImpl15setupEndpointerEm_block_invoke_156;
  v9[3] = &unk_1F3847B30;
  v9[5] = v5;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v9[4] = v15;
  v8 = *(a1 + 88);
  v13 = v2;
  v14 = v8;
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);
  ControllerImpl::safeNotify(v7, "setup endpointer", v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Block_object_dispose(v15, 8);
}

void sub_1BA66CDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE48c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *__copy_helper_block_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE48c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

__n128 __Block_byref_object_copy__153(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN14ControllerImpl15setupEndpointerEm_block_invoke_156(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_8;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3 || (v4 = *(a1 + 40)) == 0)
  {
LABEL_8:
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v21 = 136315650;
      v22 = "ControllerImpl.mm";
      v23 = 1024;
      v24 = 990;
      v25 = 2048;
      v26 = 0;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (impl: %p). Bailing", &v21, 0x1Cu);
    }

LABEL_15:
    if (!v3)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (!kAVVCScope)
  {
    v5 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_18;
  }

  v5 = *kAVVCScope;
  if (v5)
  {
LABEL_18:
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v21 = 136315394;
      v22 = "ControllerImpl.mm";
      v23 = 1024;
      v24 = 991;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d setupEndpointer: configuring SR and wait times", &v21, 0x12u);
    }
  }

  if (*(a1 + 80))
  {
    WeakRetained = objc_loadWeakRetained((v4 + 416));
    v10 = objc_opt_respondsToSelector();

    v11 = objc_loadWeakRetained((v4 + 416));
    v12 = v11;
    v13 = *(*(a1 + 32) + 8);
    if (v10)
    {
      [v11 configureWithASBD:v13 + 48 andFrameRate:*(a1 + 80)];
    }

    else
    {
      [v11 configureWithSampleRate:*(a1 + 80) andFrameRate:*(v13 + 48)];
    }
  }

  v14 = objc_loadWeakRetained((v4 + 416));
  v15 = v14;
  if (*(a1 + 84) == 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  [v14 setEndpointMode:v16];

  v17 = objc_loadWeakRetained((v4 + 416));
  [v17 setStartWaitTime:*(a1 + 56)];

  v18 = objc_loadWeakRetained((v4 + 416));
  [v18 setInterspeechWaitTime:*(a1 + 64)];

  v19 = objc_loadWeakRetained((v4 + 416));
  [v19 setEndWaitTime:*(a1 + 72)];

LABEL_30:
  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
LABEL_31:
  v20 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_ea8_32c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t __copy_helper_block_ea8_32c39_ZTSNSt3__18weak_ptrI14ControllerImplEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0,std::allocator<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  v4 = *(a1 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3321888768;
  *&buf[16] = ___ZN14ControllerImpl30configureDelegateDispatchGroupENSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke;
  *&buf[24] = &__block_descriptor_56_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
  *&buf[32] = v4;
  v17 = v3;
  v18 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = AVVCRecordingEngine::if_running_then(v3, buf);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v5)
  {
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    v8 = v6;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_25:

LABEL_26:
      AVVCRecordingEngine::stopRecordWithRecordLock(*(v3 + 152));
      goto LABEL_27;
    }

    if (v2)
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v3)
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(v3 + 264);
        v11 = v2->__shared_owners_ + 1;
LABEL_20:
        v12 = [v9 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v3, v10, v11];
LABEL_22:
        v13 = v12;
        v14 = *(v3 + 264);
        *buf = 136315906;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1430;
        *&buf[18] = 2112;
        *&buf[20] = v13;
        *&buf[28] = 2048;
        *&buf[30] = v14;
        _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d Interrupting recording on engine[%@] with streamID(%llu)", buf, 0x26u);

        if (v2)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v2);
        }

        goto LABEL_25;
      }
    }

    else if (v3)
    {
      v11 = 0;
      v9 = MEMORY[0x1E696AEC0];
      v10 = *(v3 + 264);
      goto LABEL_20;
    }

    v12 = @"(0x0) use_count:0";
    goto LABEL_22;
  }

LABEL_27:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1BA66D3F8(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl30configureDelegateDispatchGroupENSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 176);
  if (!v3)
  {
    v4 = dispatch_group_create();
    v5 = *(v2 + 176);
    *(v2 + 176) = v4;

    v3 = *(v2 + 176);
  }

  dispatch_group_enter(v3);
  v6 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14ControllerImpl30configureDelegateDispatchGroupENSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_2;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = v2;
  AVVCRecordingEngine::setDidStopDelegateCompletionBlock(v6, v7);
}

void ___ZN14ControllerImpl30configureDelegateDispatchGroupENSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 176);
  if (v1)
  {
    dispatch_group_leave(v1);
  }
}

void std::__function::__func<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0,std::allocator<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0,std::allocator<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t std::__function::__func<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0,std::allocator<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F384DF28;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0,std::allocator<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__func(void *a1)
{
  *a1 = &unk_1F384DF28;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x1BFAF5800);
}

void *std::__function::__func<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0,std::allocator<ControllerImpl::waitForAllStopRecordCompletion(AVVoiceController *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__func(void *a1)
{
  *a1 = &unk_1F384DF28;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void ControllerImpl::configureAlertModeFromModeAndEngine(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a4;
  TraceMethod::TraceMethod(v24, "configureAlertModeFromModeAndEngine");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v22, *(a1 + 8), *(a1 + 16));
  if (*a3)
  {
    goto LABEL_11;
  }

  if (!kAVVCScope)
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
    goto LABEL_6;
  }

  v8 = *kAVVCScope;
  if (v8)
  {
LABEL_6:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "ControllerImpl.mm";
      v27 = 1024;
      v28 = 1041;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d configureAlertModeFromModeAndEngine: Nil recording engine. Abandon ship!", buf, 0x12u);
    }
  }

  if (v7)
  {
    v7[2](v7, 4294955515);
  }

LABEL_11:
  v10 = *a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3321888768;
  v14[2] = ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEEU13block_pointerFviE_block_invoke;
  v14[3] = &unk_1F38480F0;
  v16 = a1;
  v17 = v10;
  v11 = a3[1];
  v18 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v19 = v22;
  v20 = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = a2;
  v12 = v7;
  v15 = v12;
  (*(*v10 + 328))(v10, v14, "configureAlertModeFromModeAndEngine");

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  TraceMethod::~TraceMethod(v24);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1BA66D8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a21);
  }

  TraceMethod::~TraceMethod((v22 - 88));

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEEU13block_pointerFviE_block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (!AVVCRouteManager::isOutputWiredHeadset(*(*(a1 + 48) + 368)))
  {
    v4 = kAVVCScope;
    if (!*(*(a1 + 48) + 232))
    {
      goto LABEL_14;
    }

    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 1055;
      _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: record start time was set -- check for ZLL", buf, 0x12u);
    }

LABEL_24:
    v11 = +[AVVoiceTriggerClient sharedInstance];
    v7 = v11;
    if (v11 && (v12 = [v11 voiceTriggerPastDataFramesAvailable]) != 0)
    {
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
LABEL_41:

LABEL_42:
        v8 = 1;
        goto LABEL_43;
      }

      *buf = 136315650;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 1069;
      v34 = 1024;
      LODWORD(v35) = v12;
      v15 = "%25s:%-5d configureAlertModeFromModeAndEngine: ZLL query - back frames: %u";
      v16 = v13;
      v17 = 24;
    }

    else
    {
      if (!supportsCarPlayAuxStream())
      {
LABEL_33:
        v8 = 0;
LABEL_43:

        goto LABEL_44;
      }

      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      v19 = *(*(a1 + 48) + 232);
      *buf = 136315650;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 1075;
      v34 = 2048;
      v35 = v19;
      v15 = "%25s:%-5d configureAlertModeFromModeAndEngine: CarPlay supports ZLL. recordStartTime : %llu";
      v16 = v13;
      v17 = 28;
    }

    _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    goto LABEL_41;
  }

  if (!kAVVCScope)
  {
    v3 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
    goto LABEL_10;
  }

  v3 = *kAVVCScope;
  if (v3)
  {
LABEL_10:
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 1050;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configureAlertModeFromModeAndEngine: Wired headset output - disable ZLL", buf, 0x12u);
    }
  }

  *(*(a1 + 48) + 232) = 0;
  v4 = kAVVCScope;
LABEL_14:
  if (!v4)
  {
    v7 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
LABEL_18:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v31 = "ControllerImpl.mm";
      v32 = 1024;
      v33 = 1087;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: record start time not set", buf, 0x12u);
    }

    goto LABEL_33;
  }

  v7 = *v4;
  if (v7)
  {
    goto LABEL_18;
  }

  v8 = 0;
LABEL_44:
  isOutputHandsFree = AVVCRouteManager::isOutputHandsFree(*(*(a1 + 48) + 368));
  v21 = *(a1 + 64);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEEU13block_pointerFviE_block_invoke_163;
  v24[3] = &unk_1E7EF5B08;
  v22 = *(a1 + 80);
  v26 = v2;
  v27 = v22;
  v28 = isOutputHandsFree;
  v29 = v8;
  v25 = *(a1 + 32);
  ControllerImpl::safeWork(v21, v24, "configureAlertModeFromModeAndEngine_block_invoke");

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEEU13block_pointerFviE_block_invoke_163(uint64_t a1)
{
  v65 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v2 = *(a1 + 48);
  if (v2 <= 1768764004)
  {
    if (v2 <= 1684628339)
    {
      if (v2 <= 1651795059)
      {
        if (v2 != 1635087471)
        {
          v4 = 1651794544;
          goto LABEL_34;
        }

LABEL_41:
        if (kAVVCScope)
        {
          v10 = *kAVVCScope;
          if (!v10)
          {
            goto LABEL_78;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v19 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v20 = *(a1 + 48);
          v50 = "ControllerImpl.mm";
          v49 = 136315650;
          if (v20 == 1635087471)
          {
            v21 = "Auto";
          }

          else
          {
            v21 = "Post-Voice";
          }

          v51 = 1024;
          v52 = 1302;
          v53 = 2080;
          v54 = v21;
          _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: %s", &v49, 0x1Cu);
        }

        goto LABEL_77;
      }

      if (v2 == 1651795060)
      {
        goto LABEL_59;
      }

      v7 = 1668314723;
      goto LABEL_25;
    }

    if (v2 <= 1752132964)
    {
      if (v2 != 1684628340)
      {
        v7 = 1751414371;
LABEL_25:
        if (v2 != v7)
        {
          goto LABEL_68;
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v2 != 1752132965)
    {
      if (v2 != 1752396914)
      {
        goto LABEL_68;
      }

      if (kAVVCScope)
      {
        v9 = *kAVVCScope;
        if (!v9)
        {
LABEL_155:
          if (*(v3 + 336) == -1)
          {
            LODWORD(v8) = 0;
          }

          else
          {
            LODWORD(v8) = *(v3 + 336);
          }

          if (*(v3 + 344) == -1)
          {
            LODWORD(v17) = 0;
          }

          else
          {
            LODWORD(v17) = *(v3 + 344);
          }

          if (*(v3 + 352) == -1)
          {
            LODWORD(v5) = 0;
          }

          else
          {
            LODWORD(v5) = *(v3 + 352);
          }

          goto LABEL_87;
        }
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v49 = 136315394;
        v50 = "ControllerImpl.mm";
        v51 = 1024;
        v52 = 1322;
        _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: VoiceTriggerTraining", &v49, 0x12u);
      }

      goto LABEL_155;
    }

LABEL_44:
    if (kAVVCScope)
    {
      v12 = *kAVVCScope;
      if (!v12)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v38 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v49 = 136315394;
      v50 = "ControllerImpl.mm";
      v51 = 1024;
      v52 = 1276;
      _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: HomeButtonPress/UIButtonPress", &v49, 0x12u);
    }

LABEL_119:
    v39 = MGGetBoolAnswer();
    if (kAVVCScope)
    {
      v40 = *kAVVCScope;
      if (!v40)
      {
LABEL_128:
        if ((v39 & 1) == 0 && (*(a1 + 57) & 1) == 0)
        {
          if (kAVVCScope)
          {
            v10 = *kAVVCScope;
            if (!v10)
            {
              goto LABEL_78;
            }
          }

          else
          {
            v10 = MEMORY[0x1E69E9C10];
            v48 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v49 = 136315394;
            v50 = "ControllerImpl.mm";
            v51 = 1024;
            v52 = 1283;
            _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: no vibrator support and no ZLL", &v49, 0x12u);
          }

          goto LABEL_77;
        }

        v8 = *(v3 + 336);
        if (v8 == -1)
        {
          v44 = *(a1 + 57);
          if (*(a1 + 56) == 1 && (v44 & 1) == 0)
          {
            LODWORD(v8) = 2;
          }

          else
          {
            LODWORD(v8) = v44 ^ 1;
          }
        }

        v17 = *(v3 + 344);
        if (v17 == -1)
        {
          if (*(a1 + 56))
          {
            LODWORD(v17) = 2;
          }

          else
          {
            LODWORD(v17) = 1;
          }
        }

        v5 = *(v3 + 352);
        if (v5 == -1)
        {
          if (*(a1 + 56))
          {
            LODWORD(v5) = 2;
          }

          else
          {
            LODWORD(v5) = 1;
          }
        }

        goto LABEL_87;
      }
    }

    else
    {
      v40 = MEMORY[0x1E69E9C10];
      v41 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v42 = "built-in speaker";
      v43 = *(a1 + 56);
      v50 = "ControllerImpl.mm";
      v49 = 136315650;
      if (v43)
      {
        v42 = "handsFree";
      }

      v51 = 1024;
      v52 = 1281;
      v53 = 2080;
      v54 = v42;
      _os_log_impl(&dword_1BA5AC000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: %s", &v49, 0x1Cu);
    }

    goto LABEL_128;
  }

  if (v2 <= 1969840751)
  {
    if (v2 > 1886352243)
    {
      if (v2 == 1886352244)
      {
        goto LABEL_41;
      }

      v7 = 1936750196;
      goto LABEL_25;
    }

    if (v2 == 1768764005)
    {
LABEL_35:
      if (kAVVCScope)
      {
        v10 = *kAVVCScope;
        if (!v10)
        {
          goto LABEL_78;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v13 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v14 = "Wired/BT ButtonPress";
        v15 = *(a1 + 48);
        if (v15 == 1684628340)
        {
          v14 = "Dictation";
        }

        v50 = "ControllerImpl.mm";
        v49 = 136315650;
        if (v15 == 1768764005)
        {
          v14 = "iMessageGestureToHead";
        }

        v51 = 1024;
        v52 = 1346;
        v53 = 2080;
        v54 = v14;
        _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: %s", &v49, 0x1Cu);
      }

LABEL_77:

LABEL_78:
      if (*(v3 + 336) == -1)
      {
        LODWORD(v8) = 2;
      }

      else
      {
        LODWORD(v8) = *(v3 + 336);
      }

      if (*(v3 + 344) == -1)
      {
        LODWORD(v17) = 2;
      }

      else
      {
        LODWORD(v17) = *(v3 + 344);
      }

      if (*(v3 + 352) == -1)
      {
        LODWORD(v5) = 2;
      }

      else
      {
        LODWORD(v5) = *(v3 + 352);
      }

      goto LABEL_87;
    }

    if (v2 != 1768780647)
    {
      goto LABEL_68;
    }

    LODWORD(v5) = *(v3 + 328);
    if (kAVVCScope)
    {
      v6 = *kAVVCScope;
      if (!v6)
      {
LABEL_141:
        LODWORD(v8) = 0;
        LODWORD(v17) = 2;
        goto LABEL_87;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v45 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v49 = 136315394;
      v50 = "ControllerImpl.mm";
      v51 = 1024;
      v52 = 1336;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: iMessage", &v49, 0x12u);
    }

    goto LABEL_141;
  }

  if (v2 > 1987012962)
  {
    if (v2 != 1987012963)
    {
      v4 = 2003329648;
LABEL_34:
      if (v2 == v4)
      {
        goto LABEL_35;
      }

LABEL_68:
      if (kAVVCScope)
      {
        v18 = *kAVVCScope;
        if (!v18)
        {
LABEL_168:
          LODWORD(v5) = 2;
          LODWORD(v17) = 2;
          LODWORD(v8) = 2;
          goto LABEL_87;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v47 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v49 = 136315394;
        v50 = "ControllerImpl.mm";
        v51 = 1024;
        v52 = 1354;
        _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: default", &v49, 0x12u);
      }

      goto LABEL_168;
    }

LABEL_38:
    if (kAVVCScope)
    {
      v11 = *kAVVCScope;
      if (!v11)
      {
LABEL_59:
        if (*(v3 + 336) == -1)
        {
          LODWORD(v8) = 0;
        }

        else
        {
          LODWORD(v8) = *(v3 + 336);
        }

        if (*(v3 + 344) == -1)
        {
          LODWORD(v17) = 2;
        }

        else
        {
          LODWORD(v17) = *(v3 + 344);
        }

        if (*(v3 + 352) == -1)
        {
          LODWORD(v5) = 2;
        }

        else
        {
          LODWORD(v5) = *(v3 + 352);
        }

        goto LABEL_87;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v49 = 136315394;
      v50 = "ControllerImpl.mm";
      v51 = 1024;
      v52 = 1316;
      _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d configureAlertModeFromModeAndEngine: Built-In/BT/CarPlay Voice Activation", &v49, 0x12u);
    }

    goto LABEL_59;
  }

  if (v2 == 1969840752)
  {
    goto LABEL_44;
  }

  if (v2 != 1986357346)
  {
    goto LABEL_68;
  }

  v8 = *(v3 + 336);
  if (v8 == -1)
  {
    if (*(a1 + 57))
    {
      LODWORD(v8) = 0;
    }

    else
    {
      LODWORD(v8) = 2;
    }
  }

  if (*(v3 + 344) == -1)
  {
    LODWORD(v17) = 2;
  }

  else
  {
    LODWORD(v17) = *(v3 + 344);
  }

  if (*(v3 + 352) == -1)
  {
    LODWORD(v5) = 2;
  }

  else
  {
    LODWORD(v5) = *(v3 + 352);
  }

LABEL_87:
  ControllerImpl::setStartAlertMode(v3, v8);
  ControllerImpl::setStopAlertMode(v3, v17);
  ControllerImpl::setStopWithErrorAlertMode(v3, v5);
  if (kAVVCScope)
  {
    v22 = *kAVVCScope;
    if (!v22)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = *(v3 + 320) - 1;
    if (v24 > 3)
    {
      v25 = "Silent";
    }

    else
    {
      v25 = off_1E7EF6250[v24];
    }

    v26 = *(v3 + 336);
    if (v26 > 4)
    {
      v27 = "No Override";
    }

    else
    {
      v27 = off_1E7EF6228[v26];
    }

    v28 = *(v3 + 324) - 1;
    if (v28 > 3)
    {
      v29 = "Silent";
    }

    else
    {
      v29 = off_1E7EF6250[v28];
    }

    v30 = *(v3 + 344);
    if (v30 > 4)
    {
      v31 = "No Override";
    }

    else
    {
      v31 = off_1E7EF6228[v30];
    }

    v32 = *(v3 + 328) - 1;
    if (v32 > 3)
    {
      v33 = "Silent";
    }

    else
    {
      v33 = off_1E7EF6250[v32];
    }

    v34 = *(v3 + 352);
    if (v34 > 4)
    {
      v35 = "No Override";
    }

    else
    {
      v35 = off_1E7EF6228[v34];
    }

    v49 = 136316930;
    v50 = "ControllerImpl.mm";
    v51 = 1024;
    v52 = 1364;
    v53 = 2080;
    v54 = v25;
    v55 = 2080;
    v56 = v27;
    v57 = 2080;
    v58 = v29;
    v59 = 2080;
    v60 = v31;
    v61 = 2080;
    v62 = v33;
    v63 = 2080;
    v64 = v35;
    _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d configureAlertModeFromModeAndEngine: [final alert modes, overrides] : Start[%s, %s], Stop[%s, %s], StopWError[%s, %s])", &v49, 0x4Eu);
  }

LABEL_112:
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, 0);
  }

  v37 = *MEMORY[0x1E69E9840];
  return result;
}

void ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[8];
  v11[0] = a1[7];
  v11[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_2;
  v8[3] = &unk_1E7EF5B30;
  v10 = a1[4];
  v7 = v3;
  v9 = v7;
  ControllerImpl::configureAlertModeFromModeAndEngine(v4, v5, v11, v8);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1BA66E8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  _Unwind_Resume(a1);
}

NSObject *___ZN14ControllerImpl35configureAlertModeFromModeAndEngineElNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ControllerImpl::stopRunningEngines(ControllerImpl *this, AVVoiceController *a2, int a3, unsigned int a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = *(this + 72);
  v9 = *(this + 73);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v12, *(this + 1), *(this + 2));
    v10 = 0x100000000;
    if (!a3)
    {
      v10 = 0;
    }

    v14 = &unk_1F384DEE0;
    v15 = v10 | a4;
    *(&v15 + 5) = 0;
    HIBYTE(v15) = 0;
    v16 = &v14;
    AVVCRecordingEngineMap::for_each_engine(v8, &v14, "stopRunningEngines");
    std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](&v14);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1BA66EA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](va);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<ControllerImpl::stopRunningEngines(AVVoiceController *,BOOL,int)::$_0,std::allocator<ControllerImpl::stopRunningEngines(AVVoiceController *,BOOL,int)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (*(v3 + 216) >= 4)
  {
    if (kAVVCScope)
    {
      v5 = *kAVVCScope;
      if (!v5)
      {
LABEL_14:
        AVVCRecordingEngine::setRecordErrorStatus(v3, *(a1 + 8), "operator()");
        v13 = *(a1 + 12);
        AVVCRecordingEngine::stopRecordWithRecordLock(*(v3 + 152));
        goto LABEL_15;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v6 = MEMORY[0x1E69E9C10];
    }

    v7 = v5;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      if (v2)
      {
        atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
        v8 = MEMORY[0x1E696AEC0];
        v9 = *(v3 + 264);
        v10 = v2->__shared_owners_ + 1;
      }

      else
      {
        v10 = 0;
        v8 = MEMORY[0x1E696AEC0];
        v9 = *(v3 + 264);
      }

      v11 = [v8 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v3, v9, v10];
      v12 = *(v3 + 264);
      *buf = 136315906;
      v16 = "ControllerImpl.mm";
      v17 = 1024;
      v18 = 1393;
      v19 = 2112;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Interrupting recording on engine[%@] with streamID(%llu)", buf, 0x26u);

      if (v2)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v2);
      }
    }

    goto LABEL_14;
  }

LABEL_15:
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1BA66EC18(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ControllerImpl::stopRunningEngines(AVVoiceController *,BOOL,int)::$_0,std::allocator<ControllerImpl::stopRunningEngines(AVVoiceController *,BOOL,int)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_1F384DEE0;
  *(a2 + 8) = *(result + 8);
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  return result;
}

NSObject *___ZN14ControllerImpl11setAlertURLEP17AVVoiceController16AVVoiceAlertTypeP5NSURL_block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ControllerImpl::VibeAlertCompletionProc(ControllerImpl *this, void *a2, AVVoiceController *a3)
{
  v4 = this;
  v89[3] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v67 = 4129;
  v68 = 0;
  v69 = 0u;
  v70 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v66, "VibeAlertCompletionProc");
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v6 = *kAVVCScope;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2808;
          *&buf[18] = 1024;
          *&buf[20] = v4;
          _os_log_impl(&dword_1BA5AC000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d VibeAlertCompletionProc: SSID %u done", buf, 0x18u);
        }
      }
    }
  }

  if (v5)
  {
    [(AVVoiceController *)v5 impl];
    if (v64 && ObjectExists(v5))
    {
      ProfileMetrics(&cfstr_AvvcProfilePro_11.isa);
      ControllerImpl::setAlertState(v64, 0);
      if (v4 > 1403)
      {
        if ((v4 - 1405) >= 2)
        {
          if (v4 != 1404)
          {
LABEL_13:
            if (kAVVCScope)
            {
              v8 = *kAVVCScope;
              if (!v8)
              {
LABEL_134:
                v52 = v64;
                *(v64 + 51) = 0;
                *(v52 + 26) = 0;
                goto LABEL_135;
              }
            }

            else
            {
              v8 = MEMORY[0x1E69E9C10];
              v22 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2869;
              *&buf[18] = 1024;
              *&buf[20] = v4;
              _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d VibeAlertCompletionProc: notified for other ssID %d -- no-op", buf, 0x18u);
            }

            goto LABEL_134;
          }

LABEL_29:
          v12 = v5;
          LODWORD(v71) = 4131;
          BYTE4(v71) = 0;
          v72 = 0u;
          v73 = 0u;
          kdebug_trace();
          TraceMethod::TraceMethod(&v82, "vibeStartAlertFinished");
          ControllerImpl::_getCurrentRecordingEngine(&v84, v64, a3, 0, "vibeStartAlertFinished");
          v13 = v84;
          if (v84)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3321888768;
            *&buf[16] = ___ZN14ControllerImpl22vibeStartAlertFinishedEP17AVVoiceControllerm_block_invoke;
            *&buf[24] = &__block_descriptor_56_ea8_40c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
            *&buf[32] = v64;
            v88 = v84;
            v14 = v85;
            v89[0] = v85;
            if (v85)
            {
              atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v13 + 328))(v13, buf, "vibeStartAlertFinished");
            if (v89[0])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v89[0]);
            }

            goto LABEL_112;
          }

          if (kAVVCScope)
          {
            v19 = *kAVVCScope;
            if (!v19)
            {
LABEL_111:
              v14 = v85;
LABEL_112:
              if (v14)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v14);
              }

              TraceMethod::~TraceMethod(&v82);
              TraceWrapper::~TraceWrapper(&v71);

              v41 = *(v64 + 51);
              if (v41)
              {
                v42 = *(v64 + 26);
                v43 = *(v64 + 49);
                objc_initWeak(buf, v12);
                v44 = v64;
                v61[0] = MEMORY[0x1E69E9820];
                v61[1] = 3221225472;
                v61[2] = ___ZN14ControllerImpl23VibeAlertCompletionProcEjP17AVVoiceControllerm_block_invoke;
                v61[3] = &unk_1E7EF5BA8;
                objc_copyWeak(v62, buf);
                v63 = v41;
                v62[1] = v42;
                v62[2] = v43;
                ControllerImpl::safeNotify(v44, "haptic alertPlaybackFinishedWithSettings", v61);
                objc_destroyWeak(v62);
                objc_destroyWeak(buf);
              }

              goto LABEL_134;
            }
          }

          else
          {
            v19 = MEMORY[0x1E69E9C10];
            v40 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2746;
            *&buf[18] = 2048;
            *&buf[20] = a3;
            _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d vibeStartAlertFinished: Could not find engine for streamID(%lu)", buf, 0x1Cu);
          }

          goto LABEL_111;
        }
      }

      else if ((v4 - 1111) >= 2)
      {
        if (v4 != 1110)
        {
          goto LABEL_13;
        }

        goto LABEL_29;
      }

      val = v5;
      TraceMethod::TraceMethod(v86, "vibeStopAlertFinished");
      if (kAVVCScope)
      {
        v11 = *kAVVCScope;
        if (!v11)
        {
LABEL_87:
          if (ControllerImpl::getSessionState(v64, a3) != 4)
          {
            goto LABEL_132;
          }

          std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v80, *(v64 + 1), *(v64 + 2));
          SessionLock::SessionLock(&v71, v80, v81);
          if (v81)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v81);
          }

          if (kAVVCScope)
          {
            v29 = *kAVVCScope;
            if (!v29)
            {
              goto LABEL_97;
            }
          }

          else
          {
            v29 = MEMORY[0x1E69E9C10];
            v30 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 2778;
            _os_log_impl(&dword_1BA5AC000, v29, OS_LOG_TYPE_DEFAULT, "%25s:%-5d vibeStopAlertFinished: deactivating session -- finishing the job", buf, 0x12u);
          }

LABEL_97:
          SessionState = ControllerImpl::getSessionState(v64, a3);
          v32 = ControllerImpl::sessionManagerForStreamID(v64, 0, 0);
          v33 = [v32 getSessionActivationOptions];
          v76 = 0;
          v34 = [v32 setActive:0 withOptions:v33 error:&v76];
          v35 = v76;
          v36 = v35;
          if (v34)
          {
            ControllerImpl::setSessionState(v64, 1, a3);
            std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(v64 + 60);
LABEL_131:
            objc_initWeak(&location, val);
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZN14ControllerImpl21vibeStopAlertFinishedEP17AVVoiceControllerm_block_invoke;
            *&buf[24] = &unk_1E7EF6678;
            objc_copyWeak(&buf[32], &location);
            ControllerImpl::safeNotify(v64, "endAudioSessionActivate", buf);
            objc_destroyWeak(&buf[32]);
            objc_destroyWeak(&location);

            VCLocker::~VCLocker(&v71);
LABEL_132:
            TraceMethod::~TraceMethod(v86);

            v48 = *(v64 + 51);
            if (v48)
            {
              v49 = *(v64 + 26);
              v50 = *(v64 + 49);
              objc_initWeak(buf, val);
              v51 = v64;
              v58[0] = MEMORY[0x1E69E9820];
              v58[1] = 3221225472;
              v58[2] = ___ZN14ControllerImpl23VibeAlertCompletionProcEjP17AVVoiceControllerm_block_invoke_252;
              v58[3] = &unk_1E7EF5BA8;
              objc_copyWeak(v59, buf);
              v60 = v48;
              v59[1] = v49;
              v59[2] = v50;
              ControllerImpl::safeNotify(v51, "haptic alertPlaybackFinishedWithSettings", v58);
              objc_destroyWeak(v59);
              objc_destroyWeak(buf);
            }

            goto LABEL_134;
          }

          v37 = [v35 code];
          v38 = v37;
          if (v37)
          {
            if ((v37 + 199999) <= 0x61A7E)
            {
              if (kAVVCScope)
              {
                v39 = *kAVVCScope;
                if (!v39)
                {
                  goto LABEL_129;
                }
              }

              else
              {
                v39 = MEMORY[0x1E69E9C10];
                v45 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 2785;
                *&buf[18] = 1024;
                *&buf[20] = v38;
                v46 = "%25s:%-5d ERROR: vibeStopAlertFinished: setActive:FALSE withOptions: err %d";
LABEL_127:
                _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, v46, buf, 0x18u);
                goto LABEL_128;
              }

              goto LABEL_128;
            }

            if (kAVVCScope)
            {
              v39 = *kAVVCScope;
              if (!v39)
              {
                goto LABEL_129;
              }
            }

            else
            {
              v39 = MEMORY[0x1E69E9C10];
              v47 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2785;
              *&buf[18] = 1024;
              *&buf[20] = v38;
              v46 = "%25s:%-5d ERROR: vibeStopAlertFinished: setActive:FALSE withOptions: err %{audio:4CC}d";
              goto LABEL_127;
            }

LABEL_128:
          }

LABEL_129:
          if (v38 != 560030580)
          {
            ControllerImpl::setSessionState(v64, SessionState, a3);
          }

          goto LABEL_131;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      v16 = v11;
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
LABEL_86:

        goto LABEL_87;
      }

      ControllerImpl::_getCurrentRecordingEngine(&v71, v64, a3, 0, "vibeStopAlertFinished");
      v56 = v71;
      if (v71)
      {
        ControllerImpl::_getCurrentRecordingEngine(&v84, v64, a3, 0, "vibeStopAlertFinished");
        v54 = (*(*v84 + 64))(v84, 0);
        v17 = [v54 sessionState];
        v18 = "ILLEGAL";
        if (v17 > 3)
        {
          if (v17 > 5)
          {
            if (v17 == 6)
            {
              v18 = "Activating";
            }

            else if (v17 == 7)
            {
              v18 = "Active";
            }
          }

          else if (v17 == 4)
          {
            v18 = "Deactivating";
          }

          else
          {
            v18 = "Prewarming";
          }

          goto LABEL_46;
        }

        if (v17 > 1)
        {
          if (v17 == 2)
          {
            v18 = "InteruptedWhileRecording";
          }

          else
          {
            v18 = "InteruptedWhilePlaying";
          }

          goto LABEL_46;
        }

        if (v17)
        {
          if (v17 == 1)
          {
            v18 = "Inactive";
          }

          goto LABEL_46;
        }
      }

      v18 = "NotConfigured";
LABEL_46:
      ControllerImpl::_getCurrentRecordingEngine(&v82, v64, a3, 0, "vibeStopAlertFinished");
      if (v82)
      {
        if (v83)
        {
          v20 = v83->__shared_owners_ + 1;
        }

        else
        {
          v20 = 0;
        }

        v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v82, *(v82 + 264), v20];
      }

      else
      {
        v21 = @"(0x0) use_count:0";
      }

      v55 = v21;
      ControllerImpl::_getCurrentRecordingEngine(&v80, v64, a3, 0, "vibeStopAlertFinished");
      v23 = v80;
      v24 = "unconfigured";
      if (v80)
      {
        ControllerImpl::_getCurrentRecordingEngine(&v78, v64, a3, 0, "vibeStopAlertFinished");
        v25 = (*(*v78 + 296))(v78);
        if (v25 > 4)
        {
          v24 = "ILLEGAL";
        }

        else
        {
          v24 = off_1E7EF6310[v25];
        }
      }

      ControllerImpl::_getCurrentRecordingEngine(&v76, v64, a3, 0, "vibeStopAlertFinished");
      if (v76)
      {
        ControllerImpl::_getCurrentRecordingEngine(&location, v64, a3, 0, "vibeStopAlertFinished");
        v26 = *(location + 27);
        if (v26 > 6)
        {
          v27 = "ILLEGAL";
        }

        else
        {
          v27 = off_1E7EF6338[v26];
        }

        *buf = 136316418;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2773;
        *&buf[18] = 2080;
        *&buf[20] = v18;
        *&buf[28] = 2112;
        v28 = v55;
        *&buf[30] = v55;
        *&buf[38] = 2080;
        v88 = v24;
        LOWORD(v89[0]) = 2080;
        *(v89 + 2) = v27;
        _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
        if (v75)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }
      }

      else
      {
        *buf = 136316418;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2773;
        *&buf[18] = 2080;
        *&buf[20] = v18;
        *&buf[28] = 2112;
        v28 = v55;
        *&buf[30] = v55;
        *&buf[38] = 2080;
        v88 = v24;
        LOWORD(v89[0]) = 2080;
        *(v89 + 2) = "unconfigured";
        _os_log_impl(&dword_1BA5AC000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);
      }

      if (v77)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v77);
      }

      if (v23 && v79)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v79);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v83)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      }

      if (v56)
      {

        if (v85)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }
      }

      if (v72)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v72);
      }

      goto LABEL_86;
    }
  }

  else
  {
    v64 = 0;
    v65 = 0;
  }

  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_135;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2812;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d VibeAlertCompletionProc -> called after object destroyed -- ignoring call", buf, 0x12u);
  }

LABEL_135:
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  TraceMethod::~TraceMethod(v66);
  TraceWrapper::~TraceWrapper(&v67);

  v53 = *MEMORY[0x1E69E9840];
}

void sub_1BA66FB74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, char a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, std::__shared_weak_count *a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, uint64_t a50, uint64_t a51, std::__shared_weak_count *a52)
{
  if (a52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a52);
  }

  if (v54)
  {
    v57 = *(v55 - 240);
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  v58 = *(v55 - 224);
  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  if (*(v55 - 208))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(v55 - 208));
  }

  if (a15)
  {

    v59 = *(v55 - 192);
    if (v59)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v59);
    }
  }

  if (a45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a45);
  }

  TraceMethod::~TraceMethod((v55 - 184));
  if (a34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a34);
  }

  TraceMethod::~TraceMethod(&a35);
  TraceWrapper::~TraceWrapper(&a37);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl23VibeAlertCompletionProcEjP17AVVoiceControllerm_block_invoke(uint64_t a1)
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
      v10 = 2835;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1BA66FE98(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl23VibeAlertCompletionProcEjP17AVVoiceControllerm_block_invoke_252(uint64_t a1)
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
      v10 = 2860;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1BA66FFF0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl21vibeStopAlertFinishedEP17AVVoiceControllerm_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endAudioSessionActivate:0];
  }

  else
  {
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

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 2796;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:

  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl22vibeStartAlertFinishedEP17AVVoiceControllerm_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (!kAVVCScope)
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
LABEL_5:
    v6 = v4;
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
LABEL_45:

      goto LABEL_46;
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      v1 = (*(*v7 + 64))(*(a1 + 40), 0);
      v8 = [v1 sessionState];
      if (v8 > 3)
      {
        if (v8 > 5)
        {
          if (v8 == 6)
          {
            v11 = "Activating";
            goto LABEL_22;
          }

          v9 = v8 == 7;
          v10 = "Active";
        }

        else
        {
          if (v8 == 4)
          {
            v11 = "Deactivating";
            goto LABEL_22;
          }

          v9 = v8 == 5;
          v10 = "Prewarming";
        }

LABEL_19:
        if (v9)
        {
          v11 = v10;
        }

        else
        {
          v11 = "ILLEGAL";
        }

LABEL_22:
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v12)
          {
            v14 = MEMORY[0x1E696AEC0];
            v15 = *(v12 + 264);
            v16 = v13->__shared_owners_ + 1;
LABEL_27:
            v17 = [v14 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v12, v15, v16];
LABEL_29:
            v18 = v17;
            v19 = *(a1 + 40);
            if (v19)
            {
              v20 = (*(*v19 + 296))(v19);
              if (v20 > 4)
              {
                v21 = "ILLEGAL";
              }

              else
              {
                v21 = off_1E7EF6310[v20];
              }

              v23 = *(a1 + 40);
              if (v23)
              {
                v24 = *(v23 + 216);
                v22 = "ILLEGAL";
                if (v24 <= 2)
                {
                  if (v24)
                  {
                    if (v24 == 1)
                    {
                      v22 = "Uninitialized";
                    }

                    else if (v24 == 2)
                    {
                      v22 = "Prepared";
                    }
                  }

                  else
                  {
                    v22 = "Invalid";
                  }
                }

                else if (v24 > 4)
                {
                  if (v24 == 5)
                  {
                    v22 = "Running";
                  }

                  else if (v24 == 6)
                  {
                    v22 = "Stopping";
                  }
                }

                else if (v24 == 3)
                {
                  v22 = "Stopped";
                }

                else
                {
                  v22 = "Starting";
                }
              }

              else
              {
                v22 = "unconfigured";
              }
            }

            else
            {
              v21 = "unconfigured";
              v22 = "unconfigured";
            }

            *buf = 136316418;
            v33 = "ControllerImpl.mm";
            v34 = 1024;
            v35 = 2752;
            v36 = 2080;
            v37 = v11;
            v38 = 2112;
            v39 = v18;
            v40 = 2080;
            v41 = v21;
            v42 = 2080;
            v43 = v22;
            _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            if (v7)
            {
            }

            goto LABEL_45;
          }
        }

        else if (v12)
        {
          v16 = 0;
          v14 = MEMORY[0x1E696AEC0];
          v15 = *(v12 + 264);
          goto LABEL_27;
        }

        v17 = @"(0x0) use_count:0";
        goto LABEL_29;
      }

      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v11 = "InteruptedWhileRecording";
          goto LABEL_22;
        }

        v9 = v8 == 3;
        v10 = "InteruptedWhilePlaying";
        goto LABEL_19;
      }

      if (v8)
      {
        v9 = v8 == 1;
        v10 = "Inactive";
        goto LABEL_19;
      }
    }

    v11 = "NotConfigured";
    goto LABEL_22;
  }

  v4 = *kAVVCScope;
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_46:
  if (*(*(a1 + 40) + 216) == 4)
  {
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v30, *(v3 + 8), *(v3 + 16));
    RecordLock::RecordLock(buf, v30, v31);
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      v26 = (*(*v25 + 96))(v25);
      VCLocker::~VCLocker(buf);
      if (v26)
      {
        AVVCRecordingEngine::startedRecording(*(a1 + 40));
      }
    }

    else
    {
      VCLocker::~VCLocker(buf);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v27 = *kAVVCScope;
      if (!v27)
      {
        goto LABEL_60;
      }
    }

    else
    {
      v27 = MEMORY[0x1E69E9C10];
      v28 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v33 = "ControllerImpl.mm";
      v34 = 1024;
      v35 = 2765;
      _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d vibeStartAlertFinished: record state != kRecordStarting -- noop", buf, 0x12u);
    }
  }

LABEL_60:
  v29 = *MEMORY[0x1E69E9840];
}

void sub_1BA670618(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl29playHapticAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviE_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 48);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = std::__shared_weak_count::lock(v3);
  v5 = v4;
  if (!v4)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = *(a1 + 40);
  if (WeakRetained && v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZN14ControllerImpl29playHapticAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviE_block_invoke_189;
    v12[3] = &unk_1F3848860;
    v14 = v6;
    v15 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *(a1 + 64);
    v7 = WeakRetained;
    v8 = *(a1 + 56);
    v13 = v7;
    v16 = v8;
    ControllerImpl::dispatchAndSafeWork(v6, v12, "playHapticAlertWithCompletion_block_invoke");

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    goto LABEL_17;
  }

LABEL_9:
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v19 = "ControllerImpl.mm";
    v20 = 1024;
    v21 = 1750;
    v22 = 2048;
    v23 = WeakRetained;
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_16:
  if (v5)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1BA670870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);

  _Unwind_Resume(a1);
}

void CACFDictionary::~CACFDictionary(CACFDictionary *this)
{
  if (*(this + 8) == 1)
  {
    v2 = *this;
    if (*this)
    {
      CFRelease(v2);
    }
  }
}

void ___ZN14ControllerImpl37playHapticWithBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviE_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 48);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = std::__shared_weak_count::lock(v3);
  v5 = v4;
  if (!v4)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v6 = *(a1 + 40);
  if (WeakRetained && v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZN14ControllerImpl37playHapticWithBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviE_block_invoke_214;
    v12[3] = &unk_1F3848860;
    v14 = v6;
    v15 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v17 = *(a1 + 64);
    v7 = WeakRetained;
    v8 = *(a1 + 56);
    v13 = v7;
    v16 = v8;
    ControllerImpl::dispatchAndSafeWork(v6, v12, "playHapticWithBeepAlertWithCompletion_block_invoke");

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    goto LABEL_17;
  }

LABEL_9:
  if (kAVVCScope)
  {
    v9 = *kAVVCScope;
    if (!v9)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v19 = "ControllerImpl.mm";
    v20 = 1024;
    v21 = 1861;
    v22 = 2048;
    v23 = WeakRetained;
    v24 = 2048;
    v25 = v6;
    _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_16:
  if (v5)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1BA670ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);

  _Unwind_Resume(a1);
}

NSObject *ControllerImpl::primeAlertQueue(uint64_t a1, int a2)
{
  v2 = a2;
  v64 = *MEMORY[0x1E69E9840];
  v51 = a2;
  TraceMethod::TraceMethod(v50, "primeAlertQueue");
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v4 = *kAVVCScope;
      if (v4)
      {
        v5 = v4;
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          v6 = *(a1 + 204);
          *buf = 136315906;
          *&buf[4] = "ControllerImpl.mm";
          v59 = 1024;
          v60 = 2097;
          v61 = 1024;
          *v62 = v2;
          *&v62[4] = 1024;
          *&v62[6] = v6;
          _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: type %d (current is %d)", buf, 0x1Eu);
        }
      }
    }
  }

  if (*(a1 + 408) != 1)
  {
    if (!ControllerImpl::getAlertQueueFromImplQueue(a1))
    {
      ControllerImpl::setAlertQueueState(a1, 0);
      if (kAVVCScope)
      {
        v22 = *kAVVCScope;
        if (!v22)
        {
LABEL_133:
          v8 = 0;
          goto LABEL_134;
        }
      }

      else
      {
        v22 = MEMORY[0x1E69E9C10];
        v27 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        v59 = 1024;
        v60 = 2106;
        _os_log_impl(&dword_1BA5AC000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d primeAlertQueue: queue is NULL -- returning", buf, 0x12u);
      }

      goto LABEL_133;
    }

    if (*(a1 + 360) == 201 && *(a1 + 204) == v2)
    {
      if (!kAVVCScope || (*(kAVVCScope + 8) & 1) == 0 || (v11 = *kAVVCScope) == 0)
      {
        v8 = 0;
LABEL_126:
        *(a1 + 408) = 0;
        goto LABEL_134;
      }

      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        v59 = 1024;
        v60 = 2155;
        _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: no-op", buf, 0x12u);
      }

      v8 = 0;
LABEL_125:

      goto LABEL_126;
    }

    *(a1 + 408) = 1;
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v13 = *kAVVCScope;
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            v15 = *(a1 + 204);
            *buf = 136315906;
            *&buf[4] = "ControllerImpl.mm";
            v59 = 1024;
            v60 = 2112;
            v61 = 1024;
            *v62 = v2;
            *&v62[4] = 1024;
            *&v62[6] = v15;
            _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: type %d (current is %d)", buf, 0x1Eu);
          }
        }
      }
    }

    AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(a1);
    if (QueueIsRunning(AlertQueueFromImplQueue))
    {
      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v17 = *kAVVCScope;
          if (v17)
          {
            v18 = v17;
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              v59 = 1024;
              v60 = 2117;
              _os_log_impl(&dword_1BA5AC000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: sync-stopping active alert queue", buf, 0x12u);
            }
          }
        }
      }

      ControllerImpl::setAlertQueueState(a1, 202);
      v19 = ControllerImpl::getAlertQueueFromImplQueue(a1);
      v20 = AudioQueueStop(v19, 1u);
      if (kAVVCScope)
      {
        v21 = *kAVVCScope;
        if (!v21)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v28 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v29 = " but failed";
        *buf = 136315906;
        *&buf[4] = "ControllerImpl.mm";
        v60 = 2121;
        v61 = 2080;
        v59 = 1024;
        if (!v20)
        {
          v29 = "";
        }

        *v62 = v29;
        *&v62[8] = 1024;
        v63 = v20;
        _os_log_impl(&dword_1BA5AC000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC stopped alert queue%s (%d)", buf, 0x22u);
      }

LABEL_62:
      if (v20)
      {
        if ((v20 + 199999) >= 0x61A7F)
        {
          if (kAVVCScope)
          {
            v30 = *kAVVCScope;
            if (!v30)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v30 = MEMORY[0x1E69E9C10];
            v32 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            v59 = 1024;
            v60 = 2123;
            v61 = 1024;
            *v62 = v20;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: primeAlertQueue: ignoring AudioQueueStop err %{audio:4CC}d", buf, 0x18u);
          }
        }

        else
        {
          if (kAVVCScope)
          {
            v30 = *kAVVCScope;
            if (!v30)
            {
              goto LABEL_94;
            }
          }

          else
          {
            v30 = MEMORY[0x1E69E9C10];
            v31 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            v59 = 1024;
            v60 = 2123;
            v61 = 1024;
            *v62 = v20;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d ERROR: primeAlertQueue: ignoring AudioQueueStop err %d", buf, 0x18u);
          }
        }
      }

LABEL_94:
      if (v2 == 1 && *(a1 + 320) != 2)
      {
        if (kAVVCScope)
        {
          if (*(kAVVCScope + 8))
          {
            v40 = *kAVVCScope;
            if (v40)
            {
              v41 = v40;
              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "ControllerImpl.mm";
                v59 = 1024;
                v60 = 2137;
                _os_log_impl(&dword_1BA5AC000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: silent/haptic alert: not queueing a buffer", buf, 0x12u);
              }
            }
          }
        }
      }

      else
      {
        v36 = ControllerImpl::getAlertQueueFromImplQueue(a1);
        *buf = &v51;
        v37 = std::__tree<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::__map_value_compare<AVVoiceAlertType,std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>,std::less<AVVoiceAlertType>,true>,std::allocator<std::__value_type<AVVoiceAlertType,AudioQueueBuffer *>>>::__emplace_unique_key_args<AVVoiceAlertType,std::piecewise_construct_t const&,std::tuple<AVVoiceAlertType&&>,std::tuple<>>(a1 + 296, v2);
        v38 = AudioQueueEnqueueBuffer(v36, v37[5], 0, 0);
        v8 = v38;
        if (v38)
        {
          if ((v38 + 199999) >= 0x61A7F)
          {
            if (kAVVCScope)
            {
              v39 = *kAVVCScope;
              if (!v39)
              {
                goto LABEL_119;
              }
            }

            else
            {
              v39 = MEMORY[0x1E69E9C10];
              v45 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_118;
            }

            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            v59 = 1024;
            v60 = 2143;
            v61 = 1024;
            *v62 = v8;
            v44 = "%25s:%-5d ERROR: primeAlertQueue: AudioQueueEnqueueBuffer err %{audio:4CC}d";
          }

          else
          {
            if (kAVVCScope)
            {
              v39 = *kAVVCScope;
              if (!v39)
              {
                goto LABEL_119;
              }
            }

            else
            {
              v39 = MEMORY[0x1E69E9C10];
              v43 = MEMORY[0x1E69E9C10];
            }

            if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
LABEL_118:

LABEL_119:
              v42 = 0;
LABEL_120:
              *(a1 + 204) = v42;
              if (!kAVVCScope)
              {
                goto LABEL_126;
              }

              if ((*(kAVVCScope + 8) & 1) == 0)
              {
                goto LABEL_126;
              }

              v46 = *kAVVCScope;
              if (!v46)
              {
                goto LABEL_126;
              }

              v12 = v46;
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                v47 = *(a1 + 204);
                *buf = 136315650;
                *&buf[4] = "ControllerImpl.mm";
                v59 = 1024;
                v60 = 2152;
                v61 = 1024;
                *v62 = v47;
                _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: done. current is now %d", buf, 0x18u);
              }

              goto LABEL_125;
            }

            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            v59 = 1024;
            v60 = 2143;
            v61 = 1024;
            *v62 = v8;
            v44 = "%25s:%-5d ERROR: primeAlertQueue: AudioQueueEnqueueBuffer err %d";
          }

          _os_log_impl(&dword_1BA5AC000, v39, OS_LOG_TYPE_ERROR, v44, buf, 0x18u);
          goto LABEL_118;
        }
      }

      ControllerImpl::setAlertQueueState(a1, 201);
      v8 = 0;
      v42 = v51;
      goto LABEL_120;
    }

    ControllerImpl::setAlertQueueState(a1, 200);
    ElapsedTime::ElapsedTime(buf, "primeAlertQueue", "AudioQueueReset : mAlertQueue", 0);
    v23 = ControllerImpl::getAlertQueueFromImplQueue(a1);
    v24 = AudioQueueReset(v23);
    v25 = v24;
    if (!v24)
    {
LABEL_93:
      ElapsedTime::~ElapsedTime(buf);
      goto LABEL_94;
    }

    if ((v24 + 199999) >= 0x61A7F)
    {
      if (kAVVCScope)
      {
        v26 = *kAVVCScope;
        if (!v26)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
        v35 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *v52 = 136315650;
      v53 = "ControllerImpl.mm";
      v54 = 1024;
      v55 = 2131;
      v56 = 1024;
      v57 = v25;
      v34 = "%25s:%-5d ERROR: primeAlertQueue: ignoring AudioQueueReset err %{audio:4CC}d";
    }

    else
    {
      if (kAVVCScope)
      {
        v26 = *kAVVCScope;
        if (!v26)
        {
          goto LABEL_93;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
        v33 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_92;
      }

      *v52 = 136315650;
      v53 = "ControllerImpl.mm";
      v54 = 1024;
      v55 = 2131;
      v56 = 1024;
      v57 = v25;
      v34 = "%25s:%-5d ERROR: primeAlertQueue: ignoring AudioQueueReset err %d";
    }

    _os_log_impl(&dword_1BA5AC000, v26, OS_LOG_TYPE_ERROR, v34, v52, 0x18u);
LABEL_92:

    v2 = v51;
    goto LABEL_93;
  }

  if (*(a1 + 204) != v2)
  {
    CAVerboseAbort();
  }

  if (!kAVVCScope || (*(kAVVCScope + 8) & 1) == 0)
  {
    goto LABEL_133;
  }

  v7 = *kAVVCScope;
  v8 = v7;
  if (v7)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 360);
      v10 = "ILLEGAL";
      if (v9 > 201)
      {
        switch(v9)
        {
          case 202:
            v10 = "stopping";
            break;
          case 203:
            v10 = "started";
            break;
          case 204:
            v10 = "running";
            break;
        }
      }

      else if (v9)
      {
        if (v9 == 200)
        {
          v10 = "stopped";
        }

        else if (v9 == 201)
        {
          v10 = "primed";
        }
      }

      else
      {
        v10 = "uninit";
      }

      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      v59 = 1024;
      v60 = 2101;
      v61 = 2080;
      *v62 = v10;
      _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d primeAlertQueue: alert queue state '%s'.  reentrant or multi-threaded call -- returning", buf, 0x1Cu);
    }

    goto LABEL_133;
  }

LABEL_134:
  TraceMethod::~TraceMethod(v50);
  v48 = *MEMORY[0x1E69E9840];
  return v8;
}

void ___ZN14ControllerImpl29playAQBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviEb_block_invoke(uint64_t a1, int a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3321888768;
  v5[2] = ___ZN14ControllerImpl29playAQBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviEb_block_invoke_2;
  v5[3] = &unk_1F38488D0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v10 = a2;
  v7 = v2;
  v8 = v3;
  v4 = *(a1 + 56);
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 32);
  ControllerImpl::safeWork(v3, v5, "playAQBeepAlertWithCompletion_block_invoke");

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1BA6716E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl15startAlertQueueEU13block_pointerFviE_block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v1 = (*(*v6 + 64))(*(a1 + 32), 0);
      v7 = [v1 sessionState];
      if (v7 > 3)
      {
        if (v7 > 5)
        {
          if (v7 == 6)
          {
            v10 = "Activating";
            goto LABEL_22;
          }

          v8 = v7 == 7;
          v9 = "Active";
        }

        else
        {
          if (v7 == 4)
          {
            v10 = "Deactivating";
            goto LABEL_22;
          }

          v8 = v7 == 5;
          v9 = "Prewarming";
        }

LABEL_19:
        if (v8)
        {
          v10 = v9;
        }

        else
        {
          v10 = "ILLEGAL";
        }

LABEL_22:
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
          if (v11)
          {
            v13 = MEMORY[0x1E696AEC0];
            v14 = *(v11 + 264);
            v15 = v12->__shared_owners_ + 1;
LABEL_27:
            v16 = [v13 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v11, v14, v15];
LABEL_29:
            v17 = v16;
            v18 = *(a1 + 32);
            if (v18)
            {
              v19 = (*(*v18 + 296))(v18);
              if (v19 > 4)
              {
                v20 = "ILLEGAL";
              }

              else
              {
                v20 = off_1E7EF6310[v19];
              }

              v22 = *(a1 + 32);
              if (v22)
              {
                v23 = *(v22 + 216);
                v21 = "ILLEGAL";
                if (v23 <= 2)
                {
                  if (v23)
                  {
                    if (v23 == 1)
                    {
                      v21 = "Uninitialized";
                    }

                    else if (v23 == 2)
                    {
                      v21 = "Prepared";
                    }
                  }

                  else
                  {
                    v21 = "Invalid";
                  }
                }

                else if (v23 > 4)
                {
                  if (v23 == 5)
                  {
                    v21 = "Running";
                  }

                  else if (v23 == 6)
                  {
                    v21 = "Stopping";
                  }
                }

                else if (v23 == 3)
                {
                  v21 = "Stopped";
                }

                else
                {
                  v21 = "Starting";
                }
              }

              else
              {
                v21 = "unconfigured";
              }
            }

            else
            {
              v20 = "unconfigured";
              v21 = "unconfigured";
            }

            *buf = 136316418;
            v26 = "ControllerImpl.mm";
            v27 = 1024;
            v28 = 2294;
            v29 = 2080;
            v30 = v10;
            v31 = 2112;
            v32 = v17;
            v33 = 2080;
            v34 = v20;
            v35 = 2080;
            v36 = v21;
            _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d session state (%s), rec-engine [%@], rec-engine type (%s), stream state (%s)", buf, 0x3Au);

            if (v12)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v12);
            }

            if (v6)
            {
            }

            goto LABEL_45;
          }
        }

        else if (v11)
        {
          v15 = 0;
          v13 = MEMORY[0x1E696AEC0];
          v14 = *(v11 + 264);
          goto LABEL_27;
        }

        v16 = @"(0x0) use_count:0";
        goto LABEL_29;
      }

      if (v7 > 1)
      {
        if (v7 == 2)
        {
          v10 = "InteruptedWhileRecording";
          goto LABEL_22;
        }

        v8 = v7 == 3;
        v9 = "InteruptedWhilePlaying";
        goto LABEL_19;
      }

      if (v7)
      {
        v8 = v7 == 1;
        v9 = "Inactive";
        goto LABEL_19;
      }
    }

    v10 = "NotConfigured";
    goto LABEL_22;
  }

LABEL_45:

LABEL_46:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1BA671AC8(_Unwind_Exception *a1)
{
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

uint64_t __copy_helper_block_ea8_48c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t ___ZN14ControllerImpl29playAQBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviEb_block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = *(a1 + 64);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    if (kAVVCScope)
    {
      v2 = *kAVVCScope;
      if (!v2)
      {
LABEL_10:
        ControllerImpl::primeAlertQueue(*(a1 + 48), 1);
        ControllerImpl::setAlertState(*(a1 + 48), 0);
        v4 = *(*(*(a1 + 40) + 8) + 24);
        goto LABEL_11;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v3 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 1911;
      _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: alert playback failed -- attempting to re-prime", &v7, 0x12u);
    }

    goto LABEL_10;
  }

LABEL_11:
  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void ControllerImpl::playAlert(uint64_t a1, void *a2, int a3, AVVoiceController *a4, void *a5)
{
  v180 = *MEMORY[0x1E69E9840];
  v141 = a2;
  v142 = a5;
  v147 = 4107;
  v148 = 0;
  v149 = 0u;
  v150 = 0u;
  kdebug_trace();
  TraceMethod::TraceMethod(v146, "playAlert");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v144, *(a1 + 8), *(a1 + 16));
  v8 = v144;
  v9 = v145;
  if (v145)
  {
    atomic_fetch_add_explicit(&v145->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AlertLock::AlertLock(v143, v8, v9);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

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
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2006;
          *&buf[18] = 1024;
          *&buf[20] = a3;
          _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: alertType = %d, primeFirst=true", buf, 0x18u);
        }
      }
    }
  }

  ProfileMetrics(&cfstr_AvvcProfilePro_10.isa);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(buf, *(v144 + 8), *(v144 + 16));
  switch(a3)
  {
    case 3:
      v12 = *(*buf + 328);
      break;
    case 2:
      v12 = *(*buf + 324);
      break;
    case 1:
      v12 = *(*buf + 320);
      break;
    default:
      v12 = 0;
      break;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        goto LABEL_333;
      }

      v16 = v144;
      v17 = v141;
      v18 = v142;
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v151, *(v16 + 8), *(v16 + 16));
      v19 = *(v16 + 204);
      if (!v19 || v19 == a3)
      {
LABEL_153:
        ControllerImpl::setAlertState(v151, 2);
        v62 = v151;
        *(v151 + 204) = a3;
        *(v62 + 208) = 1;
        switch(a3)
        {
          case 3:
            if (kAVVCScope)
            {
              v63 = *kAVVCScope;
              if (!v63)
              {
                v64 = 1406;
                goto LABEL_179;
              }
            }

            else
            {
              v63 = MEMORY[0x1E69E9C10];
              v66 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1714;
              _os_log_impl(&dword_1BA5AC000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: haptic alert stop", buf, 0x12u);
            }

            v64 = 1406;
            break;
          case 2:
            if (kAVVCScope)
            {
              v63 = *kAVVCScope;
              if (!v63)
              {
                v64 = 1405;
                goto LABEL_179;
              }
            }

            else
            {
              v63 = MEMORY[0x1E69E9C10];
              v65 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1710;
              _os_log_impl(&dword_1BA5AC000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: haptic alert stop", buf, 0x12u);
            }

            v64 = 1405;
            break;
          case 1:
            if (kAVVCScope)
            {
              v63 = *kAVVCScope;
              if (!v63)
              {
                v64 = 1404;
                goto LABEL_179;
              }
            }

            else
            {
              v63 = MEMORY[0x1E69E9C10];
              v67 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 1706;
              _os_log_impl(&dword_1BA5AC000, v63, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: haptic alert start", buf, 0x12u);
            }

            v64 = 1404;
            break;
          default:
            v64 = 0;
            goto LABEL_179;
        }

LABEL_179:
        if (kAVVCScope)
        {
          v68 = *kAVVCScope;
          if (!v68)
          {
LABEL_186:
            theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            LOWORD(v168) = 257;
            CACFDictionary::AddUInt32(&theDict, *MEMORY[0x1E695A8B0], 0);
            CACFDictionary::AddUInt32(&theDict, *MEMORY[0x1E695A8B8], 1);
            LODWORD(location[0]) = 1;
            *buf = location;
            v70 = [std::__tree<std::__value_type<AVVoiceAlertType NSURL * {:std::__map_value_compare<AVVoiceAlertType :{std::__value_type<AVVoiceAlertType, NSURL * {__strong}>, std::less<AVVoiceAlertType>, true>, std::allocator<std::__value_type<AVVoiceAlertType, NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType, std::piecewise_construct_t const&, std::tuple<AVVoiceAlertType&&>, std::tuple<>>(v151 + 272, 1)[5], "absoluteString"}strong}>];
            v71 = [v70 isEqualToString:@"/System/Library/PrivateFrameworks/AssistantServices.framework/jbl_begin_sae.caf"];

            if (v71)
            {
              v72 = [MEMORY[0x1E696AAE8] mainBundle];
              v73 = [v72 pathForResource:@"siri_activation" ofType:@"plist"];

              v74 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfFile:v73];
              v75 = v74;
              if (BYTE1(v168) == 1 && v74 && theDict)
              {
                CFDictionarySetValue(theDict, *MEMORY[0x1E695A8E0], v74);
              }
            }

            if (a3 == 1)
            {
              AudioServicesPlaySystemSoundWithOptions();
              ControllerImpl::VibeAlertCompletionProc(v64, v17, a4);
            }

            else
            {
              objc_initWeak(location, v17);
              v76 = v151;
              v77 = v152;
              if (v152)
              {
                atomic_fetch_add_explicit((v152 + 16), 1uLL, memory_order_relaxed);
              }

              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3321888768;
              *&buf[16] = ___ZN14ControllerImpl29playHapticAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviE_block_invoke;
              *&buf[24] = &unk_1F3847BA0;
              objc_copyWeak(&buf[32], location);
              v177 = *&v76;
              *&v178 = v77;
              if (v77)
              {
                atomic_fetch_add_explicit(&v77->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              }

              v179 = v64;
              *(&v178 + 1) = a4;
              AudioServicesPlaySystemSoundWithOptions();
              if (v178)
              {
                std::__shared_weak_count::__release_weak(v178);
              }

              objc_destroyWeak(&buf[32]);
              if (v77)
              {
                std::__shared_weak_count::__release_weak(v77);
              }

              objc_destroyWeak(location);
            }

            v18[2](v18, 0);
            CACFDictionary::~CACFDictionary(&theDict);
            if (v152)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v152);
            }

LABEL_123:

            goto LABEL_333;
          }
        }

        else
        {
          v68 = MEMORY[0x1E69E9C10];
          v69 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1719;
          *&buf[18] = 1024;
          *&buf[20] = v64;
          *&buf[24] = 1024;
          *&buf[26] = 1;
          _os_log_impl(&dword_1BA5AC000, v68, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: calling AudioServicesPlaySystemSoundWithOptions with sound ID %u and flags %x", buf, 0x1Eu);
        }

        goto LABEL_186;
      }

      if (v19 == 2)
      {
        if (kAVVCScope)
        {
          v20 = *kAVVCScope;
          if (!v20)
          {
            goto LABEL_152;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
          v60 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v61 = *(v16 + 204);
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1687;
          *&buf[18] = 1024;
          *&buf[20] = v61;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: alert %d already in progress -- stop it now", buf, 0x18u);
        }
      }

      else
      {
        if (v19 != 3)
        {
          goto LABEL_153;
        }

        if (kAVVCScope)
        {
          v20 = *kAVVCScope;
          if (!v20)
          {
            goto LABEL_152;
          }
        }

        else
        {
          v20 = MEMORY[0x1E69E9C10];
          v58 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v59 = *(v16 + 204);
          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1691;
          *&buf[18] = 1024;
          *&buf[20] = v59;
          _os_log_impl(&dword_1BA5AC000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: alert %d already in progress -- stop it now", buf, 0x18u);
        }
      }

LABEL_152:
      AudioServicesStopSystemSound();
      goto LABEL_153;
    }

    v28 = v144;
    v17 = v141;
    v18 = v142;
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v151, *(v28 + 8), *(v28 + 16));
    ControllerImpl::setAlertState(v151, 2);
    v29 = v151;
    *(v151 + 204) = a3;
    *(v29 + 208) = 0;
    switch(a3)
    {
      case 1:
        if (kAVVCScope)
        {
          v30 = *kAVVCScope;
          if (!v30)
          {
            v31 = 1404;
            goto LABEL_121;
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
          v51 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1657;
          _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: silent start - fake a SS completion callback", buf, 0x12u);
        }

        v31 = 1404;
        break;
      case 2:
        if (kAVVCScope)
        {
          v30 = *kAVVCScope;
          if (!v30)
          {
            v31 = 1405;
            goto LABEL_121;
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
          v50 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1661;
          _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: silent stop - fake a SS completion callback", buf, 0x12u);
        }

        v31 = 1405;
        break;
      case 3:
        if (kAVVCScope)
        {
          v30 = *kAVVCScope;
          if (!v30)
          {
            v31 = 1406;
            goto LABEL_121;
          }
        }

        else
        {
          v30 = MEMORY[0x1E69E9C10];
          v52 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1665;
          _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: silent stop - fake a SS completion callback", buf, 0x12u);
        }

        v31 = 1406;
        break;
      default:
        v31 = 0;
        goto LABEL_121;
    }

LABEL_121:
    ControllerImpl::VibeAlertCompletionProc(v31, v17, a4);
    v18[2](v18, 0);
    if (v152)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v152);
    }

    goto LABEL_123;
  }

  if (v12 != 2)
  {
    if (v12 != 3)
    {
      if (v12 != 4)
      {
        goto LABEL_333;
      }

      v13 = v144;
      v14 = v142;
      std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v151, *(v13 + 8), *(v13 + 16));
      if (kAVVCScope)
      {
        v15 = *kAVVCScope;
        if (!v15)
        {
LABEL_66:
          v14[2](v14, 4294955516);
          if (v152)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v152);
          }

          goto LABEL_333;
        }
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v36 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1994;
        _os_log_impl(&dword_1BA5AC000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d playAlert: Cannot play Beep via System Sounds", buf, 0x12u);
      }

      goto LABEL_66;
    }

    v25 = v144;
    val = v141;
    v138 = v142;
    if (!_os_feature_enabled_impl())
    {
      v32 = 4294955516;
LABEL_301:
      v138[2](v138, v32);

      goto LABEL_333;
    }

    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v151, *(v25 + 8), *(v25 + 16));
    v26 = *(v25 + 204);
    if (!v26 || v26 == a3)
    {
LABEL_229:
      ControllerImpl::setAlertState(v151, 2);
      v85 = v151;
      *(v151 + 204) = a3;
      *(v85 + 208) = 3;
      switch(a3)
      {
        case 3:
          if (kAVVCScope)
          {
            v86 = *kAVVCScope;
            if (!v86)
            {
              v87 = 1112;
              goto LABEL_241;
            }
          }

          else
          {
            v86 = MEMORY[0x1E69E9C10];
            v90 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1804;
            _os_log_impl(&dword_1BA5AC000, v86, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: HapticWithBeep alert stop", buf, 0x12u);
          }

          v89 = 1112;
          break;
        case 2:
          if (kAVVCScope)
          {
            v86 = *kAVVCScope;
            if (!v86)
            {
              v87 = 1111;
              goto LABEL_241;
            }
          }

          else
          {
            v86 = MEMORY[0x1E69E9C10];
            v88 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1800;
            _os_log_impl(&dword_1BA5AC000, v86, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: HapticWithBeep alert stop", buf, 0x12u);
          }

          v89 = 1111;
          break;
        case 1:
          if (kAVVCScope)
          {
            v86 = *kAVVCScope;
            if (!v86)
            {
              v87 = 1110;
LABEL_241:
              v137 = v87;
              goto LABEL_256;
            }
          }

          else
          {
            v86 = MEMORY[0x1E69E9C10];
            v91 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1796;
            _os_log_impl(&dword_1BA5AC000, v86, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: HapticWithBeep alert start", buf, 0x12u);
          }

          v89 = 1110;
          break;
        default:
          v137 = 0;
          goto LABEL_256;
      }

      v137 = v89;

LABEL_256:
      LODWORD(theDict) = 1;
      *buf = &theDict;
      v92 = [std::__tree<std::__value_type<AVVoiceAlertType NSURL * {:std::__map_value_compare<AVVoiceAlertType :{std::__value_type<AVVoiceAlertType, NSURL * {__strong}>, std::less<AVVoiceAlertType>, true>, std::allocator<std::__value_type<AVVoiceAlertType, NSURL * {__strong}>>>::__emplace_unique_key_args<AVVoiceAlertType, std::piecewise_construct_t const&, std::tuple<AVVoiceAlertType&&>, std::tuple<>>(v151 + 272, 1)[5], "absoluteString"}strong}>];
      if ([v92 isEqualToString:@"/System/Library/PrivateFrameworks/AssistantServices.framework/jbl_begin_sae.caf"])
      {
        v93 = *(v25 + 384) != 0;
      }

      else
      {
        v93 = 0;
      }

      theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      LOWORD(v168) = 257;
      v94 = *MEMORY[0x1E695A8B0];
      if (v93)
      {
        CACFDictionary::AddUInt32(&theDict, v94, 1110);
        if (a3 == 1)
        {
          if (kAVVCScope)
          {
            v95 = *kAVVCScope;
            if (!v95)
            {
LABEL_292:
              v126 = *(v25 + 384);
LABEL_297:
              AudioServicesPlaySystemSoundWithOptions();
              ControllerImpl::VibeAlertCompletionProc(v137, val, a4);
LABEL_298:
              CACFDictionary::~CACFDictionary(&theDict);
              if (v152)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v152);
              }

              v32 = 0;
              goto LABEL_301;
            }
          }

          else
          {
            v95 = MEMORY[0x1E69E9C10];
            v124 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
          {
            v125 = *(v25 + 384);
            *buf = 136315650;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 1849;
            *&buf[18] = 1024;
            *&buf[20] = v125;
            _os_log_impl(&dword_1BA5AC000, v95, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: calling AudioServicesPlaySystemSoundWithOptions for SAE with sound ID %u", buf, 0x18u);
          }

          goto LABEL_292;
        }

LABEL_279:
        objc_initWeak(location, val);
        v122 = v151;
        v123 = v152;
        if (v152)
        {
          atomic_fetch_add_explicit((v152 + 16), 1uLL, memory_order_relaxed);
        }

        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3321888768;
        *&buf[16] = ___ZN14ControllerImpl37playHapticWithBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviE_block_invoke;
        *&buf[24] = &unk_1F3847BA0;
        objc_copyWeak(&buf[32], location);
        v177 = *&v122;
        *&v178 = v123;
        if (v123)
        {
          atomic_fetch_add_explicit(&v123->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v179 = v137;
        *(&v178 + 1) = a4;
        AudioServicesPlaySystemSoundWithOptions();
        if (v178)
        {
          std::__shared_weak_count::__release_weak(v178);
        }

        objc_destroyWeak(&buf[32]);
        if (v123)
        {
          std::__shared_weak_count::__release_weak(v123);
        }

        objc_destroyWeak(location);
        goto LABEL_298;
      }

      CACFDictionary::AddUInt32(&theDict, v94, 0);
      CACFDictionary::AddUInt32(&theDict, *MEMORY[0x1E695A8B8], 0);
      v135 = ControllerImpl::sessionManagerForStreamID(v25, a4, 0);
      [v135 deviceGain];
      *(v25 + 404) = v96;
      [v135 outputVolume];
      v98 = v97;
      v99 = (*(v25 + 400) * *(v25 + 404)) * v98;
      if (kAVVCScope)
      {
        v100 = *kAVVCScope;
        if (!v100)
        {
          goto LABEL_271;
        }
      }

      else
      {
        v100 = MEMORY[0x1E69E9C10];
        v101 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
      {
        v102 = *(v25 + 404);
        v103 = *(v25 + 400);
        *buf = 136316418;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1833;
        *&buf[18] = 2048;
        *&buf[20] = v102;
        *&buf[28] = 2048;
        *&buf[30] = v103;
        *&buf[38] = 2048;
        v177 = v98;
        LOWORD(v178) = 2048;
        *(&v178 + 2) = v99;
        _os_log_impl(&dword_1BA5AC000, v100, OS_LOG_TYPE_DEFAULT, "%25s:%-5d playAlert: volume is %f %f %f, %f", buf, 0x3Au);
      }

LABEL_271:
      CACFDictionary::AddFloat32(&theDict, *MEMORY[0x1E695A8E8], v99);
      v104 = MEMORY[0x1E695DF20];
      v105 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      v106 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      v136 = [v104 dictionaryWithObjectsAndKeys:{v105, @"StartTime", @"Tap", @"Type", v106, @"Amplitude", 0}];

      v107 = MEMORY[0x1E695DF20];
      LODWORD(v108) = 1036831949;
      v109 = [MEMORY[0x1E696AD98] numberWithFloat:v108];
      LODWORD(v110) = 1.0;
      v111 = [MEMORY[0x1E696AD98] numberWithFloat:v110];
      v112 = [v107 dictionaryWithObjectsAndKeys:{v109, @"StartTime", @"Tap", @"Type", v111, @"Amplitude", 0}];

      v113 = MEMORY[0x1E695DF20];
      LODWORD(v114) = 1050253722;
      v115 = [MEMORY[0x1E696AD98] numberWithFloat:v114];
      v116 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
      v117 = [v113 dictionaryWithObjectsAndKeys:{v115, @"StartTime", @"Tap", @"Type", v116, @"Amplitude", 0}];

      v118 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v136, v112, v117, 0}];
      v119 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{v118, @"Atoms", 0}];
      v120 = v119;
      if (BYTE1(v168) == 1 && v119 && theDict)
      {
        CFDictionarySetValue(theDict, *MEMORY[0x1E695A8E0], v119);
      }

      if (a3 == 1)
      {
        if (kAVVCScope)
        {
          v121 = *kAVVCScope;
          if (!v121)
          {
            goto LABEL_297;
          }
        }

        else
        {
          v121 = MEMORY[0x1E69E9C10];
          v127 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 1853;
          *&buf[18] = 1024;
          *&buf[20] = v137;
          *&buf[24] = 1024;
          *&buf[26] = 0;
          _os_log_impl(&dword_1BA5AC000, v121, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: calling AudioServicesPlaySystemSoundWithOptions with sound ID %u and flags %x", buf, 0x1Eu);
        }

        goto LABEL_297;
      }

      goto LABEL_279;
    }

    if (v26 == 2)
    {
      if (kAVVCScope)
      {
        v27 = *kAVVCScope;
        if (!v27)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v27 = MEMORY[0x1E69E9C10];
        v83 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v84 = *(v25 + 204);
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1778;
        *&buf[18] = 1024;
        *&buf[20] = v84;
        _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: alert %d already in progress -- stop it now", buf, 0x18u);
      }
    }

    else
    {
      if (v26 != 3)
      {
        goto LABEL_229;
      }

      if (kAVVCScope)
      {
        v27 = *kAVVCScope;
        if (!v27)
        {
          goto LABEL_228;
        }
      }

      else
      {
        v27 = MEMORY[0x1E69E9C10];
        v81 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v82 = *(v25 + 204);
        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 1782;
        *&buf[18] = 1024;
        *&buf[20] = v82;
        _os_log_impl(&dword_1BA5AC000, v27, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: alert %d already in progress -- stop it now", buf, 0x18u);
      }
    }

LABEL_228:
    AudioServicesStopSystemSound();
    goto LABEL_229;
  }

  v21 = v144;
  v22 = v141;
  v23 = v142;
  v161 = 0;
  v162 = &v161;
  v163 = 0x2020000000;
  v164 = 0;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v159, *(v21 + 8), *(v21 + 16));
  *(v159 + 208) = 2;
  if (kAVVCScope)
  {
    v24 = *kAVVCScope;
    if (!v24)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v33 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1889;
    _os_log_impl(&dword_1BA5AC000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d playAlert: using alert queue to play beep", buf, 0x12u);
  }

LABEL_58:
  ControllerImpl::setAlertState(v159, 1);
  v34 = ControllerImpl::primeAlertQueue(v159, a3);
  *(v162 + 6) = v34;
  if (!v34)
  {
    v151 = MEMORY[0x1E69E9820];
    v152 = 3321888768;
    v153 = ___ZN14ControllerImpl29playAQBeepAlertWithCompletionEP17AVVoiceController16AVVoiceAlertTypemU13block_pointerFviEb_block_invoke;
    v154 = &unk_1F3848B30;
    v37 = v159;
    v157 = v159;
    v158 = v160;
    if (v160)
    {
      atomic_fetch_add_explicit(&v160->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v156 = &v161;
    v155 = v23;
    v38 = &v151;
    TraceMethod::TraceMethod(v175, "startAlertQueue");
    ControllerImpl::_getCurrentRecordingEngine(&v173, v37, *(v37 + 472), 0, "startAlertQueue");
    v39 = v173;
    if (v173)
    {
      theDict = MEMORY[0x1E69E9820];
      v168 = 3321888768;
      v169 = ___ZN14ControllerImpl15startAlertQueueEU13block_pointerFviE_block_invoke;
      v170 = &__block_descriptor_48_ea8_32c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE_e5_v8__0l;
      v171 = v173;
      v172 = v174;
      if (v174)
      {
        atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v39 + 328))(v39, &theDict, "startAlertQueue");
      if (v172)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v172);
      }
    }

    if (ControllerImpl::getAlertQueueFromImplQueue(v37))
    {
      if (!*(v37 + 204) || *(v37 + 360) != 201)
      {
        CAVerboseAbort();
      }

      v40 = ControllerImpl::sessionManagerForStreamID(v37, 0, 0);
      [v40 deviceGain];
      *(v37 + 404) = v41;

      AlertQueueFromImplQueue = ControllerImpl::getAlertQueueFromImplQueue(v37);
      AudioQueueSetParameter(AlertQueueFromImplQueue, 1u, *(v37 + 400) * *(v37 + 404));
      ControllerImpl::setAlertQueueState(v37, 203);
      if (kAVVCScope)
      {
        if (*(kAVVCScope + 8))
        {
          v43 = *kAVVCScope;
          if (v43)
          {
            v44 = v43;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              *&buf[4] = "ControllerImpl.mm";
              *&buf[12] = 1024;
              *&buf[14] = 2337;
              _os_log_impl(&dword_1BA5AC000, v44, OS_LOG_TYPE_DEBUG, "%25s:%-5d startAlertQueue: calling AudioQueueStart", buf, 0x12u);
            }
          }
        }
      }

      ElapsedTime::ElapsedTime(buf, "startAlertQueue", "mAlertQueue : AudioQueueStart", 0);
      v45 = ControllerImpl::getAlertQueueFromImplQueue(v37);
      v46 = AudioQueueStart(v45, 0);
      ElapsedTime::~ElapsedTime(buf);
      if (kAVVCScope)
      {
        v47 = *kAVVCScope;
        if (!v47)
        {
          goto LABEL_130;
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E9C10];
        v53 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v54 = " but failed";
        *buf = 136315906;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[14] = 2343;
        *&buf[18] = 2080;
        *&buf[12] = 1024;
        if (!v46)
        {
          v54 = "";
        }

        *&buf[20] = v54;
        *&buf[28] = 1024;
        *&buf[30] = v46;
        _os_log_impl(&dword_1BA5AC000, v47, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC started alert queue%s (%d)", buf, 0x22u);
      }

LABEL_130:
      if (v46)
      {
        if ((v46 + 199999) >= 0x61A7F)
        {
          if (kAVVCScope)
          {
            v55 = *kAVVCScope;
            if (!v55)
            {
              goto LABEL_325;
            }
          }

          else
          {
            v55 = MEMORY[0x1E69E9C10];
            v130 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_324;
          }

          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2344;
          *&buf[18] = 1024;
          *&buf[20] = v46;
          v129 = "%25s:%-5d ERROR: startAlertQueue: AudioQueueStart err %{audio:4CC}d";
        }

        else
        {
          if (kAVVCScope)
          {
            v55 = *kAVVCScope;
            if (!v55)
            {
              goto LABEL_325;
            }
          }

          else
          {
            v55 = MEMORY[0x1E69E9C10];
            v128 = MEMORY[0x1E69E9C10];
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_324;
          }

          *buf = 136315650;
          *&buf[4] = "ControllerImpl.mm";
          *&buf[12] = 1024;
          *&buf[14] = 2344;
          *&buf[18] = 1024;
          *&buf[20] = v46;
          v129 = "%25s:%-5d ERROR: startAlertQueue: AudioQueueStart err %d";
        }

        goto LABEL_323;
      }

      ElapsedTime::ElapsedTime(buf, "startAlertQueue", "mAlertQueue : AudioQueueStop", 0);
      v56 = ControllerImpl::getAlertQueueFromImplQueue(v37);
      v46 = AudioQueueStop(v56, 0);
      ElapsedTime::~ElapsedTime(buf);
      if (kAVVCScope)
      {
        v57 = *kAVVCScope;
        if (!v57)
        {
          goto LABEL_215;
        }
      }

      else
      {
        v57 = MEMORY[0x1E69E9C10];
        v79 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v80 = " but failed";
        *buf = 136315906;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[14] = 2356;
        *&buf[18] = 2080;
        *&buf[12] = 1024;
        if (!v46)
        {
          v80 = "";
        }

        *&buf[20] = v80;
        *&buf[28] = 1024;
        *&buf[30] = v46;
        _os_log_impl(&dword_1BA5AC000, v57, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVC stopped alert queue%s (%d)", buf, 0x22u);
      }

LABEL_215:
      if (!v46)
      {
LABEL_325:
        v153(v38, v46);
        goto LABEL_326;
      }

      if ((v46 + 199999) >= 0x61A7F)
      {
        if (kAVVCScope)
        {
          v55 = *kAVVCScope;
          if (!v55)
          {
            goto LABEL_325;
          }
        }

        else
        {
          v55 = MEMORY[0x1E69E9C10];
          v133 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_324;
        }

        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2358;
        *&buf[18] = 1024;
        *&buf[20] = v46;
        v129 = "%25s:%-5d ERROR: startAlertQueue: AudioQueueStop(async) err %{audio:4CC}d";
      }

      else
      {
        if (kAVVCScope)
        {
          v55 = *kAVVCScope;
          if (!v55)
          {
            goto LABEL_325;
          }
        }

        else
        {
          v55 = MEMORY[0x1E69E9C10];
          v132 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_324;
        }

        *buf = 136315650;
        *&buf[4] = "ControllerImpl.mm";
        *&buf[12] = 1024;
        *&buf[14] = 2358;
        *&buf[18] = 1024;
        *&buf[20] = v46;
        v129 = "%25s:%-5d ERROR: startAlertQueue: AudioQueueStop(async) err %d";
      }

LABEL_323:
      _os_log_impl(&dword_1BA5AC000, v55, OS_LOG_TYPE_ERROR, v129, buf, 0x18u);
LABEL_324:

      goto LABEL_325;
    }

    location[0] = 0;
    location[1] = location;
    location[2] = 0x2020000000;
    v166 = 0;
    if (v39)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3321888768;
      *&buf[16] = ___ZN14ControllerImpl15startAlertQueueEU13block_pointerFviE_block_invoke_232;
      *&buf[24] = &unk_1F3848AF8;
      v177 = COERCE_DOUBLE(location);
      *&v178 = v39;
      *(&v178 + 1) = v174;
      if (v174)
      {
        atomic_fetch_add_explicit(&v174->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *&buf[32] = v38;
      (*(*v39 + 328))(v39, buf, "startAlertQueue");

      if (*(&v178 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v178 + 1));
      }

      goto LABEL_316;
    }

    if (kAVVCScope)
    {
      v78 = *kAVVCScope;
      if (!v78)
      {
LABEL_315:
        v153(v38, -6789);
LABEL_316:
        _Block_object_dispose(location, 8);
LABEL_326:
        if (v174)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v174);
        }

        TraceMethod::~TraceMethod(v175);

        if (v158)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v158);
        }

        goto LABEL_330;
      }
    }

    else
    {
      v78 = MEMORY[0x1E69E9C10];
      v131 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2301;
      _os_log_impl(&dword_1BA5AC000, v78, OS_LOG_TYPE_ERROR, "%25s:%-5d getRecordErrorStatus: Current recording engine is nil!", buf, 0x12u);
    }

    goto LABEL_315;
  }

  if (!kAVVCScope)
  {
    v35 = MEMORY[0x1E69E9C10];
    v48 = MEMORY[0x1E69E9C10];
    goto LABEL_96;
  }

  v35 = *kAVVCScope;
  if (v35)
  {
LABEL_96:
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v49 = *(v162 + 6);
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1921;
      *&buf[18] = 1024;
      *&buf[20] = v49;
      _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_ERROR, "%25s:%-5d playAlert: Some Error occured! Not calling startAlertQueue() : %d", buf, 0x18u);
    }
  }

  (*(v23 + 2))(v23, *(v162 + 6));
LABEL_330:
  if (v160)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v160);
  }

  _Block_object_dispose(&v161, 8);

LABEL_333:
  VCLocker::~VCLocker(v143);
  if (v145)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v145);
  }

  TraceMethod::~TraceMethod(v146);
  TraceWrapper::~TraceWrapper(&v147);

  v134 = *MEMORY[0x1E69E9840];
}

void sub_1BA673CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, _Unwind_Exception *exception_objecta, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, __int16 a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&location, 8);
  if (a60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a60);
  }

  TraceMethod::~TraceMethod(&a61);

  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  if (a44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a44);
  }

  _Block_object_dispose(&a45, 8);

  VCLocker::~VCLocker(&a24);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  TraceMethod::~TraceMethod(&a28);
  TraceWrapper::~TraceWrapper(&a30);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl9playAlertEP17AVVoiceController16AVVoiceAlertTypebm_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 64);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14ControllerImpl9playAlertEP17AVVoiceController16AVVoiceAlertTypebm_block_invoke_2;
  v10[3] = &unk_1E7EF5B30;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v11 = v3;
  v12 = v7;
  v9 = v3;
  ControllerImpl::playAlert(v5, v8, v4, v6, v10);
}

NSObject *___ZN14ControllerImpl9playAlertEP17AVVoiceController16AVVoiceAlertTypebm_block_invoke_2(uint64_t a1, int a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

void ___ZN14ControllerImpl16checkForEndpointEP17AVVoiceControllerP16AudioQueueBufferPfjd_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (kAVVCScope)
    {
      v2 = *kAVVCScope;
      if (!v2)
      {
LABEL_12:
        [WeakRetained startpointDetected];
        goto LABEL_17;
      }
    }

    else
    {
      v2 = MEMORY[0x1E69E9C10];
      v4 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136315394;
      v8 = "ControllerImpl.mm";
      v9 = 1024;
      v10 = 2895;
      _os_log_impl(&dword_1BA5AC000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling startpointDetected synchronously", &v7, 0x12u);
    }

    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315650;
    v8 = "ControllerImpl.mm";
    v9 = 1024;
    v10 = 2894;
    v11 = 2048;
    v12 = 0;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
  }

LABEL_17:
  v6 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl16checkForEndpointEP17AVVoiceControllerP16AudioQueueBufferPfjd_block_invoke_255(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_12:
        [WeakRetained interspeechPointDetectedAtTime:*(a1 + 40)];
        goto LABEL_17;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "ControllerImpl.mm";
      v10 = 1024;
      v11 = 2905;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling interspeechPointDetected synchronously ", &v8, 0x12u);
    }

    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "ControllerImpl.mm";
    v10 = 1024;
    v11 = 2904;
    v12 = 2048;
    v13 = 0;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v8, 0x1Cu);
  }

LABEL_17:
  v7 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl16checkForEndpointEP17AVVoiceControllerP16AudioQueueBufferPfjd_block_invoke_257(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (kAVVCScope)
    {
      v3 = *kAVVCScope;
      if (!v3)
      {
LABEL_12:
        [WeakRetained endpointDetectedAtTime:*(a1 + 40)];
        goto LABEL_17;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v8 = 136315394;
      v9 = "ControllerImpl.mm";
      v10 = 1024;
      v11 = 2923;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d calling endpointDetected synchronously", &v8, 0x12u);
    }

    goto LABEL_12;
  }

  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315650;
    v9 = "ControllerImpl.mm";
    v10 = 1024;
    v11 = 2922;
    v12 = 2048;
    v13 = 0;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v8, 0x1Cu);
  }

LABEL_17:
  v7 = *MEMORY[0x1E69E9840];
}

void ControllerImpl::handleInterruptStart(ControllerImpl *this, AVVoiceController *a2, AVAudioSession *a3, NSDictionary *a4)
{
  v69 = *MEMORY[0x1E69E9840];
  val = a2;
  v7 = a3;
  v8 = a4;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v62, *(this + 1), *(this + 2));
  v9 = ControllerImpl::audioSessionForStreamID(this, 0, 0);

  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *&buf[4] = "ControllerImpl.mm";
    *&buf[12] = 1024;
    v12 = "aux";
    *&buf[14] = 2975;
    v65 = 2080;
    *buf = 136316162;
    if (v9 == v7)
    {
      v12 = "primary";
    }

    *v66 = v12;
    *&v66[8] = 2048;
    *&v66[10] = v7;
    v67 = 2112;
    v68 = v8;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceController -> Interruption beginning for %s session (%p) info: %@", buf, 0x30u);
  }

LABEL_10:
  if (v9 == v7)
  {
    SessionState = ControllerImpl::getSessionState(this, 0);
    v13 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
    if (SessionState >= 5)
    {
      goto LABEL_41;
    }

    v15 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
    v16 = [v15 getSessionActivationOptions];

    if (kAVVCScope)
    {
      v17 = *kAVVCScope;
      if (!v17)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v19 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2997;
      v65 = 1024;
      *v66 = v16;
      _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEFAULT, "%25s:%-5d   We think our session was not active.  Make sure it isn't. deactivating session with options : %d", buf, 0x18u);
    }

LABEL_25:
    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v59, *(this + 1), *(this + 2));
    SessionLock::SessionLock(v61, v59, v60);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v60);
    }

    v58 = 0;
    v20 = [v13 setActive:0 withOptions:v16 error:&v58];
    v21 = v58;
    if (v21)
    {
      v22 = v20;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_38;
    }

    if (kAVVCScope)
    {
      v23 = *kAVVCScope;
      if (!v23)
      {
LABEL_38:
        if (SessionState >= 3)
        {
          ControllerImpl::setSessionState(this, 2, 0);
        }

        VCLocker::~VCLocker(v61);
LABEL_41:
        v27 = objc_autoreleasePoolPush();
        v28 = [(NSDictionary *)v8 objectForKey:*MEMORY[0x1E698D5A0]];
        v29 = ExtractProcessNameFromString(v28);

        if (v29 && [v29 length])
        {
          v30 = +[AVVCMetricsManager sharedManager];
          [v30 logSessionMetric:@"avvcInterruptingProcessName" value:v29 category:1 type:6 reporterID:[(AVAudioSession *)v7 reporterID]];
        }

        else
        {
          if (kAVVCScope)
          {
            v30 = *kAVVCScope;
            if (!v30)
            {
LABEL_51:

              objc_autoreleasePoolPop(v27);
              ControllerImpl::stopKeepAliveQueue(*(this + 1), *(this + 2));
              v61[0] = 0;
              v32 = *(this + 72);
              v33 = *(this + 73);
              if (v33)
              {
                atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v32)
              {
                *buf = &unk_1F384E080;
                *&buf[8] = v61;
                *&v66[4] = buf;
                AVVCRecordingEngineMap::for_each_engine(v32, buf, "isAnyEngineActive");
                std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](buf);
              }

              v34 = v61[0];
              if (v33)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v33);
              }

              if (v34)
              {
                if (kAVVCScope)
                {
                  v35 = *kAVVCScope;
                  if (!v35)
                  {
LABEL_68:
                    std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v56, *(this + 1), *(this + 2));
                    SessionLock::SessionLock(buf, v56, v57);
                    if (v57)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
                    }

                    ControllerImpl::setSessionState(this, 2, 0);
                    VCLocker::~VCLocker(buf);
                    objc_initWeak(v38, val);
                    v39 = v62;
                    v53[0] = MEMORY[0x1E69E9820];
                    v53[1] = 3221225472;
                    v53[2] = ___ZN14ControllerImpl20handleInterruptStartEP17AVVoiceControllerP14AVAudioSessionP12NSDictionary_block_invoke;
                    v53[3] = &unk_1E7EF5BF8;
                    objc_copyWeak(&v55, buf);
                    v40 = v8;
                    v54 = v40;
                    ControllerImpl::safeNotify(v39, "beginRecordInterruptionWithContext", v53);
                    v41 = [(NSDictionary *)v40 objectForKey:*MEMORY[0x1E698D578]];
                    LODWORD(v40) = [v41 unsignedIntValue];

                    if (v40 == 6)
                    {
                      v42 = -11796;
                    }

                    else
                    {
                      v42 = -11786;
                    }

                    ControllerImpl::stopRunningEngines(this, val, 0, v42);

                    objc_destroyWeak(&v55);
                    objc_destroyWeak(buf);
LABEL_81:
                    v47[0] = MEMORY[0x1E69E9820];
                    v47[1] = 3321888768;
                    v47[2] = ___ZN14ControllerImpl20handleInterruptStartEP17AVVoiceControllerP14AVAudioSessionP12NSDictionary_block_invoke_261;
                    v47[3] = &unk_1F3848DF0;
                    v44 = v62;
                    v49 = v62;
                    v50 = v63;
                    if (v63)
                    {
                      atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v48 = val;
                    ControllerImpl::safeWork(v44, v47, "handleInterruptStart");

                    if (v50)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                    }

                    goto LABEL_85;
                  }
                }

                else
                {
                  v35 = MEMORY[0x1E69E9C10];
                  v37 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "ControllerImpl.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 3035;
                  _os_log_impl(&dword_1BA5AC000, v35, OS_LOG_TYPE_DEBUG, "%25s:%-5d   Record was active", buf, 0x12u);
                }

                goto LABEL_68;
              }

              if (kAVVCScope)
              {
                v36 = *kAVVCScope;
                if (!v36)
                {
LABEL_78:
                  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v51, *(this + 1), *(this + 2));
                  SessionLock::SessionLock(buf, v51, v52);
                  if (v52)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
                  }

                  ControllerImpl::setSessionState(this, 1, 0);
                  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(this + 60);
                  VCLocker::~VCLocker(buf);
                  goto LABEL_81;
                }
              }

              else
              {
                v36 = MEMORY[0x1E69E9C10];
                v43 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "ControllerImpl.mm";
                *&buf[12] = 1024;
                *&buf[14] = 3059;
                _os_log_impl(&dword_1BA5AC000, v36, OS_LOG_TYPE_DEBUG, "%25s:%-5d   Nothing active", buf, 0x12u);
              }

              goto LABEL_78;
            }
          }

          else
          {
            v30 = MEMORY[0x1E69E9C10];
            v31 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            *&buf[4] = "ControllerImpl.mm";
            *&buf[12] = 1024;
            *&buf[14] = 3027;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_ERROR, "%25s:%-5d handleInterruptStart: AVAudioSessionInterruptorNameKey nil or empty string. Please check !!", buf, 0x12u);
          }
        }

        goto LABEL_51;
      }
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    v25 = v23;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [v21 localizedDescription];
      *buf = 136315906;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 3005;
      v65 = 1024;
      *v66 = 0;
      *&v66[4] = 2112;
      *&v66[6] = v26;
      _os_log_impl(&dword_1BA5AC000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d deactivating session returned  : %d - error - %@", buf, 0x22u);
    }

    goto LABEL_38;
  }

  if (!kAVVCScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
LABEL_19:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 2981;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d   Interrupt for aux session unexpected", buf, 0x12u);
    }

LABEL_85:

    goto LABEL_86;
  }

  v13 = *kAVVCScope;
  if (v13)
  {
    goto LABEL_19;
  }

LABEL_86:
  if (v63)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v63);
  }

  v45 = *MEMORY[0x1E69E9840];
}

void sub_1BA674F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  VCLocker::~VCLocker(&a31);

  v38 = *(v36 - 168);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl20handleInterruptStartEP17AVVoiceControllerP14AVAudioSessionP12NSDictionary_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained beginRecordInterruptionWithContext:*(a1 + 32)];
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
      v10 = 3044;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void std::__function::__func<ControllerImpl::isAnyEngineActive(void)::$_0,std::allocator<ControllerImpl::isAnyEngineActive(void)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (*(v4 + 216) >= 4)
  {
    atomic_fetch_add_explicit(*(a1 + 8), 1u, memory_order_relaxed);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__function::__func<ControllerImpl::isAnyEngineActive(void)::$_0,std::allocator<ControllerImpl::isAnyEngineActive(void)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F384E080;
  a2[1] = v2;
  return result;
}

void ControllerImpl::handleInterruptStop(ControllerImpl *this, AVVoiceController *a2, AVAudioSession *a3, NSDictionary *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v20, *(this + 1), *(this + 2));
  v10 = ControllerImpl::audioSessionForStreamID(this, 0, 0);

  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v23 = "ControllerImpl.mm";
    v24 = 1024;
    v13 = "aux";
    v25 = 3083;
    v26 = 2080;
    *buf = 136316162;
    if (v10 == v8)
    {
      v13 = "primary";
    }

    v27 = v13;
    v28 = 2048;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    _os_log_impl(&dword_1BA5AC000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceController -> Interruption ending for %s session (%p) info: %@", buf, 0x30u);
  }

LABEL_10:
  if (v10 == v8)
  {
    objc_initWeak(buf, v7);
    v15 = v20;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___ZN14ControllerImpl19handleInterruptStopEP17AVVoiceControllerP14AVAudioSessionP12NSDictionary_block_invoke;
    v18[3] = &unk_1E7EF6678;
    objc_copyWeak(&v19, buf);
    ControllerImpl::safeNotify(v15, "endRecordInterruption", v18);
    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
    goto LABEL_19;
  }

  if (kAVVCScope)
  {
    v14 = *kAVVCScope;
    if (!v14)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "ControllerImpl.mm";
    v24 = 1024;
    v25 = 3089;
    _os_log_impl(&dword_1BA5AC000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d   Interrupt for aux session unexpected", buf, 0x12u);
  }

LABEL_19:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BA675594(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl19handleInterruptStopEP17AVVoiceControllerP14AVAudioSessionP12NSDictionary_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained endRecordInterruption];
  }

  else
  {
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

    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315650;
      v7 = "ControllerImpl.mm";
      v8 = 1024;
      v9 = 3096;
      v10 = 2048;
      v11 = 0;
      _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v6, 0x1Cu);
    }
  }

LABEL_10:

  v5 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl17handleRouteChangeEP17AVVoiceControllerP14AVAudioSessionPK12NSDictionary_block_invoke(uint64_t a1)
{
  *&v39[5] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  SessionProperties = AVVCRecordingEngine::getSessionProperties(*(a1 + 40));
  v4 = 2;
  if (SessionProperties > -11786)
  {
    if (SessionProperties != -11782)
    {
      if (SessionProperties != -11785)
      {
        goto LABEL_11;
      }

      v4 = 0;
    }

    goto LABEL_10;
  }

  if (SessionProperties == -11796 || SessionProperties == -11786)
  {
LABEL_10:
    ControllerImpl::setSessionState(v2, v4, 0);
  }

LABEL_11:
  v6 = *(a1 + 40);
  TraceMethod::TraceMethod(v33, "getSessionProperties_HWConfig");
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v31, *(v6 + 8), *(v6 + 16));
  v7 = (*(*v31 + 72))(v31);
  if (v7)
  {
    goto LABEL_82;
  }

  if (caulk::product::get_device_class(v7) == 4 && (MGGetBoolAnswer() & 1) == 0)
  {
    v11 = v31;
    v12 = (*(*v31 + 48))(v31) > 8000.0;
    (*(*v11 + 40))(v11, *&qword_1BA6CF360[v12]);
    goto LABEL_82;
  }

  v8 = v31[46];
  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  v9 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((v8 + 56));
  }

  if ([*(v8 + 32) isEqualToString:*MEMORY[0x1E698D6A8]])
  {
    v10 = 4;
    goto LABEL_44;
  }

  if ([*(v8 + 32) isEqualToString:*MEMORY[0x1E698D658]])
  {
    v10 = 5;
    goto LABEL_44;
  }

  if (![*(v8 + 32) isEqualToString:*MEMORY[0x1E698D660]])
  {
    if ([*(v8 + 32) isEqualToString:*MEMORY[0x1E698D690]])
    {
      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v35 = "AVVCRouteManager.mm";
        v36 = 1024;
        v37 = 212;
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d getSessionProperties_HWConfig: car audio route", buf, 0x12u);
      }
    }

    else
    {
      if (![*(v8 + 32) isEqualToString:@"No Record Route"])
      {
LABEL_43:
        v10 = 15;
        goto LABEL_44;
      }

      if (kAVVCScope)
      {
        v13 = *kAVVCScope;
        if (!v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "AVVCRouteManager.mm";
        v36 = 1024;
        v37 = 217;
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d getSessionProperties_HWConfig: unhandled audio route", buf, 0x12u);
      }
    }

    goto LABEL_43;
  }

  if ([*(v8 + 40) compare:*MEMORY[0x1E698D688]])
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

LABEL_44:
  if (kAVVCScope)
  {
    if (*(kAVVCScope + 8))
    {
      v16 = *kAVVCScope;
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          if ((v10 - 2) >= 3)
          {
            v18 = "Other";
            if (v10 == 5)
            {
              v18 = "BT Headset/Headphones";
            }
          }

          else
          {
            v18 = off_1E7EF56E8[v10 - 2];
          }

          *buf = 136315650;
          v35 = "AVVCRouteManager.mm";
          v36 = 1024;
          v37 = 225;
          v38 = 2080;
          *v39 = v18;
          _os_log_impl(&dword_1BA5AC000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d Hardware config: %s", buf, 0x1Cu);
        }
      }
    }
  }

  if (kAVVCScope)
  {
    v19 = *kAVVCScope;
    if (!v19)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(v8 + 24);
    *buf = 136315906;
    v35 = "AVVCRouteManager.mm";
    v36 = 1024;
    v37 = 227;
    v38 = 1024;
    v39[0] = v21;
    LOWORD(v39[1]) = 1024;
    *(&v39[1] + 2) = v10;
    _os_log_impl(&dword_1BA5AC000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d old config: %d newConfig: %d", buf, 0x1Eu);
  }

LABEL_61:
  if ((v9 & 1) == 0)
  {
    std::mutex::unlock((v8 + 56));
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    v22 = *(v8 + 24);
  }

  else
  {
    std::mutex::lock((v8 + 56));
    v22 = *(v8 + 24);
    std::mutex::unlock((v8 + 56));
    if (IsSerializationEnabled(void)::onceToken != -1)
    {
      dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
    }
  }

  v23 = IsSerializationEnabled(void)::enable;
  if ((IsSerializationEnabled(void)::enable & 1) == 0)
  {
    std::mutex::lock((v8 + 56));
  }

  if (v22 > 0xF)
  {
    goto LABEL_74;
  }

  v24 = 1.0;
  if (((1 << v22) & 0x802E) == 0)
  {
    if (v22 != 4)
    {
      goto LABEL_74;
    }

    v24 = 0.717;
    if (kAVVCScope)
    {
      if (*(kAVVCScope + 8))
      {
        v29 = *kAVVCScope;
        if (v29)
        {
          v30 = v29;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v35 = "AVVCRouteManager.mm";
            v36 = 1024;
            v37 = 239;
            _os_log_impl(&dword_1BA5AC000, v30, OS_LOG_TYPE_DEBUG, "%25s:%-5d GetDeviceGainForHWConfig: using wired headset - reducing alert volume by 3dB", buf, 0x12u);
          }
        }
      }
    }
  }

  *(v8 + 48) = v24;
LABEL_74:
  if ((v23 & 1) == 0)
  {
    std::mutex::unlock((v8 + 56));
  }

  if (IsSerializationEnabled(void)::onceToken != -1)
  {
    dispatch_once(&IsSerializationEnabled(void)::onceToken, &__block_literal_global_197);
  }

  if (IsSerializationEnabled(void)::enable == 1)
  {
    v25 = *(v8 + 48);
  }

  else
  {
    std::mutex::lock((v8 + 56));
    v25 = *(v8 + 48);
    std::mutex::unlock((v8 + 56));
  }

  v26 = (*(*v31 + 64))(v31, 0);
  LODWORD(v27) = v25;
  [v26 setDeviceGain:v27];

LABEL_82:
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  TraceMethod::~TraceMethod(v33);
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1BA675DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  TraceMethod::~TraceMethod(va);
  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl38_invalidateStreamWhenDeviceUnavailableEP17AVVoiceControllerP30AVAudioSessionRouteDescription_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = ___ZN14ControllerImpl38_invalidateStreamWhenDeviceUnavailableEP17AVVoiceControllerP30AVAudioSessionRouteDescription_block_invoke_2;
  v7[3] = &unk_1F3848278;
  v8 = *(a1 + 32);
  v3 = *(a1 + 40);
  v14 = *(a1 + 80);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v9 = v3;
  v6 = *(a1 + 56);
  v11 = v5;
  v12 = v6;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 48);
  ControllerImpl::safeWork(v2, v7, "_invalidateStreamWhenDeviceUnavailable_block_invoke");

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }
}

void sub_1BA675F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a19);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<ControllerImpl::_invalidateStreamWhenDeviceUnavailable(AVVoiceController *,AVAudioSessionRouteDescription *)::$_0,std::allocator<ControllerImpl::_invalidateStreamWhenDeviceUnavailable(AVVoiceController *,AVAudioSessionRouteDescription *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = 0;
  (*(*v4 + 304))(v4, &v5);
  if (areNSStringsEqualOrBothNil(v5, **(a1 + 8)))
  {
    **(a1 + 16) = v4[33];
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1BA676020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(a1);
}

__n128 std::__function::__func<ControllerImpl::_invalidateStreamWhenDeviceUnavailable(AVVoiceController *,AVAudioSessionRouteDescription *)::$_0,std::allocator<ControllerImpl::_invalidateStreamWhenDeviceUnavailable(AVVoiceController *,AVAudioSessionRouteDescription *)::$_0>,void ()(std::shared_ptr<AVVCRecordingEngine>)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F384E038;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ___ZN14ControllerImpl38_invalidateStreamWhenDeviceUnavailableEP17AVVoiceControllerP30AVAudioSessionRouteDescription_block_invoke_2(uint64_t a1)
{
  v18[4] = *MEMORY[0x1E69E9840];
  v2 = (a1 + 40);
  if (areDeviceUIDsSame(*(a1 + 32), *(a1 + 40)) || ![*(a1 + 32) length] || (*(a1 + 80) & 1) != 0 || *(a1 + 56) != 1)
  {
    if (![*v2 length] || *(a1 + 80) != 1)
    {
LABEL_23:
      v12 = *MEMORY[0x1E69E9840];
      return;
    }

    v7 = *(a1 + 64);
    v8 = *(v7 + 576);
    v9 = *(v7 + 584);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = 0;
    if (v8)
    {
      v18[0] = &unk_1F3847CE8;
      v18[1] = v2;
      v18[2] = &v13;
      v18[3] = v18;
      AVVCRecordingEngineMap::for_each_engine(v8, v18, "_invalidateStreamWhenDeviceUnavailable_block_invoke");
      std::__function::__value_func<void ()(std::shared_ptr<AVVCRecordingEngine>)>::~__value_func[abi:ne200100](v18);
      ControllerImpl::_removeEngineFromMap(*(a1 + 64), *(a1 + 48), v13, 0, &__block_literal_global_355);
      goto LABEL_21;
    }

    if (kAVVCScope)
    {
      v10 = *kAVVCScope;
      if (!v10)
      {
LABEL_21:
        if (v9)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v15 = "ControllerImpl.mm";
      v16 = 1024;
      v17 = 4258;
      _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", buf, 0x12u);
    }

    goto LABEL_21;
  }

  v3 = *(a1 + 64);
  v4 = *(a1 + 48);
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x1E69E9840];

  ControllerImpl::_removeEngineFromMap(v3, v4, 0, v5, &__block_literal_global_352);
}

void _ZNSt3__110__function6__funcIZZZN14ControllerImpl38_invalidateStreamWhenDeviceUnavailableEP17AVVoiceControllerP30AVAudioSessionRouteDescriptionEUb_EUb0_E3__6NS_9allocatorIS7_EEFvNS_10shared_ptrI19AVVCRecordingEngineEEEEclEOSC_(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a2 = 0;
  a2[1] = 0;
  if (v3)
  {
    v5 = AVVCRouteManager::getRecordDeviceUID(*(v3 + 368));
    v6 = areDeviceUIDsSame(v5, **(a1 + 8));

    if (!v6)
    {
      **(a1 + 16) = *(v3 + 264);
    }
  }

  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_1BA6763CC(_Unwind_Exception *a1)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZZN14ControllerImpl38_invalidateStreamWhenDeviceUnavailableEP17AVVoiceControllerP30AVAudioSessionRouteDescriptionEUb_EUb0_E3__6NS_9allocatorIS7_EEFvNS_10shared_ptrI19AVVCRecordingEngineEEEE7__cloneEPNS0_6__baseISD_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F3847CE8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void ControllerImpl::handleServerDeath(ControllerImpl *this, AVVoiceController *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v35, *(this + 1), *(this + 2));
  if (kAVVCScope)
  {
    v4 = *kAVVCScope;
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "ControllerImpl.mm";
    v40 = 1024;
    v41 = 3284;
    _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceController -> Server died!", buf, 0x12u);
  }

LABEL_8:
  *(this + 521) = 1;
  if (ControllerImpl::getSessionState(this, 0))
  {
    goto LABEL_16;
  }

  if (kAVVCScope)
  {
    v6 = *kAVVCScope;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "ControllerImpl.mm";
    v40 = 1024;
    v41 = 3292;
    _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d ControllerImpl::handleServerDeath: session is not configured", buf, 0x12u);
  }

LABEL_16:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v39 = "ControllerImpl.mm";
    v40 = 1024;
    v41 = 3297;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d ControllerImpl::handleServerDeath: Destroying internal state for later rebuild", buf, 0x12u);
  }

LABEL_23:
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v32, *(this + 1), *(this + 2));
  SessionLock::SessionLock(v34, v32, v33);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v10 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
  [v10 setForceGetSessionProperties:{objc_msgSend(v10, "sessionState") != 7}];
  [v10 setSessionState:0];
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(this + 60);
  v11 = +[AVVCSessionFactory sharedInstance];
  v12 = [v11 auxSessionManagers];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = *v29;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v28 + 1) + 8 * i);
        [v17 setForceGetSessionProperties:{objc_msgSend(v17, "sessionState") != 7}];
        [v17 setSessionState:0];
      }

      v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v14);
  }

  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v26, *(this + 1), *(this + 2));
  SessionUnlocker::SessionUnlocker(buf, v26, v27);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  ControllerImpl::stopRunningEngines(this, v3, 0, 0xFFFFD1F7);
  VCUnlocker::~VCUnlocker(buf);
  ControllerImpl::cleanup(this, v3);
  v18 = MGGetSInt32Answer();
  v19 = MGGetBoolAnswer();
  if (v18 == 7)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if ((v20 & 1) == 0)
  {
    v21 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
    v22 = [v21 isMiniDuckingEnabled];

    if (v22)
    {
      if (kAVVCScope)
      {
        v23 = *kAVVCScope;
        if (!v23)
        {
LABEL_46:
          ControllerImpl::enableMiniDucking(this, 0);
          goto LABEL_47;
        }
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v39 = "ControllerImpl.mm";
        v40 = 1024;
        v41 = 184;
        _os_log_impl(&dword_1BA5AC000, v23, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Resetting miniducking", buf, 0x12u);
      }

      goto LABEL_46;
    }
  }

LABEL_47:

  VCLocker::~VCLocker(v34);
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_1BA67695C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  VCLocker::~VCLocker(&a21);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

void ControllerImpl::handleServerReset(ControllerImpl *this, AVVoiceController *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v24, *(this + 1), *(this + 2));
  if (kAVVCScope)
  {
    v3 = *kAVVCScope;
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = MEMORY[0x1E69E9C10];
    v4 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "ControllerImpl.mm";
    v29 = 1024;
    v30 = 3333;
    _os_log_impl(&dword_1BA5AC000, v3, OS_LOG_TYPE_DEFAULT, "%25s:%-5d AVVoiceController -> Server reset after death", buf, 0x12u);
  }

LABEL_8:
  *(this + 521) = 0;
  if (kAVVCScope)
  {
    v5 = *kAVVCScope;
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v28 = "ControllerImpl.mm";
    v29 = 1024;
    v30 = 3337;
    _os_log_impl(&dword_1BA5AC000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d ControllerImpl::handleServerReset: restoring activation context and resetting session properties", buf, 0x12u);
  }

LABEL_15:
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v22, *(this + 1), *(this + 2));
  SessionLock::SessionLock(buf, v22, v23);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  *(this + 66) = 0;
  v7 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
  [v7 setupOneTimeSessionSettingsForClient:*(this + 23)];
  v8 = +[AVVCSessionFactory sharedInstance];
  v9 = [v8 auxSessionManagers];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v18 + 1) + 8 * i) setupOneTimeSessionSettingsForClient:{*(this + 23), v18}];
      }

      v11 = [v10 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v11);
  }

  v14 = objc_autoreleasePoolPush();
  v15 = +[AVVCMetricsManager sharedManager];
  v16 = ControllerImpl::sessionManagerForStreamID(this, 0, 0);
  [v15 updateWithReporterID:{objc_msgSend(v16, "reporterID")}];

  objc_autoreleasePoolPop(v14);
  VCLocker::~VCLocker(buf);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void sub_1BA676D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  VCLocker::~VCLocker((v23 - 96));
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
  (*(v1 + 16))(v1, 0, 0);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_272(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:*(*(*(a1 + 40) + 8) + 24) userInfo:0];
  (*(v1 + 16))(v1, 0, 0);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_278(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3321888768;
    v11[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_3;
    v11[3] = &unk_1F3848438;
    v4 = a2[1];
    v14 = v3;
    v15 = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 32);
    v7 = *(a1 + 56);
    v6 = *(a1 + 64);
    v12 = v5;
    v16 = v7;
    v17 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v13 = *(a1 + 48);
    (*(*v3 + 328))(v3, v11, "setContext_block_invoke");

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }

  else
  {
    v8 = *(a1 + 56);
    v9 = *(a1 + 40);
    v10 = v9 != 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_2_279;
    v18[3] = &unk_1E7EF6548;
    v19 = v9;
    ControllerImpl::safeNotifyAlwaysAsync(v8, v10, v18);
  }
}

void __destroy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE80c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
{
  v2 = *(a1 + 88);
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

void *__copy_helper_block_ea8_56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE80c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
{
  v2 = a2[8];
  result[7] = a2[7];
  result[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[11];
  result[10] = a2[10];
  result[11] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  AVVCRecordingEngine::setRecordDeviceUID(*(*(a1 + 64) + 368), *(a1 + 32));
  v2 = *(a1 + 64);
  *(v2 + 272) = *(a1 + 80);
  if (*(a1 + 108))
  {
    *(v2 + 264) = *(*(*(a1 + 56) + 8) + 24);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3321888768;
    v29[2] = ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_293;
    v29[3] = &unk_1F38490E0;
    v4 = *(a1 + 88);
    v3 = *(a1 + 96);
    v34 = v4;
    v35 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v32 = *(a1 + 48);
    v5 = *(a1 + 40);
    v7 = *(a1 + 64);
    v6 = *(a1 + 72);
    v30 = v5;
    v36 = v7;
    v37 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 56);
    v39 = *(a1 + 104);
    v9 = *(a1 + 80);
    v33 = v8;
    v38 = v9;
    v31 = *(a1 + 32);
    ControllerImpl::safeWork(v4, v29, "_createRecordingEngineWithParameters_block_invoke");

    if (v37)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
    }

    v10 = v35;
    if (!v35)
    {
      goto LABEL_34;
    }

LABEL_33:
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    goto LABEL_34;
  }

  *(*(*(a1 + 56) + 8) + 24) = *(v2 + 264);
  if (kAVVCScope)
  {
    v11 = *kAVVCScope;
    if (!v11)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  v13 = v11;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 104);
    if (v14 > 4)
    {
      v15 = "ILLEGAL";
    }

    else
    {
      v15 = off_1E7EF6310[v14];
    }

    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v16)
      {
        v18 = MEMORY[0x1E696AEC0];
        v19 = *(v16 + 264);
        v20 = v17->__shared_owners_ + 1;
LABEL_23:
        v21 = [v18 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v16, v19, v20];
LABEL_25:
        v22 = v21;
        v23 = Get4CCFromInt(*(a1 + 80));
        v24 = *(a1 + 32);
        v25 = *(*(*(a1 + 56) + 8) + 24);
        *buf = 136316674;
        v43 = "ControllerImpl.mm";
        v44 = 1024;
        v45 = 3907;
        v46 = 2080;
        v47 = v15;
        v48 = 2112;
        v49 = v22;
        v50 = 2112;
        v51 = v23;
        v52 = 2112;
        v53 = v24;
        v54 = 2048;
        v55 = v25;
        _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext: Reusing (%s) engine[%@] for activation mode(%@) and deviceUID(%@) with streamHandle(%lu)", buf, 0x44u);

        if (v17)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v17);
        }

        goto LABEL_28;
      }
    }

    else if (v16)
    {
      v20 = 0;
      v18 = MEMORY[0x1E696AEC0];
      v19 = *(v16 + 264);
      goto LABEL_23;
    }

    v21 = @"(0x0) use_count:0";
    goto LABEL_25;
  }

LABEL_28:

LABEL_29:
  v26 = *(a1 + 48);
  if (v26)
  {
    v27 = *(a1 + 72);
    v40 = *(a1 + 64);
    v41 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v26 + 16))(v26, &v40);
    v10 = v41;
    if (v41)
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  v28 = *MEMORY[0x1E69E9840];
}

void sub_1BA6774D4(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_64c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE88c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(uint64_t a1)
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

void *__copy_helper_block_ea8_64c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE88c42_ZTSNSt3__110shared_ptrI14ControllerImplEE(void *result, void *a2)
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

void ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_293(uint64_t a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 64);
  if (*(v2 + 520) == 1)
  {
    v3 = *(a1 + 48);
    if (!v3)
    {
      goto LABEL_113;
    }

    v39 = 0;
    v40 = 0;
    (*(v3 + 16))(v3, &v39);
    v4 = v40;
    if (!v40)
    {
      goto LABEL_113;
    }

LABEL_112:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    goto LABEL_113;
  }

  v5 = *(a1 + 32);
  v7 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = v5;
  objc_initWeak(&location, v25);
  std::shared_ptr<AVVCRecordingEngine>::shared_ptr[abi:ne200100]<AVVCRecordingEngine,0>(&v86, *(v2 + 8), *(v2 + 16));
  v8 = v86;
  v9 = v87;
  if (v87)
  {
    atomic_fetch_add_explicit((v87 + 16), 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke;
  aBlock[3] = &unk_1F3848D80;
  objc_copyWeak(v95, &location);
  v95[1] = v8;
  v96 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v26 = _Block_copy(aBlock);
  v86 = MEMORY[0x1E69E9820];
  v87 = 3321888768;
  v88 = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_305;
  v89 = &unk_1F38485F8;
  objc_copyWeak(v90, &location);
  v90[1] = v8;
  v91 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v92 = v7;
  v93 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = _Block_copy(&v86);
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3321888768;
  v81[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_309;
  v81[3] = &unk_1F38485F8;
  objc_copyWeak(v82, &location);
  v82[1] = v8;
  v83 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v84 = v7;
  v85 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = _Block_copy(v81);
  AVVCRecordingEngine::setStartRecordCompletionAndAudioCallbackBlocks(v7, v27, v26);
  AVVCRecordingEngine::setStopRecordCompletionBlock(v7, v28);
  if ((*(*v7 + 296))(v7) == 2)
  {
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3321888768;
    v78[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_312;
    v78[3] = &unk_1F3848D10;
    objc_copyWeak(v79, &location);
    v79[1] = v8;
    v80 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    AVVCRecordingEngine::setEncoderErrorBlock(v7, v78);
    if (v80)
    {
      std::__shared_weak_count::__release_weak(v80);
    }

    objc_destroyWeak(v79);
  }

  if ((*(*v7 + 296))(v7) == 2)
  {
    v71 = MEMORY[0x1E69E9820];
    v72 = 3321888768;
    v73 = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_317;
    v74 = &unk_1F3848DB8;
    objc_copyWeak(&v75, &location);
    v76 = v8;
    v77 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    if ((*(*v7 + 296))(v7) != 1)
    {
      goto LABEL_35;
    }

    v71 = MEMORY[0x1E69E9820];
    v72 = 3321888768;
    v73 = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_322;
    v74 = &unk_1F3848DB8;
    objc_copyWeak(&v75, &location);
    v76 = v8;
    v77 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }
  }

  AVVCRecordingEngine::setSetupEndpointerBlock(v7, &v71);
  if (v77)
  {
    std::__shared_weak_count::__release_weak(v77);
  }

  objc_destroyWeak(&v75);
LABEL_35:
  v68[0] = MEMORY[0x1E69E9820];
  v68[1] = 3321888768;
  v68[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_323;
  v68[3] = &unk_1F3847C48;
  objc_copyWeak(v69, &location);
  v69[1] = v8;
  v70 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setCheckForEndpointBlock(v7, v68);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3321888768;
  v63[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_327;
  v63[3] = &unk_1F38485C0;
  objc_copyWeak(v64, &location);
  v64[1] = v8;
  v65 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v66 = v7;
  v67 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setStopRecordWithRecordLockBlock(v7, v63);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3321888768;
  v58[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_331;
  v58[3] = &unk_1F38485C0;
  objc_copyWeak(v59, &location);
  v59[1] = v8;
  v60 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v61 = v7;
  v62 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setDestroyRecordEngineWithRecordLockBlock(v7, v58);
  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3321888768;
  v53[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_332;
  v53[3] = &unk_1F38485C0;
  objc_copyWeak(v54, &location);
  v54[1] = v8;
  v55 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v56 = v7;
  v57 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setReconfigureWithRecordLockBlock(v7, v53);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3321888768;
  v50[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_333;
  v50[3] = &unk_1F3848CD8;
  objc_copyWeak(v51, &location);
  v51[1] = v8;
  v52 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setStreamInvalidatedBlock(v7, v50);
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3321888768;
  v47[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_339;
  v47[3] = &unk_1F3848D10;
  objc_copyWeak(v48, &location);
  v48[1] = v8;
  v49 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setHardwareConfigChangedBlock(v7, v47);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3321888768;
  v44[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_342;
  v44[3] = &unk_1F3848D48;
  objc_copyWeak(v45, &location);
  v45[1] = v8;
  v46 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setBeginSessionActivateBlock(v7, v44);
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3321888768;
  v41[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_347;
  v41[3] = &unk_1F3848D48;
  objc_copyWeak(v42, &location);
  v42[1] = v8;
  v43 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AVVCRecordingEngine::setEndSessionActivateBlock(v7, v41);
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  v12 = v10;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = MEMORY[0x1E696AEC0];
      v14 = v7[33];
      v15 = v6->__shared_owners_ + 1;
    }

    else
    {
      v15 = 0;
      v13 = MEMORY[0x1E696AEC0];
      v14 = v7[33];
    }

    v16 = [v13 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v7, v14, v15, v25];
    *buf = 136315650;
    v99 = "ControllerImpl.mm";
    v100 = 1024;
    v101 = 4100;
    v102 = 2112;
    v103 = v16;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Configured completion blocks for engine[%@]", buf, 0x1Cu);

    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

LABEL_69:
  if (v43)
  {
    std::__shared_weak_count::__release_weak(v43);
  }

  objc_destroyWeak(v42);
  if (v46)
  {
    std::__shared_weak_count::__release_weak(v46);
  }

  objc_destroyWeak(v45);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
  }

  objc_destroyWeak(v48);
  if (v52)
  {
    std::__shared_weak_count::__release_weak(v52);
  }

  objc_destroyWeak(v51);
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_weak(v55);
  }

  objc_destroyWeak(v54);
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v62);
  }

  if (v60)
  {
    std::__shared_weak_count::__release_weak(v60);
  }

  objc_destroyWeak(v59);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  if (v65)
  {
    std::__shared_weak_count::__release_weak(v65);
  }

  objc_destroyWeak(v64);
  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  objc_destroyWeak(v69);

  if (v85)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v85);
  }

  if (v83)
  {
    std::__shared_weak_count::__release_weak(v83);
  }

  objc_destroyWeak(v82);

  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v93);
  }

  if (v91)
  {
    std::__shared_weak_count::__release_weak(v91);
  }

  objc_destroyWeak(v90);

  if (v96)
  {
    std::__shared_weak_count::__release_weak(v96);
  }

  objc_destroyWeak(v95);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  objc_destroyWeak(&location);

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v17 = *(a1 + 32);
  v18 = *(a1 + 56);
  v19 = *(a1 + 64);
  v20 = *(*(v18 + 8) + 24);
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3321888768;
  v29[2] = ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_2;
  v29[3] = &unk_1F38491C0;
  v21 = *(a1 + 72);
  v33 = v19;
  v34 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v18 = *(a1 + 56);
  }

  v23 = *(a1 + 80);
  v22 = *(a1 + 88);
  v32 = v18;
  v35 = v23;
  v36 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v38 = *(a1 + 104);
  v37 = *(a1 + 96);
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  ControllerImpl::_removeEngineFromMap(v19, v17, v20, 0, v29);

  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v4 = v34;
  if (v34)
  {
    goto LABEL_112;
  }

LABEL_113:
  v24 = *MEMORY[0x1E69E9840];
}

void sub_1BA678210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15)
{
  if (STACK[0x2D0])
  {
    std::__shared_weak_count::__release_weak(STACK[0x2D0]);
  }

  objc_destroyWeak(v17);

  if (STACK[0x350])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x350]);
  }

  if (STACK[0x340])
  {
    std::__shared_weak_count::__release_weak(STACK[0x340]);
  }

  objc_destroyWeak(&STACK[0x330]);

  if (STACK[0x398])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x398]);
  }

  if (STACK[0x388])
  {
    std::__shared_weak_count::__release_weak(STACK[0x388]);
  }

  objc_destroyWeak(&STACK[0x378]);

  v20 = *(v18 - 176);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  objc_destroyWeak((v18 - 192));
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  objc_destroyWeak((v18 - 168));

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE80c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 88);
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

void *__copy_helper_block_ea8_64c42_ZTSNSt3__110shared_ptrI14ControllerImplEE80c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
{
  v2 = a2[9];
  result[8] = a2[8];
  result[9] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[11];
  result[10] = a2[10];
  result[11] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_2(uint64_t a1)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_3;
  v6[3] = &unk_1F38491C0;
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  v10 = v3;
  v11 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 72);
  v4 = *(a1 + 80);
  v9 = *(a1 + 48);
  v12 = v5;
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 96);
  v14 = *(a1 + 88);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  ControllerImpl::safeWork(v3, v6, "_createRecordingEngineWithParameters_block_invoke");

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_1BA678644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_56c42_ZTSNSt3__110shared_ptrI14ControllerImplEE72c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
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

void *__copy_helper_block_ea8_56c42_ZTSNSt3__110shared_ptrI14ControllerImplEE72c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
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

void ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_3(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(*(*(a1 + 48) + 8) + 24);
  v6 = *(a1 + 72);
  v5 = *(a1 + 80);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v8 = *(a1 + 72);
    v7 = *(a1 + 80);
  }

  else
  {
    v7 = 0;
    v8 = *(a1 + 72);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3321888768;
  v18 = ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_4;
  v19 = &unk_1F3848198;
  v25 = *(a1 + 96);
  v22 = v8;
  v23 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v24 = *(a1 + 88);
  v20 = *(a1 + 32);
  v16 = *(a1 + 40);
  v9 = v16;
  v21 = v16;
  v10 = v17;
  v11 = *(v3 + 576);
  v12 = *(v3 + 584);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v11)
  {
    *buf = v6;
    *&buf[8] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    AVVCRecordingEngineMap::insertEngine(v11, v4, buf);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  else
  {
    if (kAVVCScope)
    {
      v13 = *kAVVCScope;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v13 = MEMORY[0x1E69E9C10];
      v14 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "ControllerImpl.mm";
      *&buf[12] = 1024;
      *&buf[14] = 4110;
      _os_log_impl(&dword_1BA5AC000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Engine Map does not exist", buf, 0x12u);
    }
  }

LABEL_22:
  v18(v10);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_1BA678974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
    if (!v21)
    {
LABEL_7:
      if (!v20)
      {
LABEL_12:
        _Unwind_Resume(a1);
      }

LABEL_11:
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      goto LABEL_12;
    }
  }

  else if (!v21)
  {
    goto LABEL_7;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  if (!v20)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void ___ZN14ControllerImpl36_createRecordingEngineWithParametersENSt3__110shared_ptrIS_EEP17AVVoiceControllerN19AVVCRecordingEngine10EngineTypeEP8NSStringlU13block_pointerFvNS1_IS5_EEE_block_invoke_4(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!kAVVCScope)
  {
    v2 = MEMORY[0x1E69E9C10];
    v3 = MEMORY[0x1E69E9C10];
LABEL_5:
    v4 = v2;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_19:

      goto LABEL_20;
    }

    v5 = *(a1 + 80);
    if (v5 > 4)
    {
      v6 = "ILLEGAL";
    }

    else
    {
      v6 = off_1E7EF6310[v5];
    }

    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v7)
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = *(v7 + 264);
        v11 = v8->__shared_owners_ + 1;
LABEL_14:
        v12 = [v9 stringWithFormat:@"(%p) streamID: %d, use_count:%ld", v7, v10, v11];
LABEL_16:
        v13 = v12;
        v14 = Get4CCFromInt(*(a1 + 72));
        v15 = *(a1 + 32);
        v16 = *(*(*(a1 + 48) + 8) + 24);
        *buf = 136316674;
        v23 = "ControllerImpl.mm";
        v24 = 1024;
        v25 = 3927;
        v26 = 2080;
        v27 = v6;
        v28 = 2112;
        v29 = v13;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v15;
        v34 = 2048;
        v35 = v16;
        _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d setContext: Created new (%s) engine[%@] for activation mode(%@) and deviceUID(%@) with streamHandle(%lu)", buf, 0x44u);

        if (v8)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        }

        goto LABEL_19;
      }
    }

    else if (v7)
    {
      v11 = 0;
      v9 = MEMORY[0x1E696AEC0];
      v10 = *(v7 + 264);
      goto LABEL_14;
    }

    v12 = @"(0x0) use_count:0";
    goto LABEL_16;
  }

  v2 = *kAVVCScope;
  if (v2)
  {
    goto LABEL_5;
  }

LABEL_20:
  v17 = *(a1 + 40);
  if (v17)
  {
    v18 = *(a1 + 64);
    v20 = *(a1 + 56);
    v21 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(v17 + 16))(v17, &v20);
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void sub_1BA678C30(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_312(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  if (WeakRetained && v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_314;
    v11[3] = &unk_1E7EF5CC0;
    v12 = WeakRetained;
    v13 = a2;
    ControllerImpl::safeNotify(v7, "encodeError", v11);

LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v15 = "ControllerImpl.mm";
    v16 = 1024;
    v17 = 4017;
    v18 = 2048;
    v19 = WeakRetained;
    v20 = 2048;
    v21 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA678E3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_317(uint64_t a1, unint64_t a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = *(a1 + 48);
  if (!v7)
  {
    v8 = 0;
    goto LABEL_9;
  }

  v8 = std::__shared_weak_count::lock(v7);
  if (!v8)
  {
LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = *(a1 + 40);
  if (WeakRetained && v9)
  {
    v10 = objc_loadWeakRetained((v9 + 416));

    if (a3 == 1936745848 && !v10)
    {
      v11 = objc_alloc_init(SpeexEndpointer);
      ControllerImpl::setEndpointerDelegate(v9, WeakRetained, v11, a2);
    }

    goto LABEL_18;
  }

LABEL_10:
  if (kAVVCScope)
  {
    v12 = *kAVVCScope;
    if (!v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315906;
    v16 = "ControllerImpl.mm";
    v17 = 1024;
    v18 = 4027;
    v19 = 2048;
    v20 = WeakRetained;
    v21 = 2048;
    v22 = v9;
    _os_log_impl(&dword_1BA5AC000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", &v15, 0x26u);
  }

LABEL_17:
  if (v8)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1BA679004(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_322(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  if (WeakRetained && v7)
  {
    ControllerImpl::setupEndpointer(v7, a2);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v11 = 136315906;
    v12 = "ControllerImpl.mm";
    v13 = 1024;
    v14 = 4035;
    v15 = 2048;
    v16 = WeakRetained;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", &v11, 0x26u);
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA679184(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

uint64_t ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_327(uint64_t a1, char a2)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  if (WeakRetained && v8)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    RecordLock::RecordLock(&v15, v8, v6);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v9 = AVVCRecordingEngine::stopRecord(*(a1 + 56), a2);
    VCLocker::~VCLocker(&v15);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v12 = v9;
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315906;
    v16 = "ControllerImpl.mm";
    v17 = 1024;
    v18 = 4046;
    v19 = 2048;
    v20 = WeakRetained;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", &v15, 0x26u);
  }

LABEL_15:
  v9 = 0;
  v12 = 0;
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1BA679340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  VCLocker::~VCLocker(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);

  _Unwind_Resume(a1);
}

uint64_t ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_331(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v7 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v7 = v6;
  if (!v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v8 = *(a1 + 40);
  if (WeakRetained && v8)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    RecordLock::RecordLock(&v15, v8, v6);
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v9 = (*(**(a1 + 56) + 112))(*(a1 + 56), a2);
    VCLocker::~VCLocker(&v15);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    v12 = v9;
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v10 = *kAVVCScope;
    if (!v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v15 = 136315906;
    v16 = "ControllerImpl.mm";
    v17 = 1024;
    v18 = 4053;
    v19 = 2048;
    v20 = WeakRetained;
    v21 = 2048;
    v22 = v8;
    _os_log_impl(&dword_1BA5AC000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", &v15, 0x26u);
  }

LABEL_15:
  v9 = 0;
  v12 = 0;
  if (v7)
  {
    goto LABEL_16;
  }

LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_1BA679534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  VCLocker::~VCLocker(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);

  _Unwind_Resume(a1);
}

uint64_t ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_332(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 48);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_7;
  }

  v4 = std::__shared_weak_count::lock(v3);
  v5 = v4;
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = *(a1 + 40);
  if (WeakRetained && v6)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    RecordLock::RecordLock(&v13, v6, v4);
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v7 = (*(**(a1 + 56) + 80))(*(a1 + 56));
    VCLocker::~VCLocker(&v13);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v10 = v7;
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v13 = 136315906;
    v14 = "ControllerImpl.mm";
    v15 = 1024;
    v16 = 4060;
    v17 = 2048;
    v18 = WeakRetained;
    v19 = 2048;
    v20 = v6;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", &v13, 0x26u);
  }

LABEL_15:
  v7 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_17:

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void sub_1BA679718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  VCLocker::~VCLocker(&a9);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_333(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  if (WeakRetained && v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_335;
    v11[3] = &unk_1E7EF5BD0;
    objc_copyWeak(v12, (a1 + 32));
    v12[1] = a2;
    ControllerImpl::safeNotify(v7, "streamInvalidated", v11);
    objc_destroyWeak(v12);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v14 = "ControllerImpl.mm";
    v15 = 1024;
    v16 = 4067;
    v17 = 2048;
    v18 = WeakRetained;
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA679910(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_339(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_7;
  }

  v6 = std::__shared_weak_count::lock(v5);
  if (!v6)
  {
LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  if (WeakRetained && v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_341;
    v11[3] = &unk_1E7EF5CE8;
    objc_copyWeak(&v12, (a1 + 32));
    v13 = a2;
    ControllerImpl::safeNotify(v7, "hardwareConfigChanged", v11);
    objc_destroyWeak(&v12);
LABEL_16:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    goto LABEL_17;
  }

LABEL_8:
  if (kAVVCScope)
  {
    v8 = *kAVVCScope;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v15 = "ControllerImpl.mm";
    v16 = 1024;
    v17 = 4076;
    v18 = 2048;
    v19 = WeakRetained;
    v20 = 2048;
    v21 = v7;
    _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p, impl: %p). Bailing", buf, 0x26u);
  }

LABEL_15:
  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1BA679AF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);

  _Unwind_Resume(a1);
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_341(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained hardwareConfigChanged:*(a1 + 40)];
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
      v10 = 4078;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void ___ZN14ControllerImpl32_configureEngineCompletionBlocksEP17AVVoiceControllerNSt3__110shared_ptrI19AVVCRecordingEngineEE_block_invoke_335(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained notifyStreamInvalidated:*(a1 + 40)];
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
      v10 = 4069;
      v11 = 2048;
      v12 = 0;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d nil object encountered (avvc: %p). Bailing", &v7, 0x1Cu);
    }
  }

LABEL_10:

  v6 = *MEMORY[0x1E69E9840];
}

void __destroy_helper_block_ea8_40c39_ZTSNSt3__18weak_ptrI14ControllerImplEE56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *__copy_helper_block_ea8_40c39_ZTSNSt3__18weak_ptrI14ControllerImplEE56c47_ZTSNSt3__110shared_ptrI19AVVCRecordingEngineEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
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

void std::__shared_ptr_emplace<AVVCAudioQueueRecordingEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F38492A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void std::__shared_ptr_emplace<AVVCHACRecordingEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F384E000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void std::__shared_ptr_emplace<AVVCExternalDeviceRecordingEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F3849270;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void std::__shared_ptr_emplace<AVVCPluginRecordingEngine>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F38492E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1BFAF5800);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_2_279(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-11780 userInfo:0];
  (*(v1 + 16))(v1, 0, 0);
}

void ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_3(uint64_t a1)
{
  AVVCRecordingEngine::setActivationContextSettings(*(a1 + 48), *(a1 + 32));
  v2 = *(a1 + 64);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3321888768;
  v6[2] = ___ZN14ControllerImpl10setContextEP17AVVoiceControllerP19AVVCContextSettingsU13block_pointerFvm14AVVCStreamTypeP7NSErrorE_block_invoke_4;
  v6[3] = &unk_1F3848E90;
  v3 = *(a1 + 40);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v7 = v3;
  v8 = v5;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ControllerImpl::safeWork(v2, v6, "setContext_block_invoke");
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}