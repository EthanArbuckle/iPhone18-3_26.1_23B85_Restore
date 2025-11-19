@interface NCUIColorTransformer
+ (id)allowedTopLevelClasses;
@end

@implementation NCUIColorTransformer

+ (id)allowedTopLevelClasses
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v2, v5, 1);

  return v3;
}

@end