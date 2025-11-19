@interface WFWordPressPost
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFWordPressPost

+ (id)JSONKeyPathsByPropertyKey
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"postId";
  v5[1] = @"link";
  v6[0] = @"post_id";
  v6[1] = @"link";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end