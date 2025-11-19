@interface CRLiOSMiniFormatterPopoverContainerViewController
- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithCoder:(id)a3;
- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CRLiOSMiniFormatterPopoverContainerViewController

- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_builder) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_widthAnchorConstraint) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v3 = objc_allocWithZone(UIView);
  v5 = self;
  v4 = [v3 init];
  [(CRLiOSMiniFormatterPopoverContainerViewController *)v5 setView:v4];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100715440();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v4 = v9.receiver;
  [(CRLiOSMiniFormatterPopoverContainerViewController *)&v9 viewDidDisappear:v3];
  if (*&v4[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate])
  {
    v5 = *&v4[OBJC_IVAR____TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController_delegate + 8];
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 8);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v8(v4, ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(CRLiOSMiniFormatterPopoverContainerViewController *)&v10 viewWillTransitionToSize:a4 withTransitionCoordinator:width, height];
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

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_100715F20();
}

- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end