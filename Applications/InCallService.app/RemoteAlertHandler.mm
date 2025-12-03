@interface RemoteAlertHandler
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation RemoteAlertHandler

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  selfCopy = self;
  sub_1001EE294();
}

@end