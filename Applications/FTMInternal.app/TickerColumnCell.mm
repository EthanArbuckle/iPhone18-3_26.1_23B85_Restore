@interface TickerColumnCell
- (_TtC11FTMInternal16TickerColumnCell)initWithCoder:(id)coder;
- (_TtC11FTMInternal16TickerColumnCell)initWithFrame:(CGRect)frame;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
@end

@implementation TickerColumnCell

- (_TtC11FTMInternal16TickerColumnCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_tableView;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(UITableView) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_characters) = _swiftEmptyArrayStorage;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_size) = 2;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal16TickerColumnCell_isScrolling) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TickerColumnCell();
  height = [(TickerColumnCell *)&v11 initWithFrame:x, y, width, height];
  sub_1001B63B8();

  return height;
}

- (_TtC11FTMInternal16TickerColumnCell)initWithCoder:(id)coder
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1001B6854(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end