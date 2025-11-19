@interface AKAuthorizationClientInterface
+ (id)XPCInterface;
@end

@implementation AKAuthorizationClientInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_15;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_57);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_14;

  return v2;
}

void __46__AKAuthorizationClientInterface_XPCInterface__block_invoke(void *a1)
{
  v27[2] = a1;
  v27[1] = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07C9D08];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_14;
  XPCInterface_interface_14 = v1;
  MEMORY[0x1E69E5920](v2);
  v17 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
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
  v26 = 0;
  v3 = [v17 setWithObjects:{v16, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
  v25 = v27;
  v27[0] = v3;
  v4 = p_info[82];
  v20 = 0x1FB4A2000uLL;
  v21 = 0;
  v22 = 1;
  [__objc2_class_ro setClasses:v4 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v27[0] ofReply:0x1FB4A231CuLL];
  v23 = p_info[82];
  v19 = v27[0];
  v24 = [v27[0] setByAddingObject:objc_opt_class()];
  [__objc2_class_ro setClasses:v23 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v24);
  objc_storeStrong(v25, v26);
}

@end