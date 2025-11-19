@interface RoutePlanningWaypointTableView
- (void)layoutSubviews;
@end

@implementation RoutePlanningWaypointTableView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = RoutePlanningWaypointTableView;
  [(RoutePlanningWaypointTableView *)&v5 layoutSubviews];
  v3 = [(RoutePlanningWaypointTableView *)self postLayoutHandler];

  if (v3)
  {
    v4 = [(RoutePlanningWaypointTableView *)self postLayoutHandler];
    v4[2]();
  }
}

@end