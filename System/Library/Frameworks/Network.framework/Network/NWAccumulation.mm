@interface NWAccumulation
- (NSMutableDictionary)durations;
- (NWAccumulation)initWithName:(id)a3;
- (id)description;
- (id)snapshot;
- (void)dealloc;
- (void)reset;
- (void)updateWithState:(id)a3 atTime:(double)a4;
@end

@implementation NWAccumulation

- (NSMutableDictionary)durations
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2299;
  v18 = __Block_byref_object_dispose__2300;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __27__NWAccumulation_durations__block_invoke;
  v13[3] = &unk_1E6A3D738;
  v13[4] = self;
  v13[5] = &v14;
  os_unfair_lock_lock(&self->_lock);
  __27__NWAccumulation_durations__block_invoke(v13);
  os_unfair_lock_unlock(&self->_lock);
  if (v15[5] && ![(NWAccumulation *)self isSnapshot])
  {
    v3 = v15[5];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [(NWAccumulation *)self updateWithState:v3 atTime:?];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2299;
  v11 = __Block_byref_object_dispose__2300;
  v12 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__NWAccumulation_durations__block_invoke_2;
  v6[3] = &unk_1E6A3D738;
  v6[4] = self;
  v6[5] = &v7;
  os_unfair_lock_lock(&self->_lock);
  __27__NWAccumulation_durations__block_invoke_2(v6);
  os_unfair_lock_unlock(&self->_lock);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v14, 8);

  return v4;
}

- (id)snapshot
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [NWAccumulation alloc];
  v4 = [(NWAccumulation *)self name];
  v5 = [(NWAccumulation *)v3 initWithName:v4];

  [(NWAccumulation *)v5 setIsSnapshot:1];
  v6 = [(NWAccumulation *)self durations];
  v7 = [v6 mutableCopy];
  [(NWAccumulation *)v5 setDurations:v7];

  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2299;
  v20 = __Block_byref_object_dispose__2300;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __26__NWAccumulation_snapshot__block_invoke;
  v11[3] = &unk_1E6A36148;
  v11[4] = self;
  v11[5] = &v16;
  v11[6] = &v12;
  os_unfair_lock_lock(&self->_lock);
  __26__NWAccumulation_snapshot__block_invoke(v11);
  os_unfair_lock_unlock(&self->_lock);
  [(NWAccumulation *)v5 setCurrentState:v17[5]];
  [(NWAccumulation *)v5 setLastUpdateTime:v13[3]];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v8 = gLogObj;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446722;
    v23 = "[NWAccumulation snapshot]";
    v24 = 2112;
    v25 = self;
    v26 = 2112;
    v27 = v5;
    _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_DEBUG, "%{public}s %@ created snapshot: %@", buf, 0x20u);
  }

  v9 = v5;
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v9;
}

double __26__NWAccumulation_snapshot__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 32));
  result = *(a1[4] + 40);
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)reset
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __23__NWAccumulation_reset__block_invoke;
  v3[3] = &unk_1E6A3D868;
  v3[4] = self;
  os_unfair_lock_lock(&self->_lock);
  __23__NWAccumulation_reset__block_invoke(v3);
  os_unfair_lock_unlock(&self->_lock);
}

uint64_t __23__NWAccumulation_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  *(*(a1 + 32) + 40) = 0;
  v4 = *(*(a1 + 32) + 24);

  return [v4 removeAllObjects];
}

- (void)updateWithState:(id)a3 atTime:(double)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(NWAccumulation *)self isSnapshot])
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v7 = gLogObj;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446978;
      v12 = "[NWAccumulation updateWithState:atTime:]";
      v13 = 2112;
      v14 = self;
      v15 = 2112;
      v16 = v6;
      v17 = 2048;
      v18 = a4;
      _os_log_impl(&dword_181A37000, v7, OS_LOG_TYPE_DEBUG, "%{public}s %@ skipping update for snapshot (state: %@ at time %f)", buf, 0x2Au);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__NWAccumulation_updateWithState_atTime___block_invoke;
    v8[3] = &unk_1E6A3BCF0;
    v8[4] = self;
    v9 = v6;
    v10 = a4;
    os_unfair_lock_lock(&self->_lock);
    __41__NWAccumulation_updateWithState_atTime___block_invoke(v8);
    os_unfair_lock_unlock(&self->_lock);
  }
}

