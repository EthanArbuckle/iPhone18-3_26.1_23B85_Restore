@interface RoutePlanningEbikeRefinementModel
- (BOOL)shouldShowHighlighted;
- (CyclePreferences)cyclePreferences;
- (id)titleText;
@end

@implementation RoutePlanningEbikeRefinementModel

- (BOOL)shouldShowHighlighted
{
  cyclePreferences = [(RoutePlanningEbikeRefinementModel *)self cyclePreferences];
  ebike = [cyclePreferences ebike];

  return ebike;
}

- (id)titleText
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"[Route Planning value:Cycling] E-Bike filter button" table:{@"localized string not found", 0}];

  return v3;
}

- (CyclePreferences)cyclePreferences
{
  value = [(RoutePlanningRefinementModel *)self value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = value;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

@end