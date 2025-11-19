@interface ASCAuthorizationPresenterHostInterface
+ (id)xpcInterface;
@end

@implementation ASCAuthorizationPresenterHostInterface

+ (id)xpcInterface
{
  if (xpcInterface_onceToken_0 != -1)
  {
    +[ASCAuthorizationPresenterHostInterface xpcInterface];
  }

  v3 = xpcInterface_interface_0;

  return v3;
}

void __54__ASCAuthorizationPresenterHostInterface_xpcInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F41B0570];
  v1 = xpcInterface_interface_0;
  xpcInterface_interface_0 = v0;

  v2 = ASAllLoginChoiceClasses();
  [xpcInterface_interface_0 setClasses:v2 forSelector:sel_authorizationRequestInitiatedWithLoginChoice_authenticatedContext_completionHandler_ argumentIndex:0 ofReply:0];
  v3 = xpcInterface_interface_0;
  v4 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:sel_authorizationRequestInitiatedWithLoginChoice_authenticatedContext_completionHandler_ argumentIndex:1 ofReply:0];

  v5 = xpcInterface_interface_0;
  v6 = [v2 setByAddingObject:objc_opt_class()];
  [v5 setClasses:v6 forSelector:sel_updateInterfaceWithLoginChoices_ argumentIndex:0 ofReply:0];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = [v7 setWithObjects:{v8, v9, v10, v11, v12, objc_opt_class(), 0}];

  v18 = [v13 setByAddingObject:objc_opt_class()];

  [xpcInterface_interface_0 setClasses:v18 forSelector:sel_authorizationRequestInitiatedWithLoginChoice_authenticatedContext_completionHandler_ argumentIndex:0 ofReply:1];
  [xpcInterface_interface_0 setClasses:v18 forSelector:sel_authorizationRequestFinishedWithCredential_error_completionHandler_ argumentIndex:0 ofReply:0];
  v14 = xpcInterface_interface_0;
  v15 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v14 setClasses:v15 forSelector:sel_startCABLEAuthenticationWithCompletionHandler_ argumentIndex:0 ofReply:1];

  v16 = xpcInterface_interface_0;
  v17 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v16 setClasses:v17 forSelector:sel_startCABLEAuthenticationWithCompletionHandler_ argumentIndex:1 ofReply:1];
}

@end