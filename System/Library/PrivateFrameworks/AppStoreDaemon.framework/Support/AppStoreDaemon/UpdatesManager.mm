@interface UpdatesManager
+ (BOOL)isTVProviderApp:(unint64_t)app;
+ (BOOL)shouldUseModernUpdates;
+ (UpdatesControllerInterface)sharedManager;
+ (id)_internalManager;
- (BOOL)shouldUseModernUpdates;
- (UpdatesManager)init;
- (void)_invalidateCachedModernUpdatesValue:(id)value;
@end

@implementation UpdatesManager

- (UpdatesManager)init
{
  v13.receiver = self;
  v13.super_class = UpdatesManager;
  v2 = [(UpdatesManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(UnfairLock);
    unfairLock = v2->_unfairLock;
    v2->_unfairLock = v3;

    v5 = +[BagService appstoredService];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100320B8C;
    v11[3] = &unk_1005232C0;
    v6 = v2;
    v12 = v6;
    v7 = [v5 addChangeObserverLimitedToKeys:&off_100549530 observer:v11];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = +[ActiveAccountObserver sharedInstance];
    [v8 addObserver:v6 selector:"_invalidateCachedModernUpdatesValue:" name:@"AccountStorePrimaryAccountDidChange" object:v9];
  }

  return v2;
}

+ (id)_internalManager
{
  if (qword_1005AAC28 != -1)
  {
    dispatch_once(&qword_1005AAC28, &stru_1005232E0);
  }

  v3 = qword_1005AAC30;

  return v3;
}

+ (UpdatesControllerInterface)sharedManager
{
  _internalManager = [self _internalManager];
  shouldUseModernUpdates = [_internalManager shouldUseModernUpdates];

  if (shouldUseModernUpdates)
  {
    +[_TtC9appstored20UpdatesManager_Swift shared];
  }

  else
  {
    +[UpdatesManager_ObjC sharedManager];
  }
  v4 = ;

  return v4;
}

+ (BOOL)shouldUseModernUpdates
{
  _internalManager = [self _internalManager];
  shouldUseModernUpdates = [_internalManager shouldUseModernUpdates];

  return shouldUseModernUpdates;
}

+ (BOOL)isTVProviderApp:(unint64_t)app
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = dispatch_semaphore_create(0);
  sharedManager = [self sharedManager];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100320DE4;
  v9[3] = &unk_100520BF0;
  v11 = &v12;
  v7 = v5;
  v10 = v7;
  [sharedManager isTVProviderApp:app withReplyHandler:v9];

  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(app) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return app;
}

- (BOOL)shouldUseModernUpdates
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100321078;
  v23 = sub_100321088;
  v24 = 0;
  unfairLock = self->_unfairLock;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100321090;
  v18[3] = &unk_10051B638;
  v18[4] = self;
  v18[5] = &v19;
  sub_100379C5C(unfairLock, v18);
  v4 = v20[5];
  if (!v4)
  {
    _shouldUseModernUpdates = [(UpdatesManager *)self _shouldUseModernUpdates];
    v7 = sub_1003D3F88(AppDefaultsManager, @"CurrentUpdateSource");
    v8 = [v7 isEqualToNumber:&off_100547FC8];
    v9 = v8;
    if (_shouldUseModernUpdates)
    {
      bOOLValue = [_shouldUseModernUpdates BOOLValue];
      v10 = self->_unfairLock;
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1003210A4;
      v16[3] = &unk_10051C8F8;
      v16[4] = self;
      v17 = bOOLValue;
      sub_100379C5C(v10, v16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      bOOLValue = v8;
      if (!v7)
      {
LABEL_9:
        v12 = [NSNumber numberWithBool:bOOLValue];
        sub_1003D4024(AppDefaultsManager, v12, @"CurrentUpdateSource");

        goto LABEL_10;
      }
    }

    if (v9 != bOOLValue)
    {
      v11 = sub_1002BB3F0();
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_1003210F4;
      v14[3] = &unk_100523300;
      v15 = bOOLValue;
      [v11 modifyUsingTransaction:v14];
    }

    goto LABEL_9;
  }

  LOBYTE(bOOLValue) = [v4 BOOLValue];
LABEL_10:
  _Block_object_dispose(&v19, 8);

  return bOOLValue;
}

- (void)_invalidateCachedModernUpdatesValue:(id)value
{
  unfairLock = self->_unfairLock;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100321180;
  v4[3] = &unk_10051AF98;
  v4[4] = self;
  sub_100379C5C(unfairLock, v4);
}

@end