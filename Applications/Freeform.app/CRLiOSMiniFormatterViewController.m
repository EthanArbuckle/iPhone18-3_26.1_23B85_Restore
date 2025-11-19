@interface CRLiOSMiniFormatterViewController
- (_TtC8Freeform33CRLiOSMiniFormatterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)crlaxAccessibilityViews;
- (id)largeContentViewerInteraction:(id)a3 itemAtPoint:(CGPoint)a4;
- (void)loadView;
- (void)setCrlaxCurrentPresentedRep:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CRLiOSMiniFormatterViewController

- (void)setCrlaxCurrentPresentedRep:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep) = a3;
  v3 = a3;
}

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  v5 = self;
  v4 = [v3 init];
  [(CRLiOSMiniFormatterViewController *)v5 setView:v4];
}

- (id)crlaxAccessibilityViews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay);
  v3 = self;
  v4 = [v2 arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006410E0(v5);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100A6B770();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  v4 = v5.receiver;
  [(CRLiOSMiniFormatterViewController *)&v5 viewDidAppear:v3];
  sub_100020E58(&v4[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate], *&v4[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24]);
  sub_1007254CC();
  v4[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear] = 1;
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(CRLiOSMiniFormatterViewController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
  v8 = [v7 view];
  if (v8)
  {
    v9 = v8;
    [v8 setNeedsLayout];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100A6C338();
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  v2 = v3.receiver;
  [(CRLiOSMiniFormatterViewController *)&v3 viewDidLayoutSubviews];
  if ((v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingHide] & 1) == 0 && v2[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_isAnimatingDisplay] != 1)
  {
    sub_100A6FED4();
  }
}

- (_TtC8Freeform33CRLiOSMiniFormatterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)largeContentViewerInteraction:(id)a3 itemAtPoint:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = self;
  v9 = sub_100A71320(x, y);

  return v9;
}

@end