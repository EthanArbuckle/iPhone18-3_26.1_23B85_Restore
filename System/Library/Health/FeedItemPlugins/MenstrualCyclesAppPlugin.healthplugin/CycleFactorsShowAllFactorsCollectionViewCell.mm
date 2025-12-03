@interface CycleFactorsShowAllFactorsCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CycleFactorsShowAllFactorsCollectionViewCell

- (_TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell_textLabel;
  *(&self->super.super.super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage) = 0;
  v11.receiver = self;
  v11.super_class = type metadata accessor for CycleFactorsShowAllFactorsCollectionViewCell();
  height = [(CycleFactorsShowAllFactorsCollectionViewCell *)&v11 initWithFrame:x, y, width, height];
  sub_29E11B85C();

  return height;
}

- (_TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell_textLabel;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x29EDC7B38]) init];
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin44CycleFactorsShowAllFactorsCollectionViewCell____lazy_storage___chevronImage) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleFactorsShowAllFactorsCollectionViewCell();
  return [(CycleFactorsShowAllFactorsCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CycleFactorsShowAllFactorsCollectionViewCell();
  v4 = v8.receiver;
  [(CycleFactorsShowAllFactorsCollectionViewCell *)&v8 setHighlighted:highlightedCopy];
  LODWORD(highlightedCopy) = [v4 isHighlighted];
  v5 = objc_opt_self();
  v6 = &selRef_quaternarySystemFillColor;
  if (!highlightedCopy)
  {
    v6 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v7 = [v5 *v6];
  [v4 setBackgroundColor_];
}

@end