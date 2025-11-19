@interface FMStewieSettingsView
- (BOOL)isHidden;
- (void)handleButtonRowAction;
- (void)setHidden:(BOOL)a3;
@end

@implementation FMStewieSettingsView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMStewieSettingsView();
  return [(FMStewieSettingsView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMStewieSettingsView();
  v4 = v8.receiver;
  [(FMStewieSettingsView *)&v8 setHidden:v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [v4 isHidden];
    [*(v6 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView) setHidden:v7];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)handleButtonRowAction
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_10008D940(1);
    swift_unknownObjectRelease();
  }
}

@end