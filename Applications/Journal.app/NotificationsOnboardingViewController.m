@interface NotificationsOnboardingViewController
- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)didTapContinue:(id)a3;
- (void)didTapNotNow:(id)a3;
@end

@implementation NotificationsOnboardingViewController

- (void)didTapContinue:(id)a3
{
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v12[-v5];
  swift_unknownObjectRetain();
  v7 = self;
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

- (void)didTapNotNow:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = [objc_opt_self() standardUserDefaults];
  v6 = String._bridgeToObjectiveC()();
  [v5 setBool:1 forKey:v6];

  sub_1006F7B24();
  sub_10000BA7C(&v7);
}

- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC7Journal37NotificationsOnboardingViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end