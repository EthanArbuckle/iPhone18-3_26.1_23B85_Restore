@interface RoutePlanningOptionsCellBackgroundView
- (RoutePlanningOptionsCellBackgroundView)initWithFrame:(CGRect)frame color:(id)color;
@end

@implementation RoutePlanningOptionsCellBackgroundView

- (RoutePlanningOptionsCellBackgroundView)initWithFrame:(CGRect)frame color:(id)color
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  colorCopy = color;
  v13.receiver = self;
  v13.super_class = RoutePlanningOptionsCellBackgroundView;
  height = [(RoutePlanningOptionsCellBackgroundView *)&v13 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    [(RoutePlanningOptionsCellBackgroundView *)height setBackgroundColor:colorCopy];
  }

  return v11;
}

@end