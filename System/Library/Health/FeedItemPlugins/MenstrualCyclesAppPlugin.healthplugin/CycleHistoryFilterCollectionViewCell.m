@interface CycleHistoryFilterCollectionViewCell
- (BOOL)isSelected;
- (_TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation CycleHistoryFilterCollectionViewCell

- (_TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v9 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_highlightColor;
  *(&self->super.super.super.super.super.isa + v9) = [objc_opt_self() hkmc_cycleHistoryFilterBackgroundColor];
  v10 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_labelString);
  v11 = type metadata accessor for CycleHistoryFilterCollectionViewCell();
  *v10 = 0;
  v10[1] = 0;
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(CycleHistoryFilterCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  sub_29E0F997C();

  return v12;
}

- (_TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_label;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v5 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_highlightColor;
  *(&self->super.super.super.super.super.isa + v5) = [objc_opt_self() hkmc_cycleHistoryFilterBackgroundColor];
  v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin36CycleHistoryFilterCollectionViewCell_labelString);
  *v6 = 0;
  v6[1] = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleHistoryFilterCollectionViewCell();
  return [(CycleHistoryFilterCollectionViewCell *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CycleHistoryFilterCollectionViewCell();
  v4 = v5.receiver;
  [(CycleHistoryFilterCollectionViewCell *)&v5 setSelected:v3];
  sub_29E0F9868();
}

@end