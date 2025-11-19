@interface PHASESessionInterfaceImpl
- (BOOL)registerActivateAudioSessionBlock:(id)a3;
- (BOOL)registerFadeClientsInAudioSessionBlock:(id)a3;
- (BOOL)registerMuteInputClientsInAudioSessionBlock:(id)a3;
- (BOOL)setClientStateOnSession:(unsigned int)a3 clientToken:(void *)a4 modes:(unsigned int)a5 state:(unsigned int)a6 outDuckingInfo:(AudioSessionDuckingInfo *)a7;
- (BOOL)setInputMuteStateOnSession:(unsigned int)a3 clientToken:(void *)a4 isMuted:(BOOL)a5;
- (PHASESessionInterfaceImpl)init;
- (PHASESessionInterfaceImpl)initWithPhasePlatform:(id)a3;
- (id).cxx_construct;
- (id)getInputMuteStateForSession:(unsigned int)a3 fromCallback:(BOOL)a4;
- (uint64_t)getInputMuteStateForSession:fromCallback:;
- (void)dealloc;
- (void)refreshInputMuteOnAllSessions:(float)a3;
- (void)removeInputClientToken:(void *)a3 fromSessionID:(unsigned int)a4;
@end

@implementation PHASESessionInterfaceImpl

- (id).cxx_construct
{
  MEMORY[0x1BFAE4070](&self->_callbackMutex, a2);
  self->audioSessionInputClients.__table_.__bucket_list_ = 0u;
  *&self->audioSessionInputClients.__table_.__first_node_.__next_ = 0u;
  self->audioSessionInputClients.__table_.__max_load_factor_ = 1.0;
  return self;
}

- (BOOL)registerActivateAudioSessionBlock:(id)a3
{
  v4 = a3;
  if (self->_activateSessionBlock != v4)
  {
    std::recursive_mutex::lock(&self->_callbackMutex);
    activateSessionBlock = self->_activateSessionBlock;
    self->_activateSessionBlock = 0;

    if (v4)
    {
      v6 = [v4 copy];
      v7 = self->_activateSessionBlock;
      self->_activateSessionBlock = v6;
    }

    std::recursive_mutex::unlock(&self->_callbackMutex);
  }

  return 1;
}

- (BOOL)registerFadeClientsInAudioSessionBlock:(id)a3
{
  v4 = a3;
  if (self->_fadeSessionOutputBlock != v4)
  {
    std::recursive_mutex::lock(&self->_callbackMutex);
    fadeSessionOutputBlock = self->_fadeSessionOutputBlock;
    self->_fadeSessionOutputBlock = 0;

    if (v4)
    {
      v6 = [v4 copy];
      v7 = self->_fadeSessionOutputBlock;
      self->_fadeSessionOutputBlock = v6;
    }

    std::recursive_mutex::unlock(&self->_callbackMutex);
  }

  return 1;
}

- (BOOL)registerMuteInputClientsInAudioSessionBlock:(id)a3
{
  v4 = a3;
  if (self->_muteSessionInputBlock != v4)
  {
    std::recursive_mutex::lock(&self->_callbackMutex);
    muteSessionInputBlock = self->_muteSessionInputBlock;
    self->_muteSessionInputBlock = 0;

    if (v4)
    {
      v6 = [v4 copy];
      v7 = self->_muteSessionInputBlock;
      self->_muteSessionInputBlock = v6;
    }

    std::recursive_mutex::unlock(&self->_callbackMutex);
  }

  return 1;
}

