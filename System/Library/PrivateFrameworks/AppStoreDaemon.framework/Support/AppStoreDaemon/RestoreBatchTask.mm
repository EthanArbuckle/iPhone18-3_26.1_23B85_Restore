@interface RestoreBatchTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation RestoreBatchTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(&self->_account + 2) count];
    v7 = [*(&self->super._finished + 1) ams_DSID];
    *buf = 134218242;
    v19 = v6;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting batch restore for %ld items with accountID: %{public}@", buf, 0x16u);
  }

  if ([*(&self->_account + 2) count])
  {
    if (*(&self->super._finished + 1))
    {
      goto LABEL_8;
    }

    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using the active account for content restore call", buf, 2u);
    }

    v9 = +[ACAccountStore ams_sharedAccountStore];
    v10 = [v9 ams_activeiTunesAccount];
    v11 = *(&self->super._finished + 1);
    *(&self->super._finished + 1) = v10;

    if (*(&self->super._finished + 1))
    {
LABEL_8:
      v13 = +[BagService appstoredService];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1002718CC;
      v16[3] = &unk_10051F508;
      v16[4] = self;
      v17 = v4;
      [v13 upToDateBagWithCompletionHandler:v16];

      v14 = v17;
    }

    else
    {
      v14 = [NSString stringWithFormat:@"Unable to determine account for content restore. Requested account: %@", objc_getProperty(self, v12, 42, 1)];
      v15 = ASDErrorWithTitleAndMessage();
      (*(v4 + 2))(v4, v15);
    }
  }

  else
  {
    v14 = ASDErrorWithTitleAndMessage();
    (*(v4 + 2))(v4, v14);
  }
}

@end