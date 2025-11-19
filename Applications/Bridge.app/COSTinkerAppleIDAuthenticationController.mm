@interface COSTinkerAppleIDAuthenticationController
- (void)authenticateWithContext:(id)a3 completion:(id)a4;
@end

@implementation COSTinkerAppleIDAuthenticationController

- (void)authenticateWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011CFD8;
  v17[3] = &unk_10026C618;
  v19 = self;
  v20 = a4;
  v18 = v6;
  v7 = v6;
  v8 = v20;
  v9 = objc_retainBlock(v17);
  v10 = objc_alloc_init(COSPrimaryAccountAuthenticationHelper);
  primaryAccountAuthenticationHelper = self->_primaryAccountAuthenticationHelper;
  self->_primaryAccountAuthenticationHelper = v10;

  v12 = self->_primaryAccountAuthenticationHelper;
  v13 = [(COSTinkerAppleIDAuthenticationController *)self presentingController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011D0F8;
  v15[3] = &unk_10026AF78;
  v16 = v9;
  v14 = v9;
  [(COSPrimaryAccountAuthenticationHelper *)v12 authenticatePrimaryAccountWithController:v13 completion:v15];
}

@end