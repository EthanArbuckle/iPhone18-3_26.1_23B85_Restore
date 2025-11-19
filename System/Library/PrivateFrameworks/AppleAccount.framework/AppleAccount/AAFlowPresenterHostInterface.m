@interface AAFlowPresenterHostInterface
+ (id)XPCInterface;
@end

@implementation AAFlowPresenterHostInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken_3 != -1)
  {
    +[AAFlowPresenterHostInterface XPCInterface];
  }

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v2 setWithObjects:{v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [XPCInterface_interface_3 setClasses:v10 forSelector:sel_flowFinishedWithError_completion_ argumentIndex:0 ofReply:1];
  v11 = XPCInterface_interface_3;
  v12 = XPCInterface_interface_3;

  return v11;
}

uint64_t __44__AAFlowPresenterHostInterface_XPCInterface__block_invoke()
{
  XPCInterface_interface_3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F346E8];

  return MEMORY[0x1EEE66BB8]();
}

@end