@interface NWCandidatePathMonitor
- (NSArray)candidatePaths;
- (NSArray)interfaces;
- (NWCandidatePathMonitor)initWithParameters:(id)a3;
- (NWParameters)parameters;
- (id)cParameters;
- (id)interfacesLocked;
- (void)cancelCandidatePathEvaluators;
- (void)cancelWithHandler:(id)a3;
- (void)dealloc;
- (void)resetCandidatePathEvaluators;
- (void)startWithQueue:(id)a3 updateHandler:(id)a4;
- (void)updateRemoteEndpoints:(id)a3;
@end

@implementation NWCandidatePathMonitor

- (void)updateRemoteEndpoints:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__NWCandidatePathMonitor_updateRemoteEndpoints___block_invoke;
    v14[3] = &unk_1E6A3D760;
    v14[4] = self;
    v15 = v4;
    v6 = self;
    os_unfair_lock_lock(&self->lock);
    __48__NWCandidatePathMonitor_updateRemoteEndpoints___block_invoke(v14);
    os_unfair_lock_unlock(&self->lock);

    goto LABEL_3;
  }

  v7 = __nwlog_obj();
  *buf = 136446210;
  v19 = "[NWCandidatePathMonitor updateRemoteEndpoints:]";
  v8 = _os_log_send_and_compose_impl();

  v17 = OS_LOG_TYPE_ERROR;
  v16 = 0;
  if (__nwlog_fault(v8, &v17, &v16))
  {
    if (v17 == OS_LOG_TYPE_FAULT)
    {
      v9 = __nwlog_obj();
      v10 = v17;
      if (os_log_type_enabled(v9, v17))
      {
        *buf = 136446210;
        v19 = "[NWCandidatePathMonitor updateRemoteEndpoints:]";
        v11 = "%{public}s called with null remoteEndpoints";
LABEL_17:
        _os_log_impl(&dword_181A37000, v9, v10, v11, buf, 0xCu);
      }
    }

    else
    {
      if (v16 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v9 = __nwlog_obj();
        v10 = v17;
        v13 = os_log_type_enabled(v9, v17);
        if (backtrace_string)
        {
          if (v13)
          {
            *buf = 136446466;
            v19 = "[NWCandidatePathMonitor updateRemoteEndpoints:]";
            v20 = 2082;
            v21 = backtrace_string;
            _os_log_impl(&dword_181A37000, v9, v10, "%{public}s called with null remoteEndpoints, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_19;
        }

        if (!v13)
        {
          goto LABEL_18;
        }

        *buf = 136446210;
        v19 = "[NWCandidatePathMonitor updateRemoteEndpoints:]";
        v11 = "%{public}s called with null remoteEndpoints, no backtrace";
        goto LABEL_17;
      }

      v9 = __nwlog_obj();
      v10 = v17;
      if (os_log_type_enabled(v9, v17))
      {
        *buf = 136446210;
        v19 = "[NWCandidatePathMonitor updateRemoteEndpoints:]";
        v11 = "%{public}s called with null remoteEndpoints, backtrace limit exceeded";
        goto LABEL_17;
      }
    }

LABEL_18:
  }

LABEL_19:
  if (v8)
  {
    free(v8);
  }

LABEL_3:
}

uint64_t __48__NWCandidatePathMonitor_updateRemoteEndpoints___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRemoteEndpoints:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 resetCandidatePathEvaluators];
}

- (NSArray)candidatePaths
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __40__NWCandidatePathMonitor_candidatePaths__block_invoke;
  v9[3] = &unk_1E6A3D760;
  v9[4] = self;
  v4 = v3;
  v10 = v4;
  v5 = self;
  os_unfair_lock_lock(&self->lock);
  __40__NWCandidatePathMonitor_candidatePaths__block_invoke(v9);
  os_unfair_lock_unlock(&self->lock);

  v6 = v10;
  v7 = v4;

  return v4;
}

