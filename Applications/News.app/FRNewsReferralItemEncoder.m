@interface FRNewsReferralItemEncoder
- (FRNewsReferralItemEncoder)init;
- (FRNewsReferralItemEncoder)initWithReferralItem:(id)a3 sharedDirectoryFileURL:(id)a4;
- (id)encodeQueryValueWithError:(id *)a3;
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

- (FRNewsReferralItemEncoder)initWithReferralItem:(id)a3 sharedDirectoryFileURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100069220();
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000692E4();
  }

LABEL_6:
  v14.receiver = self;
  v14.super_class = FRNewsReferralItemEncoder;
  v8 = [(FRNewsReferralItemEncoder *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    referralItem = v8->_referralItem;
    v8->_referralItem = v9;

    v11 = [v7 copy];
    sharedDirectoryFileURL = v8->_sharedDirectoryFileURL;
    v8->_sharedDirectoryFileURL = v11;
  }

  return v8;
}

- (id)encodeQueryValueWithError:(id *)a3
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100009B18;
  v36 = sub_100009EE0;
  v37 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];

  v8 = [(FRNewsReferralItemEncoder *)self sharedDirectoryFileURL];
  v9 = [v8 URLByAppendingPathComponent:v7 isDirectory:1];

  v10 = (v33 + 5);
  obj = v33[5];
  [v5 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&obj];
  objc_storeStrong(v10, obj);
  if (v33[5])
  {
    v11 = 0;
  }

  else
  {
    v12 = [(FRNewsReferralItemEncoder *)self referralItem];
    v13 = [v12 assetHandles];
    v14 = objc_opt_new();
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000103F8;
    v26[3] = &unk_1000C1B88;
    v15 = v9;
    v27 = v15;
    v28 = v5;
    v30 = &v32;
    v16 = v14;
    v29 = v16;
    [v13 enumerateObjectsUsingBlock:v26];
    if (v33[5])
    {
      v11 = 0;
    }

    else
    {
      v17 = [v12 encodableElement];
      v38[0] = @"a";
      v38[1] = @"b";
      v39[0] = v17;
      v39[1] = v16;
      v24 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
      v22 = v17;
      v23 = [v15 URLByAppendingPathComponent:@"dictionary" isDirectory:0];
      v18 = [NSKeyedArchiver archivedDataWithRootObject:v24 requiringSecureCoding:1 error:0];
      v19 = (v33 + 5);
      v25 = v33[5];
      [v18 writeToURL:v23 options:1 error:&v25];
      objc_storeStrong(v19, v25);
      v20 = v22;
      if (v33[5])
      {
        v11 = 0;
      }

      else
      {
        v11 = [v15 absoluteString];
        v20 = v22;
      }
    }
  }

  if (a3)
  {
    *a3 = v33[5];
  }

  _Block_object_dispose(&v32, 8);

  return v11;
}

@end