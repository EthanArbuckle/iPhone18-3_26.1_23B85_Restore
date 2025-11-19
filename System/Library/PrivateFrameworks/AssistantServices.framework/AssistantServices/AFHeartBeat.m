@interface AFHeartBeat
- (AFHeartBeat)initWithIdentifier:(id)a3 queue:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 heartBeatInterval:(double)a7 heartBeatHandler:(id)a8 invalidationHandler:(id)a9;
- (NSString)description;
- (void)_fire;
- (void)_invalidate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation AFHeartBeat

- (void)_fire
{
  v16 = *MEMORY[0x1E69E9840];
  add = atomic_fetch_add(&self->_numberOfHeartBeats, 1uLL);
  if (0xCCCCCCCCCCCCCCCDLL * add <= 0x3333333333333333)
  {
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
    {
      identifier = self->_identifier;
      v8 = 136315906;
      v9 = "[AFHeartBeat _fire]";
      v10 = 2048;
      v11 = self;
      v12 = 2112;
      v13 = identifier;
      v14 = 2048;
      v15 = add;
      _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s %p identifier = %@, index = %llu", &v8, 0x2Au);
    }
  }

  heartBeatHandler = self->_heartBeatHandler;
  if (heartBeatHandler)
  {
    heartBeatHandler[2](heartBeatHandler, add);
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_invalidate
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&self->_numberOfHeartBeats);
  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_DEBUG))
  {
    identifier = self->_identifier;
    v13 = 136315906;
    v14 = "[AFHeartBeat _invalidate]";
    v15 = 2048;
    v16 = self;
    v17 = 2112;
    v18 = identifier;
    v19 = 2048;
    v20 = v3;
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s %p identifier = %@, count = %llu", &v13, 0x2Au);
  }

  heartBeatTimer = self->_heartBeatTimer;
  if (heartBeatTimer)
  {
    dispatch_source_cancel(heartBeatTimer);
    v6 = self->_heartBeatTimer;
    self->_heartBeatTimer = 0;
  }

  expirationTimer = self->_expirationTimer;
  if (expirationTimer)
  {
    dispatch_source_cancel(expirationTimer);
    v8 = self->_expirationTimer;
    self->_expirationTimer = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2](invalidationHandler, v3);
    v10 = self->_invalidationHandler;
    self->_invalidationHandler = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v8 = "[AFHeartBeat invalidate]";
    v9 = 2048;
    v10 = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__AFHeartBeat_invalidate__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(queue, block);
  v5 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12.receiver = self;
  v12.super_class = AFHeartBeat;
  v4 = [(AFHeartBeat *)&v12 description];
  identifier = self->_identifier;
  effectiveDate = self->_effectiveDate;
  [(NSDate *)effectiveDate timeIntervalSinceNow];
  expirationDuration = self->_expirationDuration;
  v8 = atomic_load(&self->_numberOfHeartBeats);
  v10 = [v3 initWithFormat:@"%@ {identifier = %@, effectiveDate = %@ (%f seconds), expirationDuration = %f, numberOfHeartBeats = %llu}", v4, identifier, effectiveDate, v9, *&expirationDuration, v8];

  return v10;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    identifier = self->_identifier;
    *buf = 136315650;
    v8 = "[AFHeartBeat dealloc]";
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = identifier;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p identifier = %@", buf, 0x20u);
  }

  [(AFHeartBeat *)self _invalidate];
  v6.receiver = self;
  v6.super_class = AFHeartBeat;
  [(AFHeartBeat *)&v6 dealloc];
  v5 = *MEMORY[0x1E69E9840];
}

