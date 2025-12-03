@interface AMSDVerifyDevicePasscodeTask
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)perform;
@end

@implementation AMSDVerifyDevicePasscodeTask

- (id)perform
{
  selfCopy = self;
  v3 = AMSDVerifyDevicePasscodeTask.perform()();

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  AMSDVerifyDevicePasscodeTask.listener(_:shouldAcceptNewConnection:)(selfCopy, connectionCopy);

  return 1;
}

@end