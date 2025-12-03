@interface ACHRemoteTemplateAvailabilityListener
- (ACHRemoteTemplateAvailabilityListener)init;
- (BOOL)_isKeyACHAvailabilityStateKey:(id)key;
- (void)_unprotectedNanoUserDefaultsDidSyncWithNotification:(id)notification;
@end

@implementation ACHRemoteTemplateAvailabilityListener

- (ACHRemoteTemplateAvailabilityListener)init
{
  v5.receiver = self;
  v5.super_class = ACHRemoteTemplateAvailabilityListener;
  v2 = [(ACHRemoteTemplateAvailabilityListener *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__unprotectedNanoUserDefaultsDidSyncWithNotification_ name:*MEMORY[0x277D104E0] object:0];
  }

  return v2;
}

- (void)_unprotectedNanoUserDefaultsDidSyncWithNotification:(id)notification
{
  userInfo = [notification userInfo];
  v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277D10488]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 hk_firstObjectPassingTest:&__block_literal_global_14];
    if (v5)
    {
      v6 = ACHLogTemplates();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_221DDC000, v6, OS_LOG_TYPE_DEFAULT, "Remote template availability on paired device definitions synced. Posting notification.", v7, 2u);
      }

      notify_post([*MEMORY[0x277CE8C18] UTF8String]);
    }
  }
}

uint64_t __93__ACHRemoteTemplateAvailabilityListener__unprotectedNanoUserDefaultsDidSyncWithNotification___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasSuffix:*MEMORY[0x277CE8AE0]])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 hasSuffix:*MEMORY[0x277CE8AE8]];
  }

  return v3;
}

- (BOOL)_isKeyACHAvailabilityStateKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasSuffix:*MEMORY[0x277CE8AE0]])
  {
    v4 = 1;
  }

  else
  {
    v4 = [keyCopy hasSuffix:*MEMORY[0x277CE8AE8]];
  }

  return v4;
}

@end