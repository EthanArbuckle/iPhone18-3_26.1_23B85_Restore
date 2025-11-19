@interface WFWordPressPostType
+ (id)JSONKeyPathsByPropertyKey;
+ (id)allowedSecureCodingClassesByPropertyKey;
@end

@implementation WFWordPressPostType

+ (id)JSONKeyPathsByPropertyKey
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"name";
  v5[1] = @"label";
  v6[0] = @"name";
  v6[1] = @"label";
  v5[2] = @"labels";
  v6[2] = @"labels";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___WFWordPressPostType;
  v2 = objc_msgSendSuper2(&v7, sel_allowedSecureCodingClassesByPropertyKey);
  v3 = [v2 mutableCopy];

  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v3 setObject:v4 forKey:@"labels"];

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

@end