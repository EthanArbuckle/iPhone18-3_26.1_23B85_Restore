@interface PasswordSignInViewWrapper.Coordinator
- (_TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator)init;
- (void)safetySettingsDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
- (void)signInControllerDidSelectChildSignIn:(id)a3;
- (void)signInControllerDidSkip:(id)a3;
@end

@implementation PasswordSignInViewWrapper.Coordinator

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);
  v6 = sub_240A2BEBC();
  v7 = a3;
  v8 = self;
  sub_240998CC4(v7, v6);
}

- (void)signInControllerDidSkip:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *(v3 + 48);
    v7 = self;
    v6 = sub_240964BBC(v4, v5);
    v4(v6);
    sub_24090C1A0(v4);
  }
}

- (void)signInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24099AF8C();
}

- (void)signInControllerDidSelectChildSignIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24099A430(v4);
}

- (void)safetySettingsDidFinishWithResult:(id)a3 viewControllersToRemove:(id)a4 error:(id)a5
{
  if (a4)
  {
    sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
    sub_240A2C16C();
  }

  v8 = a3;
  v10 = a5;
  v9 = self;
  sub_24099B18C(a3, a5);
}

- (_TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end