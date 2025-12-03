@interface ACSettingsBrightnessSetting
- (ACSettingsBrightnessSetting)init;
- (id)leftImage;
- (id)rightImage;
- (void)dealloc;
- (void)handleBrightnessDidChangeNotification:(id)notification;
- (void)setValue:(double)value isTracking:(BOOL)tracking;
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

- (void)setValue:(double)value isTracking:(BOOL)tracking
{
  +[PSBrightnessSettingsDetail beginBrightnessAdjustmentTransaction];
  v6 = 1.0;
  valueCopy = 0.0;
  if (value >= 0.0)
  {
    valueCopy = value;
  }

  if (value <= 1.0)
  {
    v6 = valueCopy;
  }

  [PSBrightnessSettingsDetail setValue:v6];
  if (!tracking)
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

- (void)handleBrightnessDidChangeNotification:(id)notification
{
  delegate = [(ACSettingsBasicSetting *)self delegate];
  isTracking = [delegate isTracking];

  if ((isTracking & 1) == 0)
  {
    delegate2 = [(ACSettingsBasicSetting *)self delegate];
    [delegate2 settingChangedExternally:self];
  }
}

@end