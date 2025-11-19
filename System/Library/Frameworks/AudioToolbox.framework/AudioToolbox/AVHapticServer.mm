@interface AVHapticServer
- (AVHapticServer)init;
- (BOOL)incrementInit:(id *)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)setupSSSClient;
- (BOOL)shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:(unint64_t)a3;
- (id).cxx_construct;
- (int)cancelPatternWithOptions:(__CFDictionary *)a3;
- (int)doPrewarm:(shared_ptr<ClientEntry>)a3;
- (int)doStartRunning:(shared_ptr<ClientEntry>)a3 completedBlock:(id)a4;
- (int)loadSynthPreset;
- (int)playVibePattern:(void *)a3 gain:(float)a4 synchronizer:(SSPlayerSynchronizer *)a5 flags:(unsigned int)a6 atTime:(double)a7 completionHandler:(id)a8;
- (int)startPrewarm;
- (int)stopPrewarm;
- (shared_ptr<ClientEntry>)entryWithID:(unint64_t)a3;
- (uint64_t)incrementRunningCountForAudio:haptics:entry:;
- (unint64_t)addProcessEntry:(int)a3;
- (void)addListener:(id)a3 forAudioSessionID:(unsigned int)a4;
- (void)checkRunningCountAndStopSynth;
- (void)cleanup;
- (void)dealloc;
- (void)decrementInit;
- (void)decrementPrewarmCountAndStopAudio:(BOOL)a3 stopHaptics:(BOOL)a4 entry:(shared_ptr<ClientEntry>)a5;
- (void)displayRunningProcessEntriesWithOnTime:(unint64_t)a3;
- (void)doReleaseClientResources:(shared_ptr<ClientEntry>)a3;
- (void)dumpProcessEntries:(__sFILE *)a3;
- (void)incrementPrewarmCountForAudio:(BOOL)a3 haptics:(BOOL)a4 entry:(shared_ptr<ClientEntry>)a5;
- (void)removeListener:(id)a3 withAudioSessionID:(unsigned int)a4;
- (void)removeProcessEntry:(unint64_t)a3;
- (void)unprewarmAllClientEntries;
@end

@implementation AVHapticServer

- (id).cxx_construct
{
  self->_instanceMap.__tree_.__size_ = 0;
  self->_instanceMap.__tree_.__end_node_.__left_ = 0;
  self->_instanceMap.__tree_.__begin_node_ = &self->_instanceMap.__tree_.__end_node_;
  MEMORY[0x1BFAE4070](&self->_instanceMutex, a2);
  self->_processIndexMap.__tree_.__size_ = 0;
  self->_processIndexMap.__tree_.__end_node_.__left_ = 0;
  self->_processIndexMap.__tree_.__begin_node_ = &self->_processIndexMap.__tree_.__end_node_;
  return self;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = a4;
  if (kHSRVScope)
  {
    v7 = *kHSRVScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 2436;
    v22 = 2080;
    v23 = "[AVHapticServer listener:shouldAcceptNewConnection:]";
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: [xpc] newConnection: %@", buf, 0x26u);
  }

LABEL_8:
  v9 = [v6 processIdentifier];
  v19 = 0u;
  v20 = 0u;
  if (v6)
  {
    [v6 auditToken];
  }

  v10 = self;
  objc_sync_enter(v10);
  [v6 setExportedInterface:v10->_cachedServerInterface];
  [v6 setRemoteObjectInterface:v10->_cachedClientInterface];
  v11 = [v6 exportedInterface];
  v12 = [v11 classesForSelector:sel_loadHapticSequenceFromEvents_reply_ argumentIndex:0 ofReply:0];

  v13 = [v12 mutableCopy];
  [v13 addObject:objc_opt_class()];
  v14 = [v6 exportedInterface];
  [v14 setClasses:v13 forSelector:sel_loadHapticSequenceFromEvents_reply_ argumentIndex:0 ofReply:0];

  [v13 addObject:objc_opt_class()];
  v15 = [v6 exportedInterface];
  [v15 setClasses:v13 forSelector:sel_configureWithOptions_reply_ argumentIndex:0 ofReply:0];

  if ([(AVHapticServer *)v10 addProcessEntry:v9]!= -1)
  {
    operator new();
  }

  objc_sync_exit(v10);
  v16 = *MEMORY[0x1E69E9840];
  return 0;
}

void __53__AVHapticServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    v6 = v3;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315906;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 2480;
      v23 = 2080;
      v24 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
      v25 = 2048;
      v26 = [WeakRetained clientID];
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <Client ID 0x%lx finish callback>", &v19, 0x26u);
    }

LABEL_12:
    v7 = objc_autoreleasePoolPush();
    v8 = [WeakRetained getAsyncDelegateForMethod:*(a1 + 40) errorHandler:&__block_literal_global_453];
    if (!v8)
    {
      if (kHSRVScope)
      {
        v10 = *kHSRVScope;
        if (!v10)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v10 = MEMORY[0x1E69E9C10];
        v17 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
LABEL_37:

LABEL_38:
        objc_autoreleasePoolPop(v7);
        goto LABEL_39;
      }

      v19 = 136315650;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 2492;
      v23 = 2080;
      v24 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
      v13 = "%25s:%-5d %s: <WARNING: Async delegate for client was nil!>";
      v14 = v10;
      v15 = OS_LOG_TYPE_DEFAULT;
LABEL_36:
      _os_log_impl(&dword_1B9A08000, v14, v15, v13, &v19, 0x1Cu);
      goto LABEL_37;
    }

    if (kHSRVScope)
    {
      v9 = *kHSRVScope;
      if (!v9)
      {
LABEL_23:
        [v8 clientCompletedWithError:0];
        if (kHSRVScope)
        {
          v10 = *kHSRVScope;
          if (!v10)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v10 = MEMORY[0x1E69E9C10];
          v12 = MEMORY[0x1E69E9C10];
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_37;
        }

        v19 = 136315650;
        v20 = "AVHapticServer.mm";
        v21 = 1024;
        v22 = 2489;
        v23 = 2080;
        v24 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
        v13 = "%25s:%-5d %s: <Done calling clientCompletedWithError:>";
        v14 = v10;
        v15 = OS_LOG_TYPE_INFO;
        goto LABEL_36;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315650;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 2487;
      v23 = 2080;
      v24 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <Calling clientCompletedWithError: on client delegate>", &v19, 0x1Cu);
    }

    goto LABEL_23;
  }

  if (kHSRVScope)
  {
    v4 = *kHSRVScope;
    if (!v4)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "AVHapticServer.mm";
    v21 = 1024;
    v22 = 2497;
    v23 = 2080;
    v24 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: <WARNING: Weak AVHapticServerInstance was nil!>", &v19, 0x1Cu);
  }

LABEL_39:
  v18 = *MEMORY[0x1E69E9840];
}

void __53__AVHapticServer_listener_shouldAcceptNewConnection___block_invoke_455(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v2 = *kHSRVScope;
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

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315906;
    v9 = "AVHapticServer.mm";
    v10 = 1024;
    v11 = 2505;
    v12 = 2080;
    v13 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
    v14 = 1024;
    v15 = [WeakRetained clientID];
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [xpc] InterruptionHandler: client 0x%x", &v8, 0x22u);
  }

LABEL_8:
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 handleConnectionError];

  v7 = *MEMORY[0x1E69E9840];
}

void __53__AVHapticServer_listener_shouldAcceptNewConnection___block_invoke_456(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v2 = *kHSRVScope;
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

  v4 = v2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = 136315906;
    v9 = "AVHapticServer.mm";
    v10 = 1024;
    v11 = 2509;
    v12 = 2080;
    v13 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
    v14 = 1024;
    v15 = [WeakRetained clientID];
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: [xpc] InvalidationHandler: client 0x%x", &v8, 0x22u);
  }

LABEL_8:
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 handleConnectionError];

  v7 = *MEMORY[0x1E69E9840];
}

void __53__AVHapticServer_listener_shouldAcceptNewConnection___block_invoke_451(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
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

  v5 = v3;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = [v2 localizedDescription];
    v8 = 136315906;
    v9 = "AVHapticServer.mm";
    v10 = 1024;
    v11 = 2483;
    v12 = 2080;
    v13 = "[AVHapticServer listener:shouldAcceptNewConnection:]_block_invoke";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to notify client of finish: %@", &v8, 0x26u);
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
}

- (void)unprewarmAllClientEntries
{
  v2 = self;
  objc_sync_enter(v2);
  begin_node = v2->_processIndexMap.__tree_.__begin_node_;
  if (begin_node != &v2->_processIndexMap.__tree_.__end_node_)
  {
    do
    {
      v4 = 0;
      left_low = SLODWORD(begin_node[4].__left_);
      v6 = 0x1000000;
      do
      {
        if ((*(&begin_node[5].__left_ + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4))
        {
          ServerManager::entryForID(&v14, v2->_manager, v6 | left_low);
          v7 = v14;
          if (v14)
          {
            v8 = v15;
            if (*(v14 + 116) == 1)
            {
              v12 = v14;
              v13 = v15;
              if (v15)
              {
                atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              [(AVHapticServer *)v2 doStopPrewarm:&v12 audio:(*(v7 + 96) >> 1) & 1 haptics:*(v7 + 96) & 1];
              if (v13)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v13);
              }
            }
          }

          else
          {
            v8 = v15;
          }

          if (v8)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v8);
          }
        }

        ++v4;
        v6 += 0x1000000;
      }

      while (v4 != 255);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v10 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v10 = begin_node[2].__left_;
          v11 = v10->__left_ == begin_node;
          begin_node = v10;
        }

        while (!v11);
      }

      begin_node = v10;
    }

    while (v10 != &v2->_processIndexMap.__tree_.__end_node_);
  }

  objc_sync_exit(v2);
}

- (void)doReleaseClientResources:(shared_ptr<ClientEntry>)a3
{
  var0 = a3.var0;
  v21 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(*var0 + 3);
    v13 = 136315906;
    v14 = "AVHapticServer.mm";
    v15 = 1024;
    v16 = 2394;
    v17 = 2080;
    v18 = "[AVHapticServer doReleaseClientResources:]";
    v19 = 2048;
    v20 = v7;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: clientID: 0x%lx", &v13, 0x26u);
  }

LABEL_8:
  if (*var0 && (v8 = atomic_load(*var0 + 30), v8 >= 1))
  {
    v9 = atomic_load(*var0 + 30);
    if (v9 != 1)
    {
      CAAssertRtn();
    }

    ClientEntry::uninitialize(*var0);
    [(AVHapticServer *)self decrementInit];
  }

  else
  {
    if (kHSRVScope)
    {
      v10 = *kHSRVScope;
      if (!v10)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "AVHapticServer.mm";
      v15 = 1024;
      v16 = 2401;
      v17 = 2080;
      v18 = "[AVHapticServer doReleaseClientResources:]";
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: client was not initialized", &v13, 0x1Cu);
    }
  }

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];
}

- (int)doStartRunning:(shared_ptr<ClientEntry>)a3 completedBlock:(id)a4
{
  var0 = a3.var0;
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3.var1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  objc_initWeak(&location, self);
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v7 = *kHSRVScope;
      if (v7)
      {
        v8 = v7;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v26 = "AVHapticServer.mm";
          v27 = 1024;
          v28 = 2338;
          v29 = 2080;
          v30 = "[AVHapticServer doStartRunning:completedBlock:]";
          _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Dispatching startEntry on ACQ", buf, 0x1Cu);
        }
      }
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3321888768;
  v15[2] = __48__AVHapticServer_doStartRunning_completedBlock___block_invoke;
  v15[3] = &unk_1F37BD8B8;
  v9 = *(var0 + 1);
  v18[1] = *var0;
  v19 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = &v21;
  objc_copyWeak(v18, &location);
  v10 = v6;
  v16 = v10;
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v11 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v11, v15, 0, "[AVHapticServer doStartRunning:completedBlock:]", "AVHapticServer.mm", 2358);

  v12 = *(v22 + 6);
  objc_destroyWeak(v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(&v21, 8);

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

void __48__AVHapticServer_doStartRunning_completedBlock___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = atomic_load((*(a1 + 56) + 120));
  if (v2 < 1)
  {
    if (kHSRVScope)
    {
      v5 = *kHSRVScope;
      if (!v5)
      {
LABEL_16:
        *(*(*(a1 + 40) + 8) + 24) = -4807;
        goto LABEL_39;
      }
    }

    else
    {
      v5 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(a1 + 56) + 24);
      *buf = 136315906;
      v31 = "AVHapticServer.mm";
      v32 = 1024;
      v33 = 2341;
      v34 = 2080;
      v35 = "[AVHapticServer doStartRunning:completedBlock:]_block_invoke";
      v36 = 2048;
      v37 = v8;
      _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: ERROR: Attempting to start uninitialized client (ID 0x%lx)", buf, 0x26u);
    }

    goto LABEL_16;
  }

  v3 = atomic_load((*(a1 + 56) + 120));
  if (v3 <= 1)
  {
    if (kHSRVScope)
    {
      v6 = *kHSRVScope;
      if (!v6)
      {
LABEL_25:
        WeakRetained = objc_loadWeakRetained((a1 + 48));
        v13 = WeakRetained == 0;

        if (!v13)
        {
          v14 = objc_loadWeakRetained((a1 + 48));
          v15 = [v14 manager];
          v16 = *(a1 + 56);
          v17 = *(a1 + 64);
          v29[0] = v16;
          v29[1] = v17;
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
            v16 = *(a1 + 56);
          }

          *(*(*(a1 + 40) + 8) + 24) = ServerManager::startEntry(v15, v29, 0, *(v16 + 108));
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          if (!*(*(*(a1 + 40) + 8) + 24))
          {
            v18 = objc_loadWeakRetained((a1 + 48));
            v19 = v18;
            v20 = *(a1 + 64);
            v21 = *(*(a1 + 56) + 96);
            v27 = *(a1 + 56);
            v28 = v20;
            if (v20)
            {
              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            [v18 incrementRunningCountForAudio:(v21 >> 1) & 1 haptics:v21 & 1 entry:&v27];
            if (v28)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v28);
            }

            v22 = *(a1 + 32);
            v23 = *(a1 + 64);
            v25 = *(a1 + 56);
            v26 = v23;
            if (v23)
            {
              atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(v22 + 16))(v22, &v25, *(*(*(a1 + 40) + 8) + 24));
            if (v26)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v26);
            }
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(a1 + 56) + 24);
      *buf = 136315906;
      v31 = "AVHapticServer.mm";
      v32 = 1024;
      v33 = 2345;
      v34 = 2080;
      v35 = "[AVHapticServer doStartRunning:completedBlock:]_block_invoke";
      v36 = 2048;
      v37 = v11;
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Starting stopped client ID: 0x%lx", buf, 0x26u);
    }

    goto LABEL_25;
  }

  if (kHSRVScope)
  {
    v4 = *kHSRVScope;
    if (!v4)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v31 = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 2356;
    v34 = 2080;
    v35 = "[AVHapticServer doStartRunning:completedBlock:]_block_invoke";
    _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Client already running or flushing -- no call to notifyFinished", buf, 0x1Cu);
  }

