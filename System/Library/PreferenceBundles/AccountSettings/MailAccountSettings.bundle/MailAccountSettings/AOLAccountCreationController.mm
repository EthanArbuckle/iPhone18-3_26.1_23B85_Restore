@interface AOLAccountCreationController
- (void)beginAccountCreation;
@end

@implementation AOLAccountCreationController

- (void)beginAccountCreation
{
  v3 = [SLAOLWebAuthController alloc];
  specifier = [(AccountCreationControllerBase *)self specifier];
  userInfo = [specifier userInfo];
  v6 = [userInfo objectForKeyedSubscript:ACUIAccountKey];
  v7 = +[ACAccountStore defaultStore];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_20454;
  v13[3] = &unk_B8FC0;
  v13[4] = self;
  v8 = [v3 initWithAccount:v6 accountStore:v7 presentationBlock:v13];
  webAuthController = self->_webAuthController;
  self->_webAuthController = v8;

  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_204DC;
  v10[3] = &unk_B8FE8;
  objc_copyWeak(&v11, &location);
  [(SLAOLWebAuthController *)self->_webAuthController setCompletion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

@end