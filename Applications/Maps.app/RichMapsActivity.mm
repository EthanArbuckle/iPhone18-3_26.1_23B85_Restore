@interface RichMapsActivity
- (BOOL)needsUIReset;
- (RichMapsActivity)initWithMapsActivity:(id)a3 mapsAction:(id)a4;
- (id)description;
- (id)shortDescription;
@end

@implementation RichMapsActivity

- (BOOL)needsUIReset
{
  if (self->_coldLaunch)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = [(RichMapsActivity *)self shouldResetUI];
    if (v2)
    {
      LOBYTE(v2) = ![(RichMapsActivity *)self isCompatibleWithNavigation];
    }
  }

  return v2;
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

- (RichMapsActivity)initWithMapsActivity:(id)a3 mapsAction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = RichMapsActivity;
  v9 = [(RichMapsActivity *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mapsActivity, a3);
    objc_storeStrong(&v10->_action, a4);
  }

  return v10;
}

@end