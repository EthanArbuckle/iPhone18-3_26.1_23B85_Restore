@interface SFMCommandRouter
+ (Class)handlerClass;
+ (Class)legacyHandlerClass;
+ (id)chooseTargetWithDictionary:(id)dictionary initBlock:(id)block;
- (SFMCommandRouter)init;
- (SFMCommandRouter)initWithDictionary:(id)dictionary;
@end

@implementation SFMCommandRouter

- (SFMCommandRouter)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_opt_class();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1700;
  v9[3] = &unk_C560;
  v10 = dictionaryCopy;
  v6 = dictionaryCopy;
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
  handlerClassName = [self handlerClassName];
  v3 = NSClassFromString(handlerClassName);

  return v3;
}

+ (Class)legacyHandlerClass
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/Assistant/Plugins/FMIPSiriBackendPlugin.assistantBundle"];
  if (([v3 isLoaded] & 1) == 0)
  {
    [v3 load];
  }

  legacyHandlerClassName = [self legacyHandlerClassName];
  v5 = NSClassFromString(legacyHandlerClassName);

  return v5;
}

+ (id)chooseTargetWithDictionary:(id)dictionary initBlock:(id)block
{
  dictionaryCopy = dictionary;
  blockCopy = block;
  v8 = os_log_create("com.apple.siri.findmy", "plugin");
  handlerClassName = [self handlerClassName];
  if (handlerClassName && (v10 = handlerClassName, v11 = shouldUseLegacyPlugin(dictionaryCopy), v10, !v11))
  {
    v15 = v8;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      commandName = [self commandName];
      v19 = 138543362;
      v20 = commandName;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "Using new plugin to service %{public}@ command.", &v19, 0xCu);
    }

    handlerClass = [self handlerClass];
  }

  else
  {
    v12 = v8;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      commandName2 = [self commandName];
      v19 = 138543362;
      v20 = commandName2;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Using legacy plugin to service %{public}@ command.", &v19, 0xCu);
    }

    handlerClass = [self legacyHandlerClass];
  }

  v17 = blockCopy[2](blockCopy, handlerClass);

  return v17;
}

@end