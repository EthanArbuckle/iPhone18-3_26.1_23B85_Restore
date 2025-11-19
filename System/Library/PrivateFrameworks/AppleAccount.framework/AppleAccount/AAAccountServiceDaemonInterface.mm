@interface AAAccountServiceDaemonInterface
+ (id)XPCInterface;
@end

@implementation AAAccountServiceDaemonInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken != -1)
  {
    +[AAAccountServiceDaemonInterface XPCInterface];
  }

  v3 = XPCInterface_interface;

  return v3;
}

void __47__AAAccountServiceDaemonInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F257E8];
  v1 = XPCInterface_interface;
  XPCInterface_interface = v0;

  v2 = XPCInterface_interface;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_updatePropertiesForAppleAccount_options_completion_ argumentIndex:0 ofReply:0];

  v4 = XPCInterface_interface;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v5 setWithObjects:{v6, v7, v8, v9, objc_opt_class(), 0}];
  [v4 setClasses:v10 forSelector:sel_updatePropertiesForAppleAccount_options_completion_ argumentIndex:1 ofReply:0];

  v11 = XPCInterface_interface;
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
  [v11 setClasses:v15 forSelector:sel_updatePropertiesForAppleAccount_options_completion_ argumentIndex:0 ofReply:1];
}

@end