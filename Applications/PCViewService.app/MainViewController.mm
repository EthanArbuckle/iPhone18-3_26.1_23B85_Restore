@interface MainViewController
- (MainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didInvalidateForRemoteAlert;
- (void)handleButtonActions:(id)actions;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation MainViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    *(swift_allocObject() + 16) = v6;
    v6 = sub_10000EEE4;
  }

  contextCopy = context;
  selfCopy = self;
  sub_10000B524(context, v6);
  sub_10000B17C(v6);
}

- (void)didInvalidateForRemoteAlert
{
  selfCopy = self;
  sub_10000BBDC();
}

- (void)handleButtonActions:(id)actions
{
  sub_10000ED88(0, &qword_1000DA1E0, SBUIRemoteAlertButtonAction_ptr);
  sub_10000EDD0();
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10000BE94(v4);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10000D910(change);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000DBB8(appear);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10000DD80();
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  windowCopy = window;
  selfCopy = self;
  sub_10000DF90(window, disappear);
}

- (MainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000E750(v5, v7, bundle);
}

@end