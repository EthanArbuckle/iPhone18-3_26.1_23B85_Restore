@interface HPRFHeartRateBradycardiaThresholdController
+ (id)footerText;
- (void)didSelectThresholdValue:(id)value;
@end

@implementation HPRFHeartRateBradycardiaThresholdController

- (void)didSelectThresholdValue:(id)value
{
  valueCopy = value;
  v5 = +[_HKHeartSettingsUtilities bradycardiaWarningThreshold];
  if (valueCopy && [valueCopy integerValue] >= v5 && (v6 = objc_msgSend(objc_opt_class(), "thresholdHeartRate"), v6 != objc_msgSend(valueCopy, "integerValue")))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_8EB0;
    v9[3] = &unk_18840;
    v9[4] = self;
    v7 = +[UIAlertController hkhr_bradycardiaConfirmationControllerWithValue:confirmHandler:cancelHandler:](UIAlertController, "hkhr_bradycardiaConfirmationControllerWithValue:confirmHandler:cancelHandler:", [valueCopy integerValue], v9, 0);
    [(HPRFHeartRateBradycardiaThresholdController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HPRFHeartRateBradycardiaThresholdController;
    [(HPRFHeartRateThresholdController *)&v8 didSelectThresholdValue:valueCopy];
  }
}

+ (id)footerText
{
  v2 = [self localizedThresholdHeartRateStringWithValue:{objc_msgSend(self, "thresholdHeartRate")}];
  v3 = [_HKHeartSettingsUtilities bradycardiaHeartThresholdFooterDescriptionWithThresholdValue:v2];

  return v3;
}

@end