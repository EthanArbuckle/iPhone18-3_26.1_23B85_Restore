@interface NSBundle
@end

@implementation NSBundle

uint64_t __43__NSBundle_VSAdditions__vs_frameworkBundle__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = vs_frameworkBundle___vs_lazy_init_variable;
  vs_frameworkBundle___vs_lazy_init_variable = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end