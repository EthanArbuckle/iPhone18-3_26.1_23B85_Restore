@interface NWAccumulator
- (NSArray)accumulations;
- (NWAccumulator)initWithName:(id)a3;
- (id)accumulatedValueForObject:(id)a3 andKeyPath:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
- (id)snapshot;
- (void)addAccumulation:(id)a3 withName:(id)a4 forKey:(id)a5 stateCallback:(id)a6;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)registerObserverForKeyPath:(id)a3 ofObject:(id)a4 alreadyRegistered:(BOOL)a5;
- (void)reset;
@end

@implementation NWAccumulator

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(NWAccumulator *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __41__NWAccumulator_dictionaryRepresentation__block_invoke;
  v11 = &unk_1E6A3D760;
  v12 = self;
  v13 = v5;
  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  __41__NWAccumulator_dictionaryRepresentation__block_invoke(&v8);
  os_unfair_lock_unlock(&self->_lock);
  [v3 setObject:v6 forKeyedSubscript:{@"durations", v8, v9}];

  return v3;
}

void __41__NWAccumulator_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = *(*(a1 + 32) + 32);
  v2 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    do
    {
      v5 = 0;
      do
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v13 + 1) + 8 * v5);
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v8 = [v6 accumulation];
        v9 = [v8 name];
        [v7 setObject:v9 forKeyedSubscript:@"name"];

        v10 = [v6 accumulation];
        v11 = [v10 durations];
        [v7 setObject:v11 forKeyedSubscript:@"durations"];

        [*(a1 + 40) addObject:v7];
        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }
}

- (id)snapshot
{
  v3 = [NWAccumulator alloc];
  v4 = [(NWAccumulator *)self name];
  v5 = [(NWAccumulator *)v3 initWithName:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __25__NWAccumulator_snapshot__block_invoke;
  v10[3] = &unk_1E6A3D760;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  os_unfair_lock_lock(&self->_lock);
  __25__NWAccumulator_snapshot__block_invoke(v10);
  os_unfair_lock_unlock(&self->_lock);
  v7 = v11;
  v8 = v6;

  return v6;
}

void __25__NWAccumulator_snapshot__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v9 + 1) + 8 * v6) snapshot];
        v8 = [*(a1 + 40) accumulatedValues];
        [v8 addObject:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (void)reset
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(NWAccumulator *)self snapshot];
  [(NWAccumulator *)self setLastSnapshot:v3];

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v4 = gLogObj;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [(NWAccumulator *)self lastSnapshot];
    *buf = 136446466;
    *&buf[4] = "[NWAccumulator reset]";
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&dword_181A37000, v4, OS_LOG_TYPE_INFO, "%{public}s Reset, saved snapshot: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v21 = __Block_byref_object_copy__2299;
  v22 = __Block_byref_object_dispose__2300;
  v23 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __22__NWAccumulator_reset__block_invoke;
  v18[3] = &unk_1E6A3D738;
  v18[4] = self;
  v18[5] = buf;
  os_unfair_lock_lock(&self->_lock);
  __22__NWAccumulator_reset__block_invoke(v18);
  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = *(*&buf[8] + 40);
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 accumulation];
        [v11 reset];

        v12 = [v10 keyPath];
        v13 = [v10 object];
        [(NWAccumulator *)self registerObserverForKeyPath:v12 ofObject:v13 alreadyRegistered:1];
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v7);
  }

  _Block_object_dispose(buf, 8);
}

void __22__NWAccumulator_reset__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(NWAccumulator *)self accumulatedValueForObject:v10 andKeyPath:v9];
  if (v12)
  {
    v13 = [v11 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v14 = [v12 callback];
    v15 = (v14)[2](v14, v13);

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 136447490;
      v19 = "[NWAccumulator observeValueForKeyPath:ofObject:change:context:]";
      v20 = 2112;
      v21 = self;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v9;
      v26 = 2112;
      v27 = v10;
      v28 = 2112;
      v29 = v15;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %@ observing value %@ for keyPath %@ of object %@, state: %@", &v18, 0x3Eu);
    }

    if (v15)
    {
      v17 = [v12 accumulation];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      [v17 updateWithState:v15 atTime:?];
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = 136446722;
      v19 = "[NWAccumulator observeValueForKeyPath:ofObject:change:context:]";
      v20 = 2112;
      v21 = self;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s %@ did not find value for object: %@", &v18, 0x20u);
    }
  }
}

