@interface AVUXMDisplayManager
+ (AVUXMDisplayManager)sharedAVKitUXMDisplayManager;
- (AVDisplayCriteria)preferredDisplayCriteria;
- (id)initInternal;
- (void)dealloc;
- (void)setPreferredDisplayCriteria:(id)criteria;
@end

@implementation AVUXMDisplayManager

- (void)dealloc
{
  [(AVUXMDisplayManager *)self setPreferredDisplayCriteria:0];
  v3.receiver = self;
  v3.super_class = AVUXMDisplayManager;
  [(AVUXMDisplayManager *)&v3 dealloc];
}

+ (AVUXMDisplayManager)sharedAVKitUXMDisplayManager
{
  if (createDispatchQueueOnce_onceToken != -1)
  {
    +[AVUXMDisplayManager sharedAVKitUXMDisplayManager];
  }

  return 0;
}

- (AVDisplayCriteria)preferredDisplayCriteria
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3052000000;
  v8 = __Block_byref_object_copy__19;
  v9 = __Block_byref_object_dispose__19;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__AVUXMDisplayManager_preferredDisplayCriteria__block_invoke;
  v4[3] = &unk_1E7460E68;
  v4[4] = self;
  v4[5] = &v5;
  av_readwrite_dispatch_queue_read(sAVUXMDisplayManagerQueue, v4);
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);
  return v2;
}

id __47__AVUXMDisplayManager_preferredDisplayCriteria__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 8);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)setPreferredDisplayCriteria:(id)criteria
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __51__AVUXMDisplayManager_setPreferredDisplayCriteria___block_invoke;
  v3[3] = &unk_1E7460DF0;
  v3[4] = self;
  v3[5] = criteria;
  av_readwrite_dispatch_queue_write(sAVUXMDisplayManagerQueue, v3);
}

void *__51__AVUXMDisplayManager_setPreferredDisplayCriteria___block_invoke(void *result)
{
  v1 = *(result[4] + 8);
  if (v1 != result[5])
  {
    v2 = result;

    result = v2[5];
    *(v2[4] + 8) = result;
    if (dword_1ED5AC2F8)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

- (id)initInternal
{
  if (createDispatchQueueOnce_onceToken != -1)
  {
    +[AVUXMDisplayManager sharedAVKitUXMDisplayManager];
  }

  v4.receiver = self;
  v4.super_class = AVUXMDisplayManager;
  return [(AVUXMDisplayManager *)&v4 init];
}

@end