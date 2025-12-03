@interface RichMapsActivity
- (BOOL)needsUIReset;
- (RichMapsActivity)initWithMapsActivity:(id)activity mapsAction:(id)action;
- (id)description;
- (id)shortDescription;
@end

@implementation RichMapsActivity

- (BOOL)needsUIReset
{
  if (self->_coldLaunch)
  {
    LOBYTE(shouldResetUI) = 0;
  }

  else
  {
    shouldResetUI = [(RichMapsActivity *)self shouldResetUI];
    if (shouldResetUI)
    {
      LOBYTE(shouldResetUI) = ![(RichMapsActivity *)self isCompatibleWithNavigation];
    }
  }

  return shouldResetUI;
}

- (id)shortDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p action:%@", v4, self, self->_action];

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p action:%@ activity:%@", v4, self, self->_action, self->_mapsActivity];

  return v5;
}

- (RichMapsActivity)initWithMapsActivity:(id)activity mapsAction:(id)action
{
  activityCopy = activity;
  actionCopy = action;
  v12.receiver = self;
  v12.super_class = RichMapsActivity;
  v9 = [(RichMapsActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapsActivity, activity);
    objc_storeStrong(&v10->_action, action);
  }

  return v10;
}

@end