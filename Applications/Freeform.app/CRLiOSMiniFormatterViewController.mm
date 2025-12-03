@interface CRLiOSMiniFormatterViewController
- (_TtC8Freeform33CRLiOSMiniFormatterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)crlaxAccessibilityViews;
- (id)largeContentViewerInteraction:(id)interaction itemAtPoint:(CGPoint)point;
- (void)loadView;
- (void)setCrlaxCurrentPresentedRep:(id)rep;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CRLiOSMiniFormatterViewController

- (void)setCrlaxCurrentPresentedRep:(id)rep
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_crlaxCurrentPresentedRep) = rep;
  repCopy = rep;
}

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  selfCopy = self;
  v4 = [v3 init];
  [(CRLiOSMiniFormatterViewController *)selfCopy setView:v4];
}

- (id)crlaxAccessibilityViews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_stackViewForDisplay);
  selfCopy = self;
  arrangedSubviews = [v2 arrangedSubviews];
  sub_100006370(0, &qword_1019F6D00);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006410E0(v5);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100A6B770();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  v4 = v5.receiver;
  [(CRLiOSMiniFormatterViewController *)&v5 viewDidAppear:appearCopy];
  sub_100020E58(&v4[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate], *&v4[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_delegate + 24]);
  sub_1007254CC();
  v4[OBJC_IVAR____TtC8Freeform33CRLiOSMiniFormatterViewController_viewDidAppear] = 1;
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLiOSMiniFormatterViewController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(CRLiOSMiniFormatterViewController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
  view = [v7 view];
  if (view)
  {
    v9 = view;
    [view setNeedsLayout];

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
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

- (_TtC8Freeform33CRLiOSMiniFormatterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)largeContentViewerInteraction:(id)interaction itemAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  interactionCopy = interaction;
  selfCopy = self;
  v9 = sub_100A71320(x, y);

  return v9;
}

@end