@interface HPRFHeartRateTachycardiaThresholdController
+ (id)footerText;
@end

@implementation HPRFHeartRateTachycardiaThresholdController

+ (id)footerText
{
  v2 = [a1 localizedThresholdHeartRateStringWithValue:{objc_msgSend(a1, "thresholdHeartRate")}];
  v3 = [_HKHeartSettingsUtilities tachycardiaHeartThresholdFooterDescriptionWithThresholdValue:v2];

  return v3;
}

@end