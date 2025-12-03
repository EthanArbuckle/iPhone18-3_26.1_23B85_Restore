@interface _RoutePlanningCollectionView
- (void)layoutSubviews;
@end

@implementation _RoutePlanningCollectionView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _RoutePlanningCollectionView;
  [(_RoutePlanningCollectionView *)&v5 layoutSubviews];
  layoutHandler = [(_RoutePlanningCollectionView *)self layoutHandler];

  if (layoutHandler)
  {
    layoutHandler2 = [(_RoutePlanningCollectionView *)self layoutHandler];
    layoutHandler2[2]();
  }
}

@end