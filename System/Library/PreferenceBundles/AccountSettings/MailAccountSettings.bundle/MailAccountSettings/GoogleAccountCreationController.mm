@interface GoogleAccountCreationController
- (void)beginAccountCreation;
@end

@implementation GoogleAccountCreationController

- (void)beginAccountCreation
{
  objc_initWeak(&location, self);
  specifier = [(AccountCreationControllerBase *)self specifier];
  userInfo = [specifier userInfo];
  v5 = [userInfo objectForKeyedSubscript:ACUIAccountKey];
  v6 = +[ACAccountStore defaultStore];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6A984;
  v10[3] = &unk_B8FC0;
  v10[4] = self;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_6AA0C;
  v8[3] = &unk_B8FE8;
  objc_copyWeak(&v9, &location);
  v7 = [SLGoogleAuthController googleAuthControllerWithAccount:v5 accountStore:v6 presentationBlock:v10 completion:v8];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

@end