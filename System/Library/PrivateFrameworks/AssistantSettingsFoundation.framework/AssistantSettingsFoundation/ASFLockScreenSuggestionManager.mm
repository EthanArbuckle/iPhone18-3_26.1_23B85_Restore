@interface ASFLockScreenSuggestionManager
+ (id)sharedInstance;
- (id)_serializedBundles;
- (id)disabledLockScreenBundles;
- (void)_synchronizeLockScreenPreferences;
@end

@implementation ASFLockScreenSuggestionManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ASFLockScreenSuggestionManager sharedInstance];
  }

  v3 = sharedInstance_singleton;

  return v3;
}

uint64_t __48__ASFLockScreenSuggestionManager_sharedInstance__block_invoke()
{
  sharedInstance_singleton = objc_alloc_init(ASFLockScreenSuggestionManager);

  return MEMORY[0x2821F96F8]();
}

- (id)disabledLockScreenBundles
{
  disabledLockScreenBundleIds = self->_disabledLockScreenBundleIds;
  if (!disabledLockScreenBundleIds)
  {
    _serializedBundles = [(ASFLockScreenSuggestionManager *)self _serializedBundles];
    v5 = [MEMORY[0x277CBEB18] arrayWithArray:_serializedBundles];
    [v5 removeObject:@"com.apple.application"];
    [v5 removeObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    if ([_serializedBundles containsObject:@"com.apple.DocumentsApp"])
    {
      [v5 addObject:@"com.apple.CloudDocs.MobileDocumentsFileProvider"];
    }

    v6 = [MEMORY[0x277CBEB58] setWithArray:v5];
    v7 = self->_disabledLockScreenBundleIds;
    self->_disabledLockScreenBundleIds = v6;

    disabledLockScreenBundleIds = self->_disabledLockScreenBundleIds;
  }

  return disabledLockScreenBundleIds;
}

- (id)_serializedBundles
{
  v2 = CFPreferencesCopyValue(@"LockscreenSuggestionsDisabledBundles", @"com.apple.duetexpertd", *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;

  return v5;
}

- (void)_synchronizeLockScreenPreferences
{
  CFPreferencesSetAppValue(@"LockscreenSuggestionsDisabledBundles", [(NSMutableSet *)self->_disabledLockScreenBundleIds allObjects], @"com.apple.duetexpertd");
  v2 = *MEMORY[0x277CBF040];
  v3 = *MEMORY[0x277CBF010];

  CFPreferencesSynchronize(@"com.apple.duetexpertd", v2, v3);
}

@end