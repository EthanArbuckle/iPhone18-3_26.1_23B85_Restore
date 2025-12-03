@interface ATXInfoSuggestionCriterionRegistry
- (ATXInfoSuggestionCriterionRegistry)init;
- (BOOL)isSourceIdentifierRegistered:(id)registered;
- (id)availableCriterionIdentifiersForSourceIdentifier:(id)identifier;
- (int64_t)confidenceLevelForCriterion:(id)criterion sourceIdentifier:(id)identifier;
@end

@implementation ATXInfoSuggestionCriterionRegistry

- (ATXInfoSuggestionCriterionRegistry)init
{
  v6.receiver = self;
  v6.super_class = ATXInfoSuggestionCriterionRegistry;
  v2 = [(ATXInfoSuggestionCriterionRegistry *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryWithLegacyPathForClass:objc_opt_class()];
    registry = v2->_registry;
    v2->_registry = v3;
  }

  return v2;
}

- (BOOL)isSourceIdentifierRegistered:(id)registered
{
  v3 = [(NSDictionary *)self->_registry objectForKeyedSubscript:registered];
  v4 = v3 != 0;

  return v4;
}

- (int64_t)confidenceLevelForCriterion:(id)criterion sourceIdentifier:(id)identifier
{
  registry = self->_registry;
  criterionCopy = criterion;
  v7 = [(NSDictionary *)registry objectForKeyedSubscript:identifier];
  v8 = [v7 objectForKeyedSubscript:criterionCopy];

  unsignedIntegerValue = [v8 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (id)availableCriterionIdentifiersForSourceIdentifier:(id)identifier
{
  v3 = [(NSDictionary *)self->_registry objectForKeyedSubscript:identifier];
  allKeys = [v3 allKeys];

  return allKeys;
}

@end