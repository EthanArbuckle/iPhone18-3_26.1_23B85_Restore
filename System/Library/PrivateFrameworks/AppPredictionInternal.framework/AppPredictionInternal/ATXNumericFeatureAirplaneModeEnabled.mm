@interface ATXNumericFeatureAirplaneModeEnabled
- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate;
@end

@implementation ATXNumericFeatureAirplaneModeEnabled

- (id)numericFeatureValueForContext:(id)context candidate:(id)candidate
{
  v4 = MEMORY[0x277CCABB0];
  deviceStateContext = [context deviceStateContext];
  v6 = [v4 numberWithBool:{objc_msgSend(deviceStateContext, "inAirplaneMode")}];

  return v6;
}

@end