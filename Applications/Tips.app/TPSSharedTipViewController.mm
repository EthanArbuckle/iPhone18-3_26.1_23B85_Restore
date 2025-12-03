@interface TPSSharedTipViewController
- (_TtC4Tips26TPSSharedTipViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)doneTapped:(id)tapped;
@end

@implementation TPSSharedTipViewController

- (void)doneTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(TPSSharedTipViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_1000243B4(&v6);
}

- (_TtC4Tips26TPSSharedTipViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed);
    *v6 = 0;
    v6[1] = 0;
    bundleCopy = bundle;
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = (&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC4Tips26TPSSharedTipViewController_onDismissed);
    *v9 = 0;
    v9[1] = 0;
    bundleCopy2 = bundle;
    v8 = 0;
  }

  v13.receiver = self;
  v13.super_class = type metadata accessor for TPSSharedTipViewController();
  v11 = [(TPSViewController *)&v13 initWithNibName:v8 bundle:bundle];

  return v11;
}

@end