void __41__NWAccumulation_updateWithState_atTime___block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    *buf = 136446978;
    v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
    v46 = 2112;
    v47 = v3;
    v48 = 2112;
    v49 = v4;
    v50 = 2048;
    v51 = v5;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s %@ new state: %@ at time %f", buf, 0x2Au);
  }

  if (!*(a1 + 40))
  {
    v32 = __nwlog_obj();
    *buf = 136446210;
    v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v33, &type, &v42))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
        v36 = "%{public}s called with null state";
LABEL_52:
        _os_log_impl(&dword_181A37000, v34, v35, v36, buf, 0xCu);
      }
    }

    else if (v42 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v34 = __nwlog_obj();
      v35 = type;
      v39 = os_log_type_enabled(v34, type);
      if (backtrace_string)
      {
        if (v39)
        {
          *buf = 136446466;
          v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
          v46 = 2082;
          v47 = backtrace_string;
          _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null state, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_54:
        if (!v33)
        {
          return;
        }

        goto LABEL_55;
      }

      if (v39)
      {
        *buf = 136446210;
        v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
        v36 = "%{public}s called with null state, no backtrace";
        goto LABEL_52;
      }
    }

    else
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
        v36 = "%{public}s called with null state, backtrace limit exceeded";
        goto LABEL_52;
      }
    }

LABEL_53:

    goto LABEL_54;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  if (!v7)
  {
    v37 = __nwlog_obj();
    *buf = 136446210;
    v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
    v33 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v42 = 0;
    if (!__nwlog_fault(v33, &type, &v42))
    {
      goto LABEL_54;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
        v36 = "%{public}s called with null _durations";
        goto LABEL_52;
      }
    }

    else
    {
      if (v42 == 1)
      {
        v40 = __nw_create_backtrace_string();
        v34 = __nwlog_obj();
        v35 = type;
        v41 = os_log_type_enabled(v34, type);
        if (v40)
        {
          if (v41)
          {
            *buf = 136446466;
            v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
            v46 = 2082;
            v47 = v40;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s called with null _durations, dumping backtrace:%{public}s", buf, 0x16u);
          }

          free(v40);
          if (!v33)
          {
            return;
          }

LABEL_55:
          free(v33);
          return;
        }

        if (!v41)
        {
          goto LABEL_53;
        }

        *buf = 136446210;
        v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
        v36 = "%{public}s called with null _durations, no backtrace";
        goto LABEL_52;
      }

      v34 = __nwlog_obj();
      v35 = type;
      if (os_log_type_enabled(v34, type))
      {
        *buf = 136446210;
        v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
        v36 = "%{public}s called with null _durations, backtrace limit exceeded";
        goto LABEL_52;
      }
    }

    goto LABEL_53;
  }

  if (!*(v6 + 32) || (v8 = *(v6 + 40), v8 == 0.0))
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v12 = gLogObj;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      v15 = *(a1 + 48);
      *buf = 136446978;
      v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
      v46 = 2112;
      v47 = v13;
      v48 = 2112;
      v49 = v14;
      v50 = 2048;
      v51 = v15;
      _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s %@ initial update, state: %@ at time %f", buf, 0x2Au);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:0];
    [*(*(a1 + 32) + 24) setObject:v10 forKeyedSubscript:*(a1 + 40)];
    goto LABEL_13;
  }

  v9 = *(a1 + 48) - v8;
  if (v9 < 0.0)
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 136446722;
      v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
      v46 = 2112;
      v47 = v11;
      v48 = 2048;
      v49 = v9;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_ERROR, "%{public}s %@ negative time delta: %f", buf, 0x20u);
    }

