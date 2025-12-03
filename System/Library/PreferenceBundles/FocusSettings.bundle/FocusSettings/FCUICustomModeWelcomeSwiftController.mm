@interface FCUICustomModeWelcomeSwiftController
+ (id)welcomeControllerWithAllReservedModes:(id)modes;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)_saveButtonPressed:(id)pressed;
- (void)_tapped;
- (void)viewDidLoad;
@end

@implementation FCUICustomModeWelcomeSwiftController

+ (id)welcomeControllerWithAllReservedModes:(id)modes
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_9ED4(0, &unk_279A0, DNDMode_ptr);
  sub_A8F0();
  v4 = sub_13914();
  v5 = objc_allocWithZone(ObjCClassMetadata);
  v6 = sub_FB20(v4);

  return v6;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_FCE4();
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

  return 0;
}

- (void)_saveButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_125BC();
}

- (void)_tapped
{
  sharedApplication = [objc_opt_self() sharedApplication];
  [sharedApplication sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end