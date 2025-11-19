@interface PluginAnalytics
+ (id)sharedInstance;
- (void)_recordEvent:(id)a3 field:(id)a4 value:(id)a5;
@end

@implementation PluginAnalytics

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E4DC;
  block[3] = &unk_20C48;
  block[4] = a1;
  if (qword_28020 != -1)
  {
    dispatch_once(&qword_28020, block);
  }

  v2 = qword_28028;

  return v2;
}

- (void)_recordEvent:(id)a3 field:(id)a4 value:(id)a5
{
  v8 = a4;
  v9 = a5;
  v6 = v9;
  v7 = v8;
  AnalyticsSendEventLazy();
}

@end