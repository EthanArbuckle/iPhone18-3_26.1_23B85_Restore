@interface UNUserNotificationCenterDelegateService
+ (id)serverInterface;
@end

@implementation UNUserNotificationCenterDelegateService

+ (id)serverInterface
{
  if (serverInterface_onceToken_1 != -1)
  {
    +[UNUserNotificationCenterDelegateService serverInterface];
  }

  v3 = serverInterface___interface_1;

  return v3;
}

void __58__UNUserNotificationCenterDelegateService_serverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F309FF58];
  v1 = serverInterface___interface_1;
  serverInterface___interface_1 = v0;

  v2 = serverInterface___interface_1;
  v3 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v2 setClasses:v3 forSelector:sel_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler_ argumentIndex:0 ofReply:0];

  v4 = serverInterface___interface_1;
  v5 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v4 setClasses:v5 forSelector:sel_didReceiveNotificationResponse_forBundleIdentifier_withCompletionHandler_ argumentIndex:1 ofReply:0];

  v6 = serverInterface___interface_1;
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v6 setClasses:v7 forSelector:sel_didChangeSettings_forBundleIdentifier_ argumentIndex:0 ofReply:0];

  v8 = serverInterface___interface_1;
  v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [v8 setClasses:v9 forSelector:sel_didOpenApplicationForResponse_forBundleIdentifier_ argumentIndex:0 ofReply:0];
}

@end