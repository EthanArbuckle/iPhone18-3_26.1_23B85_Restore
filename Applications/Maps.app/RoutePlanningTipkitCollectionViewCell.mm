@interface RoutePlanningTipkitCollectionViewCell
- (_TtC4Maps37RoutePlanningTipkitCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)setShowBubbleIndicator:(BOOL)indicator;
- (void)updateViewModel:(id)model;
@end

@implementation RoutePlanningTipkitCollectionViewCell

- (void)setShowBubbleIndicator:(BOOL)indicator
{
  indicatorCopy = indicator;
  selfCopy = self;
  v4 = sub_1004271C8();
  [v4 setShowBubbleIndicator:indicatorCopy];

  *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_showBubbleIndicator) = indicatorCopy;
}

- (_TtC4Maps37RoutePlanningTipkitCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_dismissHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_showBubbleIndicator) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RoutePlanningTipkitCollectionViewCell();
  height = [(RoutePlanningTipkitCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
  sub_10042743C();

  return height;
}

- (void)updateViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v5 = sub_1004271C8();
  sub_1002162E0(modelCopy);

  [(RoutePlanningTipkitCollectionViewCell *)selfCopy setNeedsUpdateConfiguration];
}

@end