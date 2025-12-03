@interface NWNumericAccumulator
- (NWNumericAccumulator)initWithName:(id)name;
- (id)aggregatedStates;
- (id)description;
- (id)dictionaryRepresentation;
- (id)overrideStateWithName:(id)name;
- (id)watcherForObject:(id)object andKeyPath:(id)path;
- (void)addAccumulation:(id)accumulation withName:(id)name forKey:(id)key stateCallback:(id)callback;
- (void)addCount:(id)count toAccumulation:(id)accumulation;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)registerObserverForKeyPath:(id)path ofObject:(id)object alreadyRegistered:(BOOL)registered;
- (void)reset;
- (void)updateState:(id)state forName:(id)name;
@end

@implementation NWNumericAccumulator

- (id)aggregatedStates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2299;
  v10 = __Block_byref_object_dispose__2300;
  v11 = objc_alloc_init(MEMORY[0x1E696AEC0]);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__NWNumericAccumulator_aggregatedStates__block_invoke;
  v5[3] = &unk_1E6A3D738;
  v5[4] = self;
  v5[5] = &v6;
  os_unfair_lock_lock(&self->_lock);
  __40__NWNumericAccumulator_aggregatedStates__block_invoke(v5);
  os_unfair_lock_unlock(&self->_lock);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __40__NWNumericAccumulator_aggregatedStates__block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v2 = *(*(a1 + 32) + 32);
  v3 = [v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v30;
    do
    {
      v6 = 0;
      do
      {
        if (*v30 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v29 + 1) + 8 * v6) state];
        v9 = [v7 stringByAppendingFormat:@"%@, ", v8];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v4);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = *(*(a1 + 32) + 40);
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      v16 = 0;
      do
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(*(a1 + 40) + 8) + 40);
        v18 = [*(*(&v25 + 1) + 8 * v16) state];
        v19 = [v17 stringByAppendingFormat:@"%@, ", v18];
        v20 = *(*(a1 + 40) + 8);
        v21 = *(v20 + 40);
        *(v20 + 40) = v19;

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  v22 = [*(*(*(a1 + 40) + 8) + 40) substringToIndex:{objc_msgSend(*(*(*(a1 + 40) + 8) + 40), "length") - 1}];
  v23 = *(*(a1 + 40) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  name = [(NWNumericAccumulator *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __48__NWNumericAccumulator_dictionaryRepresentation__block_invoke;
  v11 = &unk_1E6A3D760;
  selfCopy = self;
  v13 = v5;
  v6 = v5;
  os_unfair_lock_lock(&self->_lock);
  __48__NWNumericAccumulator_dictionaryRepresentation__block_invoke(&v8);
  os_unfair_lock_unlock(&self->_lock);
  [v3 setObject:v6 forKeyedSubscript:{@"states", v8, v9}];

  return v3;
}

void __48__NWNumericAccumulator_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 24);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__NWNumericAccumulator_dictionaryRepresentation__block_invoke_2;
  v4[3] = &unk_1E6A2BC10;
  v4[4] = v2;
  v5 = v1;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __48__NWNumericAccumulator_dictionaryRepresentation__block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = [v7 componentsSeparatedByString:{@", "}];
  v11 = [v10 count];
  v12 = [*(*(a1 + 32) + 32) count];
  if (v11 == [*(*(a1 + 32) + 40) count] + v12)
  {
    v37 = a4;
    v38 = v7;
    if (![v10 count])
    {
LABEL_15:
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __48__NWNumericAccumulator_dictionaryRepresentation__block_invoke_172;
      v39[3] = &unk_1E6A2BBE8;
      v28 = v9;
      v40 = v28;
      [v8 enumerateKeysAndObjectsUsingBlock:v39];
      [*(a1 + 40) addObject:v28];

      v7 = v38;
      goto LABEL_35;
    }

    v13 = 0;
    while (1)
    {
      v14 = [*(*(a1 + 32) + 32) count];
      v15 = *(a1 + 32);
      if (v13 >= v14)
      {
        v18 = *(v15 + 40);
        v17 = v13 - [*(v15 + 32) count];
        v16 = v18;
      }

      else
      {
        v16 = *(v15 + 32);
        v17 = v13;
      }

      v19 = [v16 objectAtIndex:v17];
      v20 = [v19 name];

      v21 = [v10 objectAtIndex:v13];
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v22 = gLogObj;
      v23 = v22;
      if (!v20)
      {
        break;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446722;
        v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke";
        v45 = 2112;
        v46 = v20;
        v47 = 2112;
        v48 = v21;
        _os_log_impl(&dword_181A37000, v23, OS_LOG_TYPE_DEBUG, "%{public}s Processing name %@ state %@", buf, 0x20u);
      }

      [v9 setObject:v21 forKeyedSubscript:v20];
      if (++v13 >= [v10 count])
      {
        goto LABEL_15;
      }
    }

    *buf = 136446466;
    v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke";
    v45 = 2112;
    v46 = v21;
    v29 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v41 = 0;
    v7 = v38;
    if (!__nwlog_fault(v29, &type, &v41))
    {
LABEL_30:
      if (!v29)
      {
LABEL_32:
        if (v37)
        {
          *v37 = 1;
        }

        goto LABEL_35;
      }

LABEL_31:
      free(v29);
      goto LABEL_32;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
LABEL_29:

        goto LABEL_30;
      }

      *buf = 136446466;
      v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke";
      v45 = 2112;
      v46 = v21;
      v32 = "%{public}s failed to get name for state: %@";
    }

    else
    {
      if (v41 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
        networkd_settings_init();
        v34 = gLogObj;
        v35 = type;
        v36 = os_log_type_enabled(v34, type);
        if (backtrace_string)
        {
          if (v36)
          {
            *buf = 136446722;
            v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke";
            v45 = 2112;
            v46 = v21;
            v47 = 2082;
            v48 = backtrace_string;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s failed to get name for state: %@, dumping backtrace:%{public}s", buf, 0x20u);
          }

          free(backtrace_string);
          if (!v29)
          {
            goto LABEL_32;
          }
        }

        else
        {
          if (v36)
          {
            *buf = 136446466;
            v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke";
            v45 = 2112;
            v46 = v21;
            _os_log_impl(&dword_181A37000, v34, v35, "%{public}s failed to get name for state: %@, no backtrace", buf, 0x16u);
          }

          if (!v29)
          {
            goto LABEL_32;
          }
        }

        goto LABEL_31;
      }

      pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
      networkd_settings_init();
      v30 = gLogObj;
      v31 = type;
      if (!os_log_type_enabled(v30, type))
      {
        goto LABEL_29;
      }

      *buf = 136446466;
      v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke";
      v45 = 2112;
      v46 = v21;
      v32 = "%{public}s failed to get name for state: %@, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v30, v31, v32, buf, 0x16u);
    goto LABEL_29;
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v24 = gLogObj;
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = [v10 count];
    v26 = [*(*(a1 + 32) + 32) count];
    v27 = [*(*(a1 + 32) + 40) count];
    *buf = 136446978;
    v44 = "[NWNumericAccumulator dictionaryRepresentation]_block_invoke_2";
    v45 = 2048;
    v46 = v25;
    v47 = 2048;
    v48 = v26;
    v49 = 2048;
    v50 = v27;
    _os_log_impl(&dword_181A37000, v24, OS_LOG_TYPE_ERROR, "%{public}s Components count (%zu) != kvoWatchers count (%zu) + overriddenStates count (%zu)", buf, 0x2Au);
  }

  if (a4)
  {
    *a4 = 1;
  }

LABEL_35:
}

