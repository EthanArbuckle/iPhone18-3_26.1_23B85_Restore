@interface BAAppStoreProgressObserver
+ (id)progressObserverWithConfiguration:(id)a3;
- (_BYTE)_initPrivately;
- (void)invalidate;
- (void)setAppBundleIdentifiers:(id)a3;
- (void)setHandlerQueue:(id)a3;
- (void)setSystemProxy:(uint64_t)a1;
- (void)setUpdateHandler:(id)a3;
- (void)updateConfiguration:(id)a3;
@end

@implementation BAAppStoreProgressObserver

- (void)updateConfiguration:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if (!self->_valid)
  {
    v12 = objc_opt_new();
    v4[2](v4, v12);

    goto LABEL_9;
  }

  self->_configuring = 1;
  v4[2](v4, self);
  self->_configuring = 0;
  v5 = self->_configuration;
  if (!v5)
  {
LABEL_9:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_10;
  }

  v6 = v5;
  self->_observing = 1;
  os_unfair_lock_unlock(&self->_lock);
  systemProxy = self->_systemProxy;
  v13 = 0;
  v8 = systemProxy;
  v9 = [(BAAgentSystemProxy *)v8 updateAppStoreProgressObservationWithConfiguration:v6 error:&v13];
  v10 = v13;

  if (!v9)
  {
    v11 = BAClientConnectionLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BAAppStoreProgressObserver *)v6 updateConfiguration:v10, v11];
    }

    os_unfair_lock_lock(&self->_lock);
    self->_observing = 0;
    os_unfair_lock_unlock(&self->_lock);
  }

LABEL_10:
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_valid)
  {
    self->_valid = 0;
    [(BAAgentSystemProxy *)self->_systemProxy invalidate];
    [(BAAppStoreProgressObserver *)self setSystemProxy:?];
    self->_observing = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setAppBundleIdentifiers:(id)a3
{
  v12 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_configuring)
  {
    [(BAAppStoreProgressConfiguration *)self->_configuration setAppBundleIdentifiers:v12];
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(BAAppStoreProgressObserver *)v4 setAppBundleIdentifiers:v5, v6, v7, v8, v9, v10, v11];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Cannot invoke setAppBundleIdentifiers: outside of updateConfiguration:";
    __break(0xB001u);
  }
}

- (void)setUpdateHandler:(id)a3
{
  v12 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_configuring)
  {
    [(BAAppStoreProgressConfiguration *)self->_configuration setUpdateHandler:v12];
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(BAAppStoreProgressObserver *)v4 setUpdateHandler:v5, v6, v7, v8, v9, v10, v11];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Cannot invoke setUpdateHandler: outside of updateConfiguration:";
    __break(0xB001u);
  }
}

- (void)setHandlerQueue:(id)a3
{
  v12 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (self->_configuring)
  {
    [(BAAppStoreProgressConfiguration *)self->_configuration setHandlerQueue:v12];
  }

  else
  {
    v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v4)
    {
      [(BAAppStoreProgressObserver *)v4 setHandlerQueue:v5, v6, v7, v8, v9, v10, v11];
    }

    qword_27DE88540 = "BUG IN CLIENT OF BackgroundAssets: Cannot invoke setHandlerQueue: outside of updateConfiguration:";
    __break(0xB001u);
  }
}

- (_BYTE)_initPrivately
{
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = BAAppStoreProgressObserver;
  v1 = objc_msgSendSuper2(&v8, sel_init);
  v2 = v1;
  if (v1)
  {
    v1[12] = 1;
    *(v1 + 2) = 0;
    v3 = objc_alloc_init(BAAppStoreProgressConfiguration);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = objc_alloc_init(BAAgentSystemProxy);
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;
  }

  return v2;
}

+ (id)progressObserverWithConfiguration:(id)a3
{
  v3 = a3;
  inited = [[BAAppStoreProgressObserver alloc] _initPrivately];
  [inited updateConfiguration:v3];

  return inited;
}

- (void)setSystemProxy:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (void)updateConfiguration:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_236E28000, log, OS_LOG_TYPE_ERROR, "BAAppStoreProgressObserver: Failed to start progress observer. Config: %{public}@ Error: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)setAppBundleIdentifiers:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpdateHandler:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setHandlerQueue:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8(&dword_236E28000, MEMORY[0x277D86220], a3, "BUG IN CLIENT OF BackgroundAssets: %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end