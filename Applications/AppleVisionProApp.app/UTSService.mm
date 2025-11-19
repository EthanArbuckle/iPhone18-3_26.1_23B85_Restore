@interface UTSService
- (id)loadCollectionInfo:(id)a3;
@end

@implementation UTSService

- (id)loadCollectionInfo:(id)a3
{
  swift_getObjectType();
  sub_100052058();
  v4 = a3;
  v5 = static JSContext.requiredCurrent.getter();
  v6 = JSContext.propagateErrorsToExceptions(_:)();

  return v6;
}

@end