LABEL_39:
  v24 = *MEMORY[0x1E69E9840];
}

- (int)doPrewarm:(shared_ptr<ClientEntry>)a3
{
  v40 = *MEMORY[0x1E69E9840];
  if (*(*a3.var0 + 116))
  {
    if (kHSRVScope)
    {
      v3 = *kHSRVScope;
      if (!v3)
      {
LABEL_40:
        v21 = 0;
        goto LABEL_41;
      }
    }

    else
    {
      v3 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v31 = "AVHapticServer.mm";
      v32 = 1024;
      v33 = 2317;
      v34 = 2080;
      v35 = "[AVHapticServer doPrewarm:]";
      _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client was already prewarmed -- noop", buf, 0x1Cu);
    }

    goto LABEL_40;
  }

  var0 = a3.var0;
  if (kHSRVScope)
  {
    v6 = *kHSRVScope;
    if (!v6)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(*var0 + 24);
    *buf = 136315906;
    v31 = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 2309;
    v34 = 2080;
    v35 = "[AVHapticServer doPrewarm:]";
    v36 = 2048;
    *v37 = v9;
    _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Starting prewarm on cold client ID: 0x%lx", buf, 0x26u);
  }

LABEL_16:
  manager = self->_manager;
  v12 = *var0;
  v11 = *(var0 + 1);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v13 = *kHSRVScope;
      if (v13)
      {
        v14 = v13;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v15 = *(v12 + 24);
          *buf = 136315906;
          v31 = "ServerManager.mm";
          v32 = 1024;
          v33 = 1024;
          v34 = 2080;
          v35 = "prewarmEntry";
          v36 = 2048;
          *v37 = v15;
          _os_log_impl(&dword_1B9A08000, v14, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Client ID: 0x%lx", buf, 0x26u);
        }
      }
    }
  }

  v16 = *(v12 + 96) & 2;
  v17 = *(v12 + 96) & 1;
  v18 = *(v12 + 24);
  if (kHSRVScope)
  {
    v19 = *kHSRVScope;
    if (!v19)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v31 = "ServerManager.mm";
    v32 = 1024;
    v33 = 268;
    v34 = 2080;
    v35 = "startSynthPrewarm";
    v36 = 1024;
    *v37 = v16 >> 1;
    *&v37[4] = 1024;
    *&v37[6] = v17;
    v38 = 1024;
    v39 = v18;
    _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Calling startPrewarm(%d, %d) on synth, requested by clientID 0x%x", buf, 0x2Eu);
  }

LABEL_31:
  v21 = (*(*manager[29] + 48))(manager[29], v16 != 0, v17, v18);
  *(v12 + 116) = v21 == 0;
  Current = CFAbsoluteTimeGetCurrent();
  v23 = 1008;
  if (!v21)
  {
    v23 = 1000;
  }

  *(v12 + v23) = Current;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (!v21)
  {
    v24 = *(var0 + 1);
    v25 = *(*var0 + 96);
    v28 = *var0;
    v29 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(AVHapticServer *)self incrementPrewarmCountForAudio:(v25 >> 1) & 1 haptics:v25 & 1 entry:&v28];
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    goto LABEL_40;
  }

LABEL_41:
  v26 = *MEMORY[0x1E69E9840];
  return v21;
}

- (shared_ptr<ClientEntry>)entryWithID:(unint64_t)a3
{
  ServerManager::entryForID(v3, self->_manager, a3);
  result.var1 = v5;
  result.var0 = v4;
  return result;
}

- (void)dumpProcessEntries:(__sFILE *)a3
{
  fwrite("\tRegistered clients:\n", 0x15uLL, 1uLL, a3);
  begin_node = self->_processIndexMap.__tree_.__begin_node_;
  if (begin_node != &self->_processIndexMap.__tree_.__end_node_)
  {
    do
    {
      left = begin_node[4].__left_;
      caulk::platform::process_name(left);
      if (v12 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      fprintf(a3, "\t\tPID %u (0x%x):\t\t%s\n", left, left, p_p);
      if (v12 < 0)
      {
        operator delete(__p);
      }

      isa = begin_node[1].__left_;
      if (isa)
      {
        do
        {
          v9 = isa;
          isa = isa->super.isa;
        }

        while (isa);
      }

      else
      {
        do
        {
          v9 = begin_node[2].__left_;
          v10 = v9->super.isa == begin_node;
          begin_node = v9;
        }

        while (!v10);
      }

      begin_node = v9;
    }

    while (v9 != &self->_processIndexMap.__tree_.__end_node_);
  }
}

- (BOOL)shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:(unint64_t)a3
{
  *(&v57[2] + 2) = *MEMORY[0x1E69E9840];
  v43 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = self;
  objc_sync_enter(v4);
  begin_node = v4->_processIndexMap.__tree_.__begin_node_;
  if (begin_node == &v4->_processIndexMap.__tree_.__end_node_)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 0;
      left_low = SLODWORD(begin_node[4].__left_);
      v10 = 0x1000000;
      do
      {
        if ((*(&begin_node[5].__left_ + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
        {
          ServerManager::entryForID(&v44, v4->_manager, v10 | left_low);
          v11 = v44;
          if (v44 && v44->_ubuf[0] == 1)
          {
            base = v44->_bf._base;
            v13 = getpid();
            v14 = v7;
            if ((base & 0xFFFFFF) != v13 || (v15 = "ToneLib", LODWORD(v11->_extra) != 1003))
            {
              v15 = "SSS";
              if ((v10 | left_low) != v4->_SSSClientID)
              {
                ur = v11->_ur;
                v15 = "UIFeedback";
                if (ur != 1)
                {
                  if (ur == 2)
                  {
                    v15 = "iOSKeyboard";
                  }

                  else
                  {
                    v15 = "CH";
                  }
                }
              }
            }

            v7 = v45;
            if (v45)
            {
              atomic_fetch_add_explicit(v45 + 1, 1uLL, memory_order_relaxed);
            }

            if (v14)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v14);
            }

            caulk::platform::process_name(left_low);
            v17 = __p;
            if (SBYTE3(v55) < 0)
            {
              v17 = *__p;
            }

            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:0x%x:%s", v17, v10 | left_low, v15];
            [v43 appendString:v18];

            if (SBYTE3(v55) < 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
            v11 = v6;
          }

          if (v45)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v45);
          }

          v6 = v11;
        }

        ++v8;
        v10 += 0x1000000;
      }

      while (v8 != 255);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v20 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v20 = begin_node[2].__left_;
          v38 = v20->__left_ == begin_node;
          begin_node = v20;
        }

        while (!v38);
      }

      begin_node = v20;
    }

    while (v20 != &v4->_processIndexMap.__tree_.__end_node_);
  }

  objc_sync_exit(v4);

  if ([v43 length])
  {
    if (kHSRVScope)
    {
      v21 = *kHSRVScope;
      if (!v21)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v21 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136316162;
      *&__p[4] = "AVHapticServer.mm";
      v52 = 1024;
      v53 = 2270;
      v54 = 2080;
      v55 = "[AVHapticServer shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:]";
      v56 = 1024;
      LODWORD(v57[0]) = a3;
      WORD2(v57[0]) = 2112;
      *(v57 + 6) = v43;
      _os_log_impl(&dword_1B9A08000, v21, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: << POWER LOG: Haptic_Prewarmed_Hardware_Time_Seconds: %u, Prewarmed_Clients: %@ >>", __p, 0x2Cu);
    }

LABEL_43:
    if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
    {
      *__p = &v48;
      v44 = __p;
      std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v44, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
    }

    v23 = atomic_load(HapticMetrics::sHapticAutoBugCaptureAvailable);
    if ((v23 & 1) == 0)
    {
      if (kHSRVScope)
      {
        v25 = *kHSRVScope;
        if (!v25)
        {
          goto LABEL_63;
        }
      }

      else
      {
        v25 = MEMORY[0x1E69E9C10];
        v31 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "AVHapticServer.mm";
        v52 = 1024;
        v53 = 2279;
        v54 = 2080;
        v55 = "[AVHapticServer shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:]";
        _os_log_impl(&dword_1B9A08000, v25, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Stuck haptic prewarm encountered but haptic AutoBugCapture has filed within 24 hours", __p, 0x1Cu);
      }

LABEL_63:
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v32 = funopen(&v44, 0, CAMemoryStream::Write, 0, 0);
      v44 = v32;
      if (!v6)
      {
LABEL_72:
        fclose(v32);
        free(v45);
        goto LABEL_73;
      }

      ClientEntry::dump(v6, v32);
      if (kHSRVScope)
      {
        v33 = *kHSRVScope;
        if (!v33)
        {
LABEL_71:
          v32 = v44;
          goto LABEL_72;
        }
      }

      else
      {
        v33 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      v35 = v33;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = CAMemoryStream::cstr(&v44);
        *__p = 136315906;
        *&__p[4] = "AVHapticServer.mm";
        v52 = 1024;
        v53 = 2284;
        v54 = 2080;
        v55 = "[AVHapticServer shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:]";
        v56 = 2080;
        v57[0] = v36;
        _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Prewarmed Client Dump:\n%s\n", __p, 0x26u);
      }

      goto LABEL_71;
    }

    if (kHSRVScope)
    {
      v24 = *kHSRVScope;
      if (!v24)
      {
LABEL_56:
        v27 = MEMORY[0x1E69E4FE8];
        v49[0] = @"Haptic_Prewarmed_Hardware_Time_Seconds";
        v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        v49[1] = @"Prewarmed_Clients";
        v50[0] = v28;
        v50[1] = v43;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v50 forKeys:v49 count:2];
        [v27 sendSingleMessage:v29 category:1 type:8];

        if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
        {
          *__p = &v48;
          v44 = __p;
          std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v44, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
        }

        HapticMetrics::markHapticAutoBugCaptureFiled(v30);
        goto LABEL_63;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "AVHapticServer.mm";
      v52 = 1024;
      v53 = 2272;
      v54 = 2080;
      v55 = "[AVHapticServer shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:]";
      _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: << Stuck haptic prewarm encountered. Filing ABC >> ", __p, 0x1Cu);
    }

    goto LABEL_56;
  }

LABEL_73:
  v37 = [v43 length];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v38 = a3 <= 0x707 || v37 == 0;
  v39 = !v38;

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

- (void)displayRunningProcessEntriesWithOnTime:(unint64_t)a3
{
  v73[2] = *MEMORY[0x1E69E9840];
  v55 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = self;
  objc_sync_enter(v4);
  begin_node = v4->_processIndexMap.__tree_.__begin_node_;
  if (begin_node == &v4->_processIndexMap.__tree_.__end_node_)
  {
    v7 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = 0;
      left_low = SLODWORD(begin_node[4].__left_);
      v10 = 0x1000000;
      do
      {
        if ((*(&begin_node[5].__left_ + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8))
        {
          ServerManager::entryForID(&v56, v4->_manager, v10 | left_low);
          if (v56 && (v11 = atomic_load(&v56->_lb), v11 != 1))
          {
            v13 = v7;
            v6 = v56;
            base = v56->_bf._base;
            if ((base & 0xFFFFFF) != getpid() || (v15 = "ToneLib", LODWORD(v6->_extra) != 1003))
            {
              v15 = "SSS";
              if ((v10 | left_low) != v4->_SSSClientID)
              {
                ur = v6->_ur;
                v15 = "UIFeedback";
                if (ur != 1)
                {
                  if (ur == 2)
                  {
                    v15 = "iOSKeyboard";
                  }

                  else
                  {
                    v15 = "CH";
                  }
                }
              }
            }

            v12 = v57;
            if (v57)
            {
              atomic_fetch_add_explicit(v57 + 1, 1uLL, memory_order_relaxed);
            }

            if (v13)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v13);
            }

            caulk::platform::process_name(left_low);
            v17 = __p;
            if (SBYTE3(v69) < 0)
            {
              v17 = *__p;
            }

            v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s:0x%x:%s", v17, v10 | left_low, v15];
            [v55 appendString:v18];

            if (SBYTE3(v69) < 0)
            {
              operator delete(*__p);
            }
          }

          else
          {
            v12 = v7;
          }

          if (v57)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }

          v7 = v12;
        }

        ++v8;
        v10 += 0x1000000;
      }

      while (v8 != 255);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v20 = left;
          left = left->__left_;
        }

        while (left);
      }

      else
      {
        do
        {
          v20 = begin_node[2].__left_;
          v21 = v20->__left_ == begin_node;
          begin_node = v20;
        }

        while (!v21);
      }

      begin_node = v20;
    }

    while (v20 != &v4->_processIndexMap.__tree_.__end_node_);
  }

  objc_sync_exit(v4);

  if ([v55 length])
  {
    if (kHSRVScope)
    {
      v22 = *kHSRVScope;
      if (!v22)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 136316162;
      *&__p[4] = "AVHapticServer.mm";
      v66 = 1024;
      v67 = 2198;
      v68 = 2080;
      v69 = "[AVHapticServer displayRunningProcessEntriesWithOnTime:]";
      v70 = 1024;
      LODWORD(v71[0]) = a3;
      WORD2(v71[0]) = 2112;
      *(v71 + 6) = v55;
      _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: << POWER LOG: Haptic_Active_Hardware_Time_Seconds: %u, Active_Clients: %@ >>", __p, 0x2Cu);
    }

LABEL_43:
    v24 = MEMORY[0x1E69E4FE8];
    v72[0] = @"Haptic_Active_Hardware_Time_Seconds";
    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v72[1] = @"Active_Clients";
    v73[0] = v25;
    v73[1] = v55;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
    [v24 sendSingleMessage:v26 category:1 type:8];

    v57 = 0;
    v58 = 0;
    v59 = 0;
    v27 = funopen(&v56, 0, CAMemoryStream::Write, 0, 0);
    v56 = v27;
    if (!v6)
    {
      goto LABEL_80;
    }

    ClientEntry::dump(v6, v27);
    if (kHSRVScope)
    {
      v29 = *kHSRVScope;
      if (!v29)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v29 = MEMORY[0x1E69E9C10];
      v30 = MEMORY[0x1E69E9C10];
    }

    v31 = v29;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = CAMemoryStream::cstr(&v56);
      *__p = 136315906;
      *&__p[4] = "AVHapticServer.mm";
      v66 = 1024;
      v67 = 2204;
      v68 = 2080;
      v69 = "[AVHapticServer displayRunningProcessEntriesWithOnTime:]";
      v70 = 2080;
      v71[0] = v32;
      _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Active Client Dump:\n%s\n", __p, 0x26u);
    }

