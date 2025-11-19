@interface AKAuthorizationPresenterHostInterface
+ (id)XPCInterface;
@end

@implementation AKAuthorizationPresenterHostInterface

+ (id)XPCInterface
{
  v24[2] = a1;
  v24[1] = a2;
  v26 = &XPCInterface_onceToken_3;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_11);
  if (*v26 != -1)
  {
    dispatch_once(v26, location);
  }

  v21 = 0;
  objc_storeStrong(&location, 0);
  v19 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v2 = [v19 setWithObjects:{v18, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  v22 = v24;
  v24[0] = v2;
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  [XPCInterface_interface_3 setClasses:v2 forSelector:sel_authorizationRequestInitiatedWithUserProvidedInformation_completion_ argumentIndex:0 ofReply:0];
  v23 = MEMORY[0x1E69E5928](p_info[71]);
  objc_storeStrong(v22, v21);
  v3 = v23;

  return v3;
}

uint64_t __53__AKAuthorizationPresenterHostInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07DCCE8, a1, a1}];
  v2 = XPCInterface_interface_3;
  XPCInterface_interface_3 = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end