@interface InsightsAdminVC
- (_TtC7Journal15InsightsAdminVC)initWithCoder:(id)a3;
- (_TtC7Journal15InsightsAdminVC)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal15InsightsAdminVC)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)refreshData;
- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5;
- (void)viewDidLoad;
@end

@implementation InsightsAdminVC

- (void)viewDidLoad
{
  v2 = self;
  sub_1002A0860();
}

- (void)refreshData
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1003E9628(0, 0, v5, &unk_10094B9A0, v9);
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  sub_1002A3248(a4);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)a3 willDisplayHeaderView:(id)a4 forSection:(int64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_1002A32AC(v8);
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1002A345C();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC7Journal15InsightsAdminVC)initWithStyle:(int64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
  v5.receiver = self;
  v5.super_class = type metadata accessor for InsightsAdminVC();
  return [(InsightsAdminVC *)&v5 initWithStyle:a3];
}

- (_TtC7Journal15InsightsAdminVC)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for InsightsAdminVC();
  v9 = [(InsightsAdminVC *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7Journal15InsightsAdminVC)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal15InsightsAdminVC_data) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for InsightsAdminVC();
  v4 = a3;
  v5 = [(InsightsAdminVC *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end