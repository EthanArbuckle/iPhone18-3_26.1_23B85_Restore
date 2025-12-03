@interface XPCConnection
- (id)remoteObjectProxy;
@end

@implementation XPCConnection

- (id)remoteObjectProxy
{
  v2 = *self->nsXPCConnection;

  remoteObjectProxy = [v2 remoteObjectProxy];
  sub_20E4C67A0();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_20E4C6900();
  __swift_destroy_boxed_opaque_existential_0(v6);

  return v4;
}

@end