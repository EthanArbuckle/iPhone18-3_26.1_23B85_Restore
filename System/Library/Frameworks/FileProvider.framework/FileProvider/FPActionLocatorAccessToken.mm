@interface FPActionLocatorAccessToken
+ (id)tokenWithBlock:(id)block;
- (void)dealloc;
- (void)stopAccessing;
@end

@implementation FPActionLocatorAccessToken

+ (id)tokenWithBlock:(id)block
{
  blockCopy = block;
  v4 = objc_opt_new();
  v5 = _Block_copy(blockCopy);

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)dealloc
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_stopBlock)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(FPActionLocatorAccessToken *)v3 dealloc];
    }

    (*(selfCopy->_stopBlock + 2))();
    stopBlock = selfCopy->_stopBlock;
    selfCopy->_stopBlock = 0;
  }

  objc_sync_exit(selfCopy);

  v5.receiver = selfCopy;
  v5.super_class = FPActionLocatorAccessToken;
  [(FPActionLocatorAccessToken *)&v5 dealloc];
}

- (void)stopAccessing
{
  obj = self;
  objc_sync_enter(obj);
  v2 = obj;
  stopBlock = obj->_stopBlock;
  if (stopBlock)
  {
    stopBlock[2]();
    v4 = obj->_stopBlock;
    obj->_stopBlock = 0;

    v2 = obj;
  }

  objc_sync_exit(v2);
}

@end