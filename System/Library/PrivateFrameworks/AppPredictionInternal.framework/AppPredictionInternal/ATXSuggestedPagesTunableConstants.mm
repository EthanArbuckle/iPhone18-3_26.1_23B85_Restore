@interface ATXSuggestedPagesTunableConstants
- (ATXSuggestedPagesTunableConstants)init;
- (double)maxRatioOfAppleAppsForFirstPageSorting;
- (double)minScoreForModeAffinityContactsWidgetSuggestions;
- (double)suggestedPagesModeAffinityAppDataSourceScoreThreshold;
- (int)faceComplicationsSignificantHomeAccessoryEventCount;
- (int)faceComplicationsSignificantRemindersEventCount;
- (int)faceComplicationsSignificantStocksEventCount;
- (int)maxSuggestedPages;
- (int)maxWidgetsInStack;
- (int)numberOfContactsForMediumWidget;
- (int)numberOfContactsForSmallWidget;
- (int)stackHeuristicsSignificantHomeAccessoryEventCount;
@end

@implementation ATXSuggestedPagesTunableConstants

- (ATXSuggestedPagesTunableConstants)init
{
  v6.receiver = self;
  v6.super_class = ATXSuggestedPagesTunableConstants;
  v2 = [(ATXSuggestedPagesTunableConstants *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXSuggestedPagesTunableConstants" ofType:@"plist" specifiedABGroup:0];
    suggestedPagesTunableConstants = v2->_suggestedPagesTunableConstants;
    v2->_suggestedPagesTunableConstants = v3;
  }

  return v2;
}

- (double)maxRatioOfAppleAppsForFirstPageSorting
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"maxRatioOfAppleAppsForFirstPageSorting"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int)numberOfContactsForMediumWidget
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"numberOfContactsForMediumWidget"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)numberOfContactsForSmallWidget
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"numberOfContactsForSmallWidget"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (double)minScoreForModeAffinityContactsWidgetSuggestions
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"minScoreForModeAffinityContactsWidgetSuggestions"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int)maxSuggestedPages
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"maxSuggestedPages"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)maxWidgetsInStack
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"maxWidgetsInStack"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (double)suggestedPagesModeAffinityAppDataSourceScoreThreshold
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"suggestedPagesModeAffinityAppDataSourceScoreThreshold"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (int)stackHeuristicsSignificantHomeAccessoryEventCount
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"stackHeuristicsSignificantHomeAccessoryEventCount"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)faceComplicationsSignificantHomeAccessoryEventCount
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"faceComplicationsSignificantHomeAccessoryEventCount"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)faceComplicationsSignificantStocksEventCount
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"faceComplicationsSignificantStocksEventCount"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (int)faceComplicationsSignificantRemindersEventCount
{
  v2 = [(NSDictionary *)self->_suggestedPagesTunableConstants objectForKeyedSubscript:@"faceComplicationsSignificantRemindersEventCount"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

@end