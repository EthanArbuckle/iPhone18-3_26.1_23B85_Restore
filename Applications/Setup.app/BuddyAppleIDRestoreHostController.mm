@interface BuddyAppleIDRestoreHostController
- (BuddyAppleIDRestoreHostController)init;
@end

@implementation BuddyAppleIDRestoreHostController

- (BuddyAppleIDRestoreHostController)init
{
  v8 = self;
  location[1] = a2;
  v2 = +[BuddyAccountTools sharedBuddyAccountTools];
  location[0] = [v2 primaryAccount];

  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BuddyAppleIDRestoreHostController;
  v8 = [(BuddyAppleIDHostController *)&v6 initWithAccount:location[0] mode:1];
  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

@end