LABEL_51:
    if (v6->_ur != 1)
    {
      goto LABEL_80;
    }

    v33 = COERCE_DOUBLE(atomic_load(&v6[6]._extra));
    v28.n128_f64[0] = v33;
    if (v33 <= 0.0)
    {
      goto LABEL_80;
    }

    v28.n128_f64[0] = CFAbsoluteTimeGetCurrent();
    v34 = COERCE_DOUBLE(atomic_load(&v6[6]._extra));
    v35 = v28.n128_f64[0] - v34;
    v28.n128_u64[0] = 0x4082C00000000000;
    if (v35 < 600.0)
    {
      goto LABEL_80;
    }

    if (kHSRVScope)
    {
      v36 = *kHSRVScope;
      if (!v36)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v36 = MEMORY[0x1E69E9C10];
      v37 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v38 = v6->_bf._base;
      *__p = 136316162;
      *&__p[4] = "AVHapticServer.mm";
      v66 = 1024;
      v67 = 2209;
      v68 = 2080;
      v69 = "[AVHapticServer displayRunningProcessEntriesWithOnTime:]";
      v70 = 1024;
      LODWORD(v71[0]) = v38;
      WORD2(v71[0]) = 2048;
      *(v71 + 6) = v35;
      _os_log_impl(&dword_1B9A08000, v36, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: UIFeedback engine 0x%x has been running for %.1f seconds!", __p, 0x2Cu);
    }

LABEL_61:
    HapticMetrics::HapticMetrics(__p);
    if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
    {
      v62 = &v60;
      v61 = &v62;
      std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v61, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
    }

    v39 = v7;
    v40 = atomic_load(HapticMetrics::sHapticAutoBugCaptureAvailable);
    HapticMetrics::~HapticMetrics(__p);
    if (v40)
    {
      v7 = v39;
      if (kHSRVScope)
      {
        v41 = *kHSRVScope;
        if (!v41)
        {
LABEL_73:

          v44 = MEMORY[0x1E69E4FE8];
          v63 = @"Haptic_Stuck_UIFeedback_Client_Time_Seconds";
          v45 = [MEMORY[0x1E696AD98] numberWithDouble:v35];
          v64 = v45;
          v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          [v44 sendSingleMessage:v46 category:1 type:8];

          if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
          {
            *__p = &v61;
            v62 = __p;
            std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v62, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
          }

          HapticMetrics::markHapticAutoBugCaptureFiled(v47);
LABEL_80:
          if ((*(**(v4->_manager + 29) + 64))(*(v4->_manager + 29), 0, 0, 9999999, v28))
          {
            (*(**(v4->_manager + 29) + 152))(*(v4->_manager + 29), v56);
            if (kHSRVScope)
            {
              v49 = *kHSRVScope;
              if (!v49)
              {
                goto LABEL_88;
              }
            }

            else
            {
              v49 = MEMORY[0x1E69E9C10];
              v50 = MEMORY[0x1E69E9C10];
            }

            v51 = v49;
            if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
            {
              v52 = CAMemoryStream::cstr(&v56);
              *__p = 136315906;
              *&__p[4] = "AVHapticServer.mm";
              v66 = 1024;
              v67 = 2225;
              v68 = 2080;
              v69 = "[AVHapticServer displayRunningProcessEntriesWithOnTime:]";
              v70 = 2080;
              v71[0] = v52;
              _os_log_impl(&dword_1B9A08000, v51, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Running Synth Dump:\n%s\n", __p, 0x26u);
            }
          }

LABEL_88:
          fclose(v56);
          free(v57);
          goto LABEL_89;
        }
      }

      else
      {
        v41 = MEMORY[0x1E69E9C10];
        v43 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315650;
        *&__p[4] = "AVHapticServer.mm";
        v66 = 1024;
        v67 = 2211;
        v68 = 2080;
        v69 = "[AVHapticServer displayRunningProcessEntriesWithOnTime:]";
        _os_log_impl(&dword_1B9A08000, v41, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: << Stuck UIFeedback engine encountered. Filing ABC >>", __p, 0x1Cu);
      }

      goto LABEL_73;
    }

    v7 = v39;
    if (kHSRVScope)
    {
      v42 = *kHSRVScope;
      if (!v42)
      {
LABEL_79:

        goto LABEL_80;
      }
    }

    else
    {
      v42 = MEMORY[0x1E69E9C10];
      v48 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      *__p = 136315650;
      *&__p[4] = "AVHapticServer.mm";
      v66 = 1024;
      v67 = 2218;
      v68 = 2080;
      v69 = "[AVHapticServer displayRunningProcessEntriesWithOnTime:]";
      _os_log_impl(&dword_1B9A08000, v42, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Stuck UIFeedback engine encountered but haptic AutoBugCapture has filed within 24 hours", __p, 0x1Cu);
    }

    goto LABEL_79;
  }

LABEL_89:
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)removeProcessEntry:(unint64_t)a3
{
  v41 = *MEMORY[0x1E69E9840];
  left = self->_processIndexMap.__tree_.__end_node_.__left_;
  if (!left)
  {
    goto LABEL_8;
  }

  v4 = self;
  v5 = a3 & 0xFFFFFF;
  p_end_node = &self->_processIndexMap.__tree_.__end_node_;
  do
  {
    if (SLODWORD(left[4].__left_) >= v5)
    {
      p_end_node = left;
    }

    left = left[SLODWORD(left[4].__left_) < v5].__left_;
  }

  while (left);
  if (p_end_node == &self->_processIndexMap.__tree_.__end_node_ || v5 < SLODWORD(p_end_node[4].__left_))
  {
LABEL_8:
    CAAssertRtn();
  }

  v7 = (a3 & 0xFF000000) - 1;
  if (kHSRVScope)
  {
    v8 = *kHSRVScope;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v31 = 136316162;
    v32 = "AVHapticServer.mm";
    v34 = 2119;
    v35 = 2080;
    v33 = 1024;
    v36 = "[AVHapticServer removeProcessEntry:]";
    v37 = 1024;
    v38 = v5;
    v39 = 1024;
    v40 = v7 >> 24;
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Removing client from PID %u at index %u", &v31, 0x28u);
  }

LABEL_16:
  v10 = &p_end_node[5];
  v11 = p_end_node[(v7 >> 30) + 5].__left_;
  if ((v11 & (1 << SBYTE3(v7))) != 0)
  {
    v10[v7 >> 30] = (v11 & ~(1 << SBYTE3(v7)));
    v12 = 255;
    v13 = p_end_node + 5;
    while (!v13->__left_)
    {
      ++v13;
      v12 -= 64;
      if (v12 <= 0x3F)
      {
        if ((p_end_node[8].__left_ & 0x7FFFFFFFFFFFFFFFLL) == 0)
        {
          v25 = p_end_node[1].__left_;
          if (v25)
          {
            do
            {
              v26 = v25;
              v25 = v25->__left_;
            }

            while (v25);
          }

          else
          {
            v27 = p_end_node;
            do
            {
              v26 = v27[2].__left_;
              v28 = *v26 == v27;
              v27 = v26;
            }

            while (!v28);
          }

          if (v4->_processIndexMap.__tree_.__begin_node_ == p_end_node)
          {
            v4->_processIndexMap.__tree_.__begin_node_ = v26;
          }

          v29 = v4->_processIndexMap.__tree_.__end_node_.__left_;
          --v4->_processIndexMap.__tree_.__size_;
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v29, p_end_node);
          operator delete(p_end_node);
          goto LABEL_46;
        }

        break;
      }
    }

    if (kHSRVScope)
    {
      v14 = *kHSRVScope;
      if (!v14)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E9C10];
      v16 = MEMORY[0x1E69E9C10];
    }

    v17 = v14;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = 0;
      for (i = 255; i > 0x3F; i -= 64)
      {
        v20 = *v10++;
        v21 = vcnt_s8(v20);
        v21.i16[0] = vaddlv_u8(v21);
        v18 += v21.i32[0];
      }

      v22 = p_end_node[8].__left_ & 0x7FFFFFFFFFFFFFFFLL;
      v31 = 136315906;
      v23 = vcnt_s8(v22);
      v23.i16[0] = vaddlv_u8(v23);
      v32 = "AVHapticServer.mm";
      v33 = 1024;
      v34 = 2127;
      v35 = 2080;
      v36 = "[AVHapticServer removeProcessEntry:]";
      v37 = 1024;
      v38 = v23.i32[0] + v18;
      _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: %u clients still associated with PID", &v31, 0x22u);
    }
  }

  else
  {
    if (kHSRVScope)
    {
      v15 = *kHSRVScope;
      if (!v15)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315906;
      v32 = "AVHapticServer.mm";
      v33 = 1024;
      v34 = 2131;
      v35 = 2080;
      v36 = "[AVHapticServer removeProcessEntry:]";
      v37 = 1024;
      v38 = v7 >> 24;
      _os_log_impl(&dword_1B9A08000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Attempting to remove nonexistant entry at index %u", &v31, 0x22u);
    }
  }

LABEL_46:
  v30 = *MEMORY[0x1E69E9840];
}

