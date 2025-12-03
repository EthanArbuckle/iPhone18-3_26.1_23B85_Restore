@interface FCUIFocusCustomizationInvitationSwiftController
+ (id)welcomeControllerWithMode:(id)mode;
- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)_nextButtonPressed:(id)pressed;
- (void)viewDidLoad;
@end

@implementation FCUIFocusCustomizationInvitationSwiftController

+ (id)welcomeControllerWithMode:(id)mode
{
  v4 = objc_allocWithZone(swift_getObjCClassMetadata());
  v5 = sub_8EA0(mode);

  return v5;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_8F6C();
}

- (void)_nextButtonPressed:(id)pressed
{
  selfCopy = self;
  setupNavigationController = [(FCUIBaseWelcomeController *)selfCopy setupNavigationController];
  if (setupNavigationController)
  {
    v4 = setupNavigationController;
    [(FCUISetupNavigationController *)setupNavigationController createDefaultModeConfigurationForMode:*&selfCopy->super.OBWelcomeController_opaque[OBJC_IVAR____TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController_mode]];
  }
}

- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13FocusSettings47FCUIFocusCustomizationInvitationSwiftController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end