@interface JSOnDeviceDataService
- (id)askToSync:(id)sync :(double)a4;
@end

@implementation JSOnDeviceDataService

- (id)askToSync:(id)sync :(double)a4
{
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  v8 = sub_10012C23C(v6, a4);

  return v8;
}

@end