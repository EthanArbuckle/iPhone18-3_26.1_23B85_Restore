@interface MonitoredStates
+ (id)sharedInstance;
- (MonitoredStates)initWithCoder:(id)coder;
- (MonitoredStates)initWithImmersionLevelControllerPresentOnScreen:(BOOL)screen;
@end

@implementation MonitoredStates

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F27C;
  block[3] = &unk_100030840;
  block[4] = self;
  if (qword_10003E7A8 != -1)
  {
    dispatch_once(&qword_10003E7A8, block);
  }

  v2 = qword_10003E7A0;

  return v2;
}

- (MonitoredStates)initWithImmersionLevelControllerPresentOnScreen:(BOOL)screen
{
  v5.receiver = self;
  v5.super_class = MonitoredStates;
  result = [(MonitoredStates *)&v5 init];
  if (result)
  {
    result->_isImmersionLevelControllerPresentOnScreen = screen;
  }

  return result;
}

- (MonitoredStates)initWithCoder:(id)coder
{
  v4 = [coder decodeBoolForKey:@"isImmersionLevelControllerPresentOnScreen"];

  return [(MonitoredStates *)self initWithImmersionLevelControllerPresentOnScreen:v4];
}

@end