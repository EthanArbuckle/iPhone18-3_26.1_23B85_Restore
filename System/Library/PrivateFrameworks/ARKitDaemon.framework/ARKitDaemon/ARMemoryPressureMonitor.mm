@interface ARMemoryPressureMonitor
- (ARMemoryPressureMonitor)init;
- (ARMemoryPressureMonitorDelegate)delegate;
- (void)dealloc;
@end

@implementation ARMemoryPressureMonitor

- (ARMemoryPressureMonitor)init
{
  v24 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = ARMemoryPressureMonitor;
  v2 = [(ARMemoryPressureMonitor *)&v20 init];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = dispatch_source_create(MEMORY[0x277D85D18], 0, 0x36uLL, MEMORY[0x277D85CD0]);
  v4 = *(v2 + 1);
  *(v2 + 1) = v3;

  if (!*(v2 + 1))
  {
    if (ARShouldUseLogTypeError_onceToken_4 != -1)
    {
      [ARMemoryPressureMonitor init];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_4;
    v8 = _ARLogGeneral_1();
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *location = 138543618;
        *&location[4] = v11;
        v22 = 2048;
        v23 = v2;
        v12 = "%{public}@ <%p>: Failed to create the dispatch source for monitoring memory pressure.";
        v13 = v9;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_23D391000, v13, v14, v12, location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      *location = 138543618;
      *&location[4] = v11;
      v22 = 2048;
      v23 = v2;
      v12 = "Error: %{public}@ <%p>: Failed to create the dispatch source for monitoring memory pressure.";
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    v6 = 0;
    goto LABEL_14;
  }

  objc_initWeak(location, v2);
  v5 = *(v2 + 1);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__ARMemoryPressureMonitor_init__block_invoke;
  handler[3] = &unk_278BCBB68;
  objc_copyWeak(&v19, location);
  dispatch_source_set_event_handler(v5, handler);
  dispatch_activate(*(v2 + 1));
  objc_destroyWeak(&v19);
  objc_destroyWeak(location);
LABEL_4:
  v6 = v2;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v6;
}

void __31__ARMemoryPressureMonitor_init__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    data = dispatch_source_get_data(WeakRetained[1]);
    v4 = data;
    if (data <= 15)
    {
      if (data == 2)
      {
        v5 = [(dispatch_source_t *)v2 delegate];
        v6 = v5;
        v7 = v2;
        v8 = 0;
        goto LABEL_15;
      }

      if (data == 4)
      {
        v5 = [(dispatch_source_t *)v2 delegate];
        v6 = v5;
        v7 = v2;
        v8 = 1;
LABEL_15:
        [v5 memoryPressureMonitor:v7 didUpdateSystemMemoryPressureCondition:v8];
        goto LABEL_18;
      }

LABEL_9:
      if (ARShouldUseLogTypeError_onceToken_4 != -1)
      {
        __31__ARMemoryPressureMonitor_init__block_invoke_cold_1();
      }

      v12 = ARShouldUseLogTypeError_internalOSVersion_4;
      v13 = _ARLogGeneral_1();
      v6 = v13;
      if (v12 == 1)
      {
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
LABEL_18:

          goto LABEL_19;
        }

        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v21 = 138543618;
        v22 = v15;
        v23 = 2048;
        v24 = v4;
        v16 = "%{public}@: Received an unexpected memory pressure condition value: %lu";
        v17 = v6;
        v18 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          goto LABEL_18;
        }

        v20 = objc_opt_class();
        v15 = NSStringFromClass(v20);
        v21 = 138543618;
        v22 = v15;
        v23 = 2048;
        v24 = v4;
        v16 = "Error: %{public}@: Received an unexpected memory pressure condition value: %lu";
        v17 = v6;
        v18 = OS_LOG_TYPE_INFO;
      }

      _os_log_impl(&dword_23D391000, v17, v18, v16, &v21, 0x16u);

      goto LABEL_18;
    }

    if (data == 16)
    {
      v9 = [(dispatch_source_t *)v2 delegate];
      v6 = v9;
      v10 = v2;
      v11 = 0;
    }

    else
    {
      if (data != 32)
      {
        goto LABEL_9;
      }

      v9 = [(dispatch_source_t *)v2 delegate];
      v6 = v9;
      v10 = v2;
      v11 = 1;
    }

    [v9 memoryPressureMonitor:v10 didUpdateProcessMemoryPressureCondition:v11];
    goto LABEL_18;
  }

LABEL_19:

  v19 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  memoryPressureEventSource = self->_memoryPressureEventSource;
  if (memoryPressureEventSource)
  {
    dispatch_source_cancel(memoryPressureEventSource);
    v4 = self->_memoryPressureEventSource;
    self->_memoryPressureEventSource = 0;
  }

  v5.receiver = self;
  v5.super_class = ARMemoryPressureMonitor;
  [(ARMemoryPressureMonitor *)&v5 dealloc];
}

- (ARMemoryPressureMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end