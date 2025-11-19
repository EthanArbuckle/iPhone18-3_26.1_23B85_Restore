@interface EXSwiftUI
@end

@implementation EXSwiftUI

uint64_t __37__EXSwiftUI_Subsystem_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v2 = __instance;
  __instance = v1;

  __instance = [__instance init];

  return MEMORY[0x1EEE66BB8]();
}

@end