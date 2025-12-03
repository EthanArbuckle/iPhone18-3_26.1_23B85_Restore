@interface PasswordSignInViewWrapper.Coordinator
- (_TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator)init;
- (void)safetySettingsDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error;
- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)signInControllerDidCancel:(id)cancel;
- (void)signInControllerDidSelectChildSignIn:(id)in;
- (void)signInControllerDidSkip:(id)skip;
@end

@implementation PasswordSignInViewWrapper.Coordinator

- (void)signInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);
  v6 = sub_240A2BEBC();
  controllerCopy = controller;
  selfCopy = self;
  sub_240998CC4(controllerCopy, v6);
}

- (void)signInControllerDidSkip:(id)skip
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator_settings);
  v4 = *(v3 + 40);
  if (v4)
  {
    v5 = *(v3 + 48);
    selfCopy = self;
    v6 = sub_240964BBC(v4, v5);
    v4(v6);
    sub_24090C1A0(v4);
  }
}

- (void)signInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_24099AF8C();
}

- (void)signInControllerDidSelectChildSignIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_24099A430(inCopy);
}

- (void)safetySettingsDidFinishWithResult:(id)result viewControllersToRemove:(id)remove error:(id)error
{
  if (remove)
  {
    sub_2409194E8(0, &qword_27E50C5E0, 0x277D75D28);
    sub_240A2C16C();
  }

  resultCopy = result;
  errorCopy = error;
  selfCopy = self;
  sub_24099B18C(result, error);
}

- (_TtCV14AppleIDSetupUI25PasswordSignInViewWrapper11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end