@interface AnalyticsMonitor
- (AnalyticsMonitor)init;
- (void)processNotification:(id)notification;
@end

@implementation AnalyticsMonitor

- (AnalyticsMonitor)init
{
  v10.receiver = self;
  v10.super_class = AnalyticsMonitor;
  v2 = [(AnalyticsMonitor *)&v10 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"processNotification:" name:@"ContainerWillChangeStyleNotification" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"processNotification:" name:@"ContainerDidChangeStyleNotification" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"processNotification:" name:@"ContainerWillChangeLayoutNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"processNotification:" name:@"ContainerDidChangeLayoutNotification" object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"processNotification:" name:@"ContainerWillPresentContaineeNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"processNotification:" name:@"ContainerWillResignContaineeNotification" object:0];

    *(v2 + 8) = xmmword_1012127E0;
  }

  return v2;
}

- (void)processNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    object2 = [notificationCopy object];
    v6 = [object2 conformsToProtocol:&OBJC_PROTOCOL___ContainerProtocol];

    if (v6)
    {
      object = [notificationCopy object];
    }

    else
    {
      object = 0;
    }
  }

  name = [notificationCopy name];
  v8 = [name isEqualToString:@"ContainerDidChangeLayoutNotification"];

  if (v8)
  {
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"ContainerLayout"];
    self->_containeeLayout = [v10 integerValue];
LABEL_9:

LABEL_10:
    goto LABEL_11;
  }

  name2 = [notificationCopy name];
  v12 = [name2 isEqualToString:@"ContainerDidChangeStyleNotification"];

  if (v12)
  {
    userInfo = [notificationCopy userInfo];
    v10 = [userInfo objectForKeyedSubscript:@"ContainerStyle"];
    self->_containerStyle = [v10 integerValue];
    goto LABEL_9;
  }

  name3 = [notificationCopy name];
  v14 = [name3 isEqualToString:@"ContainerWillChangeLayoutNotification"];

  if (v14)
  {
    userInfo2 = [notificationCopy userInfo];
    v16 = [userInfo2 objectForKeyedSubscript:@"ContainerUpdateSource"];
    unsignedIntegerValue = [v16 unsignedIntegerValue];

    containeeLayout = self->_containeeLayout;
    userInfo3 = [notificationCopy userInfo];
    v20 = [userInfo3 objectForKeyedSubscript:@"ContainerLayout"];
    integerValue = [v20 integerValue];

    userInfo4 = [notificationCopy userInfo];
    userInfo = [userInfo4 objectForKeyedSubscript:@"ContainerContainee"];

    if (integerValue > containeeLayout)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2 * (integerValue < containeeLayout);
    }

    if (integerValue == containeeLayout || unsignedIntegerValue != 1)
    {
      goto LABEL_10;
    }

    if ([userInfo conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
    {
      v24 = userInfo;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        contentViewController = [userInfo contentViewController];
        if ([contentViewController conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
        {
          v25 = contentViewController;
        }

        else
        {
          v25 = 0;
        }

        if (!v25)
        {
          goto LABEL_32;
        }

        goto LABEL_31;
      }

      if (![object conformsToProtocol:&OBJC_PROTOCOL___GEOLogContextDelegate])
      {
LABEL_32:
        currentUITargetForAnalytics = 0;
        goto LABEL_33;
      }

      v24 = object;
    }

    v25 = v24;
    if (!v24)
    {
      goto LABEL_32;
    }

LABEL_31:
    currentUITargetForAnalytics = [v25 currentUITargetForAnalytics];

LABEL_33:
    [GEOAPPortal captureUserAction:v23 target:currentUITargetForAnalytics value:0];
    goto LABEL_10;
  }

LABEL_11:
}

@end