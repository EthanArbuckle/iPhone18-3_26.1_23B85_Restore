@interface HistoryView
- (_TtC7Measure11HistoryView)initWithCoder:(id)coder;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation HistoryView

- (_TtC7Measure11HistoryView)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7Measure11HistoryView_tableView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(UITableView) init];
  swift_unknownObjectWeakInit();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1000A75F4(event, x, y);

  return v10;
}

@end