void __40__NWCandidatePathMonitor_candidatePaths__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) interfacesLocked];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v18 = *v26;
    do
    {
      v2 = 0;
      do
      {
        if (*v26 != v18)
        {
          v3 = v2;
          objc_enumerationMutation(obj);
          v2 = v3;
        }

        v20 = v2;
        v4 = *(*(&v25 + 1) + 8 * v2);
        v5 = [*(a1 + 32) candidatePathEvaluators];
        v6 = [v5 objectForKeyedSubscript:v4];

        if (v6)
        {
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v7 = [v6 allKeys];
          v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v8)
          {
            v9 = *v22;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v22 != v9)
                {
                  objc_enumerationMutation(v7);
                }

                v11 = [v6 objectForKeyedSubscript:*(*(&v21 + 1) + 8 * i)];
                v12 = v11;
                if (v11)
                {
                  v13 = v11;
                  os_unfair_lock_lock(v12 + 24);
                  v14 = v13[6];
                  os_unfair_lock_unlock(v12 + 24);
                }

                else
                {
                  v14 = 0;
                }

                if (nw_path_get_status(v14) != nw_path_status_unsatisfied)
                {
                  v15 = *(a1 + 40);
                  v16 = [[NWPath alloc] initWithPath:v14];
                  [v15 addObject:v16];
                }
              }

              v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v8);
          }
        }

        v2 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }
}

- (NSArray)interfaces
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__27083;
  v15 = __Block_byref_object_dispose__27084;
  v16 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __36__NWCandidatePathMonitor_interfaces__block_invoke;
  v8 = &unk_1E6A3D738;
  v9 = self;
  v10 = &v11;
  v2 = self;
  v3 = v6;
  os_unfair_lock_lock(&v2->lock);
  v7(v3);
  os_unfair_lock_unlock(&v2->lock);

  v4 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v4;
}

void __36__NWCandidatePathMonitor_interfaces__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) interfacesLocked];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)interfacesLocked
{
  os_unfair_lock_assert_owner(&self->lock);
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(NWCandidatePathMonitor *)self primaryEvaluator];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    os_unfair_lock_lock(v5 + 24);
    v7 = v6[6];
    os_unfair_lock_unlock(v5 + 24);
  }

  else
  {
    v7 = 0;
  }

  enumerate_block[0] = MEMORY[0x1E69E9820];
  enumerate_block[1] = 3221225472;
  enumerate_block[2] = __42__NWCandidatePathMonitor_interfacesLocked__block_invoke;
  enumerate_block[3] = &unk_1E6A2F2F8;
  v8 = v3;
  v11 = v8;
  nw_path_enumerate_interfaces(v7, enumerate_block);

  return v8;
}

uint64_t __42__NWCandidatePathMonitor_interfacesLocked__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[NWInterface alloc] initWithInterface:v3];

  [v2 addObject:v4];
  return 1;
}

- (void)cancelWithHandler:(id)a3
{
  block = a3;
  [(NWCandidatePathMonitor *)self cancelCandidatePathEvaluators];
  v4 = [(NWCandidatePathMonitor *)self primaryEvaluator];

  if (v4)
  {
    if (block)
    {
      v5 = [(NWCandidatePathMonitor *)self primaryEvaluator];
      nw_path_evaluator_set_cancel_handler(v5, block);
    }

    v6 = [(NWCandidatePathMonitor *)self primaryEvaluator];
    nw_path_evaluator_cancel(v6);

    [(NWCandidatePathMonitor *)self setPrimaryEvaluator:0];
    goto LABEL_8;
  }

  v7 = [(NWCandidatePathMonitor *)self queue];

  v8 = block;
  if (block && v7)
  {
    v9 = [(NWCandidatePathMonitor *)self queue];
    dispatch_async(v9, block);

LABEL_8:
    v8 = block;
  }
}

