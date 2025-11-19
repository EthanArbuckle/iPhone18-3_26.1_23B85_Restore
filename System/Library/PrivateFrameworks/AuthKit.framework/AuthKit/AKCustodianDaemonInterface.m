@interface AKCustodianDaemonInterface
+ (id)XPCInterface;
@end

@implementation AKCustodianDaemonInterface

+ (id)XPCInterface
{
  v5 = &XPCInterface_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_1);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = XPCInterface_interface;

  return v2;
}

void __42__AKCustodianDaemonInterface_XPCInterface__block_invoke(uint64_t a1)
{
  v18[2] = a1;
  v18[1] = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07D2300];
  p_info = &OBJC_METACLASS___AKAppleIDSession.info;
  v2 = XPCInterface_interface;
  XPCInterface_interface = v1;
  MEMORY[0x1E69E5920](v2);
  v12 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v17 = 0;
  v3 = [v12 setWithObjects:{v11, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v16 = v18;
  v18[0] = v3;
  v4 = p_info[67];
  v14 = 0;
  v15 = 1;
  [__objc2_class_ro setClasses:v4 forSelector:"setClasses:forSelector:argumentIndex:ofReply:" argumentIndex:v18[0] ofReply:sel_initiateCustodianSetupWithContext_completion_];
  [(__objc2_class_ro *)p_info[67] setClasses:v18[0] forSelector:sel_finalizeCustodianSetupWithContext_completion_ argumentIndex:v14 ofReply:v15 & 1];
  [(__objc2_class_ro *)p_info[67] setClasses:v18[0] forSelector:sel_revokeCustodianWithContext_completion_ argumentIndex:v14 ofReply:v15 & 1];
  [(__objc2_class_ro *)p_info[67] setClasses:v18[0] forSelector:sel_startCustodianRecoveryRequestWithContext_completion_ argumentIndex:v14 ofReply:v15 & 1];
  [(__objc2_class_ro *)p_info[67] setClasses:v18[0] forSelector:sel_fetchCustodianRecoveryCodeConfigurationWithCompletion_ argumentIndex:v14 ofReply:v15 & 1];
  [(__objc2_class_ro *)p_info[67] setClasses:v18[0] forSelector:sel_startCustodianRecoveryTransactionWithContext_completion_ argumentIndex:v14 ofReply:v15 & 1];
  [(__objc2_class_ro *)p_info[67] setClasses:v18[0] forSelector:sel_fetchCustodianDataRecoveryKeyWithContext_completion_ argumentIndex:v14 ofReply:v15 & 1];
  objc_storeStrong(v16, v17);
}

@end