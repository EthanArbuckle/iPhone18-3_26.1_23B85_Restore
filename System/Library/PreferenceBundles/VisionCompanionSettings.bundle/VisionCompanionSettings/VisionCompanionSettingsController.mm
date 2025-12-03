@interface VisionCompanionSettingsController
- (_TtC23VisionCompanionSettings33VisionCompanionSettingsController)init;
- (_TtC23VisionCompanionSettings33VisionCompanionSettingsController)initWithCoder:(id)coder;
- (_TtC23VisionCompanionSettings33VisionCompanionSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (void)showPrivacySheet;
- (void)viewDidLoad;
@end

@implementation VisionCompanionSettingsController

- (_TtC23VisionCompanionSettings33VisionCompanionSettingsController)init
{
  v3 = &self->PSListController_opaque[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_bundleIdentifier];
  *v3 = sub_37E4();
  v3[1] = v4;
  v5 = &self->PSListController_opaque[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_privacyBundleIdentifier];
  *v5 = sub_37F4();
  v5[1] = v6;
  *&self->PSListController_opaque[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController____lazy_storage___appSystemSettingsSpecifierProvider] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VisionCompanionSettingsController();
  return [(VisionCompanionSettingsController *)&v8 initWithNibName:0 bundle:0];
}

- (_TtC23VisionCompanionSettings33VisionCompanionSettingsController)initWithCoder:(id)coder
{
  v4 = &self->PSListController_opaque[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_bundleIdentifier];
  *v4 = sub_37E4();
  v4[1] = v5;
  v6 = &self->PSListController_opaque[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController_privacyBundleIdentifier];
  *v6 = sub_37F4();
  v6[1] = v7;
  *&self->PSListController_opaque[OBJC_IVAR____TtC23VisionCompanionSettings33VisionCompanionSettingsController____lazy_storage___appSystemSettingsSpecifierProvider] = 0;
  result = sub_3934();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_182C();
}

- (id)specifiers
{
  selfCopy = self;
  v3 = sub_1A24();

  if (v3)
  {
    v4.super.isa = sub_3894().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)showPrivacySheet
{
  selfCopy = self;
  sub_219C();
}

- (_TtC23VisionCompanionSettings33VisionCompanionSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end