- (void)startWithQueue:(id)a3 updateHandler:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6)
  {
    v11 = __nwlog_obj();
    *location = 136446210;
    *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
    v12 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v27 = 0;
    if (!__nwlog_fault(v12, &type, &v27))
    {
      goto LABEL_38;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
        _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null queue", location, 0xCu);
      }
    }

    else if (v27 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v18 = type;
      v19 = os_log_type_enabled(v13, type);
      if (backtrace_string)
      {
        if (v19)
        {
          *location = 136446466;
          *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null queue, dumping backtrace:%{public}s", location, 0x16u);
        }

        free(backtrace_string);
LABEL_38:
        if (!v12)
        {
          goto LABEL_4;
        }

LABEL_39:
        free(v12);
        goto LABEL_4;
      }

      if (v19)
      {
        *location = 136446210;
        *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
        _os_log_impl(&dword_181A37000, v13, v18, "%{public}s called with null queue, no backtrace", location, 0xCu);
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v23 = type;
      if (os_log_type_enabled(v13, type))
      {
        *location = 136446210;
        *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
        _os_log_impl(&dword_181A37000, v13, v23, "%{public}s called with null queue, backtrace limit exceeded", location, 0xCu);
      }
    }

LABEL_37:

    goto LABEL_38;
  }

  if (v7)
  {
    [(NWCandidatePathMonitor *)self setQueue:v6];
    [(NWCandidatePathMonitor *)self setUpdateHandler:v8];
    objc_initWeak(location, self);
    v9 = [(NWCandidatePathMonitor *)self primaryEvaluator];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __55__NWCandidatePathMonitor_startWithQueue_updateHandler___block_invoke;
    v25[3] = &unk_1E6A3D2D8;
    objc_copyWeak(&v26, location);
    nw_path_evaluator_set_update_handler(v9, v6, v25);

    v10 = [(NWCandidatePathMonitor *)self primaryEvaluator];
    nw_path_evaluator_call_update_handler(v10);

    objc_destroyWeak(&v26);
    objc_destroyWeak(location);
    goto LABEL_4;
  }

  v15 = __nwlog_obj();
  *location = 136446210;
  *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
  v12 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v27 = 0;
  if (!__nwlog_fault(v12, &type, &v27))
  {
    goto LABEL_38;
  }

  if (type == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v16 = type;
    if (os_log_type_enabled(v13, type))
    {
      *location = 136446210;
      *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
      _os_log_impl(&dword_181A37000, v13, v16, "%{public}s called with null updateHandler", location, 0xCu);
    }

    goto LABEL_37;
  }

  if (v27 != 1)
  {
    v13 = __nwlog_obj();
    v24 = type;
    if (os_log_type_enabled(v13, type))
    {
      *location = 136446210;
      *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
      _os_log_impl(&dword_181A37000, v13, v24, "%{public}s called with null updateHandler, backtrace limit exceeded", location, 0xCu);
    }

    goto LABEL_37;
  }

  v20 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v21 = type;
  v22 = os_log_type_enabled(v13, type);
  if (!v20)
  {
    if (v22)
    {
      *location = 136446210;
      *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
      _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null updateHandler, no backtrace", location, 0xCu);
    }

    goto LABEL_37;
  }

  if (v22)
  {
    *location = 136446466;
    *&location[4] = "[NWCandidatePathMonitor startWithQueue:updateHandler:]";
    v30 = 2082;
    v31 = v20;
    _os_log_impl(&dword_181A37000, v13, v21, "%{public}s called with null updateHandler, dumping backtrace:%{public}s", location, 0x16u);
  }

  free(v20);
  if (v12)
  {
    goto LABEL_39;
  }

LABEL_4:
}

void __55__NWCandidatePathMonitor_startWithQueue_updateHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__NWCandidatePathMonitor_startWithQueue_updateHandler___block_invoke_2;
    v6[3] = &unk_1E6A3D868;
    v3 = WeakRetained;
    v7 = v3;
    os_unfair_lock_lock(v3 + 2);
    __55__NWCandidatePathMonitor_startWithQueue_updateHandler___block_invoke_2(v6);
    os_unfair_lock_unlock(v3 + 2);
    v4 = [(os_unfair_lock_s *)v3 updateHandler];

    if (v4)
    {
      v5 = [(os_unfair_lock_s *)v3 updateHandler];
      v5[2](v5, 0);
    }
  }
}

