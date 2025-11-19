@interface TTRIWhatsNewViewController
- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinueButton:(id)a3;
- (void)viewDidLoad;
@end

@implementation TTRIWhatsNewViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100472FB8();
}

- (void)didTapContinueButton:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100473688();

  sub_10000B070(v6);
}

- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC9Reminders26TTRIWhatsNewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end