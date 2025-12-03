@interface NEIKEv2Rekey
- (id)invokeChildRekeyHandler;
- (id)invokeIKERekeyHandler;
- (void)dealloc;
- (void)invalidateTimers;
- (void)startChildTimer:(void *)timer timeoutHandler:;
- (void)startIKETimer:(void *)timer timeoutHandler:;
@end

@implementation NEIKEv2Rekey

- (void)dealloc
{
  [(NEIKEv2Rekey *)self invalidateTimers];
  v3.receiver = self;
  v3.super_class = NEIKEv2Rekey;
  [(NEIKEv2Rekey *)&v3 dealloc];
}

- (void)invalidateTimers
{
  if (self)
  {
    if (objc_getProperty(self, a2, 16, 1))
    {
      [objc_getProperty(self v3];
      objc_setProperty_atomic(self, v4, 0, 16);
    }

    if (objc_getProperty(self, v3, 24, 1))
    {
      [objc_getProperty(self v5];
      objc_setProperty_atomic(self, v6, 0, 24);
    }

    if (objc_getProperty(self, v5, 40, 1))
    {
      Property = objc_getProperty(self, v7, 40, 1);
      dispatch_source_cancel(Property);
      objc_setProperty_atomic(self, v9, 0, 40);
    }

    if (objc_getProperty(self, v7, 48, 1))
    {
      v11 = objc_getProperty(self, v10, 48, 1);
      dispatch_source_cancel(v11);

      objc_setProperty_atomic(self, v12, 0, 48);
    }
  }
}

- (void)startIKETimer:(void *)timer timeoutHandler:
{
  v52 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v7 = timerCopy;
  if (self)
  {
    if (a2)
    {
      self[2] = a2;
    }

    if (timerCopy)
    {
      objc_setProperty_atomic_copy(self, v6, timerCopy, 56);
    }

    v8 = self[2];
    v9 = 45 * v8;
    if (v8 <= 2)
    {
      v10 = v8 * 5.0;
    }

    else
    {
      v10 = 15.0;
    }

    if (objc_opt_class())
    {
      if (objc_getProperty(self, v11, 16, 1))
      {
        [objc_getProperty(self v12];
      }

      else
      {
        if (objc_getProperty(self, v12, 32, 1))
        {
          v13 = objc_alloc(MEMORY[0x1E696AEC0]);
          v15 = [v13 initWithFormat:@"com.apple.networkextension[%@ IKE Lifetime]", objc_getProperty(self, v14, 32, 1)];
        }

        else
        {
          v15 = @"com.apple.networkextension[NEIKEv2PacketTunnelProvider IKE Lifetime]";
        }

        v16 = [objc_alloc(MEMORY[0x1E69D54C0]) initWithIdentifier:v15];
        objc_setProperty_atomic(self, v17, v16, 16);
      }

      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NEGetSystemWakeTime();
        *buf = 138413058;
        selfCopy2 = self;
        v46 = 2048;
        v47 = v9;
        v48 = 2048;
        v49 = v10;
        v50 = 2112;
        v51 = v19;
        _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_INFO, "%@: Setting Rekey IKE timer for %llu seconds, leeway %f seconds, last wake date %@", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v21 = objc_getProperty(self, v20, 16, 1);
      v22 = MEMORY[0x1E69E96A0];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __45__NEIKEv2Rekey_startIKETimer_timeoutHandler___block_invoke;
      v42[3] = &unk_1E7F08A50;
      objc_copyWeak(&v43, buf);
      [v21 scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v42 queue:v9 handler:v10];

      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }

    else
    {
      if (objc_getProperty(self, v11, 40, 1))
      {
        Property = objc_getProperty(self, v24, 40, 1);
        dispatch_source_cancel(Property);
        objc_setProperty_atomic(self, v26, 0, 40);
      }

      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy2 = self;
        v46 = 2048;
        v47 = v9;
        v48 = 2048;
        v49 = v10;
        _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_INFO, "%@: Setting Rekey IKE timer for %llu seconds, leeway %f seconds", buf, 0x20u);
      }

      v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      objc_setProperty_atomic(self, v29, v28, 40);

      if (objc_getProperty(self, v30, 40, 1))
      {
        v32 = objc_getProperty(self, v31, 40, 1);
        v33 = dispatch_time(0x8000000000000000, 1000000000 * v9);
        dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, (v10 * 1000000000.0));

        objc_initWeak(buf, self);
        v35 = objc_getProperty(self, v34, 40, 1);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __45__NEIKEv2Rekey_startIKETimer_timeoutHandler___block_invoke_6;
        handler[3] = &unk_1E7F0AA58;
        v36 = v35;
        objc_copyWeak(&v41, buf);
        dispatch_source_set_event_handler(v36, handler);

        v38 = objc_getProperty(self, v37, 40, 1);
        dispatch_activate(v38);
        objc_destroyWeak(&v41);
        objc_destroyWeak(buf);
      }

      else
      {
        v39 = ne_log_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)invokeIKERekeyHandler
{
  result = objc_getProperty(self, a2, 56, 1);
  if (result)
  {
    v5 = *(objc_getProperty(self, v4, 56, 1) + 2);

    return v5();
  }

  return result;
}

void __45__NEIKEv2Rekey_startIKETimer_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(NEIKEv2Rekey *)WeakRetained startIKETimer:0 timeoutHandler:?];
    [(NEIKEv2Rekey *)v3 invokeIKERekeyHandler];
    WeakRetained = v3;
  }
}

