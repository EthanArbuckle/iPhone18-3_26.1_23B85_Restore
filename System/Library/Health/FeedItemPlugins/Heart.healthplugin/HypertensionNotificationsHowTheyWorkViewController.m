@interface HypertensionNotificationsHowTheyWorkViewController
- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation HypertensionNotificationsHowTheyWorkViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_29D7090E4();
}

- (void)hxui_primaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_29D8FD2C0(v5, v4);
    sub_29D936978();
  }
}

- (void)hxui_cancelButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_29D8528E0(v4);
    sub_29D936978();
  }
}

- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end