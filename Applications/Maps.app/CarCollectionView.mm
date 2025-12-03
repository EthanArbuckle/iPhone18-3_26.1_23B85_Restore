@interface CarCollectionView
- (id)accessoryViewAtEdge:(int64_t)edge;
- (void)setAccessoryView:(id)view atEdge:(int64_t)edge;
@end

@implementation CarCollectionView

- (id)accessoryViewAtEdge:(int64_t)edge
{
  v5.receiver = self;
  v5.super_class = CarCollectionView;
  v3 = [(CarCollectionView *)&v5 accessoryViewAtEdge:4];

  return v3;
}

- (void)setAccessoryView:(id)view atEdge:(int64_t)edge
{
  viewCopy = view;
  v7.receiver = self;
  v7.super_class = CarCollectionView;
  [(CarCollectionView *)&v7 setAccessoryView:viewCopy atEdge:4];
  if (GEOConfigGetBOOL())
  {
    _mapsCar_injectBlurView = [viewCopy _mapsCar_injectBlurView];
  }
}

@end