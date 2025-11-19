@interface FCUICustomModeWelcomeSwiftController
+ (id)welcomeControllerWithAllReservedModes:(id)a3;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)_saveButtonPressed:(id)a3;
- (void)_tapped;
- (void)viewDidLoad;
@end

@implementation FCUICustomModeWelcomeSwiftController

+ (id)welcomeControllerWithAllReservedModes:(id)a3
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
  v2 = self;
  sub_FCE4();
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v4 = [objc_opt_self() sharedApplication];
  [v4 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];

  return 0;
}

- (void)_saveButtonPressed:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_125BC();
}

- (void)_tapped
{
  v2 = [objc_opt_self() sharedApplication];
  [v2 sendAction:"resignFirstResponder" to:0 from:0 forEvent:0];
}

- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13FocusSettings36FCUICustomModeWelcomeSwiftController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end