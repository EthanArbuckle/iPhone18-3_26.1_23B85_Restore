@interface CycleFactorsNoneCollectionViewCell
- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithCoder:(id)a3;
- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithFrame:(CGRect)a3;
@end

@implementation CycleFactorsNoneCollectionViewCell

- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for CycleFactorsNoneCollectionViewCell();
  v9 = [(CycleFactorsNoneCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_29E0AFE70();

  return v9;
}

- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end