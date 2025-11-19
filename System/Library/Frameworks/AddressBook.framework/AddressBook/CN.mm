@interface CN
@end

@implementation CN

void __53__CN_ABSExtensions__contactPropertiesByABSPropertyID__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) allContactProperties];
  v1 = [v5 _cn_filter:&__block_literal_global_58];
  v2 = [v1 _cn_indexBy:&__block_literal_global_61];
  v3 = [v2 copy];
  v4 = contactPropertiesByABSPropertyID_cn_once_object_1;
  contactPropertiesByABSPropertyID_cn_once_object_1 = v3;
}

id __53__CN_ABSExtensions__contactPropertiesByABSPropertyID__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = 0;
  [a2 absPropertyID:&v4];
  v2 = [MEMORY[0x277CCABB0] numberWithInt:v4];

  return v2;
}

@end