@interface FMMapSettingsView
- (_TtC6FindMy17FMMapSettingsView)init;
- (void)handleModeTap;
- (void)handleUnitTap;
@end

@implementation FMMapSettingsView

- (void)handleModeTap
{
  v3 = self + OBJC_IVAR____TtC6FindMy17FMMapSettingsView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)handleUnitTap
{
  v3 = self + OBJC_IVAR____TtC6FindMy17FMMapSettingsView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    v6 = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC6FindMy17FMMapSettingsView)init
{
  v3 = OBJC_IVAR____TtC6FindMy17FMMapSettingsView_modeSettingRow;
  v4 = type metadata accessor for FMSettingRowView();
  v5 = objc_allocWithZone(v4);
  *(&self->super.super.super.super.isa + v3) = sub_100502750(1, 0.0);
  v6 = OBJC_IVAR____TtC6FindMy17FMMapSettingsView_unitSettingRow;
  v7 = objc_allocWithZone(v4);
  *(&self->super.super.super.super.isa + v6) = sub_100502750(1, 0.0);
  *&self->super.contentStackView[OBJC_IVAR____TtC6FindMy17FMMapSettingsView_delegate] = 0;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for FMMapSettingsView();
  return [(FMPlatterGroupView *)&v9 init];
}

@end