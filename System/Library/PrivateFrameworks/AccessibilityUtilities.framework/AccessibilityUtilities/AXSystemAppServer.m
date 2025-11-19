@interface AXSystemAppServer
+ (id)server;
- (id)focusedApps;
@end

@implementation AXSystemAppServer

+ (id)server
{
  if (server_onceToken_6 != -1)
  {
    +[AXSystemAppServer server];
  }

  v3 = server__ServerClass;

  return [v3 server];
}

uint64_t __27__AXSystemAppServer_server__block_invoke()
{
  v0 = [MEMORY[0x1E6994660] sharedSystemShellSwitcher];
  v1 = [v0 isClarityBoardEnabled];

  if (v1)
  {
    result = objc_opt_class();
  }

  else
  {
    result = NSClassFromString(&cfstr_Axspringboards_8.isa);
  }

  server__ServerClass = result;
  return result;
}

- (id)focusedApps
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end