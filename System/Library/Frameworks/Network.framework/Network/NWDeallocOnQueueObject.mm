@interface NWDeallocOnQueueObject
- (void)_objc_initiateDealloc;
@end

@implementation NWDeallocOnQueueObject

- (void)_objc_initiateDealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [(NWDeallocOnQueueObject *)self copyContext];
  v4 = v3;
  if (v3)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__NWDeallocOnQueueObject__objc_initiateDealloc__block_invoke;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = self;
    nw_queue_context_async_if_needed(v3, v6);
  }

  else
  {
    pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
    networkd_settings_init();
    v5 = gLogObj;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v8 = "[NWDeallocOnQueueObject _objc_initiateDealloc]";
      v9 = 2048;
      v10 = self;
      _os_log_impl(&dword_181A37000, v5, OS_LOG_TYPE_DEBUG, "%{public}s Object at address %p does not have a context so deallocing on current queue", buf, 0x16u);
    }

    nw_invoke_dealloc(self);
  }
}

@end