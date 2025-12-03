@interface NSUserDefaults(NSUserDefaults_NSURLExtras)
+ (__CFString)_web_preferredLanguageCode;
+ (void)_web_addDefaultsChangeObserver;
+ (void)_web_defaultsDidChange;
@end

@implementation NSUserDefaults(NSUserDefaults_NSURLExtras)

+ (__CFString)_web_preferredLanguageCode
{
  standardUserDefaults = [self standardUserDefaults];
  os_unfair_lock_lock(&_MergedGlobals_127);
  v3 = qword_1ED43FC58;
  v4 = qword_1ED43FC58;
  if (!qword_1ED43FC58)
  {
    v5 = [standardUserDefaults stringArrayForKey:@"AppleLanguages"];
    if ([v5 count])
    {
      v4 = [objc_msgSend(objc_msgSend(v5 objectAtIndex:{0), "_web_HTTPStyleLanguageCode"), "copy"}];
    }

    else
    {
      v4 = @"en";
    }

    qword_1ED43FC58 = v4;
  }

  v6 = v4;
  os_unfair_lock_unlock(&_MergedGlobals_127);
  if (!v3)
  {
    [self _web_addDefaultsChangeObserver];
  }

  return v6;
}

+ (void)_web_addDefaultsChangeObserver
{
  if (_web_addDefaultsChangeObserver_addDefaultsChangeObserverOnce != -1)
  {
    dispatch_once(&_web_addDefaultsChangeObserver_addDefaultsChangeObserverOnce, &__block_literal_global_54);
  }
}

+ (void)_web_defaultsDidChange
{
  os_unfair_lock_lock(&_MergedGlobals_127);

  qword_1ED43FC58 = 0;

  os_unfair_lock_unlock(&_MergedGlobals_127);
}

@end