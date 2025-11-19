@interface _WidgetActivityHandlingTask
- (void)performTask;
- (void)taskFailed;
- (void)taskFinished:(id)a3;
@end

@implementation _WidgetActivityHandlingTask

- (void)taskFailed
{
  v3.receiver = self;
  v3.super_class = _WidgetActivityHandlingTask;
  [(RichMapsActivityCreatingTaskImpl *)&v3 taskFailed];
  [(_WidgetActivityHandlingTask *)self _sendWidgetAnalytics];
}

- (void)taskFinished:(id)a3
{
  v4.receiver = self;
  v4.super_class = _WidgetActivityHandlingTask;
  [(UserActivityHandlingTask *)&v4 taskFinished:a3];
  [(_WidgetActivityHandlingTask *)self _sendWidgetAnalytics];
}

- (void)performTask
{
  [(RichMapsActivityCreatingTaskImpl *)self taskStarted];
  self->_analyticsAction = 9001;
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 appSessionController];
  v5 = [v4 currentlyNavigatingPlatformController];

  if (v5)
  {
    v6 = 676;
  }

  else
  {
    v6 = 675;
  }

  self->_analyticsTarget = v6;
  v7 = [(UserActivityHandlingTask *)self userActivity];
  v10 = [v7 userInfo];

  v8 = [v10 objectForKey:WGWidgetUserInfoKeyFamily];
  widgetFamily = self->_widgetFamily;
  self->_widgetFamily = v8;

  [(_WidgetActivityHandlingTask *)self taskFailed];
}

@end