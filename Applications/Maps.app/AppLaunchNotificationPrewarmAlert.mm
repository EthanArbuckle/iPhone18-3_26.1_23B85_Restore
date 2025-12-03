@interface AppLaunchNotificationPrewarmAlert
- (void)_alertDidFinishProcessing;
- (void)_presentAlertUIWithStatus:(int64_t)status repeatPrompt:(BOOL)prompt;
- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler;
@end

@implementation AppLaunchNotificationPrewarmAlert

- (void)_alertDidFinishProcessing
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    v5 = objc_retainBlock(completionBlock);
    v4 = self->_completionBlock;
    self->_completionBlock = 0;

    v5[2]();
  }
}

- (void)_presentAlertUIWithStatus:(int64_t)status repeatPrompt:(BOOL)prompt
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1007A1238;
  v8[3] = &unk_101661B18;
  v8[4] = self;
  v4 = [[PushNotificationPrompt alloc] initWithReason:prompt authorizationStatus:status completion:v8];
  v5 = qword_10195D7E0;
  qword_10195D7E0 = v4;

  v6 = +[UIApplication sharedMapsDelegate];
  chromeViewController = [v6 chromeViewController];
  [chromeViewController _maps_topMostPresentViewController:qword_10195D7E0 animated:1 completion:0];
}

- (void)displayAlertIfNecessaryWithCompletionHandler:(id)handler
{
  v4 = [handler copy];
  completionBlock = self->_completionBlock;
  self->_completionBlock = v4;

  if (!qword_10195D7E0)
  {
    v6 = +[UNUserNotificationCenter currentNotificationCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1007A1384;
    v7[3] = &unk_101629CA8;
    v7[4] = self;
    [v6 getNotificationSettingsWithCompletionHandler:v7];
  }
}

@end