- (unint64_t)addProcessEntry:(int)a3
{
  *&v26[5] = *MEMORY[0x1E69E9840];
  left = self->_processIndexMap.__tree_.__end_node_.__left_;
  if (!left)
  {
LABEL_13:
    operator new();
  }

  p_end_node = &self->_processIndexMap.__tree_.__end_node_;
  v6 = self->_processIndexMap.__tree_.__end_node_.__left_;
  do
  {
    if (SLODWORD(v6[4].__left_) >= a3)
    {
      p_end_node = v6;
    }

    v6 = v6[SLODWORD(v6[4].__left_) < a3].__left_;
  }

  while (v6);
  if (p_end_node == &self->_processIndexMap.__tree_.__end_node_ || SLODWORD(p_end_node[4].__left_) > a3)
  {
    while (1)
    {
      while (1)
      {
        p_end_node = left;
        v7 = *(left + 8);
        if (v7 <= a3)
        {
          break;
        }

        left = p_end_node->__left_;
        if (!p_end_node->__left_)
        {
          goto LABEL_13;
        }
      }

      if (v7 >= a3)
      {
        break;
      }

      left = p_end_node[1].__left_;
      if (!left)
      {
        goto LABEL_13;
      }
    }
  }

  v8 = 0;
  v9 = p_end_node + 5;
  while (1)
  {
    v10 = v9[v8 >> 6].__left_;
    if ((v10 & (1 << v8)) == 0)
    {
      break;
    }

    if (++v8 == 255)
    {
      if (kHSRVScope)
      {
        v11 = *kHSRVScope;
        if (!v11)
        {
          v12 = -1;
          goto LABEL_38;
        }
      }

      else
      {
        v11 = MEMORY[0x1E69E9C10];
        v16 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v19 = 136315906;
        v20 = "AVHapticServer.mm";
        v21 = 1024;
        v22 = 2102;
        v23 = 2080;
        v24 = "[AVHapticServer addProcessEntry:]";
        v25 = 1024;
        *v26 = a3;
        _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Exceeded the maximum number of players for PID %u!", &v19, 0x22u);
      }

      v12 = -1;
      goto LABEL_37;
    }
  }

  v9[v8 >> 6].__left_ = (v10 | (1 << v8));
  if (!kHSRVScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    goto LABEL_24;
  }

  v13 = *kHSRVScope;
  if (v13)
  {
LABEL_24:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v19 = 136316162;
      v20 = "AVHapticServer.mm";
      v22 = 2106;
      v23 = 2080;
      v21 = 1024;
      v24 = "[AVHapticServer addProcessEntry:]";
      v25 = 1024;
      *v26 = a3;
      v26[2] = 1024;
      *&v26[3] = v8;
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: New client added to PID %u with index %u", &v19, 0x28u);
    }
  }

  v12 = ((v8 << 24) + 0x1000000) | a3;
  if (kHSRVScope)
  {
    v11 = *kHSRVScope;
    if (!v11)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v19 = 136315906;
    v20 = "AVHapticServer.mm";
    v21 = 1024;
    v22 = 2109;
    v23 = 2080;
    v24 = "[AVHapticServer addProcessEntry:]";
    v25 = 2048;
    *v26 = v12;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_INFO, "%25s:%-5d %s: New client ID: 0x%lx", &v19, 0x26u);
  }

LABEL_37:

LABEL_38:
  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)removeListener:(id)a3 withAudioSessionID:(unsigned int)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (kHSRVScope)
  {
    v7 = *kHSRVScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 serverInstance];
    v26 = 136316162;
    v27 = "AVHapticServer.mm";
    v28 = 1024;
    v29 = 2046;
    v30 = 2080;
    v31 = "[AVHapticServer removeListener:withAudioSessionID:]";
    v32 = 2048;
    v33 = v10;
    v34 = 1024;
    v35 = a4;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Removing listener containing AVHapticServerInstance %p for audio session ID %u", &v26, 0x2Cu);
  }

LABEL_8:
  std::recursive_mutex::lock(&self->_instanceMutex);
  left = self->_instanceMap.__tree_.__end_node_.__left_;
  if (left)
  {
    p_end_node = &self->_instanceMap.__tree_.__end_node_;
    do
    {
      v13 = left[4].__left_;
      v14 = v13 >= a4;
      v15 = v13 < a4;
      if (v14)
      {
        p_end_node = left;
      }

      left = left[v15].__left_;
    }

    while (left);
    if (p_end_node != &self->_instanceMap.__tree_.__end_node_ && LODWORD(p_end_node[4].__left_) <= a4)
    {
      v16 = p_end_node[5].__left_;
      [v16 removeObject:v6];
      if ([v16 count])
      {
        goto LABEL_39;
      }

      if (kHSRVScope)
      {
        v18 = *kHSRVScope;
        if (!v18)
        {
LABEL_30:
          v20 = p_end_node[1].__left_;
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = v20->__left_;
            }

            while (v20);
          }

          else
          {
            v22 = p_end_node;
            do
            {
              v21 = v22[2].__left_;
              v23 = *v21 == v22;
              v22 = v21;
            }

            while (!v23);
          }

          if (self->_instanceMap.__tree_.__begin_node_ == p_end_node)
          {
            self->_instanceMap.__tree_.__begin_node_ = v21;
          }

          v24 = self->_instanceMap.__tree_.__end_node_.__left_;
          --self->_instanceMap.__tree_.__size_;
          std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v24, p_end_node);

          operator delete(p_end_node);
          goto LABEL_39;
        }
      }

      else
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v26 = 136315650;
        v27 = "AVHapticServer.mm";
        v28 = 1024;
        v29 = 2053;
        v30 = 2080;
        v31 = "[AVHapticServer removeListener:withAudioSessionID:]";
        _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No more listeners for this session", &v26, 0x1Cu);
      }

      goto LABEL_30;
    }
  }

  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v26 = 136315906;
    v27 = "AVHapticServer.mm";
    v28 = 1024;
    v29 = 2058;
    v30 = 2080;
    v31 = "[AVHapticServer removeListener:withAudioSessionID:]";
    v32 = 1024;
    LODWORD(v33) = a4;
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: No listeners found for audio session ID %u", &v26, 0x22u);
  }

LABEL_39:

LABEL_40:
  std::recursive_mutex::unlock(&self->_instanceMutex);

  v25 = *MEMORY[0x1E69E9840];
}

- (void)addListener:(id)a3 forAudioSessionID:(unsigned int)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (kHSRVScope)
  {
    v7 = *kHSRVScope;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  v9 = v7;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v6 serverInstance];
    v27 = 136316162;
    v28 = "AVHapticServer.mm";
    v29 = 1024;
    v30 = 2028;
    v31 = 2080;
    v32 = "[AVHapticServer addListener:forAudioSessionID:]";
    v33 = 2048;
    v34 = v10;
    v35 = 1024;
    v36 = a4;
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Adding listener containing AVHapticServerInstance %p for audio session ID %u", &v27, 0x2Cu);
  }

LABEL_8:
  std::recursive_mutex::lock(&self->_instanceMutex);
  p_end_node = &self->_instanceMap.__tree_.__end_node_;
  left = self->_instanceMap.__tree_.__end_node_.__left_;
  if (left)
  {
    v13 = &self->_instanceMap.__tree_.__end_node_;
    do
    {
      v14 = left[4].__left_;
      v15 = v14 >= a4;
      v16 = v14 < a4;
      if (v15)
      {
        v13 = left;
      }

      left = left[v16].__left_;
    }

    while (left);
    if (v13 != p_end_node && LODWORD(v13[4].__left_) <= a4)
    {
      if (kHSRVScope)
      {
        v24 = *kHSRVScope;
        if (!v24)
        {
LABEL_39:
          v20 = v13[5].__left_;
          goto LABEL_34;
        }
      }

      else
      {
        v24 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v27 = 136315650;
        v28 = "AVHapticServer.mm";
        v29 = 1024;
        v30 = 2038;
        v31 = 2080;
        v32 = "[AVHapticServer addListener:forAudioSessionID:]";
        _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Adding to existing listeners for this session", &v27, 0x1Cu);
      }

      goto LABEL_39;
    }
  }

  if (!kHSRVScope)
  {
    v17 = MEMORY[0x1E69E9C10];
    v18 = MEMORY[0x1E69E9C10];
    goto LABEL_20;
  }

  v17 = *kHSRVScope;
  if (v17)
  {
LABEL_20:
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v27 = 136315650;
      v28 = "AVHapticServer.mm";
      v29 = 1024;
      v30 = 2033;
      v31 = 2080;
      v32 = "[AVHapticServer addListener:forAudioSessionID:]";
      _os_log_impl(&dword_1B9A08000, v17, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: First listener for this session", &v27, 0x1Cu);
    }
  }

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v20 = v19;
  v21 = p_end_node->__left_;
  if (!p_end_node->__left_)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v22 = v21;
      v23 = *(v21 + 8);
      if (v23 <= a4)
      {
        break;
      }

      v21 = *v22;
      if (!*v22)
      {
        goto LABEL_29;
      }
    }

    if (v23 >= a4)
    {
      break;
    }

    v21 = v22[1];
    if (!v21)
    {
      goto LABEL_29;
    }
  }

LABEL_34:
  [v20 addObject:v6];
  std::recursive_mutex::unlock(&self->_instanceMutex);

  v25 = *MEMORY[0x1E69E9840];
}

