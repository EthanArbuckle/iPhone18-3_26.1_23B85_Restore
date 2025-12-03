@interface NotificationsOnboardingViewController
- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)didTapContinue:(id)continue;
- (void)didTapNotNow:(id)now;
@end

@implementation NotificationsOnboardingViewController

- (void)didTapContinue:(id)continue
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v10 = static MainActor.shared.getter();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = &protocol witness table for MainActor;
  v11[4] = v9;

  sub_1004EC158(0, 0, v6, &unk_100964680, v11);

  sub_10000BA7C(v12);
}

- (void)didTapNotNow:(id)now
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [standardUserDefaults setBool:1 forKey:v6];

  sub_1006F7B24();
  sub_10000BA7C(&v7);
}

- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end