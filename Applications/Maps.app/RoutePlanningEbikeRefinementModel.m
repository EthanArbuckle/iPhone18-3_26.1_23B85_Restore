@interface RoutePlanningEbikeRefinementModel
- (BOOL)shouldShowHighlighted;
- (CyclePreferences)cyclePreferences;
- (id)titleText;
@end

@implementation RoutePlanningEbikeRefinementModel

- (BOOL)shouldShowHighlighted
{
  v2 = [(RoutePlanningEbikeRefinementModel *)self cyclePreferences];
  v3 = [v2 ebike];

  return v3;
}

- (id)titleText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Route Planning value:Cycling] E-Bike filter button" table:{@"localized string not found", 0}];

  return v3;
}

- (CyclePreferences)cyclePreferences
{
  v2 = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end