@interface FREnableNotificationsAlertPresenter
- (void)presentEnableNotificationsAlertWithEnableNotificationsContext:(int64_t)a3 channelID:(id)a4 channelName:(id)a5 window:(id)a6 completionBlock:(id)a7;
@end

@implementation FREnableNotificationsAlertPresenter

- (void)presentEnableNotificationsAlertWithEnableNotificationsContext:(int64_t)a3 channelID:(id)a4 channelName:(id)a5 window:(id)a6 completionBlock:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070C64();
    if (v13)
    {
      goto LABEL_6;
    }
  }

  else if (v13)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070D44();
  }

LABEL_6:
  if (![(FREnableNotificationsAlertPresenter *)self isPresenting])
  {
    [(FREnableNotificationsAlertPresenter *)self setPresenting:1];
    v16 = [v14 rootViewController];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000487EC;
    v17[3] = &unk_1000C4DF0;
    v17[4] = self;
    v18 = v15;
    FRShowEnableNotificationsAlert(v16, a3, v12, v13, v17);
  }
}

@end