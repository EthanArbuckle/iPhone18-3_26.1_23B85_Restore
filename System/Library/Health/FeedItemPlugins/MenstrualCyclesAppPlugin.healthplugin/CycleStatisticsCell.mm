@interface CycleStatisticsCell
- (BOOL)isHighlighted;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell)initWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CycleStatisticsCell

- (_TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___titleLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___valueLabel) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC24MenstrualCyclesAppPlugin19CycleStatisticsCell____lazy_storage___captionLabel) = 0;
  result = sub_29E2C4724();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_29E191028();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v6 = sub_29E1914CC(width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CycleStatisticsCell();
  return [(CycleStatisticsCell *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CycleStatisticsCell();
  v4 = v5.receiver;
  [(CycleStatisticsCell *)&v5 setHighlighted:highlightedCopy];
  sub_29E191890();
}

@end