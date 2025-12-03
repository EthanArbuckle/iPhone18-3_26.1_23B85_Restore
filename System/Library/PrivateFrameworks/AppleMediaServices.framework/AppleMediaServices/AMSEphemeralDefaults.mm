@interface AMSEphemeralDefaults
+ (BOOL)preferEphemeralImageLoader;
+ (BOOL)preferEphemeralURLSessions;
+ (BOOL)processAssertionsEnabled;
+ (BOOL)purchaseAccountFallback;
+ (BOOL)suppressEngagement;
+ (id)_propertyForKey:(id)key defaultValue:(id)value expectedType:(Class)type;
+ (int64_t)HARLoggingItemLimit;
+ (int64_t)forceLoadUrlMetrics;
+ (void)_accessDataStoreUsingBlock:(id)block;
+ (void)_setProperty:(id)property forKey:(id)key;
+ (void)setForceLoadUrlMetrics:(int64_t)metrics;
+ (void)setHARLoggingItemLimit:(int64_t)limit;
+ (void)setPreferEphemeralImageLoader:(BOOL)loader;
+ (void)setPreferEphemeralURLSessions:(BOOL)sessions;
+ (void)setProcessAssertionsEnabled:(BOOL)enabled;
+ (void)setPurchaseAccountFallback:(BOOL)fallback;
+ (void)setSuppressEngagement:(BOOL)engagement;
@end

@implementation AMSEphemeralDefaults

+ (BOOL)suppressEngagement
{
  v3 = [self _propertyForKey:@"suppressEngagement" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v4 = [self _propertyForKey:@"suppressEngagement" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (BOOL)preferEphemeralURLSessions
{
  v2 = [self _propertyForKey:@"preferEphemeralURLSessions" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (BOOL)processAssertionsEnabled
{
  v2 = [self _propertyForKey:@"processAssertionsEnabled" defaultValue:MEMORY[0x1E695E118] expectedType:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (int64_t)forceLoadUrlMetrics
{
  v3 = [self _propertyForKey:@"forceLoadUrlEvent" defaultValue:&unk_1F0779538 expectedType:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v4 = [self _propertyForKey:@"forceLoadUrlEvent" defaultValue:&unk_1F0779538 expectedType:objc_opt_class()];
    longLongValue = [v4 longLongValue];
  }

  else
  {
    longLongValue = 0;
  }

  return longLongValue;
}

+ (int64_t)HARLoggingItemLimit
{
  v2 = +[AMSHTTPArchiveController maxBufferSizeOverride];
  v3 = v2;
  v4 = &unk_1F0779520;
  if (v2)
  {
    v4 = v2;
  }

  v5 = v4;

  integerValue = [v5 integerValue];
  return integerValue;
}

+ (BOOL)preferEphemeralImageLoader
{
  v2 = [self _propertyForKey:@"preferEphemeralImageLoader" defaultValue:MEMORY[0x1E695E118] expectedType:objc_opt_class()];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (BOOL)purchaseAccountFallback
{
  v3 = [self _propertyForKey:@"purchaseAccountFallback" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v4 = [self _propertyForKey:@"purchaseAccountFallback" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

+ (void)setHARLoggingItemLimit:(int64_t)limit
{
  if (limit == -1)
  {

    [AMSHTTPArchiveController setMaxBufferSizeOverride:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [AMSHTTPArchiveController setMaxBufferSizeOverride:v4];
  }
}

+ (void)setPreferEphemeralImageLoader:(BOOL)loader
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:loader];
  [self _setProperty:v4 forKey:@"preferEphemeralImageLoader"];
}

+ (void)setPreferEphemeralURLSessions:(BOOL)sessions
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:sessions];
  [self _setProperty:v4 forKey:@"preferEphemeralURLSessions"];
}

+ (void)setProcessAssertionsEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  [self _setProperty:v4 forKey:@"processAssertionsEnabled"];
}

+ (void)setPurchaseAccountFallback:(BOOL)fallback
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:fallback];
  [self _setProperty:v4 forKey:@"purchaseAccountFallback"];
}

+ (void)setSuppressEngagement:(BOOL)engagement
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:engagement];
  [self _setProperty:v4 forKey:@"suppressEngagement"];
}

+ (void)setForceLoadUrlMetrics:(int64_t)metrics
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:metrics];
  [self _setProperty:v4 forKey:@"forceLoadUrlEvent"];
}

+ (void)_setProperty:(id)property forKey:(id)key
{
  propertyCopy = property;
  keyCopy = key;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__AMSEphemeralDefaults__setProperty_forKey___block_invoke;
  v10[3] = &unk_1E73B76B0;
  v11 = propertyCopy;
  v12 = keyCopy;
  v8 = keyCopy;
  v9 = propertyCopy;
  [self _accessDataStoreUsingBlock:v10];
}

uint64_t __44__AMSEphemeralDefaults__setProperty_forKey___block_invoke(uint64_t result, void *a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    return [a2 setObject:v2 forKeyedSubscript:*(result + 40)];
  }

  return result;
}

+ (id)_propertyForKey:(id)key defaultValue:(id)value expectedType:(Class)type
{
  keyCopy = key;
  valueCopy = value;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__27;
  v20 = __Block_byref_object_dispose__27;
  v21 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __66__AMSEphemeralDefaults__propertyForKey_defaultValue_expectedType___block_invoke;
  v13[3] = &unk_1E73B2F60;
  v15 = &v16;
  v9 = keyCopy;
  v14 = v9;
  [self _accessDataStoreUsingBlock:v13];
  v10 = v17[5];
  if (!v10)
  {
    objc_storeStrong(v17 + 5, value);
    v10 = v17[5];
  }

  v11 = v10;

  _Block_object_dispose(&v16, 8);

  return v11;
}

uint64_t __66__AMSEphemeralDefaults__propertyForKey_defaultValue_expectedType___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = [a2 objectForKeyedSubscript:*(a1 + 32)];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)_accessDataStoreUsingBlock:(id)block
{
  blockCopy = block;
  if (qword_1ED6E29B0 != -1)
  {
    dispatch_once(&qword_1ED6E29B0, &__block_literal_global_52);
  }

  v4 = _MergedGlobals_109;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AMSEphemeralDefaults__accessDataStoreUsingBlock___block_invoke_2;
  block[3] = &unk_1E73B76D8;
  v7 = blockCopy;
  v5 = blockCopy;
  dispatch_sync(v4, block);
}

uint64_t __51__AMSEphemeralDefaults__accessDataStoreUsingBlock___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.AppleMediaServices.AMSEphemeralDefaults", 0);
  v1 = _MergedGlobals_109;
  _MergedGlobals_109 = v0;

  qword_1ED6E29A8 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

@end