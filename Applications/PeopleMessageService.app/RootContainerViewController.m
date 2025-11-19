@interface RootContainerViewController
- (_TtC20PeopleMessageService27RootContainerViewController)initWithCoder:(id)a3;
- (_TtC20PeopleMessageService27RootContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation RootContainerViewController

- (void)loadView
{
  v3 = objc_opt_self();
  v6 = self;
  v4 = [v3 effectWithStyle:8];
  v5 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v4];

  [(RootContainerViewController *)v6 setView:v5];
}

- (_TtC20PeopleMessageService27RootContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for RootContainerViewController();
  v9 = [(RootContainerViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC20PeopleMessageService27RootContainerViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RootContainerViewController();
  v4 = a3;
  v5 = [(RootContainerViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end