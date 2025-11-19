@interface FPActionLocatorAccessToken
+ (id)tokenWithBlock:(id)a3;
- (void)dealloc;
- (void)stopAccessing;
@end

@implementation FPActionLocatorAccessToken

+ (id)tokenWithBlock:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = _Block_copy(v3);

  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)dealloc
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_stopBlock)
  {
    v3 = fp_current_or_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      [(FPActionLocatorAccessToken *)v3 dealloc];
    }

    (*(v2->_stopBlock + 2))();
    stopBlock = v2->_stopBlock;
    v2->_stopBlock = 0;
  }

  objc_sync_exit(v2);

  v5.receiver = v2;
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