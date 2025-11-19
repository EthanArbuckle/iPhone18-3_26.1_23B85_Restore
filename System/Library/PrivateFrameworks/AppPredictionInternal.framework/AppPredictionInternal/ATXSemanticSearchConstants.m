@interface ATXSemanticSearchConstants
+ (NSNumber)aNN_max_distance;
+ (NSNumber)embeddingIdx;
- (ATXSemanticSearchConstants)init;
@end

@implementation ATXSemanticSearchConstants

+ (NSNumber)embeddingIdx
{
  v8 = 0;
  type metadata accessor for PListDictionaryUtilities();
  v2 = *sub_2267CA304();

  sub_2267FB75C(v3, 0x6E69646465626D65, 0xEC00000078644967, sub_2267D8CD0, &v8, MEMORY[0x277D83B88], &v9);

  v4 = v9;
  v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v6 = [v5 initWithInteger_];

  return v6;
}

+ (NSNumber)aNN_max_distance
{
  v9 = 1064346583;
  type metadata accessor for PListDictionaryUtilities();
  v2 = *sub_2267CA304();

  sub_2267FB75C(v3, 0xD000000000000010, 0x80000002268CF550, sub_2267D914C, &v9, MEMORY[0x277D83A90], &v10);

  v4 = v10;
  v5 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v6) = v4;
  v7 = [v5 initWithFloat_];

  return v7;
}

- (ATXSemanticSearchConstants)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SemanticSearchConstants();
  return [(ATXSemanticSearchConstants *)&v3 init];
}

@end