@interface FRNewsReferralItemEncoder
- (FRNewsReferralItemEncoder)init;
- (FRNewsReferralItemEncoder)initWithReferralItem:(id)item sharedDirectoryFileURL:(id)l;
- (id)encodeQueryValueWithError:(id *)error;
@end

@implementation FRNewsReferralItemEncoder

- (FRNewsReferralItemEncoder)init
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v2 = [[NSString alloc] initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v7 = "[FRNewsReferralItemEncoder init]";
    v8 = 2080;
    v9 = "FRNewsReferralItemEncoding.m";
    v10 = 1024;
    v11 = 27;
    v12 = 2114;
    v13 = v2;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = [NSString stringWithFormat:@"%@: %s", @"Do not call method", "[FRNewsReferralItemEncoder init]"];
  v4 = [NSException exceptionWithName:NSInternalInconsistencyException reason:v3 userInfo:0];
  v5 = v4;

  objc_exception_throw(v4);
}

- (FRNewsReferralItemEncoder)initWithReferralItem:(id)item sharedDirectoryFileURL:(id)l
{
  itemCopy = item;
  lCopy = l;
  if (!itemCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C71FC();
    if (lCopy)
    {
      goto LABEL_6;
    }
  }

  else if (lCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000C72C0();
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FRNewsReferralItemEncoder;
  v8 = [(FRNewsReferralItemEncoder *)&v14 init];
  if (v8)
  {
    v9 = [itemCopy copy];
    referralItem = v8->_referralItem;
    v8->_referralItem = v9;

    v11 = [lCopy copy];
    sharedDirectoryFileURL = v8->_sharedDirectoryFileURL;
    v8->_sharedDirectoryFileURL = v11;
  }

  return v8;
}

- (id)encodeQueryValueWithError:(id *)error
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_10000FC7C;
  v36 = sub_10000FC8C;
  v37 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];

  sharedDirectoryFileURL = [(FRNewsReferralItemEncoder *)self sharedDirectoryFileURL];
  v9 = [sharedDirectoryFileURL URLByAppendingPathComponent:uUIDString isDirectory:1];

  v10 = (v33 + 5);
  obj = v33[5];
  [v5 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong(v10, obj);
  if (v33[5])
  {
    absoluteString = 0;
  }

  else
  {
    referralItem = [(FRNewsReferralItemEncoder *)self referralItem];
    assetHandles = [referralItem assetHandles];
    v14 = objc_opt_new();
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10000FC94;
    v26[3] = &unk_10010BE28;
    v15 = v9;
    v27 = v15;
    v28 = v5;
    v30 = &v32;
    v16 = v14;
    v29 = v16;
    [assetHandles enumerateObjectsUsingBlock:v26];
    if (v33[5])
    {
      absoluteString = 0;
    }

    else
    {
      encodableElement = [referralItem encodableElement];
      v38[0] = @"a";
      v38[1] = @"b";
      v39[0] = encodableElement;
      v39[1] = v16;
      v24 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      v22 = encodableElement;
      v23 = [v15 URLByAppendingPathComponent:@"dictionary" isDirectory:0];
      v18 = [NSKeyedArchiver archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];
      v19 = (v33 + 5);
      v25 = v33[5];
      [v18 writeToURL:v23 options:1 error:&v25];
      objc_storeStrong(v19, v25);
      v20 = v22;
      if (v33[5])
      {
        absoluteString = 0;
      }

      else
      {
        absoluteString = [v15 absoluteString];
        v20 = v22;
      }
    }
  }

  if (error)
  {
    *error = v33[5];
  }

  _Block_object_dispose(&v32, 8);

  return absoluteString;
}

@end