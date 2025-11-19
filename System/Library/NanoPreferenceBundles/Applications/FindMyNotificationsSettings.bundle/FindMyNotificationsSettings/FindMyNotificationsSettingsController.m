@interface FindMyNotificationsSettingsController
- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithCoder:(id)a3;
- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
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

- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1360();
    v6 = a4;
    v7 = sub_1350();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for FindMyNotificationsSettingsController();
  v9 = [(FindMyNotificationsSettingsController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC27FindMyNotificationsSettings37FindMyNotificationsSettingsController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FindMyNotificationsSettingsController();
  v4 = a3;
  v5 = [(FindMyNotificationsSettingsController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end