- (void)resetCandidatePathEvaluators
{
  v184 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->lock);
  val = self;
  v3 = [(NWCandidatePathMonitor *)self primaryEvaluator];
  v4 = nw_path_evaluator_copy_path(v3);

  v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  enumerate_block[0] = MEMORY[0x1E69E9820];
  enumerate_block[1] = 3221225472;
  enumerate_block[2] = __54__NWCandidatePathMonitor_resetCandidatePathEvaluators__block_invoke;
  enumerate_block[3] = &unk_1E6A2F2F8;
  v97 = v5;
  v167 = v97;
  v94 = v4;
  nw_path_enumerate_interfaces(v4, enumerate_block);
  v6 = MEMORY[0x1E695DFD8];
  v7 = [(NWCandidatePathMonitor *)val candidatePathEvaluators];
  v8 = [v7 allKeys];
  v96 = [v6 setWithArray:v8];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
  }

  else
  {
    v10 = gLogFDOverride == -1;

    if (v10)
    {
      goto LABEL_23;
    }
  }

  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v11 = v97;
  v12 = [v11 countByEnumeratingWithState:&v162 objects:v183 count:16];
  if (v12)
  {
    v13 = *v163;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v163 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v162 + 1) + 8 * i);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v16 = gLogObj;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v17 = [v15 internalInterface];
          *buf = 136446466;
          v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
          v176 = 2112;
          v177 = v17;
          _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s Current interface: %@", buf, 0x16u);
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v162 objects:v183 count:16];
    }

    while (v12);
  }

  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v18 = v96;
  v19 = [v18 countByEnumeratingWithState:&v158 objects:v182 count:16];
  if (v19)
  {
    v20 = *v159;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v159 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v158 + 1) + 8 * j);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v23 = gLogObj;
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v22 internalInterface];
          *buf = 136446466;
          v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
          v176 = 2112;
          v177 = v24;
          _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s Existing interface: %@", buf, 0x16u);
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v158 objects:v182 count:16];
    }

    while (v19);
  }

