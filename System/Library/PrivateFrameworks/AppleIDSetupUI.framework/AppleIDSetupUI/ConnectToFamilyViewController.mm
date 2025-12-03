@interface ConnectToFamilyViewController
- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (id)accountsForAccountManager:(id)manager;
- (void)cancelButtonAction;
- (void)onboardingSignInController:(id)controller didCompleteWithOperationsResults:(id)results;
- (void)onboardingSignInControllerDidCancel:(id)cancel;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation ConnectToFamilyViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24094AF90();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24094BF0C(appear);
}

- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onboardingSignInController:(id)controller didCompleteWithOperationsResults:(id)results
{
  sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);
  v6 = sub_240A2BEBC();
  controllerCopy = controller;
  selfCopy = self;
  sub_24095EBB0(v6);
}

- (void)onboardingSignInControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  _s14AppleIDSetupUI29ConnectToFamilyViewControllerC016onboardingSignInH9DidCancelyySo012UINavigationH0CF_0();
}

- (void)cancelButtonAction
{
  selfCopy = self;
  ConnectToFamilyViewController.cancelButtonAction()();
}

- (id)accountsForAccountManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  _s14AppleIDSetupUI29ConnectToFamilyViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0(managerCopy);

  type metadata accessor for AIDAServiceType(0);
  sub_2409194E8(0, &qword_27E50C600, 0x277CB8F30);
  sub_24096471C(&qword_27E50BAF0, type metadata accessor for AIDAServiceType);
  v6 = sub_240A2BE9C();

  return v6;
}

@end