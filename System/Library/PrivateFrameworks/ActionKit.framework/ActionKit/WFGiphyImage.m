@interface WFGiphyImage
+ (id)JSONKeyPathsByPropertyKey;
+ (id)JSONTransformerForKey:(id)a3;
@end

@implementation WFGiphyImage

+ (id)JSONTransformerForKey:(id)a3
{
  v3 = a3;
  if (([v3 isEqualToString:@"url"] & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"videoURL"))
  {
    v4 = [MEMORY[0x277CCAE68] mtl_URLValueTransformer];
LABEL_8:
    v5 = v4;
    goto LABEL_9;
  }

  if (([v3 isEqualToString:@"fileSize"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"width") & 1) != 0 || objc_msgSend(v3, "isEqualToString:", @"height"))
  {
    v4 = [MEMORY[0x277D7C078] transformerUsingForwardBlock:&__block_literal_global_341 reverseBlock:&__block_literal_global_346];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t __38__WFGiphyImage_JSONTransformerForKey___block_invoke(uint64_t a1, void *a2, BOOL *a3)
{
  v4 = MEMORY[0x277CCA900];
  v5 = a2;
  v6 = [v4 decimalDigitCharacterSet];
  v7 = [v6 invertedSet];
  *a3 = [v5 rangeOfCharacterFromSet:v7] == 0x7FFFFFFFFFFFFFFFLL;

  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 integerValue];

  return [v8 numberWithInteger:v9];
}

+ (id)JSONKeyPathsByPropertyKey
{
  v2 = [MEMORY[0x277CBEAC0] mtl_identityPropertyMapWithModel:a1];
  v3 = [v2 mutableCopy];

  [v3 setObject:@"size" forKey:@"fileSize"];
  [v3 setObject:@"mp4" forKey:@"videoURL"];

  return v3;
}

@end