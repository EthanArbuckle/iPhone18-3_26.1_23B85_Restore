@interface ATXRelevantContextConverter
+ (id)contextFromRelevanceProvider:(id)provider;
+ (id)contextFromRelevantContext:(id)context;
- (ATXRelevantContextConverter)init;
@end

@implementation ATXRelevantContextConverter

+ (id)contextFromRelevanceProvider:(id)provider
{
  providerCopy = provider;
  v4 = sub_2267EC310(providerCopy, 0x277CD3B88);

  return v4;
}

+ (id)contextFromRelevantContext:(id)context
{
  contextCopy = context;
  v4 = sub_2267EC310(contextCopy, 0x277CDB6A0);

  return v4;
}

- (ATXRelevantContextConverter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for RelevantContextConverter();
  return [(ATXRelevantContextConverter *)&v3 init];
}

@end