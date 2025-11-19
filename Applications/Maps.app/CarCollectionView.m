@interface CarCollectionView
- (id)accessoryViewAtEdge:(int64_t)a3;
- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4;
@end

@implementation CarCollectionView

- (id)accessoryViewAtEdge:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CarCollectionView;
  v3 = [(CarCollectionView *)&v5 accessoryViewAtEdge:4];

  return v3;
}

- (void)setAccessoryView:(id)a3 atEdge:(int64_t)a4
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = CarCollectionView;
  [(CarCollectionView *)&v7 setAccessoryView:v5 atEdge:4];
  if (GEOConfigGetBOOL())
  {
    v6 = [v5 _mapsCar_injectBlurView];
  }
}

@end