@interface RPBackgroundActivity
- (RPBackgroundActivity)initWithBackgroundActivityIdentifier:(id)identifier;
- (void)activateWithUserInteractionHandler:(id)handler;
- (void)deactivate;
- (void)dealloc;
- (void)publishNewDataWithUserInteractionHandler:(id)handler;
- (void)updateTimerString:(id)string;
@end

@implementation RPBackgroundActivity

- (RPBackgroundActivity)initWithBackgroundActivityIdentifier:(id)identifier
{
  v21 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    v16 = "[RPBackgroundActivity initWithBackgroundActivityIdentifier:]";
    v17 = 1024;
    v18 = 28;
    v19 = 2112;
    v20 = identifierCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Initializing with identifier: %@", buf, 0x1Cu);
  }

  if (!identifierCopy || ![(__CFString *)identifierCopy length])
  {
    if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RPBackgroundActivity initWithBackgroundActivityIdentifier:];
    }

    identifierCopy = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  }

  v14.receiver = self;
  v14.super_class = RPBackgroundActivity;
  v5 = [(RPBackgroundActivity *)&v14 init];
  if (v5)
  {
    v6 = [(__CFString *)identifierCopy copy];
    backgroundActivityIdentifier = v5->_backgroundActivityIdentifier;
    v5->_backgroundActivityIdentifier = v6;

    v5->_backgroundActivityActive = 0;
    currentTimerString = v5->_currentTimerString;
    v5->_currentTimerString = 0;

    v9 = dispatch_queue_create("com.apple.replaykit.backgroundactivity", 0);
    synchronizationQueue = v5->_synchronizationQueue;
    v5->_synchronizationQueue = v9;

    v11 = objc_alloc_init(MEMORY[0x277D6B910]);
    [(RPBackgroundActivity *)v5 setPublisher:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v8 = "[RPBackgroundActivity dealloc]";
    v9 = 1024;
    v10 = 50;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Deallocating RPBackgroundActivity", buf, 0x12u);
  }

  [(RPBackgroundActivity *)self deactivate];
  publisher = [(RPBackgroundActivity *)self publisher];

  if (publisher)
  {
    publisher2 = [(RPBackgroundActivity *)self publisher];
    [publisher2 invalidate];

    [(RPBackgroundActivity *)self setPublisher:0];
  }

  [(RPBackgroundActivity *)self setCurrentAttribution:0];
  [(RPBackgroundActivity *)self setCurrentTimerString:0];
  v6.receiver = self;
  v6.super_class = RPBackgroundActivity;
  [(RPBackgroundActivity *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)activateWithUserInteractionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v9 = "[RPBackgroundActivity activateWithUserInteractionHandler:]";
    v10 = 1024;
    v11 = 63;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Activating background activity", buf, 0x12u);
  }

  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__RPBackgroundActivity_activateWithUserInteractionHandler___block_invoke;
  block[3] = &unk_278B61B70;
  block[4] = self;
  dispatch_sync(synchronizationQueue, block);
  [(RPBackgroundActivity *)self publishNewDataWithUserInteractionHandler:handlerCopy];

  v6 = *MEMORY[0x277D85DE8];
}

void __59__RPBackgroundActivity_activateWithUserInteractionHandler___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136446466;
      v4 = "[RPBackgroundActivity activateWithUserInteractionHandler:]_block_invoke";
      v5 = 1024;
      v6 = 67;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity already active, skipping activation", &v3, 0x12u);
    }
  }

  else
  {
    *(v1 + 8) = 1;
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)deactivate
{
  v8 = *MEMORY[0x277D85DE8];
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    *&buf[4] = "[RPBackgroundActivity deactivate]";
    *&buf[12] = 1024;
    *&buf[14] = 77;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Deactivating background activity", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v7 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__RPBackgroundActivity_deactivate__block_invoke;
  v5[3] = &unk_278B61B98;
  v5[4] = self;
  v5[5] = buf;
  dispatch_sync(synchronizationQueue, v5);
  if (*(*&buf[8] + 24) == 1)
  {
    [(RPBackgroundActivity *)self publishNewDataWithUserInteractionHandler:0];
  }

  _Block_object_dispose(buf, 8);
  v4 = *MEMORY[0x277D85DE8];
}

