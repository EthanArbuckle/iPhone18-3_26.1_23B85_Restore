@interface ATXLazyIntent
- (ATXLazyIntent)initWithIntent:(id)intent intentData:(id)data;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSData *)selfCopy->_intentData length])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    intentData = selfCopy->_intentData;
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

  objc_sync_exit(selfCopy);

  return v7;
}

- (INIntent)intent
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intent = selfCopy->_intent;
  if (!intent)
  {
    _deserializeIntent = [(ATXLazyIntent *)selfCopy _deserializeIntent];
    v5 = selfCopy->_intent;
    selfCopy->_intent = _deserializeIntent;

    WeakRetained = objc_loadWeakRetained(&selfCopy->_delegate);
    [WeakRetained didDeserializeIntent:selfCopy->_intent];

    intent = selfCopy->_intent;
  }

  v7 = intent;
  objc_sync_exit(selfCopy);

  return v7;
}

- (NSData)intentData
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_intentData;
  objc_sync_exit(selfCopy);

  return v3;
}

- (ATXLazyIntent)initWithIntent:(id)intent intentData:(id)data
{
  intentCopy = intent;
  dataCopy = data;
  if (!(intentCopy | dataCopy))
  {
    [ATXLazyIntent initWithIntent:a2 intentData:self];
  }

  v13.receiver = self;
  v13.super_class = ATXLazyIntent;
  v10 = [(ATXLazyIntent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_intent, intent);
    objc_storeStrong(&v11->_intentData, data);
  }

  return v11;
}

- (void)handleMemoryPressure
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  intentData = [(ATXLazyIntent *)selfCopy intentData];
  if (intentData)
  {
    intent = [(ATXLazyIntent *)selfCopy intent];

    if (intent)
    {
      v5 = __atxlog_handle_default();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1BF549000, v5, OS_LOG_TYPE_DEFAULT, "ATXLazyIntent purging intent data due to memory pressure", v7, 2u);
      }

      intentData = selfCopy->_intentData;
      selfCopy->_intentData = 0;
    }
  }

  objc_sync_exit(selfCopy);
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
  selfCopy = self;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "ATXLazyIntent could not de-serialize intent: %@", &v2, 0xCu);
}

@end