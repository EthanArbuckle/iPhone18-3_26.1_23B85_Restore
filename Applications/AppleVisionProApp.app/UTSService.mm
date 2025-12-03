@interface UTSService
- (id)loadCollectionInfo:(id)info;
@end

@implementation UTSService

- (id)loadCollectionInfo:(id)info
{
  swift_getObjectType();
  sub_100052058();
  infoCopy = info;
  v5 = static JSContext.requiredCurrent.getter();
  v6 = JSContext.propagateErrorsToExceptions(_:)();

  return v6;
}

@end