- (void)reset
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__2299;
  v19 = __Block_byref_object_dispose__2300;
  v20 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __29__NWNumericAccumulator_reset__block_invoke;
  v14[3] = &unk_1E6A3D738;
  v14[4] = self;
  v14[5] = &v15;
  os_unfair_lock_lock(&self->_lock);
  __29__NWNumericAccumulator_reset__block_invoke(v14);
  os_unfair_lock_unlock(&self->_lock);
  [(NSMutableDictionary *)self->_accumulations removeAllObjects];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v16[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        keyPath = [v7 keyPath];
        object = [v7 object];
        [(NWNumericAccumulator *)self registerObserverForKeyPath:keyPath ofObject:object alreadyRegistered:1];
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v15, 8);
}

void __29__NWNumericAccumulator_reset__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) mutableCopy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)updateState:(id)state forName:(id)name
{
  v45 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  nameCopy = name;
  v8 = nameCopy;
  if (!stateCopy)
  {
    v13 = __nwlog_obj();
    *v41 = 136446210;
    *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
    v14 = _os_log_send_and_compose_impl();

    buf[0] = 16;
    v32 = 0;
    if (!__nwlog_fault(v14, buf, &v32))
    {
      goto LABEL_42;
    }

    if (buf[0] == 17)
    {
      v15 = __nwlog_obj();
      v16 = buf[0];
      if (os_log_type_enabled(v15, buf[0]))
      {
        *v41 = 136446210;
        *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
        _os_log_impl(&dword_181A37000, v15, v16, "%{public}s called with null state", v41, 0xCu);
      }
    }

    else if (v32 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v15 = __nwlog_obj();
      v20 = buf[0];
      v21 = os_log_type_enabled(v15, buf[0]);
      if (backtrace_string)
      {
        if (v21)
        {
          *v41 = 136446466;
          *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
          *&v41[12] = 2082;
          *&v41[14] = backtrace_string;
          _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null state, dumping backtrace:%{public}s", v41, 0x16u);
        }

        free(backtrace_string);
LABEL_42:
        if (!v14)
        {
          goto LABEL_8;
        }

LABEL_43:
        free(v14);
        goto LABEL_8;
      }

      if (v21)
      {
        *v41 = 136446210;
        *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
        _os_log_impl(&dword_181A37000, v15, v20, "%{public}s called with null state, no backtrace", v41, 0xCu);
      }
    }

    else
    {
      v15 = __nwlog_obj();
      v25 = buf[0];
      if (os_log_type_enabled(v15, buf[0]))
      {
        *v41 = 136446210;
        *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
        _os_log_impl(&dword_181A37000, v15, v25, "%{public}s called with null state, backtrace limit exceeded", v41, 0xCu);
      }
    }

LABEL_41:

    goto LABEL_42;
  }

  if (nameCopy)
  {
    *v41 = 0;
    *&v41[8] = v41;
    *&v41[16] = 0x3032000000;
    v42 = __Block_byref_object_copy__2299;
    v43 = __Block_byref_object_dispose__2300;
    v44 = [(NWNumericAccumulator *)self overrideStateWithName:nameCopy];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v9 = gLogObj;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      state = [*(*&v41[8] + 40) state];
      *buf = 136446978;
      v34 = "[NWNumericAccumulator updateState:forName:]";
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = state;
      v39 = 2112;
      v40 = stateCopy;
      _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_INFO, "%{public}s Updating state of %@ from %@ to %@", buf, 0x2Au);
    }

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v11 = gLogObj;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      state2 = [*(*&v41[8] + 40) state];
      *buf = 136446978;
      v34 = "[NWNumericAccumulator updateState:forName:]";
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = state2;
      v39 = 2112;
      v40 = stateCopy;
      _os_log_impl(&dword_181A37000, v11, OS_LOG_TYPE_DEBUG, "%{public}s Updating state of %@ from %@ to %@", buf, 0x2Au);
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __44__NWNumericAccumulator_updateState_forName___block_invoke;
    v27[3] = &unk_1E6A33400;
    v31 = v41;
    v28 = v8;
    v29 = stateCopy;
    selfCopy = self;
    os_unfair_lock_lock(&self->_lock);
    __44__NWNumericAccumulator_updateState_forName___block_invoke(v27);
    os_unfair_lock_unlock(&self->_lock);

    _Block_object_dispose(v41, 8);
    goto LABEL_8;
  }

  v17 = __nwlog_obj();
  *v41 = 136446210;
  *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
  v14 = _os_log_send_and_compose_impl();

  buf[0] = 16;
  v32 = 0;
  if (!__nwlog_fault(v14, buf, &v32))
  {
    goto LABEL_42;
  }

  if (buf[0] == 17)
  {
    v15 = __nwlog_obj();
    v18 = buf[0];
    if (os_log_type_enabled(v15, buf[0]))
    {
      *v41 = 136446210;
      *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
      _os_log_impl(&dword_181A37000, v15, v18, "%{public}s called with null name", v41, 0xCu);
    }

    goto LABEL_41;
  }

  if (v32 != 1)
  {
    v15 = __nwlog_obj();
    v26 = buf[0];
    if (os_log_type_enabled(v15, buf[0]))
    {
      *v41 = 136446210;
      *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
      _os_log_impl(&dword_181A37000, v15, v26, "%{public}s called with null name, backtrace limit exceeded", v41, 0xCu);
    }

    goto LABEL_41;
  }

  v22 = __nw_create_backtrace_string();
  v15 = __nwlog_obj();
  v23 = buf[0];
  v24 = os_log_type_enabled(v15, buf[0]);
  if (!v22)
  {
    if (v24)
    {
      *v41 = 136446210;
      *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
      _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null name, no backtrace", v41, 0xCu);
    }

    goto LABEL_41;
  }

  if (v24)
  {
    *v41 = 136446466;
    *&v41[4] = "[NWNumericAccumulator updateState:forName:]";
    *&v41[12] = 2082;
    *&v41[14] = v22;
    _os_log_impl(&dword_181A37000, v15, v23, "%{public}s called with null name, dumping backtrace:%{public}s", v41, 0x16u);
  }

  free(v22);
  if (v14)
  {
    goto LABEL_43;
  }