- (AFHeartBeat)initWithIdentifier:(id)a3 queue:(id)a4 effectiveDate:(id)a5 expirationDuration:(double)a6 heartBeatInterval:(double)a7 heartBeatHandler:(id)a8 invalidationHandler:(id)a9
{
  v82 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v69.receiver = self;
  v69.super_class = AFHeartBeat;
  v21 = [(AFHeartBeat *)&v69 init];
  if (!v21)
  {
    goto LABEL_24;
  }

  v22 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136316418;
    v71 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
    v72 = 2048;
    v73 = v21;
    v74 = 2112;
    v75 = *&v16;
    v76 = 2112;
    v77 = *&v18;
    v78 = 2048;
    v79 = a6;
    v80 = 2048;
    v81 = a7;
    _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s %p identifier = %@, effectiveDate = %@, expirationDuration = %f, heartBeatInterval = %f", buf, 0x3Eu);
  }

  v23 = [v16 copy];
  v24 = *(v21 + 7);
  *(v21 + 7) = v23;

  objc_storeStrong(v21 + 1, a4);
  v25 = [v18 copy];
  v26 = v25;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [MEMORY[0x1E695DF00] date];
  }

  v28 = *(v21 + 8);
  *(v21 + 8) = v27;

  *(v21 + 9) = a6;
  *(v21 + 10) = a7;
  v29 = MEMORY[0x193AFB7B0](v19);
  v30 = *(v21 + 4);
  *(v21 + 4) = v29;

  v31 = MEMORY[0x193AFB7B0](v20);
  v32 = *(v21 + 5);
  *(v21 + 5) = v31;

  if (a7 > 0.0)
  {
    if (a6 < 0.0)
    {
      v33 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v71 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
        v72 = 2048;
        v73 = v21;
        v74 = 2048;
        v75 = a6;
        _os_log_error_impl(&dword_1912FE000, v33, OS_LOG_TYPE_ERROR, "%s %p Expiration duration %f is invalid.", buf, 0x20u);
      }

      v34 = *(v21 + 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_1;
      block[3] = &unk_1E73497C8;
      v35 = v21;
      v66 = v35;
      dispatch_async(v34, block);
      v36 = v35;

      goto LABEL_25;
    }

    [v18 timeIntervalSinceNow];
    if (a6 > 0.0 && v41 < 0.0 && v41 + a6 < 0.0)
    {
      v42 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v71 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
        v72 = 2048;
        v73 = v21;
        v74 = 2112;
        v75 = *&v18;
        v76 = 2048;
        v77 = a6;
        _os_log_error_impl(&dword_1912FE000, v42, OS_LOG_TYPE_ERROR, "%s %p Effective date %@ and expiration duration %f are in the past.", buf, 0x2Au);
      }

      v43 = *(v21 + 1);
      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_2;
      v63[3] = &unk_1E73497C8;
      v44 = v21;
      v64 = v44;
      dispatch_async(v43, v63);
      v45 = v44;

      goto LABEL_25;
    }

    objc_initWeak(buf, v21);
    v46 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v17);
    v47 = *(v21 + 2);
    *(v21 + 2) = v46;

    v48 = *(v21 + 2);
    v49 = AFDispatchTimeGetFromDateAndOffset(v18, 0.0);
    dispatch_source_set_timer(v48, v49, (a7 * 1000000000.0), 0);
    v50 = *(v21 + 2);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_2;
    handler[3] = &unk_1E7348A80;
    objc_copyWeak(&v62, buf);
    dispatch_source_set_event_handler(v50, handler);
    dispatch_resume(*(v21 + 2));
    if (a6 > 0.0)
    {
      v51 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v17);
      v52 = *(v21 + 3);
      *(v21 + 3) = v51;

      v53 = *(v21 + 3);
      v54 = AFDispatchTimeGetFromDateAndOffset(v18, a6);
      dispatch_source_set_timer(v53, v54, 0xFFFFFFFFFFFFFFFFLL, 0);
      v55 = *(v21 + 3);
      v59[0] = MEMORY[0x1E69E9820];
      v59[1] = 3221225472;
      v59[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_3;
      v59[3] = &unk_1E7348A80;
      objc_copyWeak(&v60, buf);
      dispatch_source_set_event_handler(v55, v59);
      dispatch_resume(*(v21 + 3));
      objc_destroyWeak(&v60);
    }

    objc_destroyWeak(&v62);
    objc_destroyWeak(buf);
LABEL_24:
    v56 = v21;
    goto LABEL_25;
  }

  v37 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v71 = "[AFHeartBeat initWithIdentifier:queue:effectiveDate:expirationDuration:heartBeatInterval:heartBeatHandler:invalidationHandler:]";
    v72 = 2048;
    v73 = v21;
    v74 = 2048;
    v75 = a7;
    _os_log_error_impl(&dword_1912FE000, v37, OS_LOG_TYPE_ERROR, "%s %p Heart beat interval %f is invalid.", buf, 0x20u);
  }

  v38 = *(v21 + 1);
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke;
  v67[3] = &unk_1E73497C8;
  v39 = v21;
  v68 = v39;
  dispatch_async(v38, v67);
  v40 = v39;

LABEL_25:
  v57 = *MEMORY[0x1E69E9840];
  return v21;
}

void __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fire];
}

void __128__AFHeartBeat_initWithIdentifier_queue_effectiveDate_expirationDuration_heartBeatInterval_heartBeatHandler_invalidationHandler___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _invalidate];
}

@end