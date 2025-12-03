@interface _WidgetActivityHandlingTask
- (void)performTask;
- (void)taskFailed;
- (void)taskFinished:(id)finished;
@end

@implementation _WidgetActivityHandlingTask

- (void)taskFailed
{
  v3.receiver = self;
  v3.super_class = _WidgetActivityHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v3 taskFailed];
  [(_WidgetActivityHandlingTask *)self _sendWidgetAnalytics];
}

- (void)taskFinished:(id)finished
{
  v4.receiver = self;
  v4.super_class = _WidgetActivityHandlingTask;
  [(UserActivityHandlingTask *)&v4 taskFinished:finished];
  [(_WidgetActivityHandlingTask *)self _sendWidgetAnalytics];
}

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  self->_analyticsAction = 9001;
  v3 = +[UIApplication sharedMapsDelegate];
  appSessionController = [v3 appSessionController];
  currentlyNavigatingPlatformController = [appSessionController currentlyNavigatingPlatformController];

  if (currentlyNavigatingPlatformController)
  {
    v6 = 676;
  }

  else
  {
    v6 = 675;
  }

  self->_analyticsTarget = v6;
  userActivity = [(UserActivityHandlingTask *)self userActivity];
  userInfo = [userActivity userInfo];

  v8 = [userInfo objectForKey:WGWidgetUserInfoKeyFamily];
  widgetFamily = self->_widgetFamily;
  self->_widgetFamily = v8;

  [(_WidgetActivityHandlingTask *)self taskFailed];
}

@end