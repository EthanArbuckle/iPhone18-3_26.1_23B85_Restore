@interface SharedTripActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation SharedTripActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v9 = a3;
  v5 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v9;
    v7 = [v5 appCoordinator];
    v8 = [v6 shareTrip];

    [v7 openSharedTrip:v8];
  }
}

@end