LABEL_8:
}

uint64_t __44__NWNumericAccumulator_updateState_forName___block_invoke(void *a1)
{
  v2 = *(*(a1[7] + 8) + 40);
  if (v2)
  {
    v3 = a1[5];

    return [v2 setState:v3];
  }

  else
  {
    v5 = objc_alloc_init(NWAccumulatorOverrideState);
    v6 = *(a1[7] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    [*(*(a1[7] + 8) + 40) setName:a1[4]];
    [*(*(a1[7] + 8) + 40) setState:a1[5]];
    v8 = *(a1[6] + 40);
    v9 = *(*(a1[7] + 8) + 40);

    return [v8 addObject:v9];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v29 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v12 = [(NWNumericAccumulator *)self watcherForObject:objectCopy andKeyPath:pathCopy];
  if (v12)
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    callback = [v12 callback];
    v15 = (callback)[2](callback, v13);

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = 136447490;
      v18 = "[NWNumericAccumulator observeValueForKeyPath:ofObject:change:context:]";
      v19 = 2112;
      selfCopy2 = self;
      v21 = 2112;
      v22 = v13;
      v23 = 2112;
      v24 = pathCopy;
      v25 = 2112;
      v26 = objectCopy;
      v27 = 2112;
      v28 = v15;
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s %@ observing value %@ for keyPath %@ of object %@, state: %@", &v17, 0x3Eu);
    }

    if (v15)
    {
      [v12 updateWithState:v15];
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v13 = gLogObj;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v17 = 136446722;
      v18 = "[NWNumericAccumulator observeValueForKeyPath:ofObject:change:context:]";
      v19 = 2112;
      selfCopy2 = self;
      v21 = 2112;
      v22 = objectCopy;
      _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_ERROR, "%{public}s %@ did not find value for object: %@", &v17, 0x20u);
    }
  }
}

