@interface BLSHDurationAttributeHandler
+ (id)attributeClasses;
@end

@implementation BLSHDurationAttributeHandler

+ (id)attributeClasses
{
  v5[3] = *MEMORY[0x277D85DE8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end