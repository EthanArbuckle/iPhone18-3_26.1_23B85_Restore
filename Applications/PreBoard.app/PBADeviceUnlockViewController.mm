@interface PBADeviceUnlockViewController
- (void)successfulAuthHandler:(id)handler;
@end

@implementation PBADeviceUnlockViewController

- (void)successfulAuthHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_group_create();
  dispatch_group_enter(v5);
  dispatch_group_notify(v5, &_dispatch_main_q, &stru_10001CA28);
  if ([handlerCopy type] == 1)
  {
    dispatch_group_enter(v5);
    authenticationController = [(PBADevicePasscodeViewController *)self authenticationController];
    v7 = [authenticationController createKeybagUnlockAssertionWithReason:@"com.apple.PreBoard.StashBagCreate"];

    [v7 activate];
    v8 = +[SBFMobileKeyBag sharedInstance];
    v9 = [SBFMobileKeyBagUnlockOptions alloc];
    passcode = [handlerCopy passcode];
    v11 = [passcode dataUsingEncoding:4];
    v12 = [v9 initWithPasscode:v11 skipSEKeepUserDataOperation:1];

    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100009E44;
    v17[3] = &unk_10001CA50;
    v18 = v7;
    v19 = v5;
    v13 = v7;
    [v8 createStashBagWithOptions:v12 completion:v17];
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100009E80;
  v15[3] = &unk_10001C628;
  v16 = v5;
  v14 = v5;
  [(PBADevicePasscodeViewController *)self handlePasscodeEntrySuccessful:v15];
}

@end