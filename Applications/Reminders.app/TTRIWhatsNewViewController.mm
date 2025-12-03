@interface TTRIWhatsNewViewController
- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinueButton:(id)button;
- (void)viewDidLoad;
@end

@implementation TTRIWhatsNewViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100472FB8();
}

- (void)didTapContinueButton:(id)button
{
  if (button)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100473688();

  sub_10000B070(v6);
}

- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end