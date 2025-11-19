@interface LAContextHelper
+ (id)createContext;
@end

@implementation LAContextHelper

+ (id)createContext
{
  v2 = objc_alloc_init(MEMORY[0x277CD4790]);

  return v2;
}

@end