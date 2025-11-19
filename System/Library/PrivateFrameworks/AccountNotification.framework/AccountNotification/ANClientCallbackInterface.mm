@interface ANClientCallbackInterface
+ (id)XPCInterface;
@end

@implementation ANClientCallbackInterface

+ (id)XPCInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__ANClientCallbackInterface_XPCInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (XPCInterface_onceToken_0 != -1)
  {
    dispatch_once(&XPCInterface_onceToken_0, block);
  }

  v2 = XPCInterface_sANClientCallbackXPCInterface;

  return v2;
}

uint64_t __41__ANClientCallbackInterface_XPCInterface__block_invoke(uint64_t result)
{
  if (!XPCInterface_sANClientCallbackXPCInterface)
  {
    XPCInterface_sANClientCallbackXPCInterface = [*(result + 32) _buildXPCInterface];

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

@end