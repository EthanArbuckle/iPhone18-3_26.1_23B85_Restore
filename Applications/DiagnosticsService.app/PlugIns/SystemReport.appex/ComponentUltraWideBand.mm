@interface ComponentUltraWideBand
- (id)arrowChipId;
- (id)arrowChipUniqueId;
- (void)populateAttributes:(id)attributes;
@end

@implementation ComponentUltraWideBand

- (void)populateAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = ComponentUltraWideBand;
  attributesCopy = attributes;
  [(ComponentBase *)&v7 populateAttributes:attributesCopy];
  v5 = [(ComponentUltraWideBand *)self arrowChipUniqueId:v7.receiver];
  [attributesCopy setObject:v5 forKeyedSubscript:@"arrowUniqueChipID"];

  arrowChipId = [(ComponentUltraWideBand *)self arrowChipId];
  [attributesCopy setObject:arrowChipId forKeyedSubscript:@"arrowChipID"];
}

- (id)arrowChipUniqueId
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

- (id)arrowChipId
{
  v2 = MGCopyAnswer();
  v3 = stringOrNull(v2);

  return v3;
}

@end