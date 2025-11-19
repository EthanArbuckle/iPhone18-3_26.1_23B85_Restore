@interface HKHealthStore(UIKit)
- (uint64_t)authorizationViewControllerPresenter;
- (void)setAuthorizationViewControllerPresenter:()UIKit;
@end

@implementation HKHealthStore(UIKit)

- (void)setAuthorizationViewControllerPresenter:()UIKit
{
  v4 = a3;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  [a1 set_hkui_authorizationViewControllerPresenter:v4];
}

- (uint64_t)authorizationViewControllerPresenter
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);

  return [a1 _hkui_authorizationViewControllerPresenter];
}

@end