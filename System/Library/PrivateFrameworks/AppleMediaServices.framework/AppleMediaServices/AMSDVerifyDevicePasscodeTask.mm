@interface AMSDVerifyDevicePasscodeTask
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)perform;
@end

@implementation AMSDVerifyDevicePasscodeTask

- (id)perform
{
  v2 = self;
  v3 = AMSDVerifyDevicePasscodeTask.perform()();

  return v3;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  AMSDVerifyDevicePasscodeTask.listener(_:shouldAcceptNewConnection:)(v8, v7);

  return 1;
}

@end