LABEL_23:
  v25 = [v97 mutableCopy];
  [v25 minusSet:v96];
  v102 = [v96 mutableCopy];
  [v102 minusSet:v97];
  v100 = [v96 mutableCopy];
  [v100 intersectSet:v97];
  objc_initWeak(&location, val);
  v119 = [(NWCandidatePathMonitor *)val cParameters];
  v155 = 0u;
  v156 = 0u;
  v153 = 0u;
  v154 = 0u;
  obj = v25;
  v108 = [obj countByEnumeratingWithState:&v153 objects:v181 count:16];
  if (v108)
  {
    v106 = *v154;
    do
    {
      for (k = 0; k != v108; ++k)
      {
        if (*v154 != v106)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v153 + 1) + 8 * k);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v27 = gLogObj;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v26 internalInterface];
          *buf = 136446466;
          v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
          v176 = 2112;
          v177 = v28;
          _os_log_impl(&dword_181A37000, v27, OS_LOG_TYPE_DEBUG, "%{public}s Adding interface %@", buf, 0x16u);
        }

        v117 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v29 = [(NWCandidatePathMonitor *)val remoteEndpoints];
        v30 = [v29 countByEnumeratingWithState:&v149 objects:v180 count:16];
        if (v30)
        {
          v31 = *v150;
          v113 = v29;
          do
          {
            for (m = 0; m != v30; ++m)
            {
              if (*v150 != v31)
              {
                objc_enumerationMutation(v113);
              }

              v33 = *(*(&v149 + 1) + 8 * m);
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v34 = gLogObj;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v35 = [v26 internalInterface];
                *buf = 136446722;
                v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
                v176 = 2112;
                v177 = v33;
                v178 = 2112;
                v179 = v35;
                _os_log_impl(&dword_181A37000, v34, OS_LOG_TYPE_DEBUG, "%{public}s Adding %@ over interface %@", buf, 0x20u);
              }

              v36 = [v33 internalEndpoint];
              v37 = _nw_parameters_copy(v119);
              v38 = [v26 internalInterface];
              nw_parameters_require_interface(v37, v38);

              evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(v36, v37);
              v40 = [(NWCandidatePathMonitor *)val queue];
              v147[0] = MEMORY[0x1E69E9820];
              v147[1] = 3221225472;
              v147[2] = __54__NWCandidatePathMonitor_resetCandidatePathEvaluators__block_invoke_8;
              v147[3] = &unk_1E6A3D2D8;
              objc_copyWeak(&v148, &location);
              nw_path_evaluator_set_update_handler(evaluator_for_endpoint, v40, v147);

              [v117 setObject:evaluator_for_endpoint forKeyedSubscript:v33];
              objc_destroyWeak(&v148);
            }

            v29 = v113;
            v30 = [v113 countByEnumeratingWithState:&v149 objects:v180 count:16];
          }

          while (v30);
        }

        v41 = [(NWCandidatePathMonitor *)val candidatePathEvaluators];
        [v41 setObject:v117 forKeyedSubscript:v26];
      }

      v108 = [obj countByEnumeratingWithState:&v153 objects:v181 count:16];
    }

    while (v108);
  }

  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  v107 = v102;
  v114 = [v107 countByEnumeratingWithState:&v143 objects:v173 count:16];
  if (v114)
  {
    v112 = *v144;
    do
    {
      for (n = 0; n != v114; ++n)
      {
        if (*v144 != v112)
        {
          objc_enumerationMutation(v107);
        }

        v42 = *(*(&v143 + 1) + 8 * n);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v43 = gLogObj;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          v44 = [v42 internalInterface];
          *buf = 136446466;
          v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
          v176 = 2112;
          v177 = v44;
          _os_log_impl(&dword_181A37000, v43, OS_LOG_TYPE_DEBUG, "%{public}s Removing interface %@", buf, 0x16u);
        }

        v45 = [(NWCandidatePathMonitor *)val candidatePathEvaluators];
        v46 = [v45 objectForKeyedSubscript:v42];

        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v47 = [v46 allKeys];
        v48 = [v47 countByEnumeratingWithState:&v139 objects:v172 count:16];
        if (v48)
        {
          v49 = *v140;
          do
          {
            for (ii = 0; ii != v48; ++ii)
            {
              if (*v140 != v49)
              {
                objc_enumerationMutation(v47);
              }

              v51 = *(*(&v139 + 1) + 8 * ii);
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v52 = gLogObj;
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v53 = [v42 internalInterface];
                *buf = 136446722;
                v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
                v176 = 2112;
                v177 = v51;
                v178 = 2112;
                v179 = v53;
                _os_log_impl(&dword_181A37000, v52, OS_LOG_TYPE_DEBUG, "%{public}s Removing %@ from interface %@", buf, 0x20u);
              }

              v54 = [v46 objectForKeyedSubscript:v51];
              nw_path_evaluator_cancel(v54);
              [v46 setObject:0 forKeyedSubscript:v51];
            }

            v48 = [v47 countByEnumeratingWithState:&v139 objects:v172 count:16];
          }

          while (v48);
        }

        v55 = [(NWCandidatePathMonitor *)val candidatePathEvaluators];
        [v55 setObject:0 forKeyedSubscript:v42];
      }

      v114 = [v107 countByEnumeratingWithState:&v143 objects:v173 count:16];
    }

    while (v114);
  }

  v56 = MEMORY[0x1E695DFD8];
  v57 = [(NWCandidatePathMonitor *)val remoteEndpoints];
  v103 = [v56 setWithArray:v57];

  v137 = 0u;
  v138 = 0u;
  v135 = 0u;
  v136 = 0u;
  v95 = v100;
  v99 = [v95 countByEnumeratingWithState:&v135 objects:v171 count:16];
  if (v99)
  {
    v98 = *v136;
    do
    {
      for (jj = 0; jj != v99; ++jj)
      {
        if (*v136 != v98)
        {
          objc_enumerationMutation(v95);
        }

        v116 = *(*(&v135 + 1) + 8 * jj);
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v58 = gLogObj;
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
        {
          v59 = [v116 internalInterface];
          *buf = 136446466;
          v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
          v176 = 2112;
          v177 = v59;
          _os_log_impl(&dword_181A37000, v58, OS_LOG_TYPE_DEBUG, "%{public}s Keeping interface %@", buf, 0x16u);
        }

        v60 = [(NWCandidatePathMonitor *)val candidatePathEvaluators];
        v118 = [v60 objectForKeyedSubscript:v116];

        v61 = MEMORY[0x1E695DFD8];
        v62 = [v118 allKeys];
        v109 = [v61 setWithArray:v62];

        v63 = [v103 mutableCopy];
        [v63 minusSet:v109];
        v64 = [v109 mutableCopy];
        [v64 minusSet:v103];
        v101 = v64;
        v133 = 0u;
        v134 = 0u;
        v131 = 0u;
        v132 = 0u;
        v111 = v63;
        v65 = [v111 countByEnumeratingWithState:&v131 objects:v170 count:16];
        if (v65)
        {
          v66 = *v132;
          do
          {
            for (kk = 0; kk != v65; ++kk)
            {
              if (*v132 != v66)
              {
                objc_enumerationMutation(v111);
              }

              v68 = *(*(&v131 + 1) + 8 * kk);
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v69 = gLogObj;
              if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
              {
                v70 = [v116 internalInterface];
                *buf = 136446722;
                v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
                v176 = 2112;
                v177 = v68;
                v178 = 2112;
                v179 = v70;
                _os_log_impl(&dword_181A37000, v69, OS_LOG_TYPE_DEBUG, "%{public}s Adding %@ over interface %@", buf, 0x20u);
              }

              v71 = [v68 internalEndpoint];
              v72 = _nw_parameters_copy(v119);
              v73 = [v116 internalInterface];
              nw_parameters_require_interface(v72, v73);

              v74 = nw_path_create_evaluator_for_endpoint(v71, v72);
              v75 = [(NWCandidatePathMonitor *)val queue];
              v129[0] = MEMORY[0x1E69E9820];
              v129[1] = 3221225472;
              v129[2] = __54__NWCandidatePathMonitor_resetCandidatePathEvaluators__block_invoke_10;
              v129[3] = &unk_1E6A3D2D8;
              objc_copyWeak(&v130, &location);
              nw_path_evaluator_set_update_handler(v74, v75, v129);

              [v118 setObject:v74 forKeyedSubscript:v68];
              objc_destroyWeak(&v130);
            }

            v65 = [v111 countByEnumeratingWithState:&v131 objects:v170 count:16];
          }

          while (v65);
        }

        v127 = 0u;
        v128 = 0u;
        v125 = 0u;
        v126 = 0u;
        v76 = v101;
        v77 = [v76 countByEnumeratingWithState:&v125 objects:v169 count:16];
        if (v77)
        {
          v78 = *v126;
          do
          {
            for (mm = 0; mm != v77; ++mm)
            {
              if (*v126 != v78)
              {
                objc_enumerationMutation(v76);
              }

              v80 = *(*(&v125 + 1) + 8 * mm);
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v81 = gLogObj;
              if (os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG))
              {
                v82 = [v116 internalInterface];
                *buf = 136446722;
                v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
                v176 = 2112;
                v177 = v80;
                v178 = 2112;
                v179 = v82;
                _os_log_impl(&dword_181A37000, v81, OS_LOG_TYPE_DEBUG, "%{public}s Removing %@ from interface %@", buf, 0x20u);
              }

              v83 = [v118 objectForKeyedSubscript:v80];
              nw_path_evaluator_cancel(v83);
              [v118 setObject:0 forKeyedSubscript:v80];
            }

            v77 = [v76 countByEnumeratingWithState:&v125 objects:v169 count:16];
          }

          while (v77);
        }

        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v84 = gLogObj;
        if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
        {
        }

        else
        {
          v85 = gLogFDOverride == -1;

          if (v85)
          {
            goto LABEL_97;
          }
        }

        v86 = [v109 mutableCopy];
        [v86 intersectSet:v103];
        v123 = 0u;
        v124 = 0u;
        v121 = 0u;
        v122 = 0u;
        v87 = v86;
        v88 = [v87 countByEnumeratingWithState:&v121 objects:v168 count:16];
        if (v88)
        {
          v89 = *v122;
          do
          {
            for (nn = 0; nn != v88; ++nn)
            {
              if (*v122 != v89)
              {
                objc_enumerationMutation(v87);
              }

              v91 = *(*(&v121 + 1) + 8 * nn);
              pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
              networkd_settings_init();
              v92 = gLogObj;
              if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
              {
                v93 = [v116 internalInterface];
                *buf = 136446722;
                v175 = "[NWCandidatePathMonitor resetCandidatePathEvaluators]";
                v176 = 2112;
                v177 = v91;
                v178 = 2112;
                v179 = v93;
                _os_log_impl(&dword_181A37000, v92, OS_LOG_TYPE_DEBUG, "%{public}s Keeping %@ on interface %@", buf, 0x20u);
              }
            }

            v88 = [v87 countByEnumeratingWithState:&v121 objects:v168 count:16];
          }

          while (v88);
        }

LABEL_97:
      }

      v99 = [v95 countByEnumeratingWithState:&v135 objects:v171 count:16];
    }

    while (v99);
  }

  objc_destroyWeak(&location);
}

