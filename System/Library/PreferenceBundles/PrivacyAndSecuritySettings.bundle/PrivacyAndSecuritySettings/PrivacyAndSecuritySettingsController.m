@interface PrivacyAndSecuritySettingsController
- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithCoder:(id)a3;
- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)viewDidLoad;
@end

@implementation PrivacyAndSecuritySettingsController

- (void)viewDidLoad
{
  v2 = self;
  sub_529CC();
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    a3 = sub_545C8();
  }

  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_53108;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  v9 = self;
  sub_527A4();
  sub_45F0C(a3, v8, v7);

  sub_515E4(v8);
}

- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_54668();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel] = 0;
    v8 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
    v9 = type metadata accessor for PrivacyAndSecuritySettingsList();
    (*(*(v9 - 8) + 56))(&self->PSViewController_opaque[v8], 1, 1, v9);
    v10 = a4;
    v11 = sub_54638();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel] = 0;
    v12 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
    v13 = type metadata accessor for PrivacyAndSecuritySettingsList();
    (*(*(v13 - 8) + 56))(&self->PSViewController_opaque[v12], 1, 1, v13);
    v14 = a4;
    v11 = 0;
  }

  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(PrivacyAndSecuritySettingsController *)&v17 initWithNibName:v11 bundle:a4];

  return v15;
}

- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel] = 0;
  v6 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
  v7 = type metadata accessor for PrivacyAndSecuritySettingsList();
  (*(*(v7 - 8) + 56))(&self->PSViewController_opaque[v6], 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = a3;
  v9 = [(PrivacyAndSecuritySettingsController *)&v11 initWithCoder:v8];

  if (v9)
  {
  }

  return v9;
}

@end