- (void)registerObserverForKeyPath:(id)path ofObject:(id)object alreadyRegistered:(BOOL)registered
{
  v32 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  v10 = objectCopy;
  if (!pathCopy)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
        v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
          v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
        v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
        v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
        v15 = "%{public}s called with null keyPath, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (objectCopy)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__NWNumericAccumulator_registerObserverForKeyPath_ofObject_alreadyRegistered___block_invoke;
    v21[3] = &unk_1E6A30870;
    registeredCopy = registered;
    v22 = objectCopy;
    selfCopy = self;
    v24 = pathCopy;
    os_unfair_lock_lock(&self->_kvo_lock);
    __78__NWNumericAccumulator_registerObserverForKeyPath_ofObject_alreadyRegistered___block_invoke(v21);
    os_unfair_lock_unlock(&self->_kvo_lock);

    goto LABEL_4;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
      v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
      v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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
      v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
      v15 = "%{public}s called with null object, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v20)
  {
    *buf = 136446466;
    v29 = "[NWNumericAccumulator registerObserverForKeyPath:ofObject:alreadyRegistered:]";
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

uint64_t __78__NWNumericAccumulator_registerObserverForKeyPath_ofObject_alreadyRegistered___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) removeObserver:*(a1 + 40) forKeyPath:*(a1 + 48)];
  }

  return [*(a1 + 32) addObserver:*(a1 + 40) forKeyPath:*(a1 + 48) options:5 context:0];
}