void __34__RPBackgroundActivity_deactivate__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8))
  {
    *(v1 + 8) = 0;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136446466;
    v4 = "[RPBackgroundActivity deactivate]_block_invoke";
    v5 = 1024;
    v6 = 82;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, skipping deactivation", &v3, 0x12u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

- (void)updateTimerString:(id)string
{
  v17 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = "[RPBackgroundActivity updateTimerString:]";
    *&buf[12] = 1024;
    *&buf[14] = 95;
    *&buf[18] = 2112;
    *&buf[20] = stringCopy;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d timer=%@", buf, 0x1Cu);
  }

  if (stringCopy)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 0;
    synchronizationQueue = self->_synchronizationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__RPBackgroundActivity_updateTimerString___block_invoke;
    block[3] = &unk_278B61BC0;
    v12 = buf;
    block[4] = self;
    v11 = stringCopy;
    dispatch_sync(synchronizationQueue, block);
    if (*(*&buf[8] + 24))
    {
      if (self->_publisher)
      {
        objc_initWeak(location, self);
        publisher = self->_publisher;
        v8[0] = MEMORY[0x277D85DD0];
        v8[1] = 3221225472;
        v8[2] = __42__RPBackgroundActivity_updateTimerString___block_invoke_5;
        v8[3] = &unk_278B61BE8;
        objc_copyWeak(&v9, location);
        [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v8 completion:0];
        objc_destroyWeak(&v9);
        objc_destroyWeak(location);
      }

      else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPBackgroundActivity updateTimerString:];
      }
    }

    else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *location = 136446466;
      *&location[4] = "[RPBackgroundActivity updateTimerString:]";
      v14 = 1024;
      v15 = 109;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Background activity not active, storing timer string for later use", location, 0x12u);
    }

    _Block_object_dispose(buf, 8);
  }

  else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPBackgroundActivity updateTimerString:];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __42__RPBackgroundActivity_updateTimerString___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 8);
  v2 = [*(a1 + 40) copy];
  [*(a1 + 32) setCurrentTimerString:v2];
}

void __42__RPBackgroundActivity_updateTimerString___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained currentAttribution];

    if (v9)
    {
      v10 = objc_alloc(MEMORY[0x277D6B900]);
      v11 = [v8 currentAttribution];
      v12 = [v11 backgroundActivityIdentifier];
      v13 = [v8 currentAttribution];
      v14 = [v13 activityAttribution];
      v15 = [v10 initWithBackgroundActivityIdentifier:v12 activityAttribution:v14];

      v16 = [v8 currentAttribution];
      [v5 removeAttribution:v16];

      [v5 addAttribution:v15];
      [v8 setCurrentAttribution:v15];
    }

    else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136446466;
      v19 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
      v20 = 1024;
      v21 = 136;
      _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d No current attribution to update with timer string", &v18, 0x12u);
    }

    [v6 setUserInitiated:0];
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136446466;
    v19 = "[RPBackgroundActivity updateTimerString:]_block_invoke";
    v20 = 1024;
    v21 = 122;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during timer update", &v18, 0x12u);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)publishNewDataWithUserInteractionHandler:(id)handler
{
  v35 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  synchronizationQueue = self->_synchronizationQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke;
  block[3] = &unk_278B61C10;
  block[4] = self;
  block[5] = &v25;
  dispatch_sync(synchronizationQueue, block);
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(v26 + 24);
    *buf = 136446722;
    v30 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]";
    v31 = 1024;
    v32 = 148;
    v33 = 1024;
    LODWORD(v34) = v6;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Publishing new data with active state: %d", buf, 0x18u);
  }

  publisher = [(RPBackgroundActivity *)self publisher];
  v8 = publisher == 0;

  if (!v8)
  {
    v9 = self->_currentAttribution;
    if (*(v26 + 24) == 1)
    {
      v10 = MEMORY[0x277D6B8E8];
      BSAuditTokenForCurrentProcess();
      v11 = [v10 attributionWithAuditToken:buf];
      if (v11)
      {
        v12 = [objc_alloc(MEMORY[0x277D6B900]) initWithBackgroundActivityIdentifier:self->_backgroundActivityIdentifier activityAttribution:v11];
        if (v12)
        {
          if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            v30 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]";
            v31 = 1024;
            v32 = 174;
            v33 = 2112;
            v34 = v12;
            _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Created new background activity attribution=%@", buf, 0x1Cu);
          }

          goto LABEL_16;
        }

        if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [RPBackgroundActivity publishNewDataWithUserInteractionHandler:];
        }
      }

      else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [RPBackgroundActivity publishNewDataWithUserInteractionHandler:];
      }

      v15 = 0;
      goto LABEL_24;
    }

    v12 = 0;
