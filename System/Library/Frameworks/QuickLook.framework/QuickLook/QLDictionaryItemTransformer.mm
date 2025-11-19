@interface QLDictionaryItemTransformer
+ (id)allowedOutputClasses;
@end

@implementation QLDictionaryItemTransformer

+ (id)allowedOutputClasses
{
  v2 = MEMORY[0x277CBEB98];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

@end