@interface AKPrivateEmailDaemonInterface
+ (id)XPCInterface;
@end

@implementation AKPrivateEmailDaemonInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken_9;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_28);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface_8;

  return v2;
}

void __45__AKPrivateEmailDaemonInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07C2A30];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface_8;
  XPCInterface_interface_8 = v1;
  MEMORY[0x1E69E5920](v2);
  v6 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v11 = 0;
  v3 = [v6 setWithObjects:{v5, objc_opt_class(), 0}];
  v10 = v12;
  v12[0] = v3;
  v4 = p_info[76];
  v8 = 0;
  v9 = 0;
  [__objc2_class_ro setClasses:v4 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v12[0] ofReply:sel_registerPrivateEmailWithContext_completion_];
  [(__objc2_class_ro *)p_info[76] setClasses:v12[0] forSelector:sel_fetchSignInWithApplePrivateEmailWithContext_completion_ argumentIndex:v8 ofReply:v9 & 1];
  objc_storeStrong(v10, v11);
}

@end