void __45__NEIKEv2Rekey_startIKETimer_timeoutHandler___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(NEIKEv2Rekey *)WeakRetained startIKETimer:0 timeoutHandler:?];
    [(NEIKEv2Rekey *)v3 invokeIKERekeyHandler];
    WeakRetained = v3;
  }
}

- (void)startChildTimer:(void *)timer timeoutHandler:
{
  v52 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  v7 = timerCopy;
  if (self)
  {
    if (a2)
    {
      self[3] = a2;
    }

    if (timerCopy)
    {
      objc_setProperty_atomic_copy(self, v6, timerCopy, 64);
    }

    v8 = self[3];
    v9 = 45 * v8;
    if (v8 <= 2)
    {
      v10 = v8 * 5.0;
    }

    else
    {
      v10 = 15.0;
    }

    if (objc_opt_class())
    {
      if (objc_getProperty(self, v11, 24, 1))
      {
        [objc_getProperty(self v12];
      }

      else
      {
        if (objc_getProperty(self, v12, 32, 1))
        {
          v13 = objc_alloc(MEMORY[0x1E696AEC0]);
          v15 = [v13 initWithFormat:@"com.apple.networkextension[%@ Child Lifetime]", objc_getProperty(self, v14, 32, 1)];
        }

        else
        {
          v15 = @"com.apple.networkextension[NEIKEv2PacketTunnelProvider Child Lifetime]";
        }

        v16 = [objc_alloc(MEMORY[0x1E69D54C0]) initWithIdentifier:v15];
        objc_setProperty_atomic(self, v17, v16, 24);
      }

      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = NEGetSystemWakeTime();
        *buf = 138413058;
        selfCopy2 = self;
        v46 = 2048;
        v47 = v9;
        v48 = 2048;
        v49 = v10;
        v50 = 2112;
        v51 = v19;
        _os_log_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_INFO, "%@: Setting Rekey Child timer for %llu seconds, leeway %f seconds, last wake date %@", buf, 0x2Au);
      }

      objc_initWeak(buf, self);
      v21 = objc_getProperty(self, v20, 24, 1);
      v22 = MEMORY[0x1E69E96A0];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __47__NEIKEv2Rekey_startChildTimer_timeoutHandler___block_invoke;
      v42[3] = &unk_1E7F08A50;
      objc_copyWeak(&v43, buf);
      [v21 scheduleWithFireInterval:MEMORY[0x1E69E96A0] leewayInterval:v42 queue:v9 handler:v10];

      objc_destroyWeak(&v43);
      objc_destroyWeak(buf);
    }

    else
    {
      if (objc_getProperty(self, v11, 48, 1))
      {
        Property = objc_getProperty(self, v24, 48, 1);
        dispatch_source_cancel(Property);
        objc_setProperty_atomic(self, v26, 0, 48);
      }

      v27 = ne_log_obj();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        selfCopy2 = self;
        v46 = 2048;
        v47 = v9;
        v48 = 2048;
        v49 = v10;
        _os_log_impl(&dword_1BA83C000, v27, OS_LOG_TYPE_INFO, "%@: Setting Rekey Child timer for %llu seconds, leeway %f seconds", buf, 0x20u);
      }

      v28 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
      objc_setProperty_atomic(self, v29, v28, 48);

      if (objc_getProperty(self, v30, 48, 1))
      {
        v32 = objc_getProperty(self, v31, 48, 1);
        v33 = dispatch_time(0x8000000000000000, 1000000000 * v9);
        dispatch_source_set_timer(v32, v33, 0xFFFFFFFFFFFFFFFFLL, (v10 * 1000000000.0));

        objc_initWeak(buf, self);
        v35 = objc_getProperty(self, v34, 48, 1);
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = __47__NEIKEv2Rekey_startChildTimer_timeoutHandler___block_invoke_14;
        handler[3] = &unk_1E7F0AA58;
        v36 = v35;
        objc_copyWeak(&v41, buf);
        dispatch_source_set_event_handler(v36, handler);

        v38 = objc_getProperty(self, v37, 48, 1);
        dispatch_activate(v38);
        objc_destroyWeak(&v41);
        objc_destroyWeak(buf);
      }

      else
      {
        v39 = ne_log_obj();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1BA83C000, v39, OS_LOG_TYPE_FAULT, "dispatch_source_create failed", buf, 2u);
        }
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (id)invokeChildRekeyHandler
{
  result = objc_getProperty(self, a2, 64, 1);
  if (result)
  {
    v5 = *(objc_getProperty(self, v4, 64, 1) + 2);

    return v5();
  }

  return result;
}

void __47__NEIKEv2Rekey_startChildTimer_timeoutHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(NEIKEv2Rekey *)WeakRetained startChildTimer:0 timeoutHandler:?];
    [(NEIKEv2Rekey *)v3 invokeChildRekeyHandler];
    WeakRetained = v3;
  }
}

void __47__NEIKEv2Rekey_startChildTimer_timeoutHandler___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [(NEIKEv2Rekey *)WeakRetained startChildTimer:0 timeoutHandler:?];
    [(NEIKEv2Rekey *)v3 invokeChildRekeyHandler];
    WeakRetained = v3;
  }
}

@end