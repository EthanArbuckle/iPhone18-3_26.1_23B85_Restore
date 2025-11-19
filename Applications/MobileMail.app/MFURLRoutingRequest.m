@interface MFURLRoutingRequest
+ (OS_os_log)log;
+ (id)externalRequestWithOpenURLContext:(id)a3;
+ (id)requestWithURL:(id)a3;
+ (id)requestWithURL:(id)a3 builderBlock:(id)a4;
- (EFFuture)future;
- (MFURLRoutingRequest)initWithURL:(id)a3;
- (NSString)ef_publicDescription;
- (void)completeWithResultOfFuture:(id)a3;
@end

@implementation MFURLRoutingRequest

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100232444;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
  if (qword_1006DD748 != -1)
  {
    dispatch_once(&qword_1006DD748, block);
  }

  v2 = qword_1006DD740;

  return v2;
}

+ (id)requestWithURL:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithURL:v4];

  return v5;
}

+ (id)requestWithURL:(id)a3 builderBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithURL:v6];
  v7[2](v7, v8);

  return v8;
}

+ (id)externalRequestWithOpenURLContext:(id)a3
{
  v4 = a3;
  v5 = [a1 alloc];
  v6 = [v4 URL];
  v7 = [v5 initWithURL:v6];

  [v7 setExternal:1];

  return v7;
}

- (MFURLRoutingRequest)initWithURL:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MFURLRoutingRequest;
  v5 = [(MFURLRoutingRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = +[EFPromise promise];
    promise = v5->_promise;
    v5->_promise = v8;
  }

  return v5;
}

- (EFFuture)future
{
  v2 = [(MFURLRoutingRequest *)self promise];
  v3 = [v2 future];

  return v3;
}

- (void)completeWithResultOfFuture:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002329A4;
  v16[3] = &unk_1006561F0;
  objc_copyWeak(&v17, &location);
  v5 = [v4 map:v16];
  [(MFURLRoutingRequest *)self ef_publicDescription];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1002329D0;
  v6 = v14[3] = &unk_100656218;
  v15 = v6;
  [v5 addSuccessBlock:v14];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100232A84;
  v12 = &unk_10064D028;
  v7 = v6;
  v13 = v7;
  [v5 addFailureBlock:&v9];
  v8 = [(MFURLRoutingRequest *)self promise:v9];
  [v8 finishWithFuture:v5];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

- (NSString)ef_publicDescription
{
  v3 = [(MFURLRoutingRequest *)self sourceMessageListItem];

  v4 = objc_opt_class();
  v5 = [(MFURLRoutingRequest *)self URL];
  v6 = [v5 scheme];
  v7 = [NSString stringWithFormat:@"<%@: %p> scheme=%@ isExternal=%d hasSourceItem=%d", v4, self, v6, [(MFURLRoutingRequest *)self isExternal], v3 != 0];

  return v7;
}

@end