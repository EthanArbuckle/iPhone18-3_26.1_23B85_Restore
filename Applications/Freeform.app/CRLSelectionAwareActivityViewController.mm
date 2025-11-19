@interface CRLSelectionAwareActivityViewController
- (_TtC8Freeform39CRLSelectionAwareActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CRLSelectionAwareActivityViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  v2 = v5.receiver;
  [(CRLSelectionAwareActivityViewController *)&v5 viewDidLoad];
  v3 = [v2 view];
  if (v3)
  {
    v4 = v3;
    [v3 setAccessibilityViewIsModal:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  v4 = v6.receiver;
  [(CRLSelectionAwareActivityViewController *)&v6 viewDidAppear:v3];
  LODWORD(v3) = UIAccessibilityLayoutChangedNotification;
  v5 = [v4 view];
  UIAccessibilityPostNotification(v3, v5);
}

- (_TtC8Freeform39CRLSelectionAwareActivityViewController)initWithActivityItems:(id)a3 applicationActivities:(id)a4
{
  isa = a4;
  if (a4)
  {
    sub_100F7D79C();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform39CRLSelectionAwareActivityViewController_staysOpenOnSelectionChange) = 1;
    v7 = a3;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform39CRLSelectionAwareActivityViewController_staysOpenOnSelectionChange) = 1;
    v8 = a3;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  v9 = [(CRLSelectionAwareActivityViewController *)&v11 initWithActivityItems:a3 applicationActivities:isa];

  return v9;
}

@end