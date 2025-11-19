@interface BKAppLaunchAssertion
- (BKAppLaunchAssertion)initWithQueue:(id)a3 releaseBlock:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKAppLaunchAssertion

- (void)invalidate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000274B0;
  v11 = sub_100027690;
  v12 = 0;
  v3 = [(BKAppLaunchAssertion *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10002790C;
  v6[3] = &unk_100A036C0;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  if (v8[5])
  {
    v4 = +[NSThread isMainThread];
    v5 = v8[5];
    if (v4)
    {
      v5[2](v8[5]);
    }

    else
    {
      dispatch_async(&_dispatch_main_q, v5);
    }
  }

  _Block_object_dispose(&v7, 8);
}

- (void)dealloc
{
  [(BKAppLaunchAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = BKAppLaunchAssertion;
  [(BKAppLaunchAssertion *)&v3 dealloc];
}

- (BKAppLaunchAssertion)initWithQueue:(id)a3 releaseBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = BKAppLaunchAssertion;
  v9 = [(BKAppLaunchAssertion *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, a3);
    v11 = [v8 copy];
    releaseBlock = v10->_releaseBlock;
    v10->_releaseBlock = v11;
  }

  return v10;
}

@end