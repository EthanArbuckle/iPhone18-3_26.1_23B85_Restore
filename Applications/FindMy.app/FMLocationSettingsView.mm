@interface FMLocationSettingsView
- (void)handleChangeMeDevice;
- (void)handleEditLocationName;
@end

@implementation FMLocationSettingsView

- (void)handleChangeMeDevice
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_10008EF18();
    swift_unknownObjectRelease();
  }
}

- (void)handleEditLocationName
{
  if ((*(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy22FMLocationSettingsView_locationRow))[OBJC_IVAR____TtC6FindMy22FMSettingSingleRowView_isSelectable] == 1 && swift_unknownObjectWeakLoadStrong())
  {
    v3 = self;
    sub_10008EF38();

    swift_unknownObjectRelease();
  }
}

@end