@interface RoutePlanningWaypointTableView
- (void)layoutSubviews;
@end

@implementation RoutePlanningWaypointTableView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = RoutePlanningWaypointTableView;
  [(RoutePlanningWaypointTableView *)&v5 layoutSubviews];
  postLayoutHandler = [(RoutePlanningWaypointTableView *)self postLayoutHandler];

  if (postLayoutHandler)
  {
    postLayoutHandler2 = [(RoutePlanningWaypointTableView *)self postLayoutHandler];
    postLayoutHandler2[2]();
  }
}

@end