@interface AppTelemetry
- (AppTelemetry)init;
@end

@implementation AppTelemetry

- (AppTelemetry)init
{
  v7.receiver = self;
  v7.super_class = AppTelemetry;
  v2 = [(AppTelemetry *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.appstored.AppTelemetry.dispatch", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;
  }

  return v2;
}

@end