LABEL_16:
    objc_initWeak(buf, self);
    publisher = self->_publisher;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_9;
    v21[3] = &unk_278B61C38;
    v22 = v9;
    v14 = v12;
    v23 = v14;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10;
    v17[3] = &unk_278B61CB0;
    objc_copyWeak(&v20, buf);
    v15 = v14;
    v18 = v15;
    v19 = handlerCopy;
    [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v21 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
LABEL_24:

    goto LABEL_25;
  }

  if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [RPBackgroundActivity publishNewDataWithUserInteractionHandler:];
  }

LABEL_25:
  _Block_object_dispose(&v25, 8);

  v16 = *MEMORY[0x277D85DE8];
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v12 = 136446722;
        v13 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v14 = 1024;
        v15 = 180;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Removing background activity attribution=%@", &v12, 0x1Cu);
      }

      v7 = *(a1 + 32);
    }

    [v5 removeAttribution:v7];
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    if (__RPLogLevel <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        v12 = 136446722;
        v13 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
        v14 = 1024;
        v15 = 184;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Adding background activity attribution=%@", &v12, 0x1Cu);
      }

      v9 = *(a1 + 40);
    }

    [v5 addAttribution:v9];
  }

  [v6 setUserInitiated:1];

  v11 = *MEMORY[0x277D85DE8];
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10(id *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 6);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_11;
    block[3] = &unk_278B61C60;
    block[4] = WeakRetained;
    v10 = a1[4];
    dispatch_sync(v4, block);
    v5 = v3[5];
    if (v5)
    {
      if (a1[5])
      {
        if (__RPLogLevel > 1)
        {
          goto LABEL_8;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v13 = 1024;
          v14 = 205;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Setting user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_8:
          v7[0] = MEMORY[0x277D85DD0];
          v7[1] = 3221225472;
          v7[2] = __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_12;
          v7[3] = &unk_278B61C88;
          v8 = a1[5];
          [v5 handleUserInteractionsWithBlock:v7];
        }
      }

      else
      {
        if (__RPLogLevel > 1)
        {
          goto LABEL_19;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446466;
          v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
          v13 = 1024;
          v14 = 213;
          _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Clearing user interaction handler", buf, 0x12u);
        }

        v5 = v3[5];
        if (v5)
        {
LABEL_19:
          [v5 handleUserInteractionsWithBlock:0];
        }
      }
    }

    else if (__RPLogLevel <= 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10_cold_1();
    }
  }

  else if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446466;
    v12 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v13 = 1024;
    v14 = 191;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d Self was deallocated during publish operation", buf, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (__RPLogLevel <= 1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446466;
    v6 = "[RPBackgroundActivity publishNewDataWithUserInteractionHandler:]_block_invoke";
    v7 = 1024;
    v8 = 208;
    _os_log_impl(&dword_23A863000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d User interaction detected", &v5, 0x12u);
  }

  (*(*(a1 + 32) + 16))();

  v4 = *MEMORY[0x277D85DE8];
}

- (void)initWithBackgroundActivityIdentifier:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Invalid identifier provided, using default", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTimerString:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Publisher has been invalidated, cannot update timer string", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)updateTimerString:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Nil timer string provided to updateTimerString", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishNewDataWithUserInteractionHandler:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Failed to create background activity attribution", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishNewDataWithUserInteractionHandler:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Failed to create STActivityAttribution", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)publishNewDataWithUserInteractionHandler:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Publisher is nil, cannot publish data", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__RPBackgroundActivity_publishNewDataWithUserInteractionHandler___block_invoke_10_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_23A863000, MEMORY[0x277D86220], v0, " [ERROR] %{public}s:%d Publisher was invalidated during operation, cannot set handlers", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

@end