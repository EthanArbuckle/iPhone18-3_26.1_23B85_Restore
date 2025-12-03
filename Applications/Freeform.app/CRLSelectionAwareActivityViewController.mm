@interface CRLSelectionAwareActivityViewController
- (_TtC8Freeform39CRLSelectionAwareActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CRLSelectionAwareActivityViewController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  v2 = v5.receiver;
  [(CRLSelectionAwareActivityViewController *)&v5 viewDidLoad];
  view = [v2 view];
  if (view)
  {
    v4 = view;
    [view setAccessibilityViewIsModal:1];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  v4 = v6.receiver;
  [(CRLSelectionAwareActivityViewController *)&v6 viewDidAppear:appearCopy];
  LODWORD(appearCopy) = UIAccessibilityLayoutChangedNotification;
  view = [v4 view];
  UIAccessibilityPostNotification(appearCopy, view);
}

- (_TtC8Freeform39CRLSelectionAwareActivityViewController)initWithActivityItems:(id)items applicationActivities:(id)activities
{
  isa = activities;
  if (activities)
  {
    sub_100F7D79C();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform39CRLSelectionAwareActivityViewController_staysOpenOnSelectionChange) = 1;
    itemsCopy = items;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform39CRLSelectionAwareActivityViewController_staysOpenOnSelectionChange) = 1;
    itemsCopy2 = items;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for CRLSelectionAwareActivityViewController();
  v9 = [(CRLSelectionAwareActivityViewController *)&v11 initWithActivityItems:items applicationActivities:isa];

  return v9;
}

@end