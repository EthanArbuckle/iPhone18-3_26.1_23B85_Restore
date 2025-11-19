@interface NEExtensionBaseProviderHostExportedObject
- (_TtC16NetworkExtension41NEExtensionBaseProviderHostExportedObject)init;
- (void)cancelWithErrorWithError:(id)a3 reply:(id)a4;
@end

@implementation NEExtensionBaseProviderHostExportedObject

- (void)cancelWithErrorWithError:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v8 = a3;
  v7 = self;
  sub_1BA85B6C0(v8, v7, v6);
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