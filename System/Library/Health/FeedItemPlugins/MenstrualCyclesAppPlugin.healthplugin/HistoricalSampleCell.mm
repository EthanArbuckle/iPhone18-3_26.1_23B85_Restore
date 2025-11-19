@interface HistoricalSampleCell
- (BOOL)isHighlighted;
- (_TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation HistoricalSampleCell

- (_TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel;
  *(&self->super.super.super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for HistoricalSampleCell();
  v10 = [(HistoricalSampleCell *)&v12 initWithFrame:x, y, width, height];
  sub_29DF2DA3C();

  return v10;
}

- (_TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_titleLabel;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell_dateRangeLabel;
  *(&self->super.super.super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin20HistoricalSampleCell____lazy_storage___chevronImage) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HistoricalSampleCell();
  return [(HistoricalSampleCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = type metadata accessor for HistoricalSampleCell();
  v4 = v8.receiver;
  [(HistoricalSampleCell *)&v8 setHighlighted:v3];
  LODWORD(v3) = [v4 isHighlighted];
  v5 = objc_opt_self();
  v6 = &selRef_quaternarySystemFillColor;
  if (!v3)
  {
    v6 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v7 = [v5 *v6];
  [v4 setBackgroundColor_];
}

@end