uint64_t __54__NWCandidatePathMonitor_resetCandidatePathEvaluators__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[NWInterface alloc] initWithInterface:v3];

  [v2 addObject:v4];
  return 1;
}

void __54__NWCandidatePathMonitor_resetCandidatePathEvaluators__block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained updateHandler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 updateHandler];
      v3[2](v3, 0);

      WeakRetained = v4;
    }
  }
}

void __54__NWCandidatePathMonitor_resetCandidatePathEvaluators__block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained updateHandler];

    WeakRetained = v4;
    if (v2)
    {
      v3 = [v4 updateHandler];
      v3[2](v3, 0);

      WeakRetained = v4;
    }
  }
}

- (NWParameters)parameters
{
  v3 = [NWParameters alloc];
  v4 = [(NWCandidatePathMonitor *)self cParameters];
  v5 = [(NWParameters *)v3 initWithParameters:v4];

  return v5;
}

- (id)cParameters
{
  v2 = [(NWCandidatePathMonitor *)self primaryEvaluator];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
    os_unfair_lock_lock(v3 + 24);
    v5 = v4[6];
    os_unfair_lock_unlock(v3 + 24);
  }

  else
  {
    v5 = 0;
  }

  v6 = nw_path_copy_parameters(v5);

  return v6;
}

