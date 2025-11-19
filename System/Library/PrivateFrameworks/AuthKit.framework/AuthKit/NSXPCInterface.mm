@interface NSXPCInterface
@end

@implementation NSXPCInterface

uint64_t __89__NSXPCInterface_NSXPCInterface_AKRemoteViewServiceInterface__remoteViewServiceInterface__block_invoke(uint64_t a1)
{
  v26 = a1;
  v25 = a1;
  v1 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DCBC8];
  p_inst_meths = &OBJC_PROTOCOL___AKLoginPresenterHostInterfaceProtocol.inst_meths;
  v2 = remoteViewServiceInterface_interface;
  remoteViewServiceInterface_interface = v1;
  MEMORY[0x1E69E5920](v2);
  v8 = remoteViewServiceInterface_interface;
  v9 = +[AKAuthorizationPresenterHostInterface XPCInterface];
  v10 = 1;
  v13 = 0;
  [v8 setInterface:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v9);
  v11 = remoteViewServiceInterface_interface;
  v12 = +[AKPrivateEmailPresenterHostInterface XPCInterface];
  [v11 setInterface:? forSelector:? argumentIndex:? ofReply:?];
  MEMORY[0x1E69E5920](v12);
  v14 = remoteViewServiceInterface_interface;
  [remoteViewServiceInterface_interface setClass:objc_opt_class() forSelector:sel_presentShieldWithContext_completionHandler_ argumentIndex:0 ofReply:0];
  v16 = remoteViewServiceInterface_interface;
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  if (KeychainCircleLibraryCore(0))
  {
    KCAESGCMDuplexSessionClass = getKCAESGCMDuplexSessionClass();
  }

  else
  {
    KCAESGCMDuplexSessionClass = 0;
  }

  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v17 setWithObjects:{v18, v19, v20, v21, v22, v23, v24, v4, v5, objc_opt_class(), 0}];
  [v16 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  return MEMORY[0x1E69E5920](v6);
}

uint64_t __89__NSXPCInterface_NSXPCInterface_AKRemoteViewSessionInterface__remoteViewSessionInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F07DCDA8];
  v1 = remoteViewSessionInterface_interface;
  remoteViewSessionInterface_interface = v0;
  MEMORY[0x1E69E5920](v1);
  return [remoteViewSessionInterface_interface setClass:objc_opt_class() forSelector:sel_activateWithCompletionHandler_ argumentIndex:0 ofReply:1];
}

@end