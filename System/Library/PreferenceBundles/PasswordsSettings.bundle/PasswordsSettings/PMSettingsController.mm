@interface PMSettingsController
- (PMSettingsController)initWithCoder:(id)a3;
- (PMSettingsController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)openAutoFillSettings;
- (id)specifiers;
- (void)accountStoreDidChange;
- (void)openPasswordsApp;
- (void)presentNeverSavedSheetView;
- (void)presentPasskeysLearnMoreView;
- (void)showPasswordsPrivacySheet;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation PMSettingsController

- (PMSettingsController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_12808();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_26C4(v5, v7, a4);
}

- (PMSettingsController)initWithCoder:(id)a3
{
  v3 = &self->PSListController_opaque[OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier];
  *v3 = 0xD00000000000001ELL;
  *(v3 + 1) = 0x8000000000015830;
  self->PSListController_opaque[OBJC_IVAR___PMSettingsController_shouldShowNeverSavedSheet] = 0;
  *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController_subscriptions] = &_swiftEmptySetSingleton;
  *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController_appPolicy] = 0;
  *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController__specifiers] = 0;
  result = sub_12B88();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_2998(a3);
}

- (id)specifiers
{
  v2 = self;
  sub_2C3C();

  v3.super.isa = sub_12858().super.isa;

  return v3.super.isa;
}

- (void)showPasswordsPrivacySheet
{
  v2 = *&self->PSListController_opaque[OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier];
  v3 = *&self->passwordsPrivacySplashIdentifier[OBJC_IVAR___PMSettingsController_passwordsPrivacySplashIdentifier];
  v6 = self;
  v4 = sub_127F8();
  v5 = [objc_opt_self() presenterForPrivacySplashWithIdentifier:v4];

  if (v5)
  {
    [v5 setPresentingViewController:v6];
    [v5 present];
  }
}

- (void)presentNeverSavedSheetView
{
  v3 = (*(*(sub_7114(&qword_1D068, &qword_13830) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v5 = &v10 - v4;
  v6 = sub_128E8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_128C8();
  v7 = self;
  v8 = sub_128B8();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_5B50(0, 0, v5, &unk_13840, v9);
}

- (void)accountStoreDidChange
{
  v2 = self;
  sub_5F2C();
}

- (void)presentPasskeysLearnMoreView
{
  v2 = self;
  sub_6098();
}

- (void)openPasswordsApp
{
  v0 = sub_12418();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = [objc_opt_self() passwordManagerURL];
    sub_123F8();

    sub_123E8(v8);
    v10 = v9;
    (*(v1 + 8))(v4, v0);
    sub_7508(&_swiftEmptyArrayStorage);
    isa = sub_127E8().super.isa;

    [v6 openSensitiveURL:v10 withOptions:isa];
  }

  else
  {
    __break(1u);
  }
}

- (id)openAutoFillSettings
{
  v0 = (*(*(sub_7114(&qword_1D080, &qword_13850) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v14 - v1;
  v3 = sub_12418();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_12408();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v7, v2, v3);
    result = [objc_opt_self() defaultWorkspace];
    if (result)
    {
      v10 = result;
      sub_123E8(v9);
      v12 = v11;
      sub_7508(&_swiftEmptyArrayStorage);
      isa = sub_127E8().super.isa;

      [v10 openSensitiveURL:v12 withOptions:isa];

      return (*(v4 + 8))(v7, v3);
    }
  }

  __break(1u);
  return result;
}

@end