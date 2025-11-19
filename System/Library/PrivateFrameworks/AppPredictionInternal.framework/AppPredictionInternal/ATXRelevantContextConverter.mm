@interface ATXRelevantContextConverter
+ (id)contextFromRelevanceProvider:(id)a3;
+ (id)contextFromRelevantContext:(id)a3;
- (ATXRelevantContextConverter)init;
@end

@implementation ATXRelevantContextConverter

+ (id)contextFromRelevanceProvider:(id)a3
{
  v3 = a3;
  v4 = sub_2267EC310(v3, 0x277CD3B88);

  return v4;
}

+ (id)contextFromRelevantContext:(id)a3
{
  v3 = a3;
  v4 = sub_2267EC310(v3, 0x277CDB6A0);

  return v4;
}

- (ATXRelevantContextConverter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RelevantContextConverter();
  return [(ATXRelevantContextConverter *)&v3 init];
}

@end