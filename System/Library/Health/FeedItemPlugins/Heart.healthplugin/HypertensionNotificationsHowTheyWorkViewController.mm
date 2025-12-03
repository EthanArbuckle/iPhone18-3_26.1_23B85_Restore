@interface HypertensionNotificationsHowTheyWorkViewController
- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)hxui_cancelButtonTapped;
- (void)hxui_primaryFooterButtonTapped;
- (void)viewDidLoad;
@end

@implementation HypertensionNotificationsHowTheyWorkViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D7090E4();
}

- (void)hxui_primaryFooterButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29D8FD2C0(selfCopy, v4);
    sub_29D936978();
  }
}

- (void)hxui_cancelButtonTapped
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_29D8528E0(v4);
    sub_29D936978();
  }
}

- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC5Heart50HypertensionNotificationsHowTheyWorkViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end