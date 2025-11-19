@interface ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest
- (ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest)init;
@end

@implementation ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest

- (ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest)init
{
  v12[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12[0] = v3;
  v4 = objc_opt_new();
  v12[1] = v4;
  v5 = objc_opt_new();
  v12[2] = v5;
  v6 = objc_opt_new();
  v12[3] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];

  v11.receiver = self;
  v11.super_class = ATXCategoricalFeatureCross_TimeOfDayInterval_FuzzyPartOfWeek_WifiSSID_LocationOfInterest;
  v8 = [(ATXOneHotCategoricalFeatureCross *)&v11 initWithFeatures:v7];

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

@end