@interface HomePodSetupWiFiInfoTableView
- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithCoder:(id)a3;
- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation HomePodSetupWiFiInfoTableView

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100096100(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) = _swiftEmptyArrayStorage;
  v10.receiver = self;
  v10.super_class = type metadata accessor for HomePodSetupWiFiInfoTableView();
  return [(HomePodSetupWiFiInfoTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC14HDSViewService29HomePodSetupWiFiInfoTableView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14HDSViewService29HomePodSetupWiFiInfoTableView_elements) = _swiftEmptyArrayStorage;
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomePodSetupWiFiInfoTableView();
  v4 = a3;
  v5 = [(HomePodSetupWiFiInfoTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end