@interface CycleFactorsSectionCollectionViewCell
- (BOOL)isHighlighted;
- (_TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell)initWithCoder:(id)coder;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CycleFactorsSectionCollectionViewCell

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(CycleFactorsSectionCollectionViewCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(CycleFactorsSectionCollectionViewCell *)&v5 setHighlighted:highlightedCopy];
  sub_29E0F8488();
}

- (_TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___healthStore) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell____lazy_storage___hostView) = 0;
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin37CycleFactorsSectionCollectionViewCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

@end