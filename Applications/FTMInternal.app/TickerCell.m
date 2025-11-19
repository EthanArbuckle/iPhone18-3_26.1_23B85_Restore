@interface TickerCell
- (_TtC11FTMInternal10TickerCell)initWithCoder:(id)a3;
- (_TtC11FTMInternal10TickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TickerCell

- (_TtC11FTMInternal10TickerCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1001D3030(a3, a4, v6);
}

- (_TtC11FTMInternal10TickerCell)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal10TickerCell_digit);
  *v3 = 48;
  v3[1] = 0xE100000000000000;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal10TickerCell_fontSize) = 0x4044000000000000;
  v4 = OBJC_IVAR____TtC11FTMInternal10TickerCell_numberLabel;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UILabel) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end