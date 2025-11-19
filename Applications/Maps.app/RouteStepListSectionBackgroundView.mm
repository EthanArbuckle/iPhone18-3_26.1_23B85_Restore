@interface RouteStepListSectionBackgroundView
- (RouteStepListSectionBackgroundView)initWithFrame:(CGRect)a3;
@end

@implementation RouteStepListSectionBackgroundView

- (RouteStepListSectionBackgroundView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = RouteStepListSectionBackgroundView;
  v3 = [(RouteStepListSectionBackgroundView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(RouteStepListSectionBackgroundView *)v3 traitCollection];
    _UITableViewDefaultSectionCornerRadiusForTraitCollection();
    [(RouteStepListSectionBackgroundView *)v4 _setContinuousCornerRadius:?];

    v6 = [UIColor colorNamed:@"RoutePlanningPlatterBackground"];
    [(RouteStepListSectionBackgroundView *)v4 setBackgroundColor:v6];
  }

  return v4;
}

@end