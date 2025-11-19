@interface CN(ABSExtensions)
+ (id)contactPropertiesByABSPropertyID;
@end

@implementation CN(ABSExtensions)

+ (id)contactPropertiesByABSPropertyID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__CN_ABSExtensions__contactPropertiesByABSPropertyID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (contactPropertiesByABSPropertyID_cn_once_token_1 != -1)
  {
    dispatch_once(&contactPropertiesByABSPropertyID_cn_once_token_1, block);
  }

  v1 = contactPropertiesByABSPropertyID_cn_once_object_1;

  return v1;
}

@end