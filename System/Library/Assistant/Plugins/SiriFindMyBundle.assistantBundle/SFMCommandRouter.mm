@interface SFMCommandRouter
+ (Class)handlerClass;
+ (Class)legacyHandlerClass;
+ (id)chooseTargetWithDictionary:(id)a3 initBlock:(id)a4;
- (SFMCommandRouter)init;
- (SFMCommandRouter)initWithDictionary:(id)a3;
@end

@implementation SFMCommandRouter

- (SFMCommandRouter)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1700;
  v9[3] = &unk_C560;
  v10 = v4;
  v6 = v4;
  v7 = [v5 chooseTargetWithDictionary:v6 initBlock:v9];

  return v7;
}

- (SFMCommandRouter)init
{
  v3 = [objc_opt_class() chooseTargetWithDictionary:0 initBlock:&stru_C5A0];

  return v3;
}

+ (Class)handlerClass
{
  v2 = [a1 handlerClassName];
  v3 = NSClassFromString(v2);

  return v3;
}

+ (Class)legacyHandlerClass
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/Assistant/Plugins/FMIPSiriBackendPlugin.assistantBundle"];
  if (([v3 isLoaded] & 1) == 0)
  {
    [v3 load];
  }

  v4 = [a1 legacyHandlerClassName];
  v5 = NSClassFromString(v4);

  return v5;
}

+ (id)chooseTargetWithDictionary:(id)a3 initBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.siri.findmy", "plugin");
  v9 = [a1 handlerClassName];
  if (v9 && (v10 = v9, v11 = shouldUseLegacyPlugin(v6), v10, !v11))
  {
    v15 = v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [a1 commandName];
      v19 = 138543362;
      v20 = v16;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Using new plugin to service %{public}@ command.", &v19, 0xCu);
    }

    v14 = [a1 handlerClass];
  }

  else
  {
    v12 = v8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [a1 commandName];
      v19 = 138543362;
      v20 = v13;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Using legacy plugin to service %{public}@ command.", &v19, 0xCu);
    }

    v14 = [a1 legacyHandlerClass];
  }

  v17 = v7[2](v7, v14);

  return v17;
}

@end