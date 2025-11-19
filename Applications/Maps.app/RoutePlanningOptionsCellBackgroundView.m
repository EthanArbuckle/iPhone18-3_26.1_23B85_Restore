@interface RoutePlanningOptionsCellBackgroundView
- (RoutePlanningOptionsCellBackgroundView)initWithFrame:(CGRect)a3 color:(id)a4;
@end

@implementation RoutePlanningOptionsCellBackgroundView

- (RoutePlanningOptionsCellBackgroundView)initWithFrame:(CGRect)a3 color:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = RoutePlanningOptionsCellBackgroundView;
  v10 = [(RoutePlanningOptionsCellBackgroundView *)&v13 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    [(RoutePlanningOptionsCellBackgroundView *)v10 setBackgroundColor:v9];
  }

  return v11;
}

@end