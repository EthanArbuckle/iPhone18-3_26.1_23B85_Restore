@interface TickerColumnCell
- (_TtC11FTMInternal16TickerColumnCell)initWithCoder:(id)a3;
- (_TtC11FTMInternal16TickerColumnCell)initWithFrame:(CGRect)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
@end

@implementation TickerColumnCell

- (_TtC11FTMInternal16TickerColumnCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UITableView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) = 2;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_isScrolling) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TickerColumnCell();
  v9 = [(TickerColumnCell *)&v11 initWithFrame:x, y, width, height];
  sub_1001B63B8();

  return v9;
}

- (_TtC11FTMInternal16TickerColumnCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(UITableView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) = 2;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_isScrolling) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

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
  v13 = sub_1001B6854(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end