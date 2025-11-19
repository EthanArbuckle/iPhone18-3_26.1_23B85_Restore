@interface CycleDeviationsSectionCell
- (BOOL)isHighlighted;
- (_TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell)initWithCoder:(id)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CycleDeviationsSectionCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CycleDeviationsSectionCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CycleDeviationsSectionCell *)&v5 setHighlighted:v3];
  sub_29E1CD824();
}

- (_TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin26CycleDeviationsSectionCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end