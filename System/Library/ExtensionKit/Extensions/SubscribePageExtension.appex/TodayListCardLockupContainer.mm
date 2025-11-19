@interface TodayListCardLockupContainer
- (CGRect)frame;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)applySizeCategoryUpdates;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation TodayListCardLockupContainer

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TodayListCardLockupContainer();
  [(TodayListCardLockupContainer *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_1001400A8(x, y, width, height);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001402D8();
}

- (void)applySizeCategoryUpdates
{
  v2 = self;
  sub_100140C74();
}

- (void)didMoveToSuperview
{
  v2 = self;
  sub_100141C0C();
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100144880();
}

@end