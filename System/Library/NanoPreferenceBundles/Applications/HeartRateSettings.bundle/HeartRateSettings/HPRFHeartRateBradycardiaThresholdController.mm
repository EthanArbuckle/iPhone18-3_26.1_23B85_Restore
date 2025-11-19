@interface HPRFHeartRateBradycardiaThresholdController
+ (id)footerText;
- (void)didSelectThresholdValue:(id)a3;
@end

@implementation HPRFHeartRateBradycardiaThresholdController

- (void)didSelectThresholdValue:(id)a3
{
  v4 = a3;
  v5 = +[_HKHeartSettingsUtilities bradycardiaWarningThreshold];
  if (v4 && [v4 integerValue] >= v5 && (v6 = objc_msgSend(objc_opt_class(), "thresholdHeartRate"), v6 != objc_msgSend(v4, "integerValue")))
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_8EB0;
    v9[3] = &unk_18840;
    v9[4] = self;
    v7 = +[UIAlertController hkhr_bradycardiaConfirmationControllerWithValue:confirmHandler:cancelHandler:](UIAlertController, "hkhr_bradycardiaConfirmationControllerWithValue:confirmHandler:cancelHandler:", [v4 integerValue], v9, 0);
    [(HPRFHeartRateBradycardiaThresholdController *)self presentViewController:v7 animated:1 completion:0];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = HPRFHeartRateBradycardiaThresholdController;
    [(HPRFHeartRateThresholdController *)&v8 didSelectThresholdValue:v4];
  }
}

+ (id)footerText
{
  v2 = [a1 localizedThresholdHeartRateStringWithValue:{objc_msgSend(a1, "thresholdHeartRate")}];
  v3 = [_HKHeartSettingsUtilities bradycardiaHeartThresholdFooterDescriptionWithThresholdValue:v2];

  return v3;
}

@end