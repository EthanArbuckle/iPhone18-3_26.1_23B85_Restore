@interface _RoutePlanningCollectionView
- (void)layoutSubviews;
@end

@implementation _RoutePlanningCollectionView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = _RoutePlanningCollectionView;
  [(_RoutePlanningCollectionView *)&v5 layoutSubviews];
  v3 = [(_RoutePlanningCollectionView *)self layoutHandler];

  if (v3)
  {
    v4 = [(_RoutePlanningCollectionView *)self layoutHandler];
    v4[2]();
  }
}

@end