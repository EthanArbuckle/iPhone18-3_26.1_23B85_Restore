@interface ACSettingsBrightnessSetting
- (ACSettingsBrightnessSetting)init;
- (id)leftImage;
- (id)rightImage;
- (void)dealloc;
- (void)handleBrightnessDidChangeNotification:(id)a3;
- (void)setValue:(double)a3 isTracking:(BOOL)a4;
@end

@implementation ACSettingsBrightnessSetting

- (ACSettingsBrightnessSetting)init
{
  v7.receiver = self;
  v7.super_class = ACSettingsBrightnessSetting;
  v2 = [(ACSettingsBrightnessSetting *)&v7 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTING_BRIGHTNESS");
    name = v2->super.super._name;
    v2->super.super._name = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"handleBrightnessDidChangeNotification:" name:UIScreenBrightnessDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  +[PSBrightnessSettingsDetail endBrightnessAdjustmentTransaction];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIScreenBrightnessDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = ACSettingsBrightnessSetting;
  [(ACSettingsBrightnessSetting *)&v4 dealloc];
}

- (void)setValue:(double)a3 isTracking:(BOOL)a4
{
  +[PSBrightnessSettingsDetail beginBrightnessAdjustmentTransaction];
  v6 = 1.0;
  v7 = 0.0;
  if (a3 >= 0.0)
  {
    v7 = a3;
  }

  if (a3 <= 1.0)
  {
    v6 = v7;
  }

  [PSBrightnessSettingsDetail setValue:v6];
  if (!a4)
  {

    +[PSBrightnessSettingsDetail endBrightnessAdjustmentTransaction];
  }
}

- (id)leftImage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Small_Sun" inBundle:v2];

  return v3;
}

- (id)rightImage
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [UIImage imageNamed:@"Big_Sun" inBundle:v2];

  return v3;
}

- (void)handleBrightnessDidChangeNotification:(id)a3
{
  v4 = [(ACSettingsBasicSetting *)self delegate];
  v5 = [v4 isTracking];

  if ((v5 & 1) == 0)
  {
    v6 = [(ACSettingsBasicSetting *)self delegate];
    [v6 settingChangedExternally:self];
  }
}

@end