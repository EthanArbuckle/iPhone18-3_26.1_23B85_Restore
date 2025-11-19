@interface AppExtensionWrapper
- (BOOL)shouldAcceptConnection:(id)a3;
- (_TtC12ExtensionKit19AppExtensionWrapper)init;
- (id)makeSceneWithConfiguration:(id)a3;
@end

@implementation AppExtensionWrapper

- (BOOL)shouldAcceptConnection:(id)a3
{
  sub_1D29F3724(&self->super._identity + OBJC_IVAR____TtC12ExtensionKit19AppExtensionWrapper_configurationScene, v9);
  if (v10)
  {
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v5 = a3;
    v6 = self;
    v7 = sub_1D29FFD18();

    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    sub_1D29DB7F4(v9, &unk_1EC701680, &qword_1D2A049B0);
    v7 = 0;
  }

  return v7 & 1;
}

- (id)makeSceneWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1D29F288C(v4);

  return v6;
}

- (_TtC12ExtensionKit19AppExtensionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end