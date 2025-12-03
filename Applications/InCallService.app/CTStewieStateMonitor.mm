@interface CTStewieStateMonitor
- (BOOL)isAlertActive;
- (BOOL)isAlertTriggerAllowedAndNotActive;
- (int64_t)getStatus;
@end

@implementation CTStewieStateMonitor

- (BOOL)isAlertActive
{
  selfCopy = self;
  v3 = sub_10000946C();

  return v3 & 1;
}

- (int64_t)getStatus
{
  selfCopy = self;
  v3 = sub_10002AFB0();

  return v3;
}

- (BOOL)isAlertTriggerAllowedAndNotActive
{
  selfCopy = self;
  v3 = sub_100253D28();

  return v3 & 1;
}

@end