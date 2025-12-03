@interface COSTinkerAppleIDAuthenticationController
- (void)authenticateWithContext:(id)context completion:(id)completion;
@end

@implementation COSTinkerAppleIDAuthenticationController

- (void)authenticateWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10011CFD8;
  v17[3] = &unk_10026C618;
  selfCopy = self;
  completionCopy = completion;
  v18 = contextCopy;
  v7 = contextCopy;
  v8 = completionCopy;
  v9 = objc_retainBlock(v17);
  v10 = objc_alloc_init(COSPrimaryAccountAuthenticationHelper);
  primaryAccountAuthenticationHelper = self->_primaryAccountAuthenticationHelper;
  self->_primaryAccountAuthenticationHelper = v10;

  v12 = self->_primaryAccountAuthenticationHelper;
  presentingController = [(COSTinkerAppleIDAuthenticationController *)self presentingController];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10011D0F8;
  v15[3] = &unk_10026AF78;
  v16 = v9;
  v14 = v9;
  [(COSPrimaryAccountAuthenticationHelper *)v12 authenticatePrimaryAccountWithController:presentingController completion:v15];
}

@end