- (BOOL)setInputMuteStateOnSession:(unsigned int)a3 clientToken:(void *)a4 isMuted:(BOOL)a5
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    if (AudioControlQueue(void)::once != -1)
    {
      dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
    }

    v9 = AudioControlQueue(void)::gAudioControlQueue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__PHASESessionInterfaceImpl_setInputMuteStateOnSession_clientToken_isMuted___block_invoke;
    v12[3] = &unk_1E7ECF278;
    v13 = a3;
    v12[5] = &v15;
    v12[6] = a4;
    v14 = a5;
    v12[4] = self;
    AT::DispatchBlock(v9, v12, 0, "[PHASESessionInterfaceImpl setInputMuteStateOnSession:clientToken:isMuted:]", "ATPhasePlatform.mm", 330);
  }

  v10 = *(v16 + 6) == 0;
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __76__PHASESessionInterfaceImpl_setInputMuteStateOnSession_clientToken_isMuted___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 24) = AudioSessionSetClientMuteState(*(a1 + 56), 1885888883, *(a1 + 48), *(a1 + 60));
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v2 = gPhaseManagerLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 48);
      v4 = *(a1 + 60);
      v5 = *(a1 + 32);
      v6 = *(*(*(a1 + 40) + 8) + 24);
      v8 = 136316418;
      v9 = "ATPhasePlatform.mm";
      v10 = 1024;
      v11 = 328;
      v12 = 2048;
      v13 = v5;
      v14 = 2048;
      v15 = v3;
      v16 = 1024;
      v17 = v4;
      v18 = 1024;
      v19 = v6;
      _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: error setting client@%p session mute state %u, err = %d", &v8, 0x32u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)getInputMuteStateForSession:(unsigned int)a3 fromCallback:(BOOL)a4
{
  v24[4] = *MEMORY[0x1E69E9840];
  v24[0] = &unk_1F37BE6A8;
  v24[3] = v24;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3812000000;
  v16 = __Block_byref_object_copy__5806;
  v17 = __Block_byref_object_dispose__5807;
  v18 = 0;
  v19 = 0;
  v20 = 1;
  if (!a4)
  {
    if (AudioControlQueue(void)::once != -1)
    {
      dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
    }

    v8 = AudioControlQueue(void)::gAudioControlQueue;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3321888768;
    v22[2] = __70__PHASESessionInterfaceImpl_getInputMuteStateForSession_fromCallback___block_invoke;
    v22[3] = &unk_1F37BE668;
    v22[4] = &v13;
    std::__function::__value_func<caulk::expected<BOOL,int> ()>::__value_func[abi:ne200100](v23, v24);
    v23[8] = a3;
    AT::DispatchBlock(v8, v22, 0, "[PHASESessionInterfaceImpl getInputMuteStateForSession:fromCallback:]", "ATPhasePlatform.mm", 305);

    std::__function::__value_func<caulk::expected<BOOL,int> ()>::~__value_func[abi:ne200100](v23);
    v6 = v14;
    if (*(v14 + 52))
    {
      goto LABEL_13;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_14;
  }

  v21 = a3;
  v5 = std::__function::__func<[PHASESessionInterfaceImpl getInputMuteStateForSession:fromCallback:]::$_0,std::allocator<[PHASESessionInterfaceImpl getInputMuteStateForSession:fromCallback:]::$_0>,caulk::expected<BOOL,int> ()>::operator()(self, &v21);
  v6 = v14;
  v7 = *(v14 + 52);
  if ((v5 & 0x100000000) == 0)
  {
    *(v14 + 12) = v5;
    if (v7)
    {
      v9 = 0;
      *(v6 + 52) = BYTE4(v5);
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  *(v14 + 48) = v5;
  if (!v7)
  {
    *(v6 + 52) = BYTE4(v5);
  }

LABEL_13:
  v10 = MEMORY[0x1E696AD98];
  caulk::expected<BOOL,int>::value((v6 + 6));
  v9 = [v10 numberWithBool:*(v6 + 48)];
LABEL_14:
  _Block_object_dispose(&v13, 8);
  std::__function::__value_func<caulk::expected<BOOL,int> ()>::~__value_func[abi:ne200100](v24);
  v11 = *MEMORY[0x1E69E9840];

  return v9;
}

- (uint64_t)getInputMuteStateForSession:fromCallback:
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  AQMESession::AQMESession(&v11, *a2, 0);
  v4 = AT::SessionFacade::global(v3);
  v5 = (*(*v4 + 64))(v4, &v11);
  LODWORD(v14) = v5;
  BYTE4(v14) = BYTE4(v5);
  v6 = gPhaseManagerLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if ((v5 & 0x100000000) != 0)
  {
    if (v7)
    {
      caulk::expected<BOOL,int>::value(&v14);
      *buf = 136315906;
      v16 = "ATPhasePlatform.mm";
      v17 = 1024;
      v18 = 286;
      v19 = 1024;
      v20 = v5;
      v21 = 1024;
      v22 = v2;
      v8 = "%25s:%-5d getInputMuteStateForSession mute=%d for session=0x%x";
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    *buf = 136315906;
    v16 = "ATPhasePlatform.mm";
    v17 = 1024;
    v18 = 290;
    v19 = 1024;
    v20 = v5;
    v21 = 1024;
    v22 = v2;
    v8 = "%25s:%-5d error %i getting mute value in getInputMuteStateForSession for session=0x%x";
LABEL_6:
    _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0x1Eu);
  }

  if (v13 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (*(&v11.mDescription.__rep_.__l + 23) < 0)
  {
    operator delete(v11.mDescription.__rep_.__l.__data_);
  }

  if (v11.mSubsessionRef.mCFObject)
  {
    CFRelease(v11.mSubsessionRef.mCFObject);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v14 & 0xFFFFFFFFFFLL;
}

unint64_t __70__PHASESessionInterfaceImpl_getInputMuteStateForSession_fromCallback___block_invoke(uint64_t a1)
{
  v7 = *(a1 + 72);
  v2 = *(a1 + 64);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  result = (*(*v2 + 48))(v2, &v7);
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 52);
  if ((result & 0x100000000) != 0)
  {
    if (*(v4 + 52))
    {
      *(v4 + 48) = result;
      return result;
    }

    v6 = HIDWORD(result);
    *(v4 + 48) = result;
  }

  else
  {
    *(v4 + 48) = result;
    if (!v5)
    {
      return result;
    }

    v6 = HIDWORD(result);
  }

  *(v4 + 52) = v6;
  return result;
}

- (void)refreshInputMuteOnAllSessions:(float)a3
{
  v33 = *MEMORY[0x1E69E9840];
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if ((CASIsDarwinOS(void)::global & 1) == 0)
  {
    for (i = self->audioSessionInputClients.__table_.__first_node_.__next_; i; i = *i)
    {
      v20 = *(i + 4);
      memset(v21, 0, sizeof(v21));
      v22 = *(i + 14);
      std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<PowerUsageWatchdog::ClientDescription>>>>::__rehash<true>(v21, *(i + 4));
      for (j = *(i + 5); j; j = *j)
      {
        std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::__emplace_unique_key_args<void *,void * const&>(v21, j[2]);
      }

      AQMESession::AQMESession(&v17, v20, 0);
      v8 = AT::SessionFacade::global(v7);
      v9 = (*(*v8 + 64))(v8, &v17);
      v15 = v9;
      v16 = BYTE4(v9);
      if ((v9 & 0x100000000) != 0)
      {
        caulk::expected<BOOL,int>::value(&v15);
        v11 = v15;
        v12 = gPhaseManagerLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v24 = "ATPhasePlatform.mm";
          v25 = 1024;
          v26 = 269;
          v27 = 2048;
          v28 = self;
          v29 = 1024;
          v30 = v11;
          v31 = 1024;
          v32 = v20;
          _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d platform@%p: refreshAudioSessionInputMute mute=%d for session=0x%x", buf, 0x28u);
        }

        *&v13 = a3;
        [(PHASESessionInterfaceImpl *)self muteSessionInput:v20 mute:v11 fadeTime:v13];
      }

      else
      {
        v10 = gPhaseManagerLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v24 = "ATPhasePlatform.mm";
          v25 = 1024;
          v26 = 272;
          v27 = 2048;
          v28 = self;
          v29 = 1024;
          v30 = v15;
          v31 = 1024;
          v32 = v20;
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d platform@%p: error %i getting mute value in refreshAudioSessionInputMute for session=0x%x", buf, 0x28u);
        }
      }

      if (v19 == 1 && cf)
      {
        CFRelease(cf);
      }

      if (*(&v17.mDescription.__rep_.__l + 23) < 0)
      {
        operator delete(v17.mDescription.__rep_.__l.__data_);
      }

      if (v17.mSubsessionRef.mCFObject)
      {
        CFRelease(v17.mSubsessionRef.mCFObject);
      }

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v21);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)removeInputClientToken:(void *)a3 fromSessionID:(unsigned int)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>>>::find<unsigned int>(&self->audioSessionInputClients.__table_.__bucket_list_.__ptr_, a4);
  if (!v7)
  {
    v15 = gPhaseManagerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = 136316162;
      v26 = "ATPhasePlatform.mm";
      v27 = 1024;
      v28 = 171;
      v29 = 2048;
      v30 = self;
      v31 = 2048;
      v32 = a3;
      v33 = 1024;
      v34 = a4;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: can't remove client@%p from unknown session 0x%x", &v25, 0x2Cu);
    }

    goto LABEL_12;
  }

  v8 = v7;
  v9 = std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::find<void *>(v7 + 3, a3);
  if (!v9)
  {
    v15 = gPhaseManagerLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = 136316162;
      v26 = "ATPhasePlatform.mm";
      v27 = 1024;
      v28 = 165;
      v29 = 2048;
      v30 = self;
      v31 = 2048;
      v32 = a3;
      v33 = 1024;
      v34 = a4;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d sessioninterface@%p: can't remove unknown client@%p from session 0x%x", &v25, 0x2Cu);
    }

LABEL_12:

LABEL_13:
    v16 = *MEMORY[0x1E69E9840];
    return;
  }

  std::__hash_table<void *,std::hash<void *>,std::equal_to<void *>,std::allocator<void *>>::erase(v8 + 3, v9);
  if (v8[6])
  {
    goto LABEL_13;
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<SSClientCompletionProcInfo>>>>::find<unsigned int>(&self->audioSessionInputClients.__table_.__bucket_list_.__ptr_, a4);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  size = self->audioSessionInputClients.__table_.__bucket_list_.__deleter_.__size_;
  v13 = v10[1];
  v14 = vcnt_s8(size);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    if (v13 >= size)
    {
      v13 %= size;
    }
  }

  else
  {
    v13 &= size - 1;
  }

  ptr = self->audioSessionInputClients.__table_.__bucket_list_.__ptr_;
  v18 = ptr[v13];
  do
  {
    v19 = v18;
    v18 = *v18;
  }

  while (v18 != v10);
  if (v19 == &self->audioSessionInputClients.__table_.__first_node_)
  {
    goto LABEL_29;
  }

  phasePlatform = v19->_phasePlatform;
  if (v14.u32[0] > 1uLL)
  {
    if (phasePlatform >= size)
    {
      phasePlatform %= size;
    }
  }

  else
  {
    phasePlatform &= size - 1;
  }

  if (phasePlatform != v13)
  {
LABEL_29:
    if (!*v10)
    {
      goto LABEL_30;
    }

    v21 = *(*v10 + 8);
    if (v14.u32[0] > 1uLL)
    {
      if (v21 >= size)
      {
        v21 %= size;
      }
    }

    else
    {
      v21 &= size - 1;
    }

    if (v21 != v13)
    {
LABEL_30:
      ptr[v13] = 0;
    }
  }

  v22 = *v10;
  if (*v10)
  {
    v23 = *(v22 + 1);
    if (v14.u32[0] > 1uLL)
    {
      if (v23 >= size)
      {
        v23 %= size;
      }
    }

    else
    {
      v23 &= size - 1;
    }

    if (v23 != v13)
    {
      self->audioSessionInputClients.__table_.__bucket_list_.__ptr_[v23] = v19;
      v22 = *v10;
    }
  }

  v19->super.isa = v22;
  *v10 = 0;
  --self->audioSessionInputClients.__table_.__size_;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table((v10 + 3));
  v24 = *MEMORY[0x1E69E9840];

  operator delete(v11);
}

