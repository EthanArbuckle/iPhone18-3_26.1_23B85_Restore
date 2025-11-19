@interface AMSEphemeralDefaults
+ (BOOL)preferEphemeralImageLoader;
+ (BOOL)preferEphemeralURLSessions;
+ (BOOL)processAssertionsEnabled;
+ (BOOL)purchaseAccountFallback;
+ (BOOL)suppressEngagement;
+ (id)_propertyForKey:(id)a3 defaultValue:(id)a4 expectedType:(Class)a5;
+ (int64_t)HARLoggingItemLimit;
+ (int64_t)forceLoadUrlMetrics;
+ (void)_accessDataStoreUsingBlock:(id)a3;
+ (void)_setProperty:(id)a3 forKey:(id)a4;
+ (void)setForceLoadUrlMetrics:(int64_t)a3;
+ (void)setHARLoggingItemLimit:(int64_t)a3;
+ (void)setPreferEphemeralImageLoader:(BOOL)a3;
+ (void)setPreferEphemeralURLSessions:(BOOL)a3;
+ (void)setProcessAssertionsEnabled:(BOOL)a3;
+ (void)setPurchaseAccountFallback:(BOOL)a3;
+ (void)setSuppressEngagement:(BOOL)a3;
@end

@implementation AMSEphemeralDefaults

+ (BOOL)suppressEngagement
{
  v3 = [a1 _propertyForKey:@"suppressEngagement" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 _propertyForKey:@"suppressEngagement" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)preferEphemeralURLSessions
{
  v2 = [a1 _propertyForKey:@"preferEphemeralURLSessions" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (BOOL)processAssertionsEnabled
{
  v2 = [a1 _propertyForKey:@"processAssertionsEnabled" defaultValue:MEMORY[0x1E695E118] expectedType:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (int64_t)forceLoadUrlMetrics
{
  v3 = [a1 _propertyForKey:@"forceLoadUrlEvent" defaultValue:&unk_1F0779538 expectedType:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 _propertyForKey:@"forceLoadUrlEvent" defaultValue:&unk_1F0779538 expectedType:objc_opt_class()];
    v5 = [v4 longLongValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
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

  v6 = [v5 integerValue];
  return v6;
}

+ (BOOL)preferEphemeralImageLoader
{
  v2 = [a1 _propertyForKey:@"preferEphemeralImageLoader" defaultValue:MEMORY[0x1E695E118] expectedType:objc_opt_class()];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (BOOL)purchaseAccountFallback
{
  v3 = [a1 _propertyForKey:@"purchaseAccountFallback" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 _propertyForKey:@"purchaseAccountFallback" defaultValue:MEMORY[0x1E695E110] expectedType:objc_opt_class()];
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)setHARLoggingItemLimit:(int64_t)a3
{
  if (a3 == -1)
  {

    [AMSHTTPArchiveController setMaxBufferSizeOverride:0];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    [AMSHTTPArchiveController setMaxBufferSizeOverride:v4];
  }
}

+ (void)setPreferEphemeralImageLoader:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [a1 _setProperty:v4 forKey:@"preferEphemeralImageLoader"];
}

+ (void)setPreferEphemeralURLSessions:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [a1 _setProperty:v4 forKey:@"preferEphemeralURLSessions"];
}

+ (void)setProcessAssertionsEnabled:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [a1 _setProperty:v4 forKey:@"processAssertionsEnabled"];
}

+ (void)setPurchaseAccountFallback:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [a1 _setProperty:v4 forKey:@"purchaseAccountFallback"];
}

+ (void)setSuppressEngagement:(BOOL)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  [a1 _setProperty:v4 forKey:@"suppressEngagement"];
}

+ (void)setForceLoadUrlMetrics:(int64_t)a3
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [a1 _setProperty:v4 forKey:@"forceLoadUrlEvent"];
}

+ (void)_setProperty:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__AMSEphemeralDefaults__setProperty_forKey___block_invoke;
  v10[3] = &unk_1E73B76B0;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [a1 _accessDataStoreUsingBlock:v10];
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

+ (id)_propertyForKey:(id)a3 defaultValue:(id)a4 expectedType:(Class)a5
{
  v7 = a3;
  v8 = a4;
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
  v9 = v7;
  v14 = v9;
  [a1 _accessDataStoreUsingBlock:v13];
  v10 = v17[5];
  if (!v10)
  {
    objc_storeStrong(v17 + 5, a4);
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

+ (void)_accessDataStoreUsingBlock:(id)a3
{
  v3 = a3;
  if (qword_1ED6E29B0 != -1)
  {
    dispatch_once(&qword_1ED6E29B0, &__block_literal_global_52);
  }

  v4 = _MergedGlobals_109;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__AMSEphemeralDefaults__accessDataStoreUsingBlock___block_invoke_2;
  block[3] = &unk_1E73B76D8;
  v7 = v3;
  v5 = v3;
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