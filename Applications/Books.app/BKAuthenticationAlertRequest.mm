@interface BKAuthenticationAlertRequest
+ (id)sharedRequester;
- (BKAuthenticationAlertRequest)init;
- (void)_handleAuthResult:(id)a3 error:(id)a4;
- (void)_notifyHandlers:(BOOL)a3;
- (void)dealloc;
- (void)requestAuthenticationPolitely:(BOOL)a3 completion:(id)a4;
@end

@implementation BKAuthenticationAlertRequest

+ (id)sharedRequester
{
  if (qword_100AF7830 != -1)
  {
    sub_100793AF8();
  }

  v3 = qword_100AF7828;

  return v3;
}

- (BKAuthenticationAlertRequest)init
{
  v6.receiver = self;
  v6.super_class = BKAuthenticationAlertRequest;
  v2 = [(BKAuthenticationAlertRequest *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.ibooks.authentication.request", 0);
    authQueue = v2->_authQueue;
    v2->_authQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(AMSPromise *)self->_authPromise cancel];
  v3.receiver = self;
  v3.super_class = BKAuthenticationAlertRequest;
  [(BKAuthenticationAlertRequest *)&v3 dealloc];
}

- (void)_notifyHandlers:(BOOL)a3
{
  authQueue = self->_authQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001C4BFC;
  v4[3] = &unk_100A044C8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(authQueue, v4);
}

- (void)requestAuthenticationPolitely:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  v7 = +[BKReachability sharedReachabilityForInternetConnection];
  v8 = [v7 currentReachabilityStatus];

  if (v8)
  {
    v9 = +[UIApplication sharedApplication];
    if ([v9 launchedToTest])
    {
    }

    else
    {
      v10 = +[AETestDriver shared];
      v11 = [v10 reading];

      if (!v11)
      {
        authQueue = self->_authQueue;
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_1001C4EA4;
        v17[3] = &unk_100A03490;
        v19 = a3;
        v17[4] = self;
        v18 = v6;
        v16 = v6;
        dispatch_async(authQueue, v17);
        v14 = v18;
        goto LABEL_6;
      }
    }
  }

  v12 = self->_authQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001C4E90;
  block[3] = &unk_100A03920;
  v21 = v6;
  v13 = v6;
  dispatch_async(v12, block);
  v14 = v21;
LABEL_6:
}

- (void)_handleAuthResult:(id)a3 error:(id)a4
{
  v5 = a3;
  authQueue = self->_authQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001C55F4;
  v8[3] = &unk_100A03440;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(authQueue, v8);
}

@end