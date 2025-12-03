@interface FRNewsReferralItemDecoder
- (FRNewsReferralItemDecoder)init;
- (FRNewsReferralItemDecoder)initWithAssetManager:(id)manager;
- (id)destructivelyDecodeReferraltemOfClass:(Class)class withQueryValue:(id)value error:(id *)error;
@end

@implementation FRNewsReferralItemDecoder

- (FRNewsReferralItemDecoder)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRNewsReferralItemDecoder init]";
    v8 = 2080;
    v9 = "FRNewsReferralItemEncoding.m";
    v10 = 1024;
    v11 = 147;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRNewsReferralItemDecoder init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRNewsReferralItemDecoder)initWithAssetManager:(id)manager
{
  managerCopy = manager;
  if (!managerCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C7448();
  }

  v9.receiver = self;
  v9.super_class = FRNewsReferralItemDecoder;
  v6 = [(FRNewsReferralItemDecoder *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetManager, manager);
  }

  return v7;
}

- (id)destructivelyDecodeReferraltemOfClass:(Class)class withQueryValue:(id)value error:(id *)error
{
  valueCopy = value;
  if (!class && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C750C();
    if (valueCopy)
    {
      goto LABEL_6;
    }
  }

  else if (valueCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C75D0();
  }

LABEL_6:
  v28 = valueCopy;
  v7 = [NSURL URLWithString:valueCopy];
  v8 = +[NSFileManager defaultManager];
  encodableElementClass = [(objc_class *)class encodableElementClass];
  v10 = [v7 URLByAppendingPathComponent:@"dictionary" isDirectory:0];
  v11 = [[NSData alloc] initWithContentsOfURL:v10];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v12, v13, encodableElementClass, objc_opt_class(), 0];
  v26 = v11;
  v15 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v14 fromData:v11 error:0];

  v16 = [v15 objectForKeyedSubscript:@"a"];
  v17 = [v15 objectForKeyedSubscript:@"b"];
  [(FRNewsReferralItemDecoder *)self assetManager];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100010318;
  v18 = v30[3] = &unk_10010BE50;
  v31 = v18;
  v19 = [v17 fc_dictionaryByTransformingValuesWithKeyAndValueBlock:v30];
  v20 = [[class alloc] initWithEncodableElement:v16 assetHandlesByRemoteURL:v19];
  v29 = 0;
  [v8 removeItemAtURL:v7 error:&v29];
  v21 = v29;
  v22 = v21;
  if (error)
  {
    v23 = v21;
    *error = v22;
  }

  return v20;
}

@end