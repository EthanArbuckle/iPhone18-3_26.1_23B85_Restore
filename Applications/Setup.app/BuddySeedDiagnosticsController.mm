@interface BuddySeedDiagnosticsController
- (BuddySeedDiagnosticsController)init;
@end

@implementation BuddySeedDiagnosticsController

- (BuddySeedDiagnosticsController)init
{
  v5 = a2;
  location = 0;
  v4.receiver = self;
  v4.super_class = BuddySeedDiagnosticsController;
  location = [(BuddyDiagnosticsController *)&v4 init];
  objc_storeStrong(&location, location);
  if (location)
  {
    [location setImposeSeedPolicy:1];
  }

  v2 = location;
  objc_storeStrong(&location, 0);
  return v2;
}

@end