- (uint64_t)incrementRunningCountForAudio:haptics:entry:
{
  v10 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v0 = *kHSRVScope;
    if (!v0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v0 = MEMORY[0x1E69E9C10];
    v1 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v4 = 136315650;
    v5 = "AVHapticServer.mm";
    v6 = 1024;
    v7 = 1969;
    v8 = 2080;
    v9 = "operator()";
    _os_log_impl(&dword_1B9A08000, v0, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Synth restarting due to interruption. No-op on session activator", &v4, 0x1Cu);
  }

LABEL_8:
  v2 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)decrementPrewarmCountAndStopAudio:(BOOL)a3 stopHaptics:(BOOL)a4 entry:(shared_ptr<ClientEntry>)a5
{
  var0 = a5.var0;
  v6 = a4;
  v7 = a3;
  v38 = *MEMORY[0x1E69E9840];
  if (a3 && !self->_audioPrewarmCount)
  {
    CAAssertRtn();
    goto LABEL_54;
  }

  if (a4 && !self->_hapticsPrewarmCount)
  {
LABEL_54:
    CAAssertRtn();
  }

  v9 = a3;
  v10 = a4;
  if (!a3)
  {
    goto LABEL_8;
  }

  if (kHSRVScope)
  {
    v11 = *kHSRVScope;
    if (!v11)
    {
LABEL_8:
      if (v6)
      {
        goto LABEL_9;
      }

LABEL_16:
      p_audioPrewarmCount = &self->_audioPrewarmCount;
      self->_audioPrewarmCount -= v7;
      p_hapticsPrewarmCount = &self->_hapticsPrewarmCount;
      self->_hapticsPrewarmCount -= v6;
      if (v7)
      {
        goto LABEL_26;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = LODWORD(self->_audioPrewarmCount) - v9;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 1933;
    v34 = 2080;
    v35 = "[AVHapticServer decrementPrewarmCountAndStopAudio:stopHaptics:entry:]";
    v36 = 1024;
    LODWORD(v37) = v14;
    _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: audio prewarm count will be %u", buf, 0x22u);
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_9:
  if (kHSRVScope)
  {
    v12 = *kHSRVScope;
    if (!v12)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v19 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v20 = LODWORD(self->_hapticsPrewarmCount) - v10;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 1934;
    v34 = 2080;
    v35 = "[AVHapticServer decrementPrewarmCountAndStopAudio:stopHaptics:entry:]";
    v36 = 1024;
    LODWORD(v37) = v20;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: haptics prewarm count will be %u", buf, 0x22u);
  }

LABEL_23:
  p_audioPrewarmCount = &self->_audioPrewarmCount;
  self->_audioPrewarmCount -= v7;
  p_hapticsPrewarmCount = &self->_hapticsPrewarmCount;
  self->_hapticsPrewarmCount -= v6;
  v21 = *(*var0 + 24);
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    *buf = &v29;
    v30 = buf;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  HapticMetrics::logPowerLogEvent(1, *p_hapticsPrewarmCount, (v21 & 0xFFFFFF), *(*var0 + 112));
  if (v7)
  {
LABEL_26:
    v17 = *p_audioPrewarmCount == 0;
    if (v6)
    {
      goto LABEL_27;
    }

LABEL_18:
    v18 = 0;
    goto LABEL_28;
  }

LABEL_17:
  v17 = 0;
  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_27:
  v18 = *p_hapticsPrewarmCount == 0;
LABEL_28:
  if (!v17 && !v18)
  {
    goto LABEL_52;
  }

  if (kHSRVScope)
  {
    v22 = *kHSRVScope;
    if (!v22)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v22 = MEMORY[0x1E69E9C10];
    v23 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v24 = "audio prewarm count";
    if (v6)
    {
      v24 = "audio and haptics prewarm counts";
    }

    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v32 = 1024;
    v33 = 1945;
    v34 = 2080;
    v35 = "[AVHapticServer decrementPrewarmCountAndStopAudio:stopHaptics:entry:]";
    if (!v7)
    {
      v24 = "haptics prewarm count";
    }

    v36 = 2080;
    v37 = v24;
    _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: %s at zero, calling stopPrewarm on synth", buf, 0x26u);
  }

LABEL_40:
  ServerManager::stopSynthPrewarm(self->_manager, v17, v18, 9999999);
  if (v18)
  {
    if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
    {
      *buf = &v29;
      v30 = buf;
      std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
    }

    v25 = CADeprecated::TSingleton<HapticMetrics>::sInstance;
    if ((*(CADeprecated::TSingleton<HapticMetrics>::sInstance + 18) & 1) == 0)
    {
      if (kHMETScope)
      {
        v26 = *kHMETScope;
        if (!v26)
        {
LABEL_51:
          std::mutex::lock((v25 + 32));
          *(v25 + 17) = 0;
          *(v25 + 8) = 0;
          std::mutex::unlock((v25 + 32));
          goto LABEL_52;
        }
      }

      else
      {
        v26 = MEMORY[0x1E69E9C10];
        v27 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        *&buf[4] = "HapticMetrics.mm";
        v32 = 1024;
        v33 = 116;
        v34 = 2080;
        v35 = "markEnginePrewarmOff";
        _os_log_impl(&dword_1B9A08000, v26, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: marking engine prewarm off", buf, 0x1Cu);
      }

      goto LABEL_51;
    }
  }

LABEL_52:
  v28 = *MEMORY[0x1E69E9840];
}

- (void)incrementPrewarmCountForAudio:(BOOL)a3 haptics:(BOOL)a4 entry:(shared_ptr<ClientEntry>)a5
{
  var0 = a5.var0;
  v6 = a4;
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a3)
  {
    if (kHSRVScope)
    {
      v9 = *kHSRVScope;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = LODWORD(self->_audioPrewarmCount) + v8;
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      v26 = 1024;
      v27 = 1916;
      v28 = 2080;
      v29 = "[AVHapticServer incrementPrewarmCountForAudio:haptics:entry:]";
      v30 = 1024;
      v31 = v11;
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: audio prewarm count will be %u", buf, 0x22u);
    }
  }

LABEL_9:
  v12 = v6;
  if (!v6)
  {
    hapticsPrewarmCount = self->_hapticsPrewarmCount;
    self->_audioPrewarmCount += v8;
    self->_hapticsPrewarmCount = hapticsPrewarmCount;
    goto LABEL_31;
  }

  if (kHSRVScope)
  {
    v13 = *kHSRVScope;
    if (!v13)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = LODWORD(self->_hapticsPrewarmCount) + v12;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    v26 = 1024;
    v27 = 1917;
    v28 = 2080;
    v29 = "[AVHapticServer incrementPrewarmCountForAudio:haptics:entry:]";
    v30 = 1024;
    v31 = v16;
    _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: haptics prewarm count will be %u", buf, 0x22u);
  }

LABEL_18:
  v17 = self->_hapticsPrewarmCount + v12;
  self->_audioPrewarmCount += v8;
  self->_hapticsPrewarmCount = v17;
  v18 = *(*var0 + 24);
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    *buf = &v23;
    v24 = buf;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v24, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  HapticMetrics::logPowerLogEvent(1, self->_hapticsPrewarmCount, (v18 & 0xFFFFFF), *(*var0 + 112));
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    *buf = &v23;
    v24 = buf;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v24, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  v19 = CADeprecated::TSingleton<HapticMetrics>::sInstance;
  if ((*(CADeprecated::TSingleton<HapticMetrics>::sInstance + 18) & 1) == 0)
  {
    if (kHMETScope)
    {
      v20 = *kHMETScope;
      if (!v20)
      {
LABEL_30:
        std::mutex::lock((v19 + 32));
        *(v19 + 8) = mach_absolute_time() * 0.0000000416666667;
        *(v19 + 17) = 1;
        std::mutex::unlock((v19 + 32));
        goto LABEL_31;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "HapticMetrics.mm";
      v26 = 1024;
      v27 = 104;
      v28 = 2080;
      v29 = "markEnginePrewarmOn";
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: marking engine prewarm on and reset prewarm timer", buf, 0x1Cu);
    }

    goto LABEL_30;
  }

LABEL_31:
  v22 = *MEMORY[0x1E69E9840];
}

- (void)decrementInit
{
  v21 = *MEMORY[0x1E69E9840];
  initCount = self->_initCount;
  if (!initCount)
  {
    CAAssertRtn();
  }

  v4 = kHSRVScope;
  v5 = initCount - 1;
  self->_initCount = v5;
  if (!v5)
  {
    if (v4)
    {
      v9 = *v4;
      if (!v9)
      {
LABEL_16:
        manager = self->_manager;
        os_unfair_recursive_lock_lock_with_options();
        (*(*manager[29] + 24))(manager[29]);
        os_unfair_recursive_lock_unlock();
        goto LABEL_17;
      }
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v13 = 136315650;
      v14 = "AVHapticServer.mm";
      v15 = 1024;
      v16 = 1903;
      v17 = 2080;
      v18 = "[AVHapticServer decrementInit]";
      _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: init count now 0 -- uninit'ing synth", &v13, 0x1Cu);
    }

    goto LABEL_16;
  }

  if (v4)
  {
    if (*(v4 + 8))
    {
      v6 = *v4;
      if (v6)
      {
        v7 = v6;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          v8 = self->_initCount;
          v13 = 136315906;
          v14 = "AVHapticServer.mm";
          v15 = 1024;
          v16 = 1907;
          v17 = 2080;
          v18 = "[AVHapticServer decrementInit]";
          v19 = 1024;
          v20 = v8;
          _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: init count -> %u", &v13, 0x22u);
        }
      }
    }
  }

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)incrementInit:(id *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  initCount = self->_initCount;
  self->_initCount = initCount + 1;
  if (initCount)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v6 = *kHSRVScope;
        if (v6)
        {
          v7 = v6;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            v8 = self->_initCount;
            v29 = 136315906;
            v30 = "AVHapticServer.mm";
            v31 = 1024;
            v32 = 1889;
            v33 = 2080;
            v34 = "[AVHapticServer incrementInit:]";
            v35 = 1024;
            LODWORD(v36) = v8;
            _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: init count -> %u", &v29, 0x22u);
          }
        }
      }
    }

    goto LABEL_33;
  }

  if (kHSRVScope)
  {
    v9 = *kHSRVScope;
    if (!v9)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v29 = 136315650;
    v30 = "AVHapticServer.mm";
    v31 = 1024;
    v32 = 1877;
    v33 = 2080;
    v34 = "[AVHapticServer incrementInit:]";
    _os_log_impl(&dword_1B9A08000, v9, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: init count now 1 -- initializing and loading synth", &v29, 0x1Cu);
  }

LABEL_15:
  manager = self->_manager;
  os_unfair_recursive_lock_lock_with_options();
  v12 = (*(*manager[29] + 16))(manager[29]);
  os_unfair_recursive_lock_unlock();
  if (v12)
  {
    if (kHSRVScope)
    {
      v13 = *kHSRVScope;
      if (!v13)
      {
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
      v29 = 136315650;
      v30 = "AVHapticServer.mm";
      v31 = 1024;
      v32 = 1879;
      v33 = 2080;
      v34 = "[AVHapticServer incrementInit:]";
      v15 = "%25s:%-5d %s: ERROR: failed to initialize haptic synth AU";
LABEL_29:
      _os_log_impl(&dword_1B9A08000, v13, OS_LOG_TYPE_ERROR, v15, &v29, 0x1Cu);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v12 = [(AVHapticServer *)self loadSynthPreset];
  if (!v12)
  {
    goto LABEL_33;
  }

  if (!kHSRVScope)
  {
    v13 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
LABEL_27:
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v29 = 136315650;
      v30 = "AVHapticServer.mm";
      v31 = 1024;
      v32 = 1882;
      v33 = 2080;
      v34 = "[AVHapticServer incrementInit:]";
      v15 = "%25s:%-5d %s: ERROR: failed to load haptic preset";
      goto LABEL_29;
    }

LABEL_30:

    goto LABEL_31;
  }

  v13 = *kHSRVScope;
  if (v13)
  {
    goto LABEL_27;
  }

LABEL_31:
  if (a3)
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreHaptics" code:v12 userInfo:0];
    v18 = v17;
    *a3 = v17;
    goto LABEL_34;
  }

LABEL_33:
  v17 = *a3;
LABEL_34:
  if (!v17)
  {
    if (kHSRVScope)
    {
      v19 = *kHSRVScope;
      if (!v19)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v25 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      goto LABEL_48;
    }

    runningChannelIDCount = self->_runningChannelIDCount;
    v29 = 136315906;
    v30 = "AVHapticServer.mm";
    v31 = 1024;
    v32 = 1895;
    v33 = 2080;
    v34 = "[AVHapticServer incrementInit:]";
    v35 = 1024;
    LODWORD(v36) = runningChannelIDCount;
    v22 = "%25s:%-5d %s: _runningChannelIDCount at 0x%x";
    v23 = v19;
    v24 = 34;
    goto LABEL_47;
  }

  if (kHSRVScope)
  {
    v19 = *kHSRVScope;
    if (!v19)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v21 = *a3;
    v29 = 136315906;
    v30 = "AVHapticServer.mm";
    v31 = 1024;
    v32 = 1892;
    v33 = 2080;
    v34 = "[AVHapticServer incrementInit:]";
    v35 = 2112;
    v36 = v21;
    v22 = "%25s:%-5d %s: Returning outError %@";
    v23 = v19;
    v24 = 38;
LABEL_47:
    _os_log_impl(&dword_1B9A08000, v23, OS_LOG_TYPE_INFO, v22, &v29, v24);
  }

LABEL_48:

LABEL_49:
  result = v17 == 0;
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)loadSynthPreset
{
  v84 = *MEMORY[0x1E69E9840];
  TuningPListMgr::TuningPListMgr(v68, "/Library/Audio/Tunings");
  v4 = PlatformUtilities::CopyHardwareModelShortName(v3);
  v66 = v4;
  v67 = 1;
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1853;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServer loadSynthPreset]";
    *&buf[28] = 2112;
    *&buf[30] = v4;
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Product: '%@'", buf, 0x26u);
  }

LABEL_8:
  v76 = CFStringCreateWithCString(0, "Haptics", 0x600u);
  LOBYTE(v77) = 1;
  theArray = CFStringCreateWithCString(0, "hapticengineconfig", 0x600u);
  LOBYTE(v75) = 1;
  *buf = &v66;
  *&buf[8] = &v76;
  *&buf[16] = &theArray;
  TuningInSubdirs = TuningPListMgr::loadTuningInSubdirs_(v68, buf, 3u);
  CACFString::~CACFString(&theArray);
  CACFString::~CACFString(&v76);
  if (!TuningInSubdirs)
  {
    goto LABEL_22;
  }

  if (MGGetBoolAnswer())
  {
    goto LABEL_19;
  }

  if (kHSRVScope)
  {
    v8 = *kHSRVScope;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1856;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServer loadSynthPreset]";
    _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Product does not support closed loop haptics, loading generic config", buf, 0x1Cu);
  }

LABEL_17:
  v76 = CFStringCreateWithCString(0, "Generic", 0x600u);
  LOBYTE(v77) = 1;
  theArray = CFStringCreateWithCString(0, "Haptics", 0x600u);
  LOBYTE(v75) = 1;
  Mutable = CFStringCreateWithCString(0, "Config", 0x600u);
  LOBYTE(v73) = 1;
  v69 = CFStringCreateWithCString(0, "hapticengineconfig", 0x600u);
  LOBYTE(v70) = 1;
  *buf = &v76;
  *&buf[8] = &theArray;
  *&buf[16] = &Mutable;
  *&buf[24] = &v69;
  v10 = TuningPListMgr::loadTuningInSubdirs_(v68, buf, 4u);
  CACFString::~CACFString(&v69);
  CACFString::~CACFString(&Mutable);
  CACFString::~CACFString(&theArray);
  CACFString::~CACFString(&v76);
  if (v10)
  {
    TuningInSubdirs = -1;
LABEL_19:
    if (kHSRVScope)
    {
      v11 = *kHSRVScope;
      if (!v11)
      {
LABEL_30:
        v18 = -43;
        goto LABEL_188;
      }
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v17 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1860;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServer loadSynthPreset]";
      *&buf[28] = 1024;
      *&buf[30] = TuningInSubdirs;
      _os_log_impl(&dword_1B9A08000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to load the configuration plist: err %d", buf, 0x22u);
    }

    goto LABEL_30;
  }

LABEL_22:
  AUPListByName = TuningPListMgr::getAUPListByName(v68, "hapticengineconfig");
  v13 = AUPListByName;
  if (!AUPListByName)
  {
    if (kHSRVScope)
    {
      v19 = *kHSRVScope;
      if (!v19)
      {
LABEL_57:
        v18 = -50;
        goto LABEL_188;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v26 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1865;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServer loadSynthPreset]";
      _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Unable to access the configuration dictionary", buf, 0x1Cu);
    }

    goto LABEL_57;
  }

  CFRetain(AUPListByName);
  v64 = v13;
  v65 = 1;
  manager = self->_manager;
  os_unfair_recursive_lock_lock_with_options();
  v15 = manager[29];
  inData = 1;
  if (kHSYNScope)
  {
    v16 = *kHSYNScope;
    if (!v16)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    *&buf[4] = "HapticSynth_Parser.mm";
    *&buf[12] = 1024;
    *&buf[14] = 224;
    *&buf[18] = 2080;
    *&buf[20] = "loadPresetDictionary";
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Cleaning out all old preset data", buf, 0x1Cu);
  }

