@interface ACSettingsSliderUIController
+ (id)snippetViewController;
- (ACSettingsSliderUIController)init;
- (BOOL)isTracking;
- (double)desiredHeightForWidth:(double)width;
- (void)_sliderChanged:(id)changed;
- (void)_touchesEnded:(id)ended;
- (void)loadView;
- (void)setSnippet:(id)snippet;
- (void)settingChangedExternally:(id)externally;
@end

@implementation ACSettingsSliderUIController

+ (id)snippetViewController
{
  v2 = objc_alloc_init(self);

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

- (void)setSnippet:(id)snippet
{
  objc_storeStrong(&self->_snippet, snippet);
  snippetCopy = snippet;
  settingKeys = [(SASettingFloatSnippet *)self->_snippet settingKeys];
  [(ACSettingsBasicSetting *)self->_setting setDelegate:0];
  v6 = [settingKeys objectAtIndex:0];
  v7 = [(ACSettingsBasicSetting *)ACSettingsSliderSetting settingWithAceString:v6];
  setting = self->_setting;
  self->_setting = v7;

  [(ACSettingsBasicSetting *)self->_setting setDelegate:self];
}

- (double)desiredHeightForWidth:(double)width
{
  view = [(ACSettingsSliderUIController *)self view];
  [view sizeThatFits:{width, 1.79769313e308}];
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
  slider = [(ACSettingsSliderView *)self->_settingView slider];
  leftImage = [(ACSettingsSliderSetting *)self->_setting leftImage];
  v7 = +[UIColor siriui_glyphColor];
  v8 = [leftImage _flatImageWithColor:v7];
  [slider setMinimumValueImage:v8];

  slider2 = [(ACSettingsSliderView *)self->_settingView slider];
  rightImage = [(ACSettingsSliderSetting *)self->_setting rightImage];
  v11 = +[UIColor siriui_glyphColor];
  v12 = [rightImage _flatImageWithColor:v11];
  [slider2 setMaximumValueImage:v12];

  slider3 = [(ACSettingsSliderView *)self->_settingView slider];
  [slider3 addTarget:self action:"_sliderChanged:" forControlEvents:4095];

  slider4 = [(ACSettingsSliderView *)self->_settingView slider];
  [slider4 addTarget:self action:"_touchesEnded:" forControlEvents:192];
}

- (void)_sliderChanged:(id)changed
{
  setting = self->_setting;
  changedCopy = changed;
  [changedCopy value];
  v6 = v5;
  isTracking = [changedCopy isTracking];

  [(ACSettingsSliderSetting *)setting setValue:isTracking isTracking:v6];
}

- (void)_touchesEnded:(id)ended
{
  setting = self->_setting;
  [ended value];
  v5 = v4;

  [(ACSettingsSliderSetting *)setting setValue:0 isTracking:v5];
}

- (void)settingChangedExternally:(id)externally
{
  if (self->_setting == externally)
  {
    slider = [(ACSettingsSliderView *)self->_settingView slider];
    isTracking = [slider isTracking];

    if ((isTracking & 1) == 0)
    {
      slider2 = [(ACSettingsSliderView *)self->_settingView slider];
      [(ACSettingsSliderSetting *)self->_setting value];
      *&v6 = v6;
      [slider2 setValue:1 animated:v6];
    }
  }
}

- (BOOL)isTracking
{
  slider = [(ACSettingsSliderView *)self->_settingView slider];
  isTracking = [slider isTracking];

  return isTracking;
}

@end