@interface NEAgentDNSProxyExtension
- (id)driverInterface;
- (void)setSystemDNSSettings:(id)settings;
@end

@implementation NEAgentDNSProxyExtension

- (void)setSystemDNSSettings:(id)settings
{
  settingsCopy = settings;
  sessionContext = [(NEAgentExtension *)self sessionContext];
  [sessionContext setSystemDNSSettings:settingsCopy];
}

- (id)driverInterface
{
  if (driverInterface_onceToken != -1)
  {
    dispatch_once(&driverInterface_onceToken, &__block_literal_global_2173);
  }

  v3 = driverInterface_driverInterface;

  return v3;
}

void __43__NEAgentDNSProxyExtension_driverInterface__block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F38C1A00];
  v1 = driverInterface_driverInterface;
  driverInterface_driverInterface = v0;

  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = [v2 setWithObjects:{v3, objc_opt_class(), 0}];
  [driverInterface_driverInterface setClasses:v4 forSelector:sel_setSystemDNSSettings_ argumentIndex:0 ofReply:0];
}

@end