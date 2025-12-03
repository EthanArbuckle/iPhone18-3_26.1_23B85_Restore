@interface ClimateQuickActionPopover
- (_TtC7Climate25ClimateQuickActionPopover)initWithNibName:(id)name bundle:(id)bundle;
- (void)didTapDeepLinkButton:(id)button;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)loadView;
- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate;
@end

@implementation ClimateQuickActionPopover

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for ClimateGlassView());
  selfCopy = self;
  v4 = ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(kCACornerCurveContinuous, 1, 28.0);
  [(ClimateQuickActionPopover *)selfCopy setView:v4];
}

- (void)didTapDeepLinkButton:(id)button
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_10007C424();
    swift_unknownObjectRelease();
  }
}

- (_TtC7Climate25ClimateQuickActionPopover)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)serviceDidUpdate:(id)update characteristic:(id)characteristic fromGroupUpdate:(BOOL)groupUpdate
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_10007C924(selfCopy, 0);
    swift_unknownObjectRelease();
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateQuickActionPopover();
  contextCopy = context;
  coordinatorCopy = coordinator;
  v8 = v9.receiver;
  [(ClimateQuickActionPopover *)&v9 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinatorCopy];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007C924(v8, 0);
    swift_unknownObjectRelease();
  }
}

@end