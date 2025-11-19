@interface HistoryView
- (_TtC7Measure11HistoryView)initWithCoder:(id)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation HistoryView

- (_TtC7Measure11HistoryView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UITableView) init];
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1000A75F4(a4, x, y);

  return v10;
}

@end