@interface ATConcreteService
- (ATConcreteService)init;
- (BOOL)run;
- (BOOL)stop;
- (void)messageLinkWasClosed:(id)a3;
- (void)messageLinkWasInitialized:(id)a3;
- (void)messageLinkWasOpened:(id)a3;
@end

@implementation ATConcreteService

- (void)messageLinkWasClosed:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_22392A000, v5, OS_LOG_TYPE_DEFAULT, "message link %{public}@ was closed", &v7, 0xCu);
  }

  [(ATService *)self removeMessageLink:v4];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasOpened:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "message link %{public}@ was opened", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)messageLinkWasInitialized:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_22392A000, v4, OS_LOG_TYPE_DEFAULT, "message link %{public}@ was initialized", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)stop
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "service %{public}@: stop", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__ATConcreteService_stop__block_invoke;
  block[3] = &unk_2784E94D0;
  block[4] = self;
  dispatch_sync(queue, block);
  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

void __25__ATConcreteService_stop__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) messageLinks];
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

        [*(*(&v9 + 1) + 8 * v6++) close];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v7 = [*(a1 + 32) messageLinks];
  [v7 removeAllObjects];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)run
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = _ATLogCategoryFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = self;
    _os_log_impl(&dword_22392A000, v3, OS_LOG_TYPE_DEFAULT, "service %{public}@: run", buf, 0xCu);
  }

  v4 = dispatch_get_global_queue(0, 0);
  v5 = dispatch_source_create(MEMORY[0x277D85D30], 0x1EuLL, 0, v4);
  signalSource = self->_signalSource;
  self->_signalSource = v5;

  dispatch_source_set_event_handler(self->_signalSource, &__block_literal_global_1606);
  dispatch_resume(self->_signalSource);
  v7 = 1;
  signal(30, 1);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [(ATService *)self messageLinks];
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (([(ATConcreteService *)v13 open]& 1) == 0)
        {
          v14 = _ATLogCategoryFramework();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v23 = v13;
            _os_log_impl(&dword_22392A000, v14, OS_LOG_TYPE_ERROR, "failed to open message link %{public}@", buf, 0xCu);
          }

          v7 = 0;
          goto LABEL_15;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v7 = 1;
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

void __24__ATConcreteService_run__block_invoke()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277CEA3D8] object:0];
}

- (ATConcreteService)init
{
  v10.receiver = self;
  v10.super_class = ATConcreteService;
  v2 = [(ATService *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = [MEMORY[0x277CCAC38] processInfo];
    [v7 systemUptime];
    v2->_startTime = v8;
  }

  return v2;
}

@end