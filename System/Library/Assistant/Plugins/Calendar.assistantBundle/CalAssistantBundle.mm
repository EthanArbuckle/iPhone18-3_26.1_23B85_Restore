@interface CalAssistantBundle
+ (id)bundle;
@end

@implementation CalAssistantBundle

+ (id)bundle
{
  v2 = MEMORY[0x277CCA8D8];
  v3 = objc_opt_class();

  return MEMORY[0x2821F9670](v2, sel_bundleForClass_, v3, v4);
}

@end