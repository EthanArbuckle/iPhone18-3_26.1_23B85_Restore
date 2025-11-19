@interface WFPodcastShowObject
+ (id)JSONKeyPathsByPropertyKey;
+ (id)childrenJSONTransformer;
@end

@implementation WFPodcastShowObject

+ (id)childrenJSONTransformer
{
  v2 = MEMORY[0x277D7C070];
  v3 = objc_opt_class();

  return [v2 arrayTransformerWithModelClass:v3];
}

+ (id)JSONKeyPathsByPropertyKey
{
  v6[5] = *MEMORY[0x277D85DE8];
  v5[0] = @"title";
  v5[1] = @"uuid";
  v6[0] = @"title";
  v6[1] = @"uuid";
  v5[2] = @"storeId";
  v5[3] = @"feedURL";
  v6[2] = @"storeId";
  v6[3] = @"feedUrl";
  v5[4] = @"children";
  v6[4] = @"children";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:5];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end