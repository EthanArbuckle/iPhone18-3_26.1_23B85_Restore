@interface AKLoginPresenterHostInterface
+ (id)XPCInterface;
@end

@implementation AKLoginPresenterHostInterface

+ (id)XPCInterface
{
  v16[2] = a1;
  v16[1] = a2;
  v18 = &XPCInterface_onceToken_7;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_25);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  v13 = 0;
  objc_storeStrong(&location, 0);
  v11 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v2 = [v11 setWithObjects:{v10, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  v14 = v16;
  v16[0] = v2;
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  [XPCInterface_interface_6 setClasses:v2 forSelector:sel_authenticationRequestFinishedWithResults_password_additionalData_error_ argumentIndex:0 ofReply:0];
  v15 = MEMORY[0x1E69E5928](p_info[74]);
  objc_storeStrong(v14, v13);
  v3 = v15;

  return v3;
}

uint64_t __45__AKLoginPresenterHostInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:{&unk_1F07C83A0, a1, a1}];
  v2 = XPCInterface_interface_6;
  XPCInterface_interface_6 = v1;
  return MEMORY[0x1E69E5920](v2);
}

@end