LABEL_38:
  v21 = *(v15 + 14);
  if (v21)
  {
    v22 = *(v21 + 16);
  }

  else
  {
    v22 = 0;
  }

  v18 = AudioUnitSetProperty(v22, 0x1029u, 0, 0, &inData, 4u);
  if (!v18)
  {
    v76 = v13;
    v77 = 0;
    if (!CACFDictionary::HasKey(&v76, @"Configuration"))
    {
      goto LABEL_73;
    }

    if (kHPRSScope)
    {
      v24 = *kHPRSScope;
      if (!v24)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v24 = MEMORY[0x1E69E9C10];
      v27 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "HapticSynth_Parser.mm";
      *&buf[12] = 1024;
      *&buf[14] = 237;
      *&buf[18] = 2080;
      *&buf[20] = "loadPresetDictionary";
      _os_log_impl(&dword_1B9A08000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Preset includes configuration dict", buf, 0x1Cu);
    }

LABEL_62:
    theArray = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v75 = 257;
    CACFDictionary::GetCACFDictionary(&v76, @"Configuration", &theArray);
    LODWORD(Mutable) = 0;
    if (!CACFDictionary::GetFloat32(&theArray, @"BaseSineFrequency", &Mutable))
    {
LABEL_72:
      CACFDictionary::~CACFDictionary(&theArray);
LABEL_73:
      if (!CACFDictionary::HasKey(&v76, @"Events"))
      {
LABEL_144:
        v18 = 0;
        goto LABEL_186;
      }

      theArray = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      v75 = 257;
      CACFDictionary::GetCACFArray(&v76, @"Events", &theArray);
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
        if (Count)
        {
          v63 = Count;
          if (kHPRSScope)
          {
            v31 = *kHPRSScope;
            if (!v31)
            {
LABEL_94:
              v36 = 0;
              while (1)
              {
                Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v73 = 257;
                CACFArray::GetCACFDictionary(&theArray, v36, &Mutable);
                if (!Mutable)
                {
                  if (kHPRSScope)
                  {
                    v52 = *kHPRSScope;
                    if (!v52)
                    {
LABEL_169:
                      CACFDictionary::~CACFDictionary(&Mutable);
                      goto LABEL_89;
                    }
                  }

                  else
                  {
                    v52 = MEMORY[0x1E69E9C10];
                    v55 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 314;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    _os_log_impl(&dword_1B9A08000, v52, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Invalid event dictionary entry", buf, 0x1Cu);
                  }

                  goto LABEL_169;
                }

                if (kHPRSScope)
                {
                  if (*(kHPRSScope + 8))
                  {
                    v37 = *kHPRSScope;
                    if (v37)
                    {
                      v38 = v37;
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 136315906;
                        *&buf[4] = "HapticSynth_Parser.mm";
                        *&buf[12] = 1024;
                        *&buf[14] = 267;
                        *&buf[18] = 2080;
                        *&buf[20] = "loadPresetDictionary";
                        *&buf[28] = 1024;
                        *&buf[30] = v36;
                        _os_log_impl(&dword_1B9A08000, v38, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event %d:", buf, 0x22u);
                      }
                    }
                  }
                }

                v71 = 0;
                UInt32 = CACFDictionary::GetUInt32(&Mutable, @"TypeID", &v71);
                if (!UInt32)
                {
                  if (kHPRSScope)
                  {
                    v41 = *kHPRSScope;
                    if (!v41)
                    {
                      v42 = -1;
                      v43 = -1;
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v41 = MEMORY[0x1E69E9C10];
                    v45 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136315650;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 284;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    _os_log_impl(&dword_1B9A08000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: No top-level type ID -- we'll search in the Layers", buf, 0x1Cu);
                  }

                  v42 = -1;
                  v43 = -1;
                  goto LABEL_124;
                }

                if (kHPRSScope)
                {
                  v40 = *kHPRSScope;
                  if (!v40)
                  {
                    goto LABEL_113;
                  }
                }

                else
                {
                  v40 = MEMORY[0x1E69E9C10];
                  v44 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136316162;
                  *&buf[4] = "HapticSynth_Parser.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 273;
                  *&buf[18] = 2080;
                  *&buf[20] = "loadPresetDictionary";
                  *&buf[28] = 1024;
                  *&buf[30] = v71;
                  *&buf[34] = 1024;
                  *&buf[36] = v71;
                  _os_log_impl(&dword_1B9A08000, v40, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: ID: %u (0x%x)", buf, 0x28u);
                }

LABEL_113:
                v42 = v71;
                v43 = BYTE1(v71);
                if ((BYTE1(v71) | v71) >= 0x80)
                {
                  if (kHPRSScope)
                  {
                    v53 = *kHPRSScope;
                    if (!v53)
                    {
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v53 = MEMORY[0x1E69E9C10];
                    v62 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 276;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    _os_log_impl(&dword_1B9A08000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal Event ID", buf, 0x1Cu);
                  }

LABEL_173:

LABEL_183:
                  v18 = -50;
LABEL_184:
                  CACFDictionary::~CACFDictionary(&Mutable);
LABEL_185:
                  CACFArray::~CACFArray(&theArray);
LABEL_186:
                  CACFDictionary::~CACFDictionary(&v76);
                  goto LABEL_187;
                }

                if (!kHPRSScope)
                {
                  v41 = MEMORY[0x1E69E9C10];
                  v46 = MEMORY[0x1E69E9C10];
LABEL_122:
                  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 136316674;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 281;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    *&buf[28] = 1024;
                    *&buf[30] = v42 < 0x55;
                    *&buf[34] = 1024;
                    *&buf[36] = v42 > 0x2C;
                    v80 = 1024;
                    v81 = v42;
                    v82 = 1024;
                    v83 = v43;
                    _os_log_impl(&dword_1B9A08000, v41, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: audio: %d haptic: %d keynum: %d velocity: %d", buf, 0x34u);
                  }

LABEL_124:

                  goto LABEL_125;
                }

                v41 = *kHPRSScope;
                if (v41)
                {
                  goto LABEL_122;
                }

LABEL_125:
                if (!CACFDictionary::HasKey(&Mutable, @"Layers"))
                {
                  if (kHPRSScope)
                  {
                    v53 = *kHPRSScope;
                    if (!v53)
                    {
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v53 = MEMORY[0x1E69E9C10];
                    v56 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 305;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    _os_log_impl(&dword_1B9A08000, v53, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: No layers array", buf, 0x1Cu);
                  }

                  goto LABEL_173;
                }

                v69 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
                v70 = 257;
                CACFDictionary::GetCACFArray(&Mutable, @"Layers", &v69);
                if (v69)
                {
                  v47 = CFArrayGetCount(v69);
                }

                else
                {
                  v47 = 0;
                }

                if (kHPRSScope)
                {
                  v48 = *kHPRSScope;
                  if (!v48)
                  {
                    goto LABEL_136;
                  }
                }

                else
                {
                  v48 = MEMORY[0x1E69E9C10];
                  v49 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315906;
                  *&buf[4] = "HapticSynth_Parser.mm";
                  *&buf[12] = 1024;
                  *&buf[14] = 291;
                  *&buf[18] = 2080;
                  *&buf[20] = "loadPresetDictionary";
                  *&buf[28] = 1024;
                  *&buf[30] = v47;
                  _os_log_impl(&dword_1B9A08000, v48, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Event has %u layers", buf, 0x22u);
                }

LABEL_136:
                if (!v47)
                {
                  if (kHPRSScope)
                  {
                    v54 = *kHPRSScope;
                    if (!v54)
                    {
                      goto LABEL_182;
                    }
                  }

                  else
                  {
                    v54 = MEMORY[0x1E69E9C10];
                    v57 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 293;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    v58 = "%25s:%-5d %s: Empty layers array";
                    goto LABEL_180;
                  }

LABEL_181:

                  goto LABEL_182;
                }

                if (v47 > 2)
                {
                  v50 = UInt32;
                }

                else
                {
                  v50 = 0;
                }

                if (v50 == 1)
                {
                  if (kHPRSScope)
                  {
                    v54 = *kHPRSScope;
                    if (!v54)
                    {
LABEL_182:
                      CACFArray::~CACFArray(&v69);
                      goto LABEL_183;
                    }
                  }

                  else
                  {
                    v54 = MEMORY[0x1E69E9C10];
                    v59 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    *&buf[4] = "HapticSynth_Parser.mm";
                    *&buf[12] = 1024;
                    *&buf[14] = 297;
                    *&buf[18] = 2080;
                    *&buf[20] = "loadPresetDictionary";
                    v58 = "%25s:%-5d %s: Cannot have more than 2 layers";
LABEL_180:
                    _os_log_impl(&dword_1B9A08000, v54, OS_LOG_TYPE_ERROR, v58, buf, 0x1Cu);
                  }

                  goto LABEL_181;
                }

                v18 = HapticSynth::walkLayerList(v15, &v69, v42, v43);
                CACFArray::~CACFArray(&v69);
                if (v18)
                {
                  goto LABEL_184;
                }

                *buf = 0;
                CACFDictionary::GetFloat32(&Mutable, @"Gain", buf);
                CACFDictionary::~CACFDictionary(&Mutable);
                v36 = (v36 + 1);
                if (v63 == v36)
                {
                  CACFArray::~CACFArray(&theArray);
                  goto LABEL_144;
                }
              }
            }
          }

          else
          {
            v31 = MEMORY[0x1E69E9C10];
            v35 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "HapticSynth_Parser.mm";
            *&buf[12] = 1024;
            *&buf[14] = 261;
            *&buf[18] = 2080;
            *&buf[20] = "loadPresetDictionary";
            *&buf[28] = 1024;
            *&buf[30] = v63;
            _os_log_impl(&dword_1B9A08000, v31, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Preset has %u events", buf, 0x22u);
          }

          goto LABEL_94;
        }
      }

      if (kHPRSScope)
      {
        v32 = *kHPRSScope;
        if (!v32)
        {
LABEL_89:
          v18 = -50;
          goto LABEL_185;
        }
      }

      else
      {
        v32 = MEMORY[0x1E69E9C10];
        v34 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = "HapticSynth_Parser.mm";
        *&buf[12] = 1024;
        *&buf[14] = 258;
        *&buf[18] = 2080;
        *&buf[20] = "loadPresetDictionary";
        _os_log_impl(&dword_1B9A08000, v32, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Empty events array", buf, 0x1Cu);
      }

      goto LABEL_89;
    }

    if (kHPRSScope)
    {
      v28 = *kHPRSScope;
      if (!v28)
      {
        goto LABEL_70;
      }
    }

    else
    {
      v28 = MEMORY[0x1E69E9C10];
      v29 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "HapticSynth_Parser.mm";
      *&buf[12] = 1024;
      *&buf[14] = 242;
      *&buf[18] = 2080;
      *&buf[20] = "loadPresetDictionary";
      *&buf[28] = 2048;
      *&buf[30] = *&Mutable;
      _os_log_impl(&dword_1B9A08000, v28, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: baseSineFreq: %f", buf, 0x26u);
    }

LABEL_70:
    if (*&Mutable > 0.0)
    {
      ServerConfiguration::sSineFrequency = Mutable;
      goto LABEL_72;
    }

    if (kHPRSScope)
    {
      v33 = *kHPRSScope;
      if (!v33)
      {
LABEL_149:
        CACFDictionary::~CACFDictionary(&theArray);
        v18 = -50;
        goto LABEL_186;
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9C10];
      v51 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HapticSynth_Parser.mm";
      *&buf[12] = 1024;
      *&buf[14] = 247;
      *&buf[18] = 2080;
      *&buf[20] = "loadPresetDictionary";
      *&buf[28] = 2048;
      *&buf[30] = *&Mutable;
      _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Illegal base sine frequency: %f", buf, 0x26u);
    }

    goto LABEL_149;
  }

  if (kHPRSScope)
  {
    v23 = *kHPRSScope;
    if (!v23)
    {
      goto LABEL_187;
    }
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "HapticSynth_Parser.mm";
    *&buf[12] = 1024;
    *&buf[14] = 227;
    *&buf[18] = 2080;
    *&buf[20] = "loadPresetDictionary";
    _os_log_impl(&dword_1B9A08000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: Unable to clean the AU state", buf, 0x1Cu);
  }

LABEL_187:
  os_unfair_recursive_lock_unlock();
  CACFDictionary::~CACFDictionary(&v64);
LABEL_188:
  CACFString::~CACFString(&v66);
  TuningPListMgr::~TuningPListMgr(v68);
  v60 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)setupSSSClient
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(AVHapticServer *)v2 addProcessEntry:getpid()];
  if (v3 != -1)
  {
    if (kHSRVScope)
    {
      v4 = *kHSRVScope;
      if (!v4)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1828;
      v9 = 2080;
      v10 = "[AVHapticServer setupSSSClient]";
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&dword_1B9A08000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Setting up persistant client for SSS: ID: 0x%lx", buf, 0x26u);
    }

LABEL_9:
    operator new();
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)dealloc
{
  [(AVHapticServer *)self cleanup];
  v3.receiver = self;
  v3.super_class = AVHapticServer;
  [(AVHapticServer *)&v3 dealloc];
}

- (void)cleanup
{
  manager = self->_manager;
  if (manager)
  {
    std::__shared_mutex_base::lock((manager + 24));
    manager[192] = 1;
    v4 = *manager;
    v5 = manager + 8;
    if (*manager != manager + 8)
    {
      do
      {
        v6 = v4[5];
        v7 = v4[6];
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ClientEntry::uninitialize(v6);
        if (v7)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v7);
        }

        v8 = v4[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v4[2];
            v10 = *v9 == v4;
            v4 = v9;
          }

          while (!v10);
        }

        v4 = v9;
      }

      while (v9 != v5);
    }

    manager[192] = 0;
    std::__shared_mutex_base::unlock((manager + 24));
    std::__shared_mutex_base::lock((manager + 24));
    manager[192] = 1;
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ClientEntry>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ClientEntry>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<ClientEntry>>>>::destroy(*(manager + 1));
    *(manager + 1) = 0;
    *(manager + 2) = 0;
    *manager = v5;
    manager[192] = 0;
    std::__shared_mutex_base::unlock((manager + 24));
    if (HapticMessenger::_sMessenger)
    {
      v11 = MEMORY[0x1BFAE3800]();
      MEMORY[0x1BFAE43D0](v11, 0x20C40A4A59CD2);
    }

    HapticMessenger::_sMessenger = 0;
    v12 = *(manager + 41);
    *(manager + 41) = 0;

    v13 = *(manager + 39);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v14 = *(manager + 37);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
    }

    v15 = *(manager + 35);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    std::unique_ptr<AudioEventManager>::~unique_ptr[abi:ne200100](manager + 33);
    v16 = *(manager + 29);
    *(manager + 29) = 0;
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    std::__list_imp<ServerManager::SynthCommand,caulk::rt_allocator<ServerManager::SynthCommand>>::clear((manager + 208));
    std::condition_variable::~condition_variable((manager + 136));
    std::condition_variable::~condition_variable((manager + 88));
    std::mutex::~mutex((manager + 24));
    std::__tree<std::__value_type<unsigned long,std::shared_ptr<ClientEntry>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::shared_ptr<ClientEntry>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::shared_ptr<ClientEntry>>>>::destroy(*(manager + 1));
    MEMORY[0x1BFAE43D0](manager, 0x10F0C403AEE7770);
  }

  self->_manager = 0;
}

- (AVHapticServer)init
{
  v8 = *MEMORY[0x1E69E9840];
  if (setupServerLogScopes(void)::once != -1)
  {
    dispatch_once(&setupServerLogScopes(void)::once, &__block_literal_global_334);
  }

  v7.receiver = self;
  v7.super_class = AVHapticServer;
  v3 = [(AVHapticServer *)&v7 init];
  if (v3)
  {
    *(v3 + 168) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 23) = 0;
    *(v3 + 24) = 1792;
    operator new();
  }

  v4 = 0;

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

void __22__AVHapticServer_init__block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    *buf = &v17;
    v18 = buf;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  v2 = HapticMetrics::onTime(CADeprecated::TSingleton<HapticMetrics>::sInstance);
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    *buf = &v17;
    v18 = buf;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v18, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  v3 = CADeprecated::TSingleton<HapticMetrics>::sInstance;
  std::mutex::lock((CADeprecated::TSingleton<HapticMetrics>::sInstance + 32));
  v4 = 0.0;
  if ((*(v3 + 18) & 1) == 0 && *(v3 + 17) == 1)
  {
    v4 = mach_absolute_time() * 0.0000000416666667 - *(v3 + 8);
  }

  std::mutex::unlock((v3 + 32));
  if (v2 > 0.0)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v5 = *kHSRVScope;
        if (v5)
        {
          v6 = v5;
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AVHapticServer.mm";
            v20 = 1024;
            v21 = 1763;
            v22 = 2080;
            v23 = "[AVHapticServer init]_block_invoke";
            v24 = 2048;
            v25 = v2;
            _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Haptic on time: %.1f seconds>", buf, 0x26u);
          }
        }
      }
    }
  }

  if (v4 > 0.0)
  {
    if (kHSRVScope)
    {
      if (*(kHSRVScope + 8))
      {
        v7 = *kHSRVScope;
        if (v7)
        {
          v8 = v7;
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315906;
            *&buf[4] = "AVHapticServer.mm";
            v20 = 1024;
            v21 = 1764;
            v22 = 2080;
            v23 = "[AVHapticServer init]_block_invoke";
            v24 = 2048;
            v25 = v4;
            _os_log_impl(&dword_1B9A08000, v8, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: <Haptic prewarm time: %.1f seconds>", buf, 0x26u);
          }
        }
      }
    }
  }

  if (v2 > *&PowerTimer::_sOnTimeThreshold)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = WeakRetained;
    if (WeakRetained)
    {
      [WeakRetained displayRunningProcessEntriesWithOnTime:v2];
    }
  }

  if (v4 > 600.0)
  {
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = v11;
    if (v11 && [v11 shouldUnprewarmAllClientsAfterDisplayingPrewarmedProcessEntriesWithPrewarmTime:v4])
    {
      objc_initWeak(buf, v12);
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __22__AVHapticServer_init__block_invoke_377;
      v15[3] = &unk_1E7ECEC78;
      objc_copyWeak(&v16, buf);
      if (AudioControlQueue(void)::once != -1)
      {
        dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
      }

      v13 = AudioControlQueue(void)::gAudioControlQueue;
      AT::DispatchBlock(v13, v15, 1, "[AVHapticServer init]_block_invoke", "AVHapticServer.mm", 1780);

      objc_destroyWeak(&v16);
      objc_destroyWeak(buf);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __22__AVHapticServer_init__block_invoke_2(uint64_t a1, FILE *__stream)
{
  fwrite("Server:\n", 8uLL, 1uLL, __stream);
  v4 = *(a1 + 32);
  fprintf(__stream, "\tinit count: %d, prewarm count: audio %d haptics %d running count: audio %d haptics %d\n", *(v4 + 152), *(v4 + 160), *(v4 + 168), *(v4 + 176), *(v4 + 184));
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    v26 = &v24;
    *keyExistsAndHasValidFormat = &v26;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, keyExistsAndHasValidFormat, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  v5 = HapticMetrics::onTime(CADeprecated::TSingleton<HapticMetrics>::sInstance);
  fprintf(__stream, "\tHaptics on-time: %.1f seconds\n", v5);
  [*(a1 + 32) dumpProcessEntries:__stream];
  v6 = *(*(a1 + 32) + 120);
  fwrite("\nServerManager:\n", 0x10uLL, 1uLL, __stream);
  v7 = *(v6 + 320);
  v8 = *(v6 + 322);
  v9 = *(v6 + 323);
  v10 = atomic_load((v6 + 326));
  v11 = v10 & 1;
  v12 = (*(**(v6 + 304) + 64))(*(v6 + 304));
  v13 = (*(**(v6 + 304) + 72))(*(v6 + 304));
  fprintf(__stream, "\tGlobal: mVibrationDisabled: %d mPhoneCallActive: %d mMicIsActive: %d mContinuityScreenOn: %d highest priority client count: %d, high priority client count: %d\n", v7, v8, v9, v11, v12, v13);
  keyExistsAndHasValidFormat[0] = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"effects-haptic", @"com.apple.preferences.sounds", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    fprintf(__stream, "\tSystem Haptics Enabled: %d\n", AppBooleanValue);
  }

  v15 = *(v6 + 224);
  std::__shared_mutex_base::lock_shared((v6 + 24));
  fprintf(__stream, "\tCommand list length: %d\n\t%d clients:\n", v15, *(v6 + 16));
  std::__shared_mutex_base::unlock_shared((v6 + 24));
  v16 = *(v6 + 200);
  v26 = (v6 + 24);
  v27 = 1;
  std::__shared_mutex_base::lock_shared((v6 + 24));
  v28 = v6;
  v29 = v16;
  v17 = *v6;
  if (*v6 != v6 + 8)
  {
    do
    {
      v18 = v17[5];
      v19 = v17[6];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ClientEntry::dump(v18, __stream);
      if (v19)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      v20 = v17[1];
      if (v20)
      {
        do
        {
          v21 = v20;
          v20 = *v20;
        }

        while (v20);
      }

      else
      {
        do
        {
          v21 = v17[2];
          v22 = *v21 == v17;
          v17 = v21;
        }

        while (!v22);
      }

      v17 = v21;
    }

    while (v21 != (v6 + 8));
  }

  std::__shared_mutex_base::unlock_shared((v6 + 24));
  os_unfair_recursive_lock_lock_with_options();
  (*(**(v6 + 232) + 152))(*(v6 + 232), __stream);
  return os_unfair_recursive_lock_unlock();
}

void __22__AVHapticServer_init__block_invoke_377(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (kHSRVScope)
  {
    v2 = *kHSRVScope;
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
    v5 = 136315650;
    v6 = "AVHapticServer.mm";
    v7 = 1024;
    v8 = 1778;
    v9 = 2080;
    v10 = "[AVHapticServer init]_block_invoke";
    _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Synth has been prewarmed beyond threshold time. Unprewarming all clients", &v5, 0x1Cu);
  }

LABEL_8:
  [WeakRetained unprewarmAllClientEntries];

  v4 = *MEMORY[0x1E69E9840];
}

- (int)cancelPatternWithOptions:(__CFDictionary *)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v23 = "AVHapticServer.mm";
    v24 = 1024;
    v25 = 1665;
    v26 = 2080;
    v27 = "[AVHapticServer(VibeSynthEngine) cancelPatternWithOptions:]";
    _os_log_impl(&dword_1B9A08000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Cancelling vibe pattern on SSS client", buf, 0x1Cu);
  }

LABEL_8:
  ServerManager::entryForID(&v20, self->_manager, self->_SSSClientID);
  v7 = v20;
  if (!v20)
  {
    v11 = -4810;
    goto LABEL_24;
  }

  manager = self->_manager;
  v9 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!kHSRVScope)
  {
    v10 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
    goto LABEL_16;
  }

  v10 = *kHSRVScope;
  if (v10)
  {
LABEL_16:
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v23 = "ServerManager.mm";
      v24 = 1024;
      v25 = 1461;
      v26 = 2080;
      v27 = "cancelAlertPattern";
      _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Cancelling System Sound pattern playback", buf, 0x1Cu);
    }
  }

  v13 = [(__CFDictionary *)a3 objectForKey:@"CancelAtLoopEnd"];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 BOOLValue];
  }

  else
  {
    v15 = 0;
  }

  v11 = (*(*v7 + 80))(v7, manager[42], v15);

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

