@interface PBADataRecoveryEngine
- (BOOL)dataRecoveryPossible;
- (BOOL)requiresDataRecovery;
- (PBADataRecoveryEngine)init;
- (PBADataRecoveryEngine)initWithMobileKeyBag:(id)bag;
- (void)_queue_performDataRecoveryWithPasscode:(id)passcode progressHandler:(id)handler completion:(id)completion;
- (void)performDataRecoveryWithPasscode:(id)passcode progressHandler:(id)handler completion:(id)completion;
@end

@implementation PBADataRecoveryEngine

- (PBADataRecoveryEngine)initWithMobileKeyBag:(id)bag
{
  bagCopy = bag;
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

    objc_storeStrong(&v6->_queue_mobileKeyBag, bag);
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

- (void)performDataRecoveryWithPasscode:(id)passcode progressHandler:(id)handler completion:(id)completion
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  completionCopy = completion;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000080C8;
  v15[3] = &unk_10001C900;
  v15[4] = self;
  v16 = passcodeCopy;
  v17 = handlerCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = handlerCopy;
  v14 = passcodeCopy;
  dispatch_async(queue, v15);
}

- (void)_queue_performDataRecoveryWithPasscode:(id)passcode progressHandler:(id)handler completion:(id)completion
{
  passcodeCopy = passcode;
  handlerCopy = handler;
  completionCopy = completion;
  queue_mobileKeyBag = self->_queue_mobileKeyBag;
  v34 = 0;
  v12 = [(SBFMobileKeyBag *)queue_mobileKeyBag beginRecovery:passcodeCopy error:&v34];
  v13 = v34;
  v14 = v13;
  if (!v12)
  {
    v23 = v13;
    if (!completionCopy)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  state = [(SBFMobileKeyBag *)self->_queue_mobileKeyBag state];
  escrowCount = [state escrowCount];
  if (escrowCount <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = escrowCount;
  }

  if (v18 >= 1)
  {
    while (1)
    {
      state2 = [(SBFMobileKeyBag *)self->_queue_mobileKeyBag state];
      escrowCount2 = [state2 escrowCount];
      v21 = escrowCount2;
      if (handlerCopy)
      {
        calloutQueue = self->_calloutQueue;
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1000083B0;
        block[3] = &unk_10001C928;
        v32 = v18;
        v33 = escrowCount2;
        v31 = handlerCopy;
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
  state3 = [(SBFMobileKeyBag *)self->_queue_mobileKeyBag state];
  if ([state3 lockState] && objc_msgSend(state3, "recoveryRequired"))
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

  if (completionCopy)
  {
LABEL_18:
    v26 = self->_calloutQueue;
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000083D4;
    v27[3] = &unk_10001C950;
    v29 = completionCopy;
    v28 = v23;
    dispatch_async(v26, v27);
  }

LABEL_19:
}

@end