@interface BuddyAppleIDRestoreHostController
- (BuddyAppleIDRestoreHostController)init;
@end

@implementation BuddyAppleIDRestoreHostController

- (BuddyAppleIDRestoreHostController)init
{
  selfCopy = self;
  location[1] = a2;
  v2 = +[BuddyAccountTools sharedBuddyAccountTools];
  location[0] = [v2 primaryAccount];

  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BuddyAppleIDRestoreHostController;
  selfCopy = [(BuddyAppleIDHostController *)&v6 initWithAccount:location[0] mode:1];
  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

@end