LABEL_24:
  if (kHSRVScope)
  {
    v16 = *kHSRVScope;
    if (!v16)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v23 = "AVHapticServer.mm";
    v24 = 1024;
    v25 = 1674;
    v26 = 2080;
    v27 = "[AVHapticServer(VibeSynthEngine) cancelPatternWithOptions:]";
    _os_log_impl(&dword_1B9A08000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: Done cancelling vibe pattern", buf, 0x1Cu);
  }

LABEL_31:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

- (int)playVibePattern:(void *)a3 gain:(float)a4 synchronizer:(SSPlayerSynchronizer *)a5 flags:(unsigned int)a6 atTime:(double)a7 completionHandler:(id)a8
{
  v62 = *MEMORY[0x1E69E9840];
  v43 = a8;
  ServerManager::entryForID(&v56, self->_manager, self->_SSSClientID);
  v11 = v56;
  if (!v56)
  {
    started = -4810;
    goto LABEL_96;
  }

  if (kHSRVScope)
  {
    v12 = *kHSRVScope;
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    SSSClientID = self->_SSSClientID;
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1614;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]";
    *&buf[28] = 1024;
    *&buf[30] = SSSClientID;
    _os_log_impl(&dword_1B9A08000, v12, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Request to play SSS pattern on client 0x%x", buf, 0x22u);
  }

LABEL_10:
  manager = self->_manager;
  v17 = v57;
  v55[0] = v11;
  v55[1] = v57;
  if (v57)
  {
    atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  started = ServerManager::startEntry(manager, v55, (a6 >> 1) & 1, (a6 >> 2) & 1);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (!started || started == 1634497134)
  {
    v53 = v11;
    v54 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(AVHapticServer *)self incrementRunningCountForAudio:0 haptics:1 entry:&v53];
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    if (kHSRVScope)
    {
      v19 = *kHSRVScope;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1623;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]";
      _os_log_impl(&dword_1B9A08000, v19, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting SSS pattern playback", buf, 0x1Cu);
    }

LABEL_34:
    objc_initWeak(&location, self);
    v41 = self->_manager;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3321888768;
    v48[2] = __100__AVHapticServer_VibeSynthEngine__playVibePattern_gain_synchronizer_flags_atTime_completionHandler___block_invoke;
    v48[3] = &unk_1F37BD860;
    objc_copyWeak(v50, &location);
    v50[1] = v11;
    v51 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = v43;
    aBlock = v48;
    if (kHSEQScope)
    {
      v22 = *kHSEQScope;
      if (!v22)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v22 = MEMORY[0x1E69E9C10];
      v23 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1401;
      *&buf[18] = 2080;
      *&buf[20] = "playAlertPattern";
      _os_log_impl(&dword_1B9A08000, v22, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Request for System Sound pattern playback", buf, 0x1Cu);
    }

LABEL_45:
    v24 = CFGetTypeID(a3);
    if (v24 != CFDictionaryGetTypeID())
    {
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      *buf = -1;
      ClientEntry::loadAndAddSequence(v11, a3, buf, v60, v58);
    }

    v25 = a3;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *buf = -1;
    started = (*(*v11 + 56))(v11, v25, buf);
    v26 = *buf;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (!started)
    {
      std::shared_ptr<PowerUsageWatchdog::Impl>::shared_ptr[abi:ne200100]<PowerUsageWatchdog::Impl,0>(buf, *(v11 + 8), *(v11 + 16));
      v27 = *buf;
      v28 = *&buf[8];
      if (*&buf[8])
      {
        atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      }

      *v58 = v11;
      v59 = v17;
      if (v17)
      {
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = _Block_copy(aBlock);
      *&buf[8] = v26;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      *&v60[4] = v28;
      *buf = 0;
      *&v60[0] = caulk::inplace_function<void ()(unsigned long),32ul,8ul,caulk::inplace_function_detail::vtable>::k_wrapper_vtable<ServerManager::playAlertPattern(std::shared_ptr<ClientEntry>,void const*,float,SSPlayerSynchronizer *,unsigned int,void({block_pointer})(void))::$_0>;
      *&v60[1] = v29;
      v60[2] = v26;
      v60[3] = v27;
      *&buf[16] = 0;
      *&buf[24] = 0;
      ServerManager::prepareSequence(v41, v58, SLODWORD(v26), v60);
    }

    if (kHSEQScope)
    {
      v33 = *kHSEQScope;
      if (!v33)
      {
        goto LABEL_80;
      }
    }

    else
    {
      v33 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "ServerManager.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1447;
      *&buf[18] = 2080;
      *&buf[20] = "playAlertPattern";
      *&buf[28] = 1024;
      *&buf[30] = started;
      _os_log_impl(&dword_1B9A08000, v33, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR %u: System Sound pattern load failed - clearing mLegacyPatternSeqID", buf, 0x22u);
    }

LABEL_80:
    v41[42] = -1;

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (kHSRVScope)
    {
      v35 = *kHSRVScope;
      if (!v35)
      {
LABEL_89:
        v46 = v11;
        v47 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        [(AVHapticServer *)self doStopRunning:&v46 audio:0 haptics:1];
        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (v51)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        objc_destroyWeak(v50);
        objc_destroyWeak(&location);
        goto LABEL_96;
      }
    }

    else
    {
      v35 = MEMORY[0x1E69E9C10];
      v36 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1639;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]";
      _os_log_impl(&dword_1B9A08000, v35, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: Failed to play SSS pattern.  calling doStopRunning (we are on the ACQ).", buf, 0x1Cu);
    }

    goto LABEL_89;
  }

  if (started != 1651864441)
  {
    if (kHSRVScope)
    {
      v20 = *kHSRVScope;
      if (!v20)
      {
LABEL_70:
        objc_initWeak(buf, self);
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __100__AVHapticServer_VibeSynthEngine__playVibePattern_gain_synchronizer_flags_atTime_completionHandler___block_invoke_324;
        v44[3] = &unk_1E7ECEC78;
        objc_copyWeak(&v45, buf);
        if (AudioControlQueue(void)::once != -1)
        {
          dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
        }

        v32 = AudioControlQueue(void)::gAudioControlQueue;
        AT::DispatchBlock(v32, v44, 1, "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]", "AVHapticServer.mm", 1652);

        objc_destroyWeak(&v45);
        objc_destroyWeak(buf);
        goto LABEL_96;
      }
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      *&buf[12] = 1024;
      *&buf[14] = 1648;
      *&buf[18] = 2080;
      *&buf[20] = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]";
      *&buf[28] = 1024;
      *&buf[30] = started;
      _os_log_impl(&dword_1B9A08000, v20, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Call to start SSS haptic returned status %d", buf, 0x22u);
    }

    goto LABEL_70;
  }

  started = 1651864441;
  if (kHSRVScope)
  {
    v18 = *kHSRVScope;
    if (!v18)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v18 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1645;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]";
    _os_log_impl(&dword_1B9A08000, v18, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: WARNING: Call to start SSS haptic returned BUSY", buf, 0x1Cu);
  }

LABEL_96:
  if (kHSRVScope)
  {
    v37 = *kHSRVScope;
    if (!v37)
    {
      goto LABEL_103;
    }
  }

  else
  {
    v37 = MEMORY[0x1E69E9C10];
    v38 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1659;
    *&buf[18] = 2080;
    *&buf[20] = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]";
    *&buf[28] = 1024;
    *&buf[30] = started;
    _os_log_impl(&dword_1B9A08000, v37, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Finished request to play SSS pattern: result %d", buf, 0x22u);
  }

LABEL_103:
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  v39 = *MEMORY[0x1E69E9840];
  return started;
}

void __100__AVHapticServer_VibeSynthEngine__playVibePattern_gain_synchronizer_flags_atTime_completionHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v2 = *kHSRVScope;
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
    *buf = 136315650;
    v12 = "AVHapticServer.mm";
    v13 = 1024;
    v14 = 1626;
    v15 = 2080;
    v16 = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]_block_invoke";
    _os_log_impl(&dword_1B9A08000, v2, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: SSS pattern completion callback: Calling doStopRunning and client completion handler ASYNCH on ACQ", buf, 0x1Cu);
  }

LABEL_8:
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3321888768;
  v7[2] = __100__AVHapticServer_VibeSynthEngine__playVibePattern_gain_synchronizer_flags_atTime_completionHandler___block_invoke_321;
  v7[3] = &unk_1F37BD860;
  objc_copyWeak(v9, (a1 + 40));
  v4 = *(a1 + 56);
  v9[1] = *(a1 + 48);
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 32);
  if (AudioControlQueue(void)::once != -1)
  {
    dispatch_once(&AudioControlQueue(void)::once, &__block_literal_global_8);
  }

  v5 = AudioControlQueue(void)::gAudioControlQueue;
  AT::DispatchBlock(v5, v7, 1, "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]_block_invoke", "AVHapticServer.mm", 1635);

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  objc_destroyWeak(v9);
  v6 = *MEMORY[0x1E69E9840];
}

void __100__AVHapticServer_VibeSynthEngine__playVibePattern_gain_synchronizer_flags_atTime_completionHandler___block_invoke_324(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained checkRunningCountAndStopSynth];
}

