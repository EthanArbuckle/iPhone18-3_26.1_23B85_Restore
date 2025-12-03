@interface XPCConnection
- (id)remoteObjectProxy;
@end

@implementation XPCConnection

- (id)remoteObjectProxy
{
  v2 = *(self->super.isa + 11);

  v4 = v2(v3);
  remoteObjectProxy = [v4 remoteObjectProxy];

  sub_23833ECE0();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_23833EF20();
  __swift_destroy_boxed_opaque_existential_0(v8);

  return v6;
}

@end