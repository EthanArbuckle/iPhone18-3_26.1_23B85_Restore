@interface NWURLBackgroundScheduler
- (void)complete;
@end

@implementation NWURLBackgroundScheduler

- (void)complete
{
  v16 = *MEMORY[0x1E69E9840];
  if (self && *(self + 8))
  {
    gotLoadHelper_x22__OBJC_CLASS___BGSystemTaskScheduler(a2);
    if (v4)
    {
      [v4 setTaskCompleted];
      v5 = *(self + 16);
      *(self + 16) = 0;
    }

    else
    {
      sharedScheduler = [*(v2 + 1216) sharedScheduler];
      v7 = [sharedScheduler cancelTaskRequestWithIdentifier:*(self + 8) error:0];

      if ((v7 & 1) == 0)
      {
        if (__nwlog_url_log::onceToken != -1)
        {
          dispatch_once(&__nwlog_url_log::onceToken, &__block_literal_global_72);
        }

        v8 = gurlLogObj;
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = *(self + 8);
          v12 = 138412546;
          v13 = v9;
          v14 = 2112;
          v15 = 0;
          _os_log_impl(&dword_181A37000, v8, OS_LOG_TYPE_ERROR, "Failed to cancel background system task %@: %@", &v12, 0x16u);
        }
      }
    }

    sharedScheduler2 = [*(v2 + 1216) sharedScheduler];
    [sharedScheduler2 deregisterTaskWithIdentifier:*(self + 8)];

    v11 = *(self + 8);
    *(self + 8) = 0;
  }
}

void __123__NWURLBackgroundScheduler_schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_storeStrong((v5 + 16), a2);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __123__NWURLBackgroundScheduler_schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler___block_invoke_2;
  v6[3] = &unk_1E6A39AE8;
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v8 = *(a1 + 32);
  [v4 setExpirationHandler:v6];
  (*(*(a1 + 56) + 16))();
}

void __123__NWURLBackgroundScheduler_schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __123__NWURLBackgroundScheduler_schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler___block_invoke_3;
  v3[3] = &unk_1E6A3D710;
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, v3);
}

void __123__NWURLBackgroundScheduler_schedulerWithConfiguration_description_endpoint_parameters_queue_stopHandler_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v3 = *(a1 + 32);

  [(NWURLBackgroundScheduler *)v3 complete];
}

@end