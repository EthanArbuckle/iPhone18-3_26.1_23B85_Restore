@interface NEExtensionBaseProviderHostExportedObject
- (_TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject)init;
- (void)cancelWithErrorWithError:(id)error reply:(id)reply;
@end

@implementation NEExtensionBaseProviderHostExportedObject

- (void)cancelWithErrorWithError:(id)error reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  errorCopy = error;
  selfCopy = self;
  sub_1BA85B6C0(errorCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject)init
{
  *(&self->super.isa + OBJC_IVAR____TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject_delegate) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for NEExtensionBaseProviderHostExportedObject();
  return [(NEExtensionBaseProviderHostExportedObject *)&v3 init];
}

@end