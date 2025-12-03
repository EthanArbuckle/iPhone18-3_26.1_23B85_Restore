@interface FindMyNotificationsSettingsController
- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithCoder:(id)coder;
- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (id)applicationBundleIdentifier;
- (id)localizedPaneTitle;
@end

@implementation FindMyNotificationsSettingsController

- (id)localizedPaneTitle
{
  type metadata accessor for FindMyNotificationsSettingsController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v7._countAndFlagsBits = 0x8000000000001510;
  v9._countAndFlagsBits = 0x454D414E5F505041;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v9._object = 0xE800000000000000;
  v4.super.isa = v3;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  sub_1340(v9, v10, v4, v11, v7);

  v5 = sub_1350();

  return v5;
}

- (id)applicationBundleIdentifier
{
  v2 = sub_1350();

  return v2;
}

- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1360();
    bundleCopy = bundle;
    v7 = sub_1350();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FindMyNotificationsSettingsController();
  v9 = [(FindMyNotificationsSettingsController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FindMyNotificationsSettingsController();
  coderCopy = coder;
  v5 = [(FindMyNotificationsSettingsController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end