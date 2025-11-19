@interface CRLiOSEditAccessibilityDescriptionViewController
- (NSString)accessibilityDescriptionToSubmit;
- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithCoder:(id)a3;
- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithInitialAccessibilityDescription:(id)a3 title:(id)a4 subtitle:(id)a5 submitButtonTitle:(id)a6 placeholder:(id)a7 delegate:(id)a8;
- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)loadView;
- (void)setIsCancelled:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CRLiOSEditAccessibilityDescriptionViewController

- (void)setIsCancelled:(BOOL)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled) = a3;
  if (a3)
  {
    [(CRLiOSEditAccessibilityDescriptionViewController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithInitialAccessibilityDescription:(id)a3 title:(id)a4 subtitle:(id)a5 submitButtonTitle:(id)a6 placeholder:(id)a7 delegate:(id)a8
{
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  swift_unknownObjectRetain();
  return sub_100D46894(v8, v10, v11, v13, v14, v16, v22, v18, v19, v21);
}

- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCancelled) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController_isCompact) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController____lazy_storage___textView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_100D46BD0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  v4 = v7.receiver;
  [(CRLiOSEditAccessibilityDescriptionViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 navigationItem];
  v6 = String._bridgeToObjectiveC()();
  [v5 setTitle:v6];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for CRLiOSEditAccessibilityDescriptionViewController();
  v4 = v6.receiver;
  [(CRLiOSEditAccessibilityDescriptionViewController *)&v6 viewDidAppear:v3];
  LODWORD(v3) = UIAccessibilityLayoutChangedNotification;
  v5 = [v4 view];
  UIAccessibilityPostNotification(v3, v5);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100D4747C(a3);
}

- (_TtC8Freeform48CRLiOSEditAccessibilityDescriptionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityDescriptionToSubmit
{
  v2 = self;
  v3 = sub_100D4796C();
  v4 = [v3 text];

  if (v4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100D47FB0(v7);

  return v9;
}

@end