- (void)addAccumulation:(id)accumulation withName:(id)name forKey:(id)key stateCallback:(id)callback
{
  v37 = *MEMORY[0x1E69E9840];
  accumulationCopy = accumulation;
  nameCopy = name;
  keyCopy = key;
  callbackCopy = callback;
  v14 = callbackCopy;
  if (accumulationCopy && keyCopy && callbackCopy)
  {
    v15 = [(NWNumericAccumulator *)self watcherForObject:accumulationCopy andKeyPath:keyCopy];
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v16 = gLogObj;
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
    if (v15)
    {
      if (v17)
      {
        *buf = 136447234;
        v28 = "[NWNumericAccumulator addAccumulation:withName:forKey:stateCallback:]";
        v29 = 2112;
        selfCopy2 = accumulationCopy;
        v31 = 2112;
        v32 = keyCopy;
        v33 = 2112;
        p_super = v15;
        v35 = 2112;
        v36 = keyCopy;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s Existing NWAccumulatorKVOWatcher for object: %@ and keyPath: %@: %@, resetting %@", buf, 0x34u);
      }

      [v15 setCallback:v14];
      [(NWNumericAccumulator *)self registerObserverForKeyPath:keyCopy ofObject:accumulationCopy alreadyRegistered:1];
    }

    else
    {
      if (v17)
      {
        *buf = 136446722;
        v28 = "[NWNumericAccumulator addAccumulation:withName:forKey:stateCallback:]";
        v29 = 2112;
        selfCopy2 = accumulationCopy;
        v31 = 2112;
        v32 = keyCopy;
        _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_INFO, "%{public}s Adding new NWAccumulatorKVOWatcher for object: %@ and keyPath: %@", buf, 0x20u);
      }

      v19 = objc_alloc_init(NWAccumulatorKVOWatcher);
      [(NWAccumulatorKVOWatcher *)v19 setName:nameCopy];
      [(NWAccumulatorKVOWatcher *)v19 setObject:accumulationCopy];
      [(NWAccumulatorKVOWatcher *)v19 setKeyPath:keyCopy];
      [(NWAccumulatorKVOWatcher *)v19 setCallback:v14];
      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __70__NWNumericAccumulator_addAccumulation_withName_forKey_stateCallback___block_invoke;
      v24 = &unk_1E6A3D760;
      selfCopy = self;
      v26 = v19;
      v20 = v19;
      os_unfair_lock_lock(&self->_lock);
      __70__NWNumericAccumulator_addAccumulation_withName_forKey_stateCallback___block_invoke(&v21);
      os_unfair_lock_unlock(&self->_lock);
      [(NWNumericAccumulator *)self registerObserverForKeyPath:keyCopy ofObject:accumulationCopy alreadyRegistered:0, v21, v22];

      v15 = 0;
    }
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v15 = gLogObj;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = _Block_copy(v14);
      *buf = 136447234;
      v28 = "[NWNumericAccumulator addAccumulation:withName:forKey:stateCallback:]";
      v29 = 2112;
      selfCopy2 = self;
      v31 = 2112;
      v32 = accumulationCopy;
      v33 = 2112;
      p_super = &keyCopy->super;
      v35 = 2112;
      v36 = v18;
      _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_ERROR, "%{public}s %@ invalid value passed to addAccumulation: object (%@), key (%@), callback (%@)", buf, 0x34u);
    }
  }
}

void __70__NWNumericAccumulator_addAccumulation_withName_forKey_stateCallback___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) addObject:*(a1 + 40)];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = [*(*(a1 + 32) + 32) count];
    v4 = 136446466;
    v5 = "[NWNumericAccumulator addAccumulation:withName:forKey:stateCallback:]_block_invoke";
    v6 = 2048;
    v7 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Now have %zu watchers", &v4, 0x16u);
  }
}