- (void)registerObserverForKeyPath:(id)a3 ofObject:(id)a4 alreadyRegistered:(BOOL)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (!v8)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
    v12 = _os_log_send_and_compose_impl();

    v27 = OS_LOG_TYPE_ERROR;
    v26 = 0;
    if (!__nwlog_fault(v12, &v27, &v26))
    {
      goto LABEL_34;
    }

    if (v27 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = v27;
      if (os_log_type_enabled(v13, v27))
      {
        *buf = 136446210;
        v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
        v15 = "%{public}s called with null keyPath";
LABEL_32:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v26 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v27;
      v18 = os_log_type_enabled(v13, v27);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
          v30 = 2082;
          v31 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null keyPath, dumping backtrace:%{public}s", buf, 0x16u);
        }

        free(backtrace_string);
LABEL_34:
        if (!v12)
        {
          goto LABEL_4;
        }

LABEL_35:
        free(v12);
        goto LABEL_4;
      }

      if (v18)
      {
        *buf = 136446210;
        v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
        v15 = "%{public}s called with null keyPath, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = v27;
      if (os_log_type_enabled(v13, v27))
      {
        *buf = 136446210;
        v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
        v15 = "%{public}s called with null keyPath, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (v9)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __71__NWAccumulator_registerObserverForKeyPath_ofObject_alreadyRegistered___block_invoke;
    v21[3] = &unk_1E6A30870;
    v25 = a5;
    v22 = v9;
    v23 = self;
    v24 = v8;
    os_unfair_lock_lock(&self->_kvo_lock);
    __71__NWAccumulator_registerObserverForKeyPath_ofObject_alreadyRegistered___block_invoke(v21);
    os_unfair_lock_unlock(&self->_kvo_lock);

    goto LABEL_4;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
  v12 = _os_log_send_and_compose_impl();

  v27 = OS_LOG_TYPE_ERROR;
  v26 = 0;
  if (!__nwlog_fault(v12, &v27, &v26))
  {
    goto LABEL_34;
  }

  if (v27 == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = v27;
    if (os_log_type_enabled(v13, v27))
    {
      *buf = 136446210;
      v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
      v15 = "%{public}s called with null object";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v26 != 1)
  {
    v13 = __nwlog_obj();
    v14 = v27;
    if (os_log_type_enabled(v13, v27))
    {
      *buf = 136446210;
      v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
      v15 = "%{public}s called with null object, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v19 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v14 = v27;
  v20 = os_log_type_enabled(v13, v27);
  if (!v19)
  {
    if (v20)
    {
      *buf = 136446210;
      v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
      v15 = "%{public}s called with null object, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v20)
  {
    *buf = 136446466;
    v29 = "[NWAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
    v30 = 2082;
    v31 = v19;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null object, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_4:
}

uint64_t __71__NWAccumulator_registerObserverForKeyPath_ofObject_alreadyRegistered___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:*(a1 + 48)];
  }

  return [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:*(a1 + 48) options:5 context:0];
}

- (void)addAccumulation:(id)a3 withName:(id)a4 forKey:(id)a5 stateCallback:(id)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (v10 && v12 && v13)
  {
    v15 = [(NWAccumulator *)self accumulatedValueForObject:v10 andKeyPath:v12];
    if (v15)
    {
      v16 = v15;
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v17 = gLogObj;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 136447234;
        v30 = "[NWAccumulator addAccumulation:withName:forKey:stateCallback:]";
        v31 = 2112;
        v32 = v10;
        v33 = 2112;
        v34 = v12;
        v35 = 2112;
        p_super = v16;
        v37 = 2112;
        v38 = v12;
        _os_log_impl(&dword_181A37000, v17, OS_LOG_TYPE_INFO, "%{public}s Existing NWAccumulatedValue for object: %@ and keyPath: %@: %@, resetting %@", buf, 0x34u);
      }

      [v16 setCallback:v14];
      v18 = [v16 accumulation];
      [v18 reset];

      [(NWAccumulator *)self registerObserverForKeyPath:v12 ofObject:v10 alreadyRegistered:1];
    }

    else
    {
      v20 = objc_alloc_init(NWAccumulatedValue);
      [(NWAccumulatedValue *)v20 setObject:v10];
      [(NWAccumulatedValue *)v20 setKeyPath:v12];
      [(NWAccumulatedValue *)v20 setCallback:v14];
      v21 = [[NWAccumulation alloc] initWithName:v11];
      [(NWAccumulatedValue *)v20 setAccumulation:v21];
      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __63__NWAccumulator_addAccumulation_withName_forKey_stateCallback___block_invoke;
      v26 = &unk_1E6A3D760;
      v27 = self;
      v28 = v20;
      v22 = v20;
      os_unfair_lock_lock(&self->_lock);
      __63__NWAccumulator_addAccumulation_withName_forKey_stateCallback___block_invoke(&v23);
      os_unfair_lock_unlock(&self->_lock);
      [(NWAccumulator *)self registerObserverForKeyPath:v12 ofObject:v10 alreadyRegistered:0, v23, v24];

      v16 = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = _Block_copy(v14);
      *buf = 136447234;
      v30 = "[NWAccumulator addAccumulation:withName:forKey:stateCallback:]";
      v31 = 2112;
      v32 = self;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      p_super = &v12->super;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_ERROR, "%{public}s %@ invalid value passed to addAccumulation: object (%@), key (%@), callback (%@)", buf, 0x34u);
    }
  }
}

- (id)accumulatedValueForObject:(id)a3 andKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2299;
  v20 = __Block_byref_object_dispose__2300;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__NWAccumulator_accumulatedValueForObject_andKeyPath___block_invoke;
  v12[3] = &unk_1E6A33400;
  v12[4] = self;
  v8 = v6;
  v13 = v8;
  v9 = v7;
  v14 = v9;
  v15 = &v16;
  os_unfair_lock_lock(&self->_lock);
  __54__NWAccumulator_accumulatedValueForObject_andKeyPath___block_invoke(v12);
  os_unfair_lock_unlock(&self->_lock);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __54__NWAccumulator_accumulatedValueForObject_andKeyPath___block_invoke(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1[4] + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_4:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      v8 = [v7 object];
      v9 = v8;
      if (v8 == a1[5])
      {
        v10 = [v7 keyPath];
        v11 = [v10 isEqualToString:a1[6]];

        if (v11)
        {
          objc_storeStrong((*(a1[7] + 8) + 40), v7);
          break;
        }
      }

      else
      {
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (!v4)
        {
          break;
        }

        goto LABEL_4;
      }
    }
  }
}

