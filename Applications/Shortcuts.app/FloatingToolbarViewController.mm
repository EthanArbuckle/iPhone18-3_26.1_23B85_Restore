@interface FloatingToolbarViewController
- (_TtC9Shortcuts29FloatingToolbarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)keyboardWillChange:(id)change;
- (void)viewDidLoad;
@end

@implementation FloatingToolbarViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000133E8();
}

- (void)keyboardWillChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100048960(changeCopy);
}

- (_TtC9Shortcuts29FloatingToolbarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_100048D6C();
}

@end