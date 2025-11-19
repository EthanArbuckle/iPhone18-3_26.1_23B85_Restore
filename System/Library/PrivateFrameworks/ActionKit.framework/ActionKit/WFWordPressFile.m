@interface WFWordPressFile
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFWordPressFile

+ (id)JSONKeyPathsByPropertyKey
{
  v6[4] = *MEMORY[0x277D85DE8];
  v5[0] = @"fileId";
  v5[1] = @"filename";
  v6[0] = @"id";
  v6[1] = @"file";
  v5[2] = @"url";
  v5[3] = @"type";
  v6[2] = @"url";
  v6[3] = @"type";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end