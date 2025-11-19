@interface WFWordPressTerm
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFWordPressTerm

+ (id)JSONKeyPathsByPropertyKey
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"termId";
  v5[1] = @"name";
  v6[0] = @"term_id";
  v6[1] = @"name";
  v5[2] = @"taxonomy";
  v6[2] = @"taxonomy";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end