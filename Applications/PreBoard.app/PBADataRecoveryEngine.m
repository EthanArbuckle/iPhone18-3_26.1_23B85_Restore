@interface PBADataRecoveryEngine
- (BOOL)dataRecoveryPossible;
- (BOOL)requiresDataRecovery;
- (PBADataRecoveryEngine)init;
- (PBADataRecoveryEngine)initWithMobileKeyBag:(id)a3;
- (void)_queue_performDataRecoveryWithPasscode:(id)a3 progressHandler:(id)a4 completion:(id)a5;
- (void)performDataRecoveryWithPasscode:(id)a3 progressHandler:(id)a4 completion:(id)a5;
@end

@implementation PBADataRecoveryEngine

- (PBADataRecoveryEngine)initWithMobileKeyBag:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PBADataRecoveryEngine;
  v6 = [(PBADataRecoveryEngine *)&v12 init];
  if (v6)
  {
    v7 = dispatch_queue_create("com.apple.preboard.datarecovery", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    v9 = dispatch_queue_create("com.apple.preboard.datarecovery.callout", 0);
    calloutQueue = v6->_calloutQueue;
    v6->_calloutQueue = v9;

    objc_storeStrong(&v6->_queue_mobileKeyBag, a3);
  }

  return v6;
}

- (PBADataRecoveryEngine)init
{
  v3 = +[SBFMobileKeyBag sharedInstance];
  v4 = [(PBADataRecoveryEngine *)self initWithMobileKeyBag:v3];

  return v4;
}

- (BOOL)requiresDataRecovery
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007E78;
  v5[3] = &unk_10001C8D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)dataRecoveryPossible
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100007F84;
  v5[3] = &unk_10001C8D8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)performDataRecoveryWithPasscode:(id)a3 progressHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000080C8;
  v15[3] = &unk_10001C900;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(queue, v15);
}

- (void)_queue_performDataRecoveryWithPasscode:(id)a3 progressHandler:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue_mobileKeyBag = self->_queue_mobileKeyBag;
  v34 = 0;
  v12 = [(SBFMobileKeyBag *)queue_mobileKeyBag beginRecovery:v8 error:&v34];
  v13 = v34;
  v14 = v13;
  if (!v12)
  {
    v23 = v13;
    if (!v10)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v15 = [(SBFMobileKeyBag *)self->_queue_mobileKeyBag state];
  v16 = [v15 escrowCount];
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (v18 >= 1)
  {
    while (1)
    {
      v19 = [(SBFMobileKeyBag *)self->_queue_mobileKeyBag state];
      v20 = [v19 escrowCount];
      v21 = v20;
      if (v9)
      {
        calloutQueue = self->_calloutQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000083B0;
        block[3] = &unk_10001C928;
        v32 = v18;
        v33 = v20;
        v31 = v9;
        dispatch_async(calloutQueue, block);
      }

      if (v21 <= 0)
      {
        break;
      }

      usleep(0x411Au);
    }
  }

  LODWORD(v17) = 10.0;
  [(SBFMobileKeyBag *)self->_queue_mobileKeyBag waitForUnlockWithTimeout:v17];
  v24 = [(SBFMobileKeyBag *)self->_queue_mobileKeyBag state];
  if ([v24 lockState] && objc_msgSend(v24, "recoveryRequired"))
  {
    v35 = NSLocalizedDescriptionKey;
    v36 = @"Data recovery failed";
    v25 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v23 = [NSError errorWithDomain:@"com.apple.preboard.dr" code:1 userInfo:v25];
  }

  else
  {
    v23 = 0;
  }

  if (v10)
  {
LABEL_18:
    v26 = self->_calloutQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000083D4;
    v27[3] = &unk_10001C950;
    v29 = v10;
    v28 = v23;
    dispatch_async(v26, v27);
  }

LABEL_19:
}

@end