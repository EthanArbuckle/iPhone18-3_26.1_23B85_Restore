@interface CRLiOSMiniFormatterPopoverContainerViewController
- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithCoder:(id)coder;
- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CRLiOSMiniFormatterPopoverContainerViewController

- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  v4 = [v3 init];
  [(CRLiOSMiniFormatterPopoverContainerViewController *)selfCopy setView:v4];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100715440();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  v4 = v9.receiver;
  [(CRLiOSMiniFormatterPopoverContainerViewController *)&v9 viewDidDisappear:disappearCopy];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLiOSMiniFormatterPopoverContainerViewController();
  swift_unknownObjectRetain();
  v7 = v10.receiver;
  [(CRLiOSMiniFormatterPopoverContainerViewController *)&v10 viewWillTransitionToSize:coordinator withTransitionCoordinator:width, height];
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

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_100715F20();
}

- (_TtC8Freeform49CRLiOSMiniFormatterPopoverContainerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end