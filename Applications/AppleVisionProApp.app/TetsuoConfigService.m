@interface TetsuoConfigService
- (id)deviceType;
@end

@implementation TetsuoConfigService

- (id)deviceType
{
  swift_getObjectType();
  sub_100052058();
  v2 = static JSContext.requiredCurrent.getter();
  v3 = JSContext.propagateErrorsToExceptions(_:)();

  return v3;
}

@end