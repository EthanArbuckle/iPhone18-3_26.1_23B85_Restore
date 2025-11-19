@interface SafariSettingsTaskHandler
+ (id)sharedHandler;
@end

@implementation SafariSettingsTaskHandler

+ (id)sharedHandler
{
  if (sharedHandler_onceToken != -1)
  {
    +[SafariSettingsTaskHandler sharedHandler];
  }

  v3 = sharedHandler_sharedHandlerObject;

  return v3;
}

void __42__SafariSettingsTaskHandler_sharedHandler__block_invoke(id a1)
{
  v1 = objc_alloc_init(SafariSettingsTaskHandler);
  v2 = sharedHandler_sharedHandlerObject;
  sharedHandler_sharedHandlerObject = v1;

  [sharedHandler_sharedHandlerObject setStartBackgroundTaskAssertionBlock:&__block_literal_global_3];
  v3 = sharedHandler_sharedHandlerObject;

  [v3 setFinishBackgroundTaskAssertionBlock:&__block_literal_global_8];
}

NSNumber *__cdecl __42__SafariSettingsTaskHandler_sharedHandler__block_invoke_2(id a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = UIBackgroundTaskInvalid;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __42__SafariSettingsTaskHandler_sharedHandler__block_invoke_3;
  v4[3] = &unk_8A108;
  v4[4] = &v5;
  v1 = [UIApp beginBackgroundTaskWithName:@"com.apple.mobilesafari.settings.SafariSettingsTaskHandler" expirationHandler:v4];
  v6[3] = v1;
  v2 = [NSNumber numberWithUnsignedInteger:v1];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __42__SafariSettingsTaskHandler_sharedHandler__block_invoke_4(id a1, id a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v3 unsignedIntegerValue];
  }

  else
  {
    v2 = UIBackgroundTaskInvalid;
  }

  [UIApp endBackgroundTask:v2];
}

@end