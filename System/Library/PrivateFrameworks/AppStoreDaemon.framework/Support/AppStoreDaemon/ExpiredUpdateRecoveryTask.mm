@interface ExpiredUpdateRecoveryTask
- (void)mainWithCompletionHandler:(id)handler;
@end

@implementation ExpiredUpdateRecoveryTask

- (void)mainWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10022FDA8;
  v18 = sub_10022FDB8;
  v19 = 0;
  v5 = sub_1002BB3F0();
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10022FDC0;
  v13[3] = &unk_10051CF30;
  v13[4] = self;
  v13[5] = &v14;
  [v5 readUsingSession:v13];

  if (v15[5])
  {
    v6 = +[BagService appstoredService];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10022FE20;
    v10[3] = &unk_10051DF30;
    v10[4] = self;
    v11 = handlerCopy;
    v12 = &v14;
    [v6 upToDateBagWithCompletionHandler:v10];

    v7 = v11;
  }

  else
  {
    if (*(&self->super._finished + 1))
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(&self->super._finished + 1);
        *buf = 138543362;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Could not find non-installed update for bundle ID %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "_bundleID == nil", buf, 2u);
      }
    }

    v7 = ASDErrorWithDescription();
    (*(handlerCopy + 2))(handlerCopy, v7);
  }

  _Block_object_dispose(&v14, 8);
}

@end