void __100__AVHapticServer_VibeSynthEngine__playVibePattern_gain_synchronizer_flags_atTime_completionHandler___block_invoke_321(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v4 = *(a1 + 56);
  v12 = *(a1 + 48);
  v13 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  [WeakRetained doStopRunning:&v12 audio:0 haptics:1];
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (kHSRVScope)
  {
    v5 = *kHSRVScope;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  v7 = v5;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = _Block_copy(*(a1 + 32));
    *buf = 136315906;
    v15 = "AVHapticServer.mm";
    v16 = 1024;
    v17 = 1632;
    v18 = 2080;
    v19 = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]_block_invoke";
    v20 = 2048;
    v21 = v8;
    _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_INFO, "%25s:%-5d %s: SSS pattern completion callback: Calling external client's completion handler block %p", buf, 0x26u);
  }

LABEL_12:
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  if (kHSRVScope)
  {
    if (*(kHSRVScope + 8))
    {
      v9 = *kHSRVScope;
      if (v9)
      {
        v10 = v9;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315650;
          v15 = "AVHapticServer.mm";
          v16 = 1024;
          v17 = 1634;
          v18 = 2080;
          v19 = "[AVHapticServer(VibeSynthEngine) playVibePattern:gain:synchronizer:flags:atTime:completionHandler:]_block_invoke";
          _os_log_impl(&dword_1B9A08000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: SSS pattern completion callback: Returned from external clients completion handler", buf, 0x1Cu);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)checkRunningCountAndStopSynth
{
  v21 = *MEMORY[0x1E69E9840];
  audioRunningCount = self->_audioRunningCount;
  hapticsRunningCount = self->_hapticsRunningCount;
  if (audioRunningCount)
  {
    v4 = hapticsRunningCount == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    goto LABEL_28;
  }

  if (audioRunningCount | hapticsRunningCount)
  {
    if (kHSRVScope)
    {
      v7 = *kHSRVScope;
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = "haptics running count";
      *buf = 136315906;
      *&buf[4] = "AVHapticServer.mm";
      v15 = 1024;
      v16 = 1595;
      v18 = "[AVHapticServer(VibeSynthEngine) checkRunningCountAndStopSynth]";
      v17 = 2080;
      if (!audioRunningCount)
      {
        v10 = "audio running count";
      }

      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: %s at zero, stopping synth", buf, 0x26u);
    }

LABEL_24:
    ServerManager::stopSynthRunning(self->_manager, audioRunningCount == 0, hapticsRunningCount == 0, 9999999);
    if (hapticsRunningCount)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  if (!kHSRVScope)
  {
    v6 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
    goto LABEL_14;
  }

  v6 = *kHSRVScope;
  if (v6)
  {
LABEL_14:
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      *&buf[4] = "AVHapticServer.mm";
      v15 = 1024;
      v16 = 1591;
      v17 = 2080;
      v18 = "[AVHapticServer(VibeSynthEngine) checkRunningCountAndStopSynth]";
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s: audio and haptics running counts at zero and stopping synth", buf, 0x1Cu);
    }
  }

  ServerManager::stopSynthRunning(self->_manager, 1, 1, 9999999);
LABEL_25:
  if (atomic_load_explicit(&CADeprecated::TSingleton<HapticMetrics>::sOnce, memory_order_acquire) != -1)
  {
    *buf = &v12;
    v13 = buf;
    std::__call_once(&CADeprecated::TSingleton<HapticMetrics>::sOnce, &v13, std::__call_once_proxy[abi:ne200100]<std::tuple<CADeprecated::TSingleton<HapticMetrics>::instance(void)::{lambda(void)#1} &&>>);
  }

  HapticMetrics::markEngineOff(CADeprecated::TSingleton<HapticMetrics>::sInstance, 0);
LABEL_28:
  v11 = *MEMORY[0x1E69E9840];
}

- (int)stopPrewarm
{
  v25 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "AVHapticServer.mm";
    v21 = 1024;
    v22 = 1566;
    v23 = 2080;
    v24 = "[AVHapticServer(VibeSynthEngine) stopPrewarm]";
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Stopping prewarm on SSS client", buf, 0x1Cu);
  }

LABEL_8:
  ServerManager::entryForID(&v17, self->_manager, self->_SSSClientID);
  v5 = v17;
  if (!v17)
  {
    LODWORD(v7) = -4810;
    goto LABEL_33;
  }

  if (*(v17 + 116) == 1)
  {
    if (kHSRVScope)
    {
      v6 = *kHSRVScope;
      if (!v6)
      {
LABEL_21:
        manager = self->_manager;
        v10 = v18;
        v16[0] = v5;
        v16[1] = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ServerManager::stopPrewarmEntry(manager, v16);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
          v14 = v5;
          v15 = v10;
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          v14 = v5;
          v15 = 0;
        }

        [(AVHapticServer *)self decrementPrewarmCountAndStopAudio:0 stopHaptics:1 entry:&v14];
        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

LABEL_32:
        LODWORD(v7) = 0;
        goto LABEL_33;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 1571;
      v23 = 2080;
      v24 = "[AVHapticServer(VibeSynthEngine) stopPrewarm]";
      _os_log_impl(&dword_1B9A08000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: SSS client was prewarmed", buf, 0x1Cu);
    }

    goto LABEL_21;
  }

  if (!kHSRVScope)
  {
    v7 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
    goto LABEL_26;
  }

  v7 = *kHSRVScope;
  if (v7)
  {
LABEL_26:
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v20 = "AVHapticServer.mm";
      v21 = 1024;
      v22 = 1576;
      v23 = 2080;
      v24 = "[AVHapticServer(VibeSynthEngine) stopPrewarm]";
      _os_log_impl(&dword_1B9A08000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d %s: SSS client was not prewarmed -- noop", buf, 0x1Cu);
    }

    goto LABEL_32;
  }

LABEL_33:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (int)startPrewarm
{
  v14 = *MEMORY[0x1E69E9840];
  if (kHSRVScope)
  {
    v3 = *kHSRVScope;
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

  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "AVHapticServer.mm";
    *&buf[12] = 1024;
    *&buf[14] = 1552;
    v12 = 2080;
    v13 = "[AVHapticServer(VibeSynthEngine) startPrewarm]";
    _os_log_impl(&dword_1B9A08000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d %s: Starting prewarm on SSS client", buf, 0x1Cu);
  }

LABEL_8:
  ServerManager::entryForID(buf, self->_manager, self->_SSSClientID);
  if (!*buf)
  {
    v6 = -4810;
    v5 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v5 = *&buf[8];
  v9 = *buf;
  v10 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
  }

  v6 = [(AVHapticServer *)self doPrewarm:&v9];
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (v5)
  {
LABEL_14:
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

LABEL_15:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

@end