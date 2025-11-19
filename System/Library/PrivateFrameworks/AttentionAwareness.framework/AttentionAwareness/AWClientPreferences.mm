@interface AWClientPreferences
+ (void)initialize;
@end

@implementation AWClientPreferences

+ (void)initialize
{
  v2 = objc_opt_class();
  v3 = @"LogLevel";
  v4 = &__block_literal_global_294;
  if (registerForPrefsChange_onceToken != -1)
  {
    dispatch_once(&registerForPrefsChange_onceToken, &__block_literal_global_277);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __registerForPrefsChange_block_invoke_284;
  v13[3] = &unk_1E7F37678;
  v14 = &__block_literal_global_294;
  v15 = v2;
  v5 = &__block_literal_global_294;
  v6 = MEMORY[0x1BFB0D030](v13);
  v7 = registerForPrefsChange_queue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __registerForPrefsChange_block_invoke_2_287;
  v10[3] = &unk_1E7F37F78;
  v11 = @"LogLevel";
  v12 = v6;
  v8 = v6;
  v9 = @"LogLevel";
  dispatch_sync(v7, v10);
}

uint64_t __33__AWClientPreferences_initialize__block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    result = [a2 intValue];
  }

  else
  {
    result = 5;
  }

  currentLogLevel = result;
  return result;
}

@end