@interface AKPrivateEmailClientInterface
+ (id)XPCInterface;
@end

@implementation AKPrivateEmailClientInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_14;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_55);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_13;

  return v2;
}

void __45__AKPrivateEmailClientInterface_XPCInterface__block_invoke(void *a1)
{
  v22[2] = a1;
  v22[1] = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07D19D8];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_13;
  XPCInterface_interface_13 = v1;
  MEMORY[0x1E69E5920](v2);
  v12 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v21 = 0;
  v3 = [v12 setWithObjects:{v11, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v20 = v22;
  v22[0] = v3;
  v4 = p_info[81];
  v15 = 0x1FBDCB000uLL;
  v16 = 0;
  v17 = 1;
  [__objc2_class_ro setClasses:v4 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v22[0] ofReply:0x1FBDCBF6BuLL];
  v18 = p_info[81];
  v14 = v22[0];
  v19 = [v22[0] setByAddingObject:objc_opt_class()];
  [__objc2_class_ro setClasses:v18 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v19);
  objc_storeStrong(v20, v21);
}

@end