- (NSArray)accumulations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __30__NWAccumulator_accumulations__block_invoke;
  v10 = &unk_1E6A3D760;
  v11 = self;
  v12 = v3;
  v4 = v3;
  os_unfair_lock_lock(&self->_lock);
  __30__NWAccumulator_accumulations__block_invoke(&v7);
  os_unfair_lock_unlock(&self->_lock);
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:{v4, v7, v8}];

  return v5;
}

void __30__NWAccumulator_accumulations__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = [*(*(&v9 + 1) + 8 * v6) accumulation];
        [v7 addObject:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NWAccumulator *)self name];
  v5 = [(NWAccumulator *)self accumulatedValues];
  v6 = [v3 stringWithFormat:@"<NWAccumulator %@, NWAccumulations: %@>", v4, v5];

  return v6;
}

- (void)dealloc
{
  v26 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2299;
  v23 = __Block_byref_object_dispose__2300;
  v24 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __24__NWAccumulator_dealloc__block_invoke;
  v18[3] = &unk_1E6A3D738;
  v18[4] = self;
  v18[5] = &v19;
  os_unfair_lock_lock(&self->_lock);
  __24__NWAccumulator_dealloc__block_invoke(v18);
  os_unfair_lock_unlock(&self->_lock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = v20[5];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v10 = __24__NWAccumulator_dealloc__block_invoke_2;
        v11 = &unk_1E6A3D760;
        v12 = v7;
        v13 = self;
        os_unfair_lock_lock(&self->_kvo_lock);
        v10(v9);
        os_unfair_lock_unlock(&self->_kvo_lock);
        ++v6;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v4);
  }

  [v20[5] removeAllObjects];
  _Block_object_dispose(&v19, 8);

  v8.receiver = self;
  v8.super_class = NWAccumulator;
  [(NWAccumulator *)&v8 dealloc];
}

void __24__NWAccumulator_dealloc__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;
}

void __24__NWAccumulator_dealloc__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) object];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) keyPath];
  [v4 removeObserver:v2 forKeyPath:v3];
}

- (NWAccumulator)initWithName:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NWAccumulator;
  v6 = [(NWAccumulator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, a3);
    *&v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    accumulatedValues = v7->_accumulatedValues;
    v7->_accumulatedValues = v8;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v10 = gLogObj;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [(NWAccumulator *)v7 name];
      *buf = 136446466;
      v15 = "[NWAccumulator initWithName:]";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_181A37000, v10, OS_LOG_TYPE_DEBUG, "%{public}s NWAccumulator init %@", buf, 0x16u);
    }
  }

  return v7;
}

@end