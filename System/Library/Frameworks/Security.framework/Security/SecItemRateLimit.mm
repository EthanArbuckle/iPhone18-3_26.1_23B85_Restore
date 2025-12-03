@interface SecItemRateLimit
+ (id)instance;
+ (void)resetStaticRateLimit;
- (BOOL)consumeTokenFromBucket:(BOOL)bucket;
- (BOOL)isModifyingAPICallWithinLimits;
- (BOOL)isReadOnlyAPICallWithinLimits;
- (BOOL)shouldCountAPICalls;
- (SecItemRateLimit)init;
- (void)forceEnabled:(BOOL)enabled;
@end

@implementation SecItemRateLimit

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_9256);
  }

  v3 = ratelimit;

  return v3;
}

- (BOOL)isReadOnlyAPICallWithinLimits
{
  v2 = [(SecItemRateLimit *)self consumeTokenFromBucket:0];
  if (!v2)
  {
    v3 = secLogObjForScope("secitemratelimit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Readonly API rate exceeded", v5, 2u);
    }
  }

  return v2;
}

- (BOOL)shouldCountAPICalls
{
  if (shouldCountAPICalls_shouldCountToken != -1)
  {
    dispatch_once(&shouldCountAPICalls_shouldCountToken, &__block_literal_global_7);
  }

  return shouldCountAPICalls_shouldCount;
}

- (BOOL)isModifyingAPICallWithinLimits
{
  v2 = [(SecItemRateLimit *)self consumeTokenFromBucket:1];
  if (!v2)
  {
    v3 = secLogObjForScope("secitemratelimit");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "Modifying API rate exceeded", v5, 2u);
    }
  }

  return v2;
}

uint64_t __28__SecItemRateLimit_instance__block_invoke()
{
  ratelimit = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SecItemRateLimit)init
{
  v10.receiver = self;
  v10.super_class = SecItemRateLimit;
  v2 = [(SecItemRateLimit *)&v10 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_roCapacity = 0x1900000019;
    *&v2->_roRate = xmmword_18895E180;
    roBucket = v2->_roBucket;
    v2->_roBucket = 0;

    rwBucket = v3->_rwBucket;
    v3->_rwBucket = 0;

    v3->_forceEnabled = 0;
    v3->_limitMultiplier = 5.0;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.keychain.secitemratelimit.dataqueue", v6);
    dataQueue = v3->_dataQueue;
    v3->_dataQueue = v7;
  }

  return v3;
}

void __39__SecItemRateLimit_shouldCountAPICalls__block_invoke()
{
  v7 = *MEMORY[0x1E69E9840];
  if (os_variant_allows_internal_security_policies())
  {
    if (gSecurityd)
    {
      v0 = secLogObjForScope("secitemratelimit");
      if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v6) = 0;
        v1 = "gSecurityd non-nil, disabling SIRL for testing";
LABEL_7:
        _os_log_impl(&dword_1887D2000, v0, OS_LOG_TYPE_DEFAULT, v1, &v6, 2u);
      }
    }

    else
    {
      if ((_os_feature_enabled_impl() & 1) == 0)
      {
        v0 = secLogObjForScope("secitemratelimit");
        if (!os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_8;
        }

        LOWORD(v6) = 0;
        v1 = "SIRL disabled via feature flag";
        goto LABEL_7;
      }

      v3 = SecTaskCreateFromSelf(0);
      v0 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1EFAAC658];
      if (v3)
      {
        v6 = 0;
        csops_task(v3);
        v5 = secLogObjForScope("secitemratelimit");
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v6) = 0;
          _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "Not valid/debugged platform binary, disabling SIRL", &v6, 2u);
        }

        CFRelease(v3);
      }

      else
      {
        v4 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v6) = 0;
          _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "secitemratelimit: unable to get task from self, disabling SIRL", &v6, 2u);
        }
      }
    }
  }

  else
  {
    v0 = secLogObjForScope("secitemratelimit");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6) = 0;
      v1 = "Not internal release, disabling SIRL";
      goto LABEL_7;
    }
  }

LABEL_8:

  v2 = *MEMORY[0x1E69E9840];
}

- (BOOL)consumeTokenFromBucket:(BOOL)bucket
{
  if ([(SecItemRateLimit *)self shouldCountAPICalls]|| self->_forceEnabled)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__SecItemRateLimit_consumeTokenFromBucket___block_invoke;
    block[3] = &unk_1E70DDDD8;
    bucketCopy = bucket;
    block[4] = self;
    block[5] = &v10;
    dispatch_sync(dataQueue, block);
    v6 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void __43__SecItemRateLimit_consumeTokenFromBucket___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 48))
  {
    v3 = 28;
  }

  else
  {
    v3 = 24;
  }

  if (*(a1 + 48))
  {
    v4 = 40;
  }

  else
  {
    v4 = 32;
  }

  if (*(a1 + 48))
  {
    v5 = 64;
  }

  else
  {
    v5 = 56;
  }

  v13 = [MEMORY[0x1E695DF00] now];
  v6 = [v13 dateByAddingTimeInterval:-1.0 / *(v2 + v4) * *(v2 + v3)];
  v7 = *(v2 + v5);
  if (!v7 || ([v7 timeIntervalSinceDate:v6], v8 < 0.0))
  {
    objc_storeStrong((v2 + v5), v6);
  }

  v9 = [*(v2 + v5) dateByAddingTimeInterval:1.0 / *(v2 + v4)];
  v10 = *(v2 + v5);
  *(v2 + v5) = v9;

  [*(v2 + v5) timeIntervalSinceDate:v13];
  *(*(*(a1 + 40) + 8) + 24) = v11 <= 0.0;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v12 = *(v2 + v5);
    *(v2 + v5) = 0;

    *(v2 + v3) = (*(*(a1 + 32) + 48) * *(v2 + v3));
    *(v2 + v4) = *(*(a1 + 32) + 48) * *(v2 + v4);
  }
}

- (void)forceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v12 = *MEMORY[0x1E69E9840];
  self->_forceEnabled = enabled;
  v5 = secLogObjForScope("secitemratelimit");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v6 = "F";
    }

    else
    {
      v6 = "Not f";
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 1024;
    isEnabled = [(SecItemRateLimit *)self isEnabled];
    _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "%sorcing SIRL to be enabled (effective: %i)", &v8, 0x12u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)resetStaticRateLimit
{
  ratelimit = objc_opt_new();

  MEMORY[0x1EEE66BB8]();
}

@end