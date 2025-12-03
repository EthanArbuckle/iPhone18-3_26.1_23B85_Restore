@interface FRExplicitContentRestrictionAlertPresenter
- (FRExplicitContentRestrictionAlertPresenter)init;
- (void)presentExplicitContentRestrictionAlertWithPresentingViewController:(id)controller;
@end

@implementation FRExplicitContentRestrictionAlertPresenter

- (FRExplicitContentRestrictionAlertPresenter)init
{
  v3.receiver = self;
  v3.super_class = FRExplicitContentRestrictionAlertPresenter;
  return [(FRExplicitContentRestrictionAlertPresenter *)&v3 init];
}

- (void)presentExplicitContentRestrictionAlertWithPresentingViewController:(id)controller
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100020DAC;
  block[3] = &unk_1000C18D0;
  controllerCopy = controller;
  v3 = controllerCopy;
  dispatch_async(&_dispatch_main_q, block);
}

@end