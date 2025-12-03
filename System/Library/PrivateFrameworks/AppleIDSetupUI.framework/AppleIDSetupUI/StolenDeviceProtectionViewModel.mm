@interface StolenDeviceProtectionViewModel
- (_TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel)init;
- (void)remoteUIDidEndFlow:(id)flow;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
@end

@implementation StolenDeviceProtectionViewModel

- (_TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteUIDidEndFlow:(id)flow
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler);
  if (v3)
  {
    v4 = *&self->remoteUIPresenter[OBJC_IVAR____TtC14AppleIDSetupUI31StolenDeviceProtectionViewModel_completionHandler];
    selfCopy = self;
    sub_24090C23C(v3);
    v3(1, 0);

    sub_24090C1A0(v3);
  }
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v4 = sub_240A2946C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2944C();
  (*(v5 + 8))(v9, v4);
}

@end