@interface UIApplication
- (NSString)_extendLaunchTest;
- (void)observeExtendedLaunchTestCompletion;
- (void)onExtendedLaunchCompleted;
@end

@implementation UIApplication

- (void)observeExtendedLaunchTestCompletion
{
  v2 = self;
  UIApplication.observeExtendedLaunchTestCompletion()();
}

- (NSString)_extendLaunchTest
{
  v2 = sub_10079E7F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10079EB84();
  sub_10079EB64();
  sub_10079E7E4();
  (*(v3 + 8))(v5, v2);
  v6 = sub_1007A2214();

  return v6;
}

- (void)onExtendedLaunchCompleted
{
  v2 = self;
  sub_1003F47E0();
}

@end