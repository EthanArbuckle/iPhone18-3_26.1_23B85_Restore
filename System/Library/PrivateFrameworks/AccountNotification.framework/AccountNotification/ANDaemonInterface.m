@interface ANDaemonInterface
+ (id)XPCInterface;
@end

@implementation ANDaemonInterface

+ (id)XPCInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ANDaemonInterface_XPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (XPCInterface_onceToken != -1)
  {
    dispatch_once(&XPCInterface_onceToken, block);
  }

  v2 = XPCInterface_sANDaemonXPCInterface;

  return v2;
}

uint64_t __33__ANDaemonInterface_XPCInterface__block_invoke(uint64_t result)
{
  if (!XPCInterface_sANDaemonXPCInterface)
  {
    XPCInterface_sANDaemonXPCInterface = [*(result + 32) _buildXPCInterface];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end