- (BOOL)setClientStateOnSession:(unsigned int)a3 clientToken:(void *)a4 modes:(unsigned int)a5 state:(unsigned int)a6 outDuckingInfo:(AudioSessionDuckingInfo *)a7
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  {
    CASIsDarwinOS(void)::global = os_variant_is_darwinos();
  }

  if (CASIsDarwinOS(void)::global)
  {
    if (a7)
    {
      *&a7->var1 = 0x3F80000000000000;
      a7->var0 = 0;
    }
  }

  else
  {
    objc_initWeak(&location, self);
    if (AudioControlQueue(void)::once != -1)
    {
      dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
    }

    v13 = AudioControlQueue(void)::gAudioControlQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __92__PHASESessionInterfaceImpl_setClientStateOnSession_clientToken_modes_state_outDuckingInfo___block_invoke;
    v16[3] = &unk_1E7ECF250;
    objc_copyWeak(v17, &location);
    v16[4] = &v22;
    v17[1] = a4;
    v17[2] = a7;
    v18 = a3;
    v19 = a5;
    v20 = a6;
    AT::DispatchBlock(v13, v16, 0, "[PHASESessionInterfaceImpl setClientStateOnSession:clientToken:modes:state:outDuckingInfo:]", "ATPhasePlatform.mm", 134);

    objc_destroyWeak(v17);
    objc_destroyWeak(&location);
  }

  v14 = *(v23 + 24);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void __92__PHASESessionInterfaceImpl_setClientStateOnSession_clientToken_modes_state_outDuckingInfo___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    *(*(*(a1 + 32) + 8) + 24) = [WeakRetained setClientStateFromCallbackOnSession:*(a1 + 64) clientToken:*(a1 + 48) modes:*(a1 + 68) state:*(a1 + 72) outDuckingInfo:*(a1 + 56)];
    WeakRetained = v3;
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)dealloc
{
  muteSessionInputBlock = self->_muteSessionInputBlock;
  self->_muteSessionInputBlock = 0;

  fadeSessionOutputBlock = self->_fadeSessionOutputBlock;
  self->_fadeSessionOutputBlock = 0;

  activateSessionBlock = self->_activateSessionBlock;
  self->_activateSessionBlock = 0;

  sessionVolumeImpl = self->_sessionVolumeImpl;
  self->_sessionVolumeImpl = 0;

  objc_storeWeak(&self->_phasePlatform, 0);
  v7.receiver = self;
  v7.super_class = PHASESessionInterfaceImpl;
  [(PHASESessionInterfaceImpl *)&v7 dealloc];
}

- (PHASESessionInterfaceImpl)initWithPhasePlatform:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PHASESessionInterfaceImpl;
  v5 = [(PHASESessionInterfaceImpl *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_phasePlatform, v4);
    muteSessionInputBlock = v6->_muteSessionInputBlock;
    v6->_muteSessionInputBlock = 0;

    fadeSessionOutputBlock = v6->_fadeSessionOutputBlock;
    v6->_fadeSessionOutputBlock = 0;

    activateSessionBlock = v6->_activateSessionBlock;
    v6->_activateSessionBlock = 0;
  }

  return v6;
}

- (PHASESessionInterfaceImpl)init
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = gPhaseManagerLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v6 = 136315394;
    v7 = "ATPhasePlatform.mm";
    v8 = 1024;
    v9 = 85;
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d Error: unsupported initializer for PHASESessionInterfaceImpl!", &v6, 0x12u);
  }

  v4 = *MEMORY[0x1E69E9840];
  return 0;
}

@end