@interface ConnectToFamilyViewController
- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (id)accountsForAccountManager:(id)a3;
- (void)cancelButtonAction;
- (void)onboardingSignInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)onboardingSignInControllerDidCancel:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ConnectToFamilyViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_24094AF90();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_24094BF0C(a3);
}

- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC14AppleIDSetupUI29ConnectToFamilyViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onboardingSignInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  sub_2409194E8(0, &qword_27E50C610, 0x277CED1E0);
  v6 = sub_240A2BEBC();
  v7 = a3;
  v8 = self;
  sub_24095EBB0(v6);
}

- (void)onboardingSignInControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  _s14AppleIDSetupUI29ConnectToFamilyViewControllerC016onboardingSignInH9DidCancelyySo012UINavigationH0CF_0();
}

- (void)cancelButtonAction
{
  v2 = self;
  ConnectToFamilyViewController.cancelButtonAction()();
}

- (id)accountsForAccountManager:(id)a3
{
  v4 = a3;
  v5 = self;
  _s14AppleIDSetupUI29ConnectToFamilyViewControllerC8accounts3forSDySo15AIDAServiceTypeaSo9ACAccountCGSo18AIDAAccountManagerC_tF_0(v4);

  type metadata accessor for AIDAServiceType(0);
  sub_2409194E8(0, &qword_27E50C600, 0x277CB8F30);
  sub_24096471C(&qword_27E50BAF0, type metadata accessor for AIDAServiceType);
  v6 = sub_240A2BE9C();

  return v6;
}

@end