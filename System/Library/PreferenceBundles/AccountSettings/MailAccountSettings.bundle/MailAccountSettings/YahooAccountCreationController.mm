@interface YahooAccountCreationController
- (void)beginAccountCreation;
@end

@implementation YahooAccountCreationController

- (void)beginAccountCreation
{
  v3 = [SLYahooWebAuthController alloc];
  v4 = [(AccountCreationControllerBase *)self specifier];
  v5 = [v4 userInfo];
  v6 = [v5 objectForKeyedSubscript:ACUIAccountKey];
  v7 = +[ACAccountStore defaultStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_779A8;
  v13[3] = &unk_B8FC0;
  v13[4] = self;
  v8 = [v3 initWithAccount:v6 accountStore:v7 presentationBlock:v13];
  webAuthController = self->_webAuthController;
  self->_webAuthController = v8;

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_77A30;
  v10[3] = &unk_B8FE8;
  objc_copyWeak(&v11, &location);
  [(SLYahooWebAuthController *)self->_webAuthController setCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end