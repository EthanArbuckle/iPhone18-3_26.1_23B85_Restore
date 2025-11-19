@interface HistoryListHeaderView
- (_TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView)initWithFrame:(CGRect)a3;
@end

@implementation HistoryListHeaderView

- (_TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel;
  *(&self->super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for HistoryListHeaderView();
  v9 = [(HistoryListHeaderView *)&v11 initWithFrame:x, y, width, height];
  sub_29E27E404();

  return v9;
}

- (_TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin21HistoryListHeaderView_headerLabel;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end