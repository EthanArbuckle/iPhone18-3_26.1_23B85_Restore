@interface HPRFHeartRateTachycardiaThresholdController
+ (id)footerText;
@end

@implementation HPRFHeartRateTachycardiaThresholdController

+ (id)footerText
{
  v2 = [self localizedThresholdHeartRateStringWithValue:{objc_msgSend(self, "thresholdHeartRate")}];
  v3 = [_HKHeartSettingsUtilities tachycardiaHeartThresholdFooterDescriptionWithThresholdValue:v2];

  return v3;
}

@end