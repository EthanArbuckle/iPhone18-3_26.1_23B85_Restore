@interface RootContainerViewController
- (_TtC20PeopleMessageService27RootContainerViewController)initWithCoder:(id)coder;
- (_TtC20PeopleMessageService27RootContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
@end

@implementation RootContainerViewController

- (void)loadView
{
  v3 = objc_opt_self();
  selfCopy = self;
  v4 = [v3 effectWithStyle:8];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  [(RootContainerViewController *)selfCopy setView:v5];
}

- (_TtC20PeopleMessageService27RootContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RootContainerViewController();
  v9 = [(RootContainerViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC20PeopleMessageService27RootContainerViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootContainerViewController();
  coderCopy = coder;
  v5 = [(RootContainerViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end