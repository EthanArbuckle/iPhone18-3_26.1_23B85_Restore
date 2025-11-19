@interface APServerActivityScheduler
- (void)registerWeeklyActivityWithName:(id)a3 work:(id)a4;
@end

@implementation APServerActivityScheduler

- (void)registerWeeklyActivityWithName:(id)a3 work:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, *MEMORY[0x1E69E9D68], *MEMORY[0x1E69E9D78]);
  xpc_dictionary_set_int64(v7, *MEMORY[0x1E69E9CB0], *MEMORY[0x1E69E9CF0]);
  xpc_dictionary_set_BOOL(v7, *MEMORY[0x1E69E9D88], 1);
  v8 = [v6 UTF8String];

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke;
  handler[3] = &unk_1E6EE89C0;
  v11 = v5;
  v9 = v5;
  xpc_activity_register(v8, v7, handler);
}

void __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (xpc_activity_get_state(v3) == 2)
  {
    if (xpc_activity_set_state(v3, 4))
    {
      v4 = *(a1 + 32);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_2;
      v6[3] = &unk_1E6EE8948;
      v7 = v3;
      (*(v4 + 16))(v4, v6);
      v5 = v7;
    }

    else
    {
      v5 = APDefaultFrameworkLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_cold_1(v5);
      }
    }
  }
}

void __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_2(uint64_t a1)
{
  if (!xpc_activity_set_state(*(a1 + 32), 5))
  {
    v1 = APDefaultFrameworkLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __65__APServerActivityScheduler_registerWeeklyActivityWithName_work___block_invoke_2_cold_1(v1);
    }
  }
}

@end