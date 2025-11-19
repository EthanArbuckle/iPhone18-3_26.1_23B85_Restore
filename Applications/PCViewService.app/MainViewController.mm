@interface MainViewController
- (MainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didInvalidateForRemoteAlert;
- (void)handleButtonActions:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation MainViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10000EEE4;
  }

  v7 = a3;
  v8 = self;
  sub_10000B524(a3, v6);
  sub_10000B17C(v6);
}

- (void)didInvalidateForRemoteAlert
{
  v2 = self;
  sub_10000BBDC();
}

- (void)handleButtonActions:(id)a3
{
  sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
  sub_10000EDD0();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  sub_10000BE94(v4);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10000D910(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_10000DBB8(a3);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10000DD80();
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v7 = a3;
  v8 = self;
  sub_10000DF90(a3, a4);
}

- (MainViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10000E750(v5, v7, a4);
}

@end