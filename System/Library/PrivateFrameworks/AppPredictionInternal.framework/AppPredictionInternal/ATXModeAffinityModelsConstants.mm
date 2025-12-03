@interface ATXModeAffinityModelsConstants
- (ATXModeAffinityModelsConstants)init;
- (double)scalingFactorForModeGlobalPriors;
- (int)numOfDaysToComputeEntityOccurenceFeatures;
- (int)numOfDaysToComputeEntityOccurenceFeaturesForContacts;
@end

@implementation ATXModeAffinityModelsConstants

- (ATXModeAffinityModelsConstants)init
{
  v10.receiver = self;
  v10.super_class = ATXModeAffinityModelsConstants;
  v2 = [(ATXModeAffinityModelsConstants *)&v10 init];
  if (v2)
  {
    mEMORY[0x277CEB6A8] = [MEMORY[0x277CEB6A8] sharedInstance];
    modeEntityTrialClientWrapper = v2->_modeEntityTrialClientWrapper;
    v2->_modeEntityTrialClientWrapper = mEMORY[0x277CEB6A8];

    modeAffinityModelsConstants = [(ATXModeEntityTrialClientWrapper *)v2->_modeEntityTrialClientWrapper modeAffinityModelsConstants];
    v6 = [modeAffinityModelsConstants count];

    if (v6)
    {
      [(ATXModeEntityTrialClientWrapper *)v2->_modeEntityTrialClientWrapper modeAffinityModelsConstants];
    }

    else
    {
      [MEMORY[0x277CEB3C0] dictionaryForResource:@"ATXModeAffinityModelsConstants" ofType:@"plist" specifiedABGroup:0];
    }
    v7 = ;
    modeAffinityModelsConstants = v2->_modeAffinityModelsConstants;
    v2->_modeAffinityModelsConstants = v7;
  }

  return v2;
}

- (int)numOfDaysToComputeEntityOccurenceFeatures
{
  v2 = [(NSDictionary *)self->_modeAffinityModelsConstants objectForKeyedSubscript:@"numOfDaysToComputeEntityOccurenceFeatures"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 14;
  }

  return intValue;
}

- (int)numOfDaysToComputeEntityOccurenceFeaturesForContacts
{
  v2 = [(NSDictionary *)self->_modeAffinityModelsConstants objectForKeyedSubscript:@"numOfDaysToComputeEntityOccurenceFeaturesForContacts"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 28;
  }

  return intValue;
}

- (double)scalingFactorForModeGlobalPriors
{
  v2 = [(NSDictionary *)self->_modeAffinityModelsConstants objectForKeyedSubscript:@"scalingFactorForModeGlobalPriors"];
  v3 = v2;
  if (v2)
  {
    [v2 doubleValue];
    v5 = v4;
  }

  else
  {
    v5 = 10.0;
  }

  return v5;
}

@end