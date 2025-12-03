@interface COSPrimaryAccountAuthenticationHelper
+ (id)_contextForPrimaryAccountWithController:(id)controller;
- (void)_authWithContext:(id)context completion:(id)completion;
- (void)authenticatePrimaryAccountWithController:(id)controller completion:(id)completion;
- (void)authenticatePrimaryAccountWithController:(id)controller withReason:(id)reason completion:(id)completion;
@end

@implementation COSPrimaryAccountAuthenticationHelper

+ (id)_contextForPrimaryAccountWithController:(id)controller
{
  controllerCopy = controller;
  v4 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  v5 = +[CDPAccount sharedInstance];
  primaryAccountAltDSID = [v5 primaryAccountAltDSID];
  [v4 setAltDSID:primaryAccountAltDSID];

  v7 = +[CDPAccount sharedInstance];
  primaryAccountUsername = [v7 primaryAccountUsername];
  [v4 setUsername:primaryAccountUsername];

  [v4 setIsUsernameEditable:0];
  [v4 setPresentingViewController:controllerCopy];

  return v4;
}

- (void)_authWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  contextCopy = context;
  v7 = objc_alloc_init(AKAppleIDAuthenticationController);
  authenticationController = self->_authenticationController;
  self->_authenticationController = v7;

  [(AKAppleIDAuthenticationController *)self->_authenticationController authenticateWithContext:contextCopy completion:completionCopy];
}

- (void)authenticatePrimaryAccountWithController:(id)controller completion:(id)completion
{
  completionCopy = completion;
  controllerCopy = controller;
  v8 = [objc_opt_class() _contextForPrimaryAccountWithController:controllerCopy];

  [(COSPrimaryAccountAuthenticationHelper *)self _authWithContext:v8 completion:completionCopy];
}

- (void)authenticatePrimaryAccountWithController:(id)controller withReason:(id)reason completion:(id)completion
{
  completionCopy = completion;
  reasonCopy = reason;
  controllerCopy = controller;
  v11 = [objc_opt_class() _contextForPrimaryAccountWithController:controllerCopy];

  [v11 setReason:reasonCopy];
  [(COSPrimaryAccountAuthenticationHelper *)self _authWithContext:v11 completion:completionCopy];
}

@end