- (void)addCount:(id)count toAccumulation:(id)accumulation
{
  v31 = *MEMORY[0x1E69E9840];
  countCopy = count;
  accumulationCopy = accumulation;
  v8 = accumulationCopy;
  if (!countCopy)
  {
    v11 = __nwlog_obj();
    *buf = 136446210;
    v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
    v12 = _os_log_send_and_compose_impl();

    v26 = OS_LOG_TYPE_ERROR;
    v25 = 0;
    if (!__nwlog_fault(v12, &v26, &v25))
    {
      goto LABEL_34;
    }

    if (v26 == OS_LOG_TYPE_FAULT)
    {
      v13 = __nwlog_obj();
      v14 = v26;
      if (os_log_type_enabled(v13, v26))
      {
        *buf = 136446210;
        v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
        v15 = "%{public}s called with null count";
LABEL_32:
        _os_log_impl(&dword_181A37000, v13, v14, v15, buf, 0xCu);
      }
    }

    else if (v25 == 1)
    {
      backtrace_string = __nw_create_backtrace_string();
      v13 = __nwlog_obj();
      v14 = v26;
      v18 = os_log_type_enabled(v13, v26);
      if (backtrace_string)
      {
        if (v18)
        {
          *buf = 136446466;
          v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
          v29 = 2082;
          v30 = backtrace_string;
          _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null count, dumping backtrace:%{public}s", buf, 0x16u);
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
        v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
        v15 = "%{public}s called with null count, no backtrace";
        goto LABEL_32;
      }
    }

    else
    {
      v13 = __nwlog_obj();
      v14 = v26;
      if (os_log_type_enabled(v13, v26))
      {
        *buf = 136446210;
        v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
        v15 = "%{public}s called with null count, backtrace limit exceeded";
        goto LABEL_32;
      }
    }

LABEL_33:

    goto LABEL_34;
  }

  if (accumulationCopy)
  {
    aggregatedStates = [(NWNumericAccumulator *)self aggregatedStates];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48__NWNumericAccumulator_addCount_toAccumulation___block_invoke;
    v21[3] = &unk_1E6A3C038;
    v21[4] = self;
    v22 = aggregatedStates;
    v23 = v8;
    v24 = countCopy;
    v10 = aggregatedStates;
    os_unfair_lock_lock(&self->_lock);
    __48__NWNumericAccumulator_addCount_toAccumulation___block_invoke(v21);
    os_unfair_lock_unlock(&self->_lock);

    goto LABEL_4;
  }

  v16 = __nwlog_obj();
  *buf = 136446210;
  v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
  v12 = _os_log_send_and_compose_impl();

  v26 = OS_LOG_TYPE_ERROR;
  v25 = 0;
  if (!__nwlog_fault(v12, &v26, &v25))
  {
    goto LABEL_34;
  }

  if (v26 == OS_LOG_TYPE_FAULT)
  {
    v13 = __nwlog_obj();
    v14 = v26;
    if (os_log_type_enabled(v13, v26))
    {
      *buf = 136446210;
      v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
      v15 = "%{public}s called with null name";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v25 != 1)
  {
    v13 = __nwlog_obj();
    v14 = v26;
    if (os_log_type_enabled(v13, v26))
    {
      *buf = 136446210;
      v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
      v15 = "%{public}s called with null name, backtrace limit exceeded";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v19 = __nw_create_backtrace_string();
  v13 = __nwlog_obj();
  v14 = v26;
  v20 = os_log_type_enabled(v13, v26);
  if (!v19)
  {
    if (v20)
    {
      *buf = 136446210;
      v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
      v15 = "%{public}s called with null name, no backtrace";
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  if (v20)
  {
    *buf = 136446466;
    v28 = "[NWNumericAccumulator addCount:toAccumulation:]";
    v29 = 2082;
    v30 = v19;
    _os_log_impl(&dword_181A37000, v13, v14, "%{public}s called with null name, dumping backtrace:%{public}s", buf, 0x16u);
  }

  free(v19);
  if (v12)
  {
    goto LABEL_35;
  }

LABEL_4:
}

void __48__NWNumericAccumulator_addCount_toAccumulation___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v3 = [v2 objectForKeyedSubscript:*(a1 + 48)];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 unsignedLongLongValue];
    v6 = [*(a1 + 56) unsignedLongLongValue];
    v7 = v5 + v6;
    if (__CFADD__(v5, v6))
    {
      if (gLogDatapath == 1)
      {
        v15 = v5 + v6;
        v13 = __nwlog_obj();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [*(a1 + 56) unsignedLongLongValue];
          *buf = 136446978;
          v17 = "[NWNumericAccumulator addCount:toAccumulation:]_block_invoke";
          v18 = 2082;
          v19 = "longValue";
          v20 = 2048;
          v21 = v14;
          v22 = 2048;
          v23 = v15;
          _os_log_impl(&dword_181A37000, v13, OS_LOG_TYPE_DEBUG, "%{public}s Overflow: %{public}s, increment %llu, result %llu", buf, 0x2Au);
        }
      }

      v7 = -1;
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v7];
  }

  else
  {
    v8 = *(a1 + 56);
  }

  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v9 = gLogObj;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 48);
    v10 = *(a1 + 56);
    v12 = *(a1 + 40);
    *buf = 136447234;
    v17 = "[NWNumericAccumulator addCount:toAccumulation:]_block_invoke";
    v18 = 2112;
    v19 = v11;
    v20 = 2112;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_181A37000, v9, OS_LOG_TYPE_DEBUG, "%{public}s New value for %@: %@ (+%@), states: %@", buf, 0x34u);
  }

  [v2 setObject:v8 forKeyedSubscript:*(a1 + 48)];
  [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (id)overrideStateWithName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2299;
  v15 = __Block_byref_object_dispose__2300;
  v16 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__NWNumericAccumulator_overrideStateWithName___block_invoke;
  v8[3] = &unk_1E6A3BE58;
  v8[4] = self;
  v5 = nameCopy;
  v9 = v5;
  v10 = &v11;
  os_unfair_lock_lock(&self->_lock);
  __46__NWNumericAccumulator_overrideStateWithName___block_invoke(v8);
  os_unfair_lock_unlock(&self->_lock);
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __46__NWNumericAccumulator_overrideStateWithName___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 name];
        v9 = [v8 isEqualToString:a1[5]];

        if (v9)
        {
          objc_storeStrong((*(a1[6] + 8) + 40), v7);
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (id)watcherForObject:(id)object andKeyPath:(id)path
{
  objectCopy = object;
  pathCopy = path;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2299;
  v20 = __Block_byref_object_dispose__2300;
  v21 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__NWNumericAccumulator_watcherForObject_andKeyPath___block_invoke;
  v12[3] = &unk_1E6A33400;
  v12[4] = self;
  v8 = objectCopy;
  v13 = v8;
  v9 = pathCopy;
  v14 = v9;
  v15 = &v16;
  os_unfair_lock_lock(&self->_lock);
  __52__NWNumericAccumulator_watcherForObject_andKeyPath___block_invoke(v12);
  os_unfair_lock_unlock(&self->_lock);
  v10 = v17[5];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __52__NWNumericAccumulator_watcherForObject_andKeyPath___block_invoke(void *a1)
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(NWNumericAccumulator *)self name];
  kvoWatchers = [(NWNumericAccumulator *)self kvoWatchers];
  v6 = [v3 stringWithFormat:@"<NWNumericAccumulator %@, NWAccumulatorKVOWatchers: %zu>", name, objc_msgSend(kvoWatchers, "count")];

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
  v18[2] = __31__NWNumericAccumulator_dealloc__block_invoke;
  v18[3] = &unk_1E6A3D738;
  v18[4] = self;
  v18[5] = &v19;
  os_unfair_lock_lock(&self->_lock);
  __31__NWNumericAccumulator_dealloc__block_invoke(v18);
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
        v10 = __31__NWNumericAccumulator_dealloc__block_invoke_2;
        v11 = &unk_1E6A3D760;
        v12 = v7;
        selfCopy = self;
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
  v8.super_class = NWNumericAccumulator;
  [(NWNumericAccumulator *)&v8 dealloc];
}

