@interface ACXPCEventSubscriber
+ (id)sharedSubscriber;
- (ACXPCEventSubscriber)init;
- (void)registerAccountChangeEventHandler:(id)a3;
@end

@implementation ACXPCEventSubscriber

+ (id)sharedSubscriber
{
  if (sharedSubscriber_onceToken != -1)
  {
    +[ACXPCEventSubscriber sharedSubscriber];
  }

  v3 = sharedSubscriber__sharedSubscriber;

  return v3;
}

void __40__ACXPCEventSubscriber_sharedSubscriber__block_invoke()
{
  if (!sharedSubscriber__sharedSubscriber)
  {
    sharedSubscriber__sharedSubscriber = objc_alloc_init(ACXPCEventSubscriber);

    MEMORY[0x1EEE66BB8]();
  }
}

- (ACXPCEventSubscriber)init
{
  v7.receiver = self;
  v7.super_class = ACXPCEventSubscriber;
  v2 = [(ACXPCEventSubscriber *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("ACXPCEventHandler", v3);
    replyQueue = v2->_replyQueue;
    v2->_replyQueue = v4;
  }

  return v2;
}

- (void)registerAccountChangeEventHandler:(id)a3
{
  v4 = a3;
  v5 = _ACLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [ACXPCEventSubscriber registerAccountChangeEventHandler:];
  }

  replyQueue = self->_replyQueue;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke;
  handler[3] = &unk_1E7977528;
  v9 = v4;
  v7 = v4;
  xpc_set_event_stream_handler("com.apple.accounts.changes", replyQueue, handler);
}

void __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ACLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_1();
  }

  if (MEMORY[0x1AC5B3F60](v3) == MEMORY[0x1E69E9E80])
  {
    string = xpc_dictionary_get_string(v3, "MessageType");
    if (string)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v7 = _ACLogSystem();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_2();
      }

      if ([v6 isEqualToString:@"AccountChange"])
      {
        xpc_dictionary_get_uint64(v3, "ChangeType");
        v8 = _ACLogSystem();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_3();
        }

        length = 0;
        data = xpc_dictionary_get_data(v3, "AccountData", &length);
        if (data && length)
        {
          v10 = [MEMORY[0x1E695DEF0] dataWithBytes:data length:?];
          v13 = 0;
          v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v13];
          v12 = v13;
          if (v11)
          {
            (*(*(a1 + 32) + 16))();
          }
        }
      }
    }
  }
}

- (void)registerAccountChangeEventHandler:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __58__ACXPCEventSubscriber_registerAccountChangeEventHandler___block_invoke_cold_3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

@end