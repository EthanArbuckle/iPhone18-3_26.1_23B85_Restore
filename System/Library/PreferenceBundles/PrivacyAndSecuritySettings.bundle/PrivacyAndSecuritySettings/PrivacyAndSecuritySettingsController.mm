@interface PrivacyAndSecuritySettingsController
- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithCoder:(id)coder;
- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithNibName:(id)name bundle:(id)bundle;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PrivacyAndSecuritySettingsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_529CC();
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  if (l)
  {
    l = sub_545C8();
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

  selfCopy = self;
  sub_527A4();
  sub_45F0C(l, v8, v7);

  sub_515E4(v8);
}

- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_54668();
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel] = 0;
    v8 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
    v9 = type metadata accessor for PrivacyAndSecuritySettingsList();
    (*(*(v9 - 8) + 56))(&self->PSViewController_opaque[v8], 1, 1, v9);
    bundleCopy = bundle;
    v11 = sub_54638();
  }

  else
  {
    *&self->PSViewController_opaque[OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel] = 0;
    v12 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
    v13 = type metadata accessor for PrivacyAndSecuritySettingsList();
    (*(*(v13 - 8) + 56))(&self->PSViewController_opaque[v12], 1, 1, v13);
    bundleCopy2 = bundle;
    v11 = 0;
  }

  v17.receiver = self;
  v17.super_class = ObjectType;
  v15 = [(PrivacyAndSecuritySettingsController *)&v17 initWithNibName:v11 bundle:bundle];

  return v15;
}

- (_TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *&self->PSViewController_opaque[OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsListViewModel] = 0;
  v6 = OBJC_IVAR____TtC26PrivacyAndSecuritySettings36PrivacyAndSecuritySettingsController____lazy_storage___privacyAndSecuritySettingsList;
  v7 = type metadata accessor for PrivacyAndSecuritySettingsList();
  (*(*(v7 - 8) + 56))(&self->PSViewController_opaque[v6], 1, 1, v7);
  v11.receiver = self;
  v11.super_class = ObjectType;
  coderCopy = coder;
  v9 = [(PrivacyAndSecuritySettingsController *)&v11 initWithCoder:coderCopy];

  if (v9)
  {
  }

  return v9;
}

@end