@interface TestFlightFeedbackUploadTask
- (void)mainWithCompletionHandler:(id)a3;
@end

@implementation TestFlightFeedbackUploadTask

- (void)mainWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (self)
    {
      v6 = *(&self->_dataStore + 2);
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    v8 = sub_1002026B0(v7);
    if (self)
    {
      v9 = *(&self->_dataStore + 2);
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
    v11 = sub_10020272C(v10);
    v12 = [v11 appVersion];
    *buf = 138412546;
    v18 = v8;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%@]: Starting feedback upload for %{public}@", buf, 0x16u);
  }

  v13 = +[BagService appstoredService];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1002976B8;
  v15[3] = &unk_10051C6E8;
  v15[4] = self;
  v16 = v4;
  v14 = v4;
  [v13 recentBagWithCompletionHandler:v15];
}

@end