@interface AKUIMainBundle
@end

@implementation AKUIMainBundle

double ___AKUIMainBundle_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = _AKUIMainBundle_mainBundle;
  _AKUIMainBundle_mainBundle = v0;
  *&result = MEMORY[0x277D82BD8](v1).n128_u64[0];
  return result;
}

@end