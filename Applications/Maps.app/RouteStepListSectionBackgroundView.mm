@interface RouteStepListSectionBackgroundView
- (RouteStepListSectionBackgroundView)initWithFrame:(CGRect)frame;
@end

@implementation RouteStepListSectionBackgroundView

- (RouteStepListSectionBackgroundView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = RouteStepListSectionBackgroundView;
  v3 = [(RouteStepListSectionBackgroundView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    traitCollection = [(RouteStepListSectionBackgroundView *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(RouteStepListSectionBackgroundView *)v4 _setContinuousCornerRadius:?];

    v6 = [UIColor colorNamed:@"RoutePlanningPlatterBackground"];
    [(RouteStepListSectionBackgroundView *)v4 setBackgroundColor:v6];
  }

  return v4;
}

@end