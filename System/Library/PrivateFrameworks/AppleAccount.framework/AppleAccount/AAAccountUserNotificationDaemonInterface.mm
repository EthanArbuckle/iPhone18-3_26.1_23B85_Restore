@interface AAAccountUserNotificationDaemonInterface
+ (id)XPCInterface;
@end

@implementation AAAccountUserNotificationDaemonInterface

+ (id)XPCInterface
{
  if (XPCInterface_onceToken_0 != -1)
  {
    +[AAAccountUserNotificationDaemonInterface XPCInterface];
  }

  v3 = XPCInterface_interface_0;

  return v3;
}

void __56__AAAccountUserNotificationDaemonInterface_XPCInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2F452F0];
  v1 = XPCInterface_interface_0;
  XPCInterface_interface_0 = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v6 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  v4 = XPCInterface_interface_0;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_postAccountUserNotificationWith_completion_ argumentIndex:0 ofReply:0];

  [XPCInterface_interface_0 setClasses:v6 forSelector:sel_postAccountUserNotificationWith_completion_ argumentIndex:0 ofReply:1];
}

@end