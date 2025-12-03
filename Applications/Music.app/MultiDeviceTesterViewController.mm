@interface MultiDeviceTesterViewController
- (_TtC5Music31MultiDeviceTesterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation MultiDeviceTesterViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10027D428();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10027EB5C(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for MultiDeviceTesterViewController();
  v4 = v5.receiver;
  [(MultiDeviceTesterViewController *)&v5 viewDidDisappear:disappearCopy];
  static LifecyclePatrol.isEnabled = 1;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_10027EE54(change);
}

- (_TtC5Music31MultiDeviceTesterViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_10027FB04(v5, v7, bundle);
}

@end