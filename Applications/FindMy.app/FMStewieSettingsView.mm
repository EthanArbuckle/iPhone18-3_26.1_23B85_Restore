@interface FMStewieSettingsView
- (BOOL)isHidden;
- (void)handleButtonRowAction;
- (void)setHidden:(BOOL)hidden;
@end

@implementation FMStewieSettingsView

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMStewieSettingsView();
  return [(FMStewieSettingsView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FMStewieSettingsView();
  v4 = v8.receiver;
  [(FMStewieSettingsView *)&v8 setHidden:hiddenCopy];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    isHidden = [v4 isHidden];
    [*(v6 + OBJC_IVAR____TtC6FindMy18FMMeViewController_stewieSettingsContainerView) setHidden:isHidden];

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
    selfCopy = self;
    sub_10008D940(1);
    swift_unknownObjectRelease();
  }
}

@end