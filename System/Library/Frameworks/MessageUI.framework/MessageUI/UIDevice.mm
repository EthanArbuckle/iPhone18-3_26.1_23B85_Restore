@interface UIDevice
@end

@implementation UIDevice

void __36__UIDevice_MessageUI__mf_isPadIdiom__block_invoke()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  mf_isPadIdiom_isPad = (v1 > 3) | (2u >> (v1 & 0xF)) & 1;
}

@end