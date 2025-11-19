@interface ATXLazyIntent
- (ATXLazyIntent)initWithIntent:(id)a3 intentData:(id)a4;
- (ATXLazyIntentDelegateProtocol)delegate;
- (INIntent)intent;
- (NSData)intentData;
- (id)_deserializeIntent;
- (void)_deserializeIntent;
- (void)handleMemoryPressure;
@end

@implementation ATXLazyIntent

- (id)_deserializeIntent
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(NSData *)v2->_intentData length])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    intentData = v2->_intentData;
    v11 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:intentData error:&v11];
    v8 = v11;
    if (v8)
    {
      v9 = __atxlog_handle_default();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        [(ATXLazyIntent *)v8 _deserializeIntent];
      }
    }

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v2);

  return v7;
}

- (INIntent)intent
{
  v2 = self;
  objc_sync_enter(v2);
  intent = v2->_intent;
  if (!intent)
  {
    v4 = [(ATXLazyIntent *)v2 _deserializeIntent];
    v5 = v2->_intent;
    v2->_intent = v4;

    WeakRetained = objc_loadWeakRetained(&v2->_delegate);
    [WeakRetained didDeserializeIntent:v2->_intent];

    intent = v2->_intent;
  }

  v7 = intent;
  objc_sync_exit(v2);

  return v7;
}

- (NSData)intentData
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_intentData;
  objc_sync_exit(v2);

  return v3;
}

- (ATXLazyIntent)initWithIntent:(id)a3 intentData:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!(v8 | v9))
  {
    [ATXLazyIntent initWithIntent:a2 intentData:self];
  }

  v13.receiver = self;
  v13.super_class = ATXLazyIntent;
  v10 = [(ATXLazyIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_intent, a3);
    objc_storeStrong(&v11->_intentData, a4);
  }

  return v11;
}

- (void)handleMemoryPressure
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(ATXLazyIntent *)v2 intentData];
  if (v3)
  {
    v4 = [(ATXLazyIntent *)v2 intent];

    if (v4)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXLazyIntent purging intent data due to memory pressure", v7, 2u);
      }

      intentData = v2->_intentData;
      v2->_intentData = 0;
    }
  }

  objc_sync_exit(v2);
}

- (ATXLazyIntentDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithIntent:(uint64_t)a1 intentData:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXLazyIntent.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"intent || intentData"}];
}

- (void)_deserializeIntent
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXLazyIntent could not de-serialize intent: %@", &v2, 0xCu);
}

@end