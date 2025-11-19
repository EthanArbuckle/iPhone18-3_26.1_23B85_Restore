@interface ClimateQuickActionPopover
- (_TtC7Climate25ClimateQuickActionPopover)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didTapDeepLinkButton:(id)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5;
@end

@implementation ClimateQuickActionPopover

- (void)loadView
{
  v3 = objc_allocWithZone(type metadata accessor for ClimateGlassView());
  v5 = self;
  v4 = ClimateGlassView.init(cornerRadius:cornerCurve:isTranslucent:)(kCACornerCurveContinuous, 1, 28.0);
  [(ClimateQuickActionPopover *)v5 setView:v4];
}

- (void)didTapDeepLinkButton:(id)a3
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = self;
    sub_10007C424();
    swift_unknownObjectRelease();
  }
}

- (_TtC7Climate25ClimateQuickActionPopover)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)serviceDidUpdate:(id)a3 characteristic:(id)a4 fromGroupUpdate:(BOOL)a5
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = self;
    sub_10007C924(v6, 0);
    swift_unknownObjectRelease();
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v9.receiver = self;
  v9.super_class = type metadata accessor for ClimateQuickActionPopover();
  v6 = a3;
  v7 = a4;
  v8 = v9.receiver;
  [(ClimateQuickActionPopover *)&v9 didUpdateFocusInContext:v6 withAnimationCoordinator:v7];
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_10007C924(v8, 0);
    swift_unknownObjectRelease();
  }
}

@end