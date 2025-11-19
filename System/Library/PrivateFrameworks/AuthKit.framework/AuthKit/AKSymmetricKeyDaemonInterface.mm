@interface AKSymmetricKeyDaemonInterface
+ (id)XPCInterface;
@end

@implementation AKSymmetricKeyDaemonInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_2;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_9);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_2;

  return v2;
}

void __45__AKSymmetricKeyDaemonInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v23[2] = a1;
  v23[1] = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DCC88];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_2;
  XPCInterface_interface_2 = v1;
  MEMORY[0x1E69E5920](v2);
  v5 = 0x1E695D000uLL;
  v16 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v22 = 0;
  v3 = [v16 setWithObjects:{v15, v6, v7, v8, v9, v10, v11, v12, v13, v14, objc_opt_class(), 0}];
  v21 = v23;
  v23[0] = v3;
  v4 = p_info[70];
  v19 = 0x1FBDCC000uLL;
  v17 = 0;
  v20 = 1;
  [__objc2_class_ro setClasses:v4 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v23[0] ofReply:0x1FBDCC4E9uLL];
  [(__objc2_class_ro *)p_info[70] setClasses:v23[0] forSelector:v19 + 1257 argumentIndex:v17 ofReply:v20 & 1];
  [(__objc2_class_ro *)p_info[70] setClasses:v23[0] forSelector:v19 + 1257 argumentIndex:1 ofReply:v20 & 1];
  objc_storeStrong(v21, v22);
}

@end