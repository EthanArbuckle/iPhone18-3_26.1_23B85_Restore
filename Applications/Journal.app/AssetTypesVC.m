@interface AssetTypesVC
- (_TtC7Journal12AssetTypesVC)initWithCoder:(id)a3;
- (_TtC7Journal12AssetTypesVC)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC7Journal12AssetTypesVC)initWithStyle:(int64_t)a3;
- (void)refreshData;
- (void)viewDidLoad;
@end

@implementation AssetTypesVC

- (void)viewDidLoad
{
  v2 = self;
  sub_1007B98E0();
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
  sub_1003E9628(0, 0, v5, &unk_1009687F8, v9);
}

- (_TtC7Journal12AssetTypesVC)initWithStyle:(int64_t)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for AssetTypesVC();
  return [(AssetTypesVC *)&v5 initWithStyle:a3];
}

- (_TtC7Journal12AssetTypesVC)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource) = 0;
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AssetTypesVC();
  v9 = [(AssetTypesVC *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC7Journal12AssetTypesVC)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC7Journal12AssetTypesVC_dataSource) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AssetTypesVC();
  v4 = a3;
  v5 = [(AssetTypesVC *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end