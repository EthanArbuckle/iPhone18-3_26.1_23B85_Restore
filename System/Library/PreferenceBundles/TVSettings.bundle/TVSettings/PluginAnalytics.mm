@interface PluginAnalytics
+ (id)sharedInstance;
- (void)_recordEvent:(id)event field:(id)field value:(id)value;
@end

@implementation PluginAnalytics

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E4DC;
  block[3] = &unk_20C48;
  block[4] = self;
  if (qword_28020 != -1)
  {
    dispatch_once(&qword_28020, block);
  }

  v2 = qword_28028;

  return v2;
}

- (void)_recordEvent:(id)event field:(id)field value:(id)value
{
  fieldCopy = field;
  valueCopy = value;
  v6 = valueCopy;
  v7 = fieldCopy;
  AnalyticsSendEventLazy();
}

@end