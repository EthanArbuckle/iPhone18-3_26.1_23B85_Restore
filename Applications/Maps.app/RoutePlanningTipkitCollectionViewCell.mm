@interface RoutePlanningTipkitCollectionViewCell
- (_TtC4Maps37RoutePlanningTipkitCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)setShowBubbleIndicator:(BOOL)a3;
- (void)updateViewModel:(id)a3;
@end

@implementation RoutePlanningTipkitCollectionViewCell

- (void)setShowBubbleIndicator:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  v4 = sub_1004271C8();
  [v4 setShowBubbleIndicator:v3];

  *(&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_showBubbleIndicator) = v3;
}

- (_TtC4Maps37RoutePlanningTipkitCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_dismissHandler);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell____lazy_storage___tipkitView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC4Maps37RoutePlanningTipkitCollectionViewCell_showBubbleIndicator) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RoutePlanningTipkitCollectionViewCell();
  v8 = [(RoutePlanningTipkitCollectionViewCell *)&v10 initWithFrame:x, y, width, height];
  sub_10042743C();

  return v8;
}

- (void)updateViewModel:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = sub_1004271C8();
  sub_1002162E0(v4);

  [(RoutePlanningTipkitCollectionViewCell *)v6 setNeedsUpdateConfiguration];
}

@end