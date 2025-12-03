@interface ChromeComponentUpdateInfo
+ (BOOL)supportsCallstackSymbols;
- (ChromeComponentUpdateInfo)initWithCompletionHandler:(id)handler;
@end

@implementation ChromeComponentUpdateInfo

+ (BOOL)supportsCallstackSymbols
{
  v2 = sub_100013558();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  return v3;
}

- (ChromeComponentUpdateInfo)initWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v11.receiver = self;
  v11.super_class = ChromeComponentUpdateInfo;
  v5 = [(ChromeComponentUpdateInfo *)&v11 init];
  if (v5)
  {
    v6 = [handlerCopy copy];
    completionHandler = v5->_completionHandler;
    v5->_completionHandler = v6;

    if (+[ChromeComponentUpdateInfo supportsCallstackSymbols])
    {
      v8 = +[NSThread callStackSymbols];
      callStackSymbols = v5->_callStackSymbols;
      v5->_callStackSymbols = v8;
    }
  }

  return v5;
}

@end