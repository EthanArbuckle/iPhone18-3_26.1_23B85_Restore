@interface FCUIFocusCustomizationInvitationSwiftController
+ (id)welcomeControllerWithMode:(id)a3;
- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)_nextButtonPressed:(id)a3;
- (void)viewDidLoad;
@end

@implementation FCUIFocusCustomizationInvitationSwiftController

+ (id)welcomeControllerWithMode:(id)a3
{
  v4 = objc_allocWithZone(swift_getObjCClassMetadata());
  v5 = sub_8EA0(a3);

  return v5;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_8F6C();
}

- (void)_nextButtonPressed:(id)a3
{
  v5 = self;
  v3 = [(FCUIBaseWelcomeController *)v5 setupNavigationController];
  if (v3)
  {
    v4 = v3;
    [(FCUISetupNavigationController *)v3 createDefaultModeConfigurationForMode:*&v5->super.OBWelcomeController_opaque[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode]];
  }
}

- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end