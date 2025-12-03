@interface CycleFactorsNoneCollectionViewCell
- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithFrame:(CGRect)frame;
@end

@implementation CycleFactorsNoneCollectionViewCell

- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  v11.receiver = self;
  v11.super_class = type metadata accessor for CycleFactorsNoneCollectionViewCell();
  height = [(CycleFactorsNoneCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_29E0AFE70();

  return height;
}

- (_TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin34CycleFactorsNoneCollectionViewCell_label;
  *(&self->super.super.super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end