- (void)dealloc
{
  [(NWCandidatePathMonitor *)self cancelCandidatePathEvaluators];
  v3 = [(NWCandidatePathMonitor *)self primaryEvaluator];

  if (v3)
  {
    v4 = [(NWCandidatePathMonitor *)self primaryEvaluator];
    nw_path_evaluator_cancel(v4);

    [(NWCandidatePathMonitor *)self setPrimaryEvaluator:0];
  }

  v5.receiver = self;
  v5.super_class = NWCandidatePathMonitor;
  [(NWCandidatePathMonitor *)&v5 dealloc];
}

- (void)cancelCandidatePathEvaluators
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__NWCandidatePathMonitor_cancelCandidatePathEvaluators__block_invoke;
  v4[3] = &unk_1E6A3D868;
  v4[4] = self;
  v3 = self;
  os_unfair_lock_lock(&self->lock);
  __55__NWCandidatePathMonitor_cancelCandidatePathEvaluators__block_invoke(v4);
  os_unfair_lock_unlock(&self->lock);
}

void __55__NWCandidatePathMonitor_cancelCandidatePathEvaluators__block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [*(a1 + 32) candidatePathEvaluators];
  v3 = [v2 allKeys];

  obj = v3;
  v18 = [v3 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v17 = *v24;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v23 + 1) + 8 * i);
        v7 = [*(a1 + 32) candidatePathEvaluators];
        v8 = [v7 objectForKeyedSubscript:v6];

        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 allKeys];
        v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              v15 = [v8 objectForKeyedSubscript:v14];
              nw_path_evaluator_cancel(v15);
              [v8 setObject:0 forKeyedSubscript:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }

        v5 = [*(a1 + 32) candidatePathEvaluators];
        [v5 setObject:0 forKeyedSubscript:v6];
      }

      v18 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }
}