void __31__NWNumericAccumulator_dealloc__block_invoke(uint64_t a1)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  [*(*(a1 + 32) + 40) removeAllObjects];
  v4 = *(a1 + 32);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  [*(*(a1 + 32) + 24) removeAllObjects];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  *(v6 + 24) = 0;
}

void __31__NWNumericAccumulator_dealloc__block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) object];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) keyPath];
  [v4 removeObserver:v2 forKeyPath:v3];
}

- (NWNumericAccumulator)initWithName:(id)name
{
  v22 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = NWNumericAccumulator;
  v6 = [(NWNumericAccumulator *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_name, name);
    *&v7->_lock._os_unfair_lock_opaque = 0;
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    kvoWatchers = v7->_kvoWatchers;
    v7->_kvoWatchers = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    overriddenStates = v7->_overriddenStates;
    v7->_overriddenStates = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    accumulations = v7->_accumulations;
    v7->_accumulations = v12;

    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v14 = gLogObj;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      name = [(NWNumericAccumulator *)v7 name];
      *buf = 136446466;
      v19 = "[NWNumericAccumulator initWithName:]";
      v20 = 2112;
      v21 = name;
      _os_log_impl(&dword_181A37000, v14, OS_LOG_TYPE_DEBUG, "%{public}s NWNumericAccumulator init %@", buf, 0x16u);
    }
  }

  return v7;
}

@end