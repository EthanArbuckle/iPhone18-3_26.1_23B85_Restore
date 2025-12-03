@interface FREnableNotificationsAlertPresenter
- (void)presentEnableNotificationsAlertWithEnableNotificationsContext:(int64_t)context channelID:(id)d channelName:(id)name window:(id)window completionBlock:(id)block;
@end

@implementation FREnableNotificationsAlertPresenter

- (void)presentEnableNotificationsAlertWithEnableNotificationsContext:(int64_t)context channelID:(id)d channelName:(id)name window:(id)window completionBlock:(id)block
{
  dCopy = d;
  nameCopy = name;
  windowCopy = window;
  blockCopy = block;
  if (!dCopy && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_100070C64();
    if (nameCopy)
    {
      goto LABEL_6;
    }
  }

  else if (nameCopy)
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
    rootViewController = [windowCopy rootViewController];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000487EC;
    v17[3] = &unk_1000C4DF0;
    v17[4] = self;
    v18 = blockCopy;
    FRShowEnableNotificationsAlert(rootViewController, context, dCopy, nameCopy, v17);
  }
}

@end