LABEL_13:

LABEL_14:
    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    *(*(a1 + 32) + 40) = *(a1 + 48);
    return;
  }

  v16 = [v7 objectForKeyedSubscript:?];
  v17 = [v16 unsignedLongLongValue];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v17 + v9];
  [*(*(a1 + 32) + 24) setObject:v18 forKeyedSubscript:*(*(a1 + 32) + 32)];

  v19 = [*(*(a1 + 32) + 32) isEqualToString:*(a1 + 40)];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v20 = gLogObj;
  v10 = v20;
  if ((v19 & 1) == 0)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 32);
      v29 = *(a1 + 40);
      v30 = *(v28 + 32);
      v31 = *(a1 + 48);
      *buf = 136447746;
      v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
      v46 = 2112;
      v47 = v28;
      v48 = 2112;
      v49 = v30;
      v50 = 2048;
      v51 = v17;
      v52 = 2048;
      v53 = v17 + v9;
      v54 = 2112;
      v55 = v29;
      v56 = 2048;
      v57 = v31;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_INFO, "%{public}s %@ exiting state: %@, previous duration %llu, new duration %llu, entering state: %@ at time %f", buf, 0x48u);
    }

    goto LABEL_13;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v23 = *(v21 + 32);
    v24 = *(a1 + 48);
    *buf = 136447746;
    v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
    v46 = 2112;
    v47 = v21;
    v48 = 2112;
    v49 = v23;
    v50 = 2048;
    v51 = v17;
    v52 = 2048;
    v53 = v17 + v9;
    v54 = 2112;
    v55 = v22;
    v56 = 2048;
    v57 = v24;
    _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s %@ exiting state: %@, previous duration %llu, new duration %llu, entering state: %@ at time %f", buf, 0x48u);
  }

  if (v9 >= 1.0)
  {
    goto LABEL_14;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v25 = gLogObj;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v26 = *(*(a1 + 32) + 40);
    v27 = *(a1 + 48);
    *buf = 136446722;
    v45 = "[NWAccumulation updateWithState:atTime:]_block_invoke";
    v46 = 2048;
    v47 = v26;
    v48 = 2048;
    v49 = v27;
    _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s delta is less than one second, not updating timestamp from %f (ignoring new timestamp %f)", buf, 0x20u);
  }

  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  if ([(NWAccumulation *)self isSnapshot])
  {
    v4 = " [Snapshot]";
  }

  else
  {
    v4 = "";
  }

  v5 = [(NWAccumulation *)self name];
  v6 = [v3 stringWithFormat:@"<NWAccumulation%s %@, states: %@>", v4, v5, self->_durations];

  return v6;
}

- (void)dealloc
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __25__NWAccumulation_dealloc__block_invoke;
  v4[3] = &unk_1E6A3D868;
  v4[4] = self;
  os_unfair_lock_lock(&self->_lock);
  __25__NWAccumulation_dealloc__block_invoke(v4);
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = NWAccumulation;
  [(NWAccumulation *)&v3 dealloc];
}

void __25__NWAccumulation_dealloc__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 24) removeAllObjects];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
}

- (NWAccumulation)initWithName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v14.receiver = self;
  v14.super_class = NWAccumulation;
  v6 = [(NWAccumulation *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_name, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    durations = v7->_durations;
    v7->_durations = v8;

    currentState = v7->_currentState;
    v7->_currentState = 0;

    v7->_lastUpdateTime = 0.0;
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(NWAccumulation *)v7 name];
      *buf = 136446466;
      v16 = "[NWAccumulation initWithName:]";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s NWAccumulation init %@", buf, 0x16u);
    }
  }

  return v7;
}

@end