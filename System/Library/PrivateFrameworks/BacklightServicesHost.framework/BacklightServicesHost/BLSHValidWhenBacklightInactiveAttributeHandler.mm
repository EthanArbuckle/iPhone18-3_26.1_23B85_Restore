@interface BLSHValidWhenBacklightInactiveAttributeHandler
+ (id)attributeClasses;
@end

@implementation BLSHValidWhenBacklightInactiveAttributeHandler

+ (id)attributeClasses
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end