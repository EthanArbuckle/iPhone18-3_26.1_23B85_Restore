@interface ACSettingsSliderUIController
+ (id)snippetViewController;
- (ACSettingsSliderUIController)init;
- (BOOL)isTracking;
- (double)desiredHeightForWidth:(double)a3;
- (void)_sliderChanged:(id)a3;
- (void)_touchesEnded:(id)a3;
- (void)loadView;
- (void)setSnippet:(id)a3;
- (void)settingChangedExternally:(id)a3;
@end

@implementation ACSettingsSliderUIController

+ (id)snippetViewController
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (ACSettingsSliderUIController)init
{
  v5.receiver = self;
  v5.super_class = ACSettingsSliderUIController;
  v2 = [(ACSettingsSliderUIController *)&v5 init];
  if (v2)
  {
    v3 = ACSettingsLocalizedString(@"SETTINGS_TITLE");
    [(ACSettingsSliderUIController *)v2 setTitle:v3];
  }

  return v2;
}

- (void)setSnippet:(id)a3
{
  objc_storeStrong(&self->_snippet, a3);
  v5 = a3;
  v9 = [(SASettingFloatSnippet *)self->_snippet settingKeys];
  [(ACSettingsBasicSetting *)self->_setting setDelegate:0];
  v6 = [v9 objectAtIndex:0];
  v7 = [(ACSettingsBasicSetting *)ACSettingsSliderSetting settingWithAceString:v6];
  setting = self->_setting;
  self->_setting = v7;

  [(ACSettingsBasicSetting *)self->_setting setDelegate:self];
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(ACSettingsSliderUIController *)self view];
  [v4 sizeThatFits:{a3, 1.79769313e308}];
  v6 = v5;

  return v6;
}

- (void)loadView
{
  v3 = [[ACSettingsSliderView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  settingView = self->_settingView;
  self->_settingView = v3;

  [(ACSettingsSliderUIController *)self setView:self->_settingView];
  [(ACSettingsSliderUIController *)self setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  v5 = [(ACSettingsSliderView *)self->_settingView slider];
  v6 = [(ACSettingsSliderSetting *)self->_setting leftImage];
  v7 = +[UIColor siriui_glyphColor];
  v8 = [v6 _flatImageWithColor:v7];
  [v5 setMinimumValueImage:v8];

  v9 = [(ACSettingsSliderView *)self->_settingView slider];
  v10 = [(ACSettingsSliderSetting *)self->_setting rightImage];
  v11 = +[UIColor siriui_glyphColor];
  v12 = [v10 _flatImageWithColor:v11];
  [v9 setMaximumValueImage:v12];

  v13 = [(ACSettingsSliderView *)self->_settingView slider];
  [v13 addTarget:self action:"_sliderChanged:" forControlEvents:4095];

  v14 = [(ACSettingsSliderView *)self->_settingView slider];
  [v14 addTarget:self action:"_touchesEnded:" forControlEvents:192];
}

- (void)_sliderChanged:(id)a3
{
  setting = self->_setting;
  v4 = a3;
  [v4 value];
  v6 = v5;
  v7 = [v4 isTracking];

  [(ACSettingsSliderSetting *)setting setValue:v7 isTracking:v6];
}

- (void)_touchesEnded:(id)a3
{
  setting = self->_setting;
  [a3 value];
  v5 = v4;

  [(ACSettingsSliderSetting *)setting setValue:0 isTracking:v5];
}

- (void)settingChangedExternally:(id)a3
{
  if (self->_setting == a3)
  {
    v4 = [(ACSettingsSliderView *)self->_settingView slider];
    v5 = [v4 isTracking];

    if ((v5 & 1) == 0)
    {
      v7 = [(ACSettingsSliderView *)self->_settingView slider];
      [(ACSettingsSliderSetting *)self->_setting value];
      *&v6 = v6;
      [v7 setValue:1 animated:v6];
    }
  }
}

- (BOOL)isTracking
{
  v2 = [(ACSettingsSliderView *)self->_settingView slider];
  v3 = [v2 isTracking];

  return v3;
}

@end