- (NWCandidatePathMonitor)initWithParameters:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = NWCandidatePathMonitor;
  v5 = [(NWCandidatePathMonitor *)&v21 init];
  if (v5)
  {
    if (v4)
    {
      v6 = [v4 copyCParameters];
    }

    else
    {
      v6 = _nw_parameters_create();
    }

    v7 = v6;
    nw_parameters_set_multipath_service(v6, nw_multipath_service_handover);
    evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint(0, v7);
    [(NWCandidatePathMonitor *)v5 setPrimaryEvaluator:evaluator_for_endpoint];

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NWCandidatePathMonitor *)v5 setCandidatePathEvaluators:v9];

    v5->lock._os_unfair_lock_opaque = 0;
    v10 = v5;

    goto LABEL_6;
  }

  v12 = __nwlog_obj();
  *buf = 136446210;
  v23 = "[NWCandidatePathMonitor initWithParameters:]";
  v13 = _os_log_send_and_compose_impl();

  type = OS_LOG_TYPE_ERROR;
  v19 = 0;
  if (__nwlog_fault(v13, &type, &v19))
  {
    if (type == OS_LOG_TYPE_FAULT)
    {
      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "[NWCandidatePathMonitor initWithParameters:]";
        v16 = "%{public}s [super init] failed";
LABEL_20:
        _os_log_impl(&dword_181A37000, v14, v15, v16, buf, 0xCu);
      }
    }

    else
    {
      if (v19 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        v14 = __nwlog_obj();
        v15 = type;
        v18 = os_log_type_enabled(v14, type);
        if (backtrace_string)
        {
          if (v18)
          {
            *buf = 136446466;
            v23 = "[NWCandidatePathMonitor initWithParameters:]";
            v24 = 2082;
            v25 = backtrace_string;
            _os_log_impl(&dword_181A37000, v14, v15, "%{public}s [super init] failed, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(backtrace_string);
          goto LABEL_22;
        }

        if (!v18)
        {
          goto LABEL_21;
        }

        *buf = 136446210;
        v23 = "[NWCandidatePathMonitor initWithParameters:]";
        v16 = "%{public}s [super init] failed, no backtrace";
        goto LABEL_20;
      }

      v14 = __nwlog_obj();
      v15 = type;
      if (os_log_type_enabled(v14, type))
      {
        *buf = 136446210;
        v23 = "[NWCandidatePathMonitor initWithParameters:]";
        v16 = "%{public}s [super init] failed, backtrace limit exceeded";
        goto LABEL_20;
      }
    }

LABEL_21:
  }

LABEL_22:
  if (v13)
  {
    free(v13);
  }

LABEL_6:

  return v5;
}

@end