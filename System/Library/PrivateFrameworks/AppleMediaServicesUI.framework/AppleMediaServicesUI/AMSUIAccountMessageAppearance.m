@interface AMSUIAccountMessageAppearance
- (AMSUIAccountMessageAppearance)init;
- (AMSUIAccountMessageAppearance)initWithDictionary:(id)a3;
- (int64_t)_animationStyleWithDictionary:(id)a3;
- (void)_setImageStyleWithDictionary:(id)a3;
@end

@implementation AMSUIAccountMessageAppearance

- (AMSUIAccountMessageAppearance)init
{
  v3.receiver = self;
  v3.super_class = AMSUIAccountMessageAppearance;
  result = [(AMSUIAppearance *)&v3 init];
  if (result)
  {
    result->_iconAnimationPlayCount = -90;
    result->_imageStyle = 0;
    result->_impressionAnimationStyle = -1;
    result->_primaryImageRenderingMode = 0;
  }

  return result;
}

- (AMSUIAccountMessageAppearance)initWithDictionary:(id)a3
{
  v4 = a3;
  v35.receiver = self;
  v35.super_class = AMSUIAccountMessageAppearance;
  v5 = [(AMSUIAppearance *)&v35 initWithDictionary:v4];
  if (v5)
  {
    v6 = [AMSUIAppearance _accessoryButtonBackgroundColorWithDictionary:v4];
    accessoryButtonBackgroundColor = v5->_accessoryButtonBackgroundColor;
    v5->_accessoryButtonBackgroundColor = v6;

    v8 = [AMSUIAppearance _accessoryButtonColorWithDictionary:v4];
    accessoryButtonColor = v5->_accessoryButtonColor;
    v5->_accessoryButtonColor = v8;

    v10 = [AMSUIAppearance _accessoryButtonFontWithDictionary:v4];
    accessoryButtonFont = v5->_accessoryButtonFont;
    v5->_accessoryButtonFont = v10;

    v12 = [AMSUIAppearance _backgroundColorWithDictionary:v4];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v12;

    v14 = [AMSUIAppearance _backgroundImageWithDictionary:v4];
    backgroundImage = v5->_backgroundImage;
    v5->_backgroundImage = v14;

    v16 = [AMSUIAppearance _footerButtonBackgroundColorWithDictionary:v4];
    footerButtonBackgroundColor = v5->_footerButtonBackgroundColor;
    v5->_footerButtonBackgroundColor = v16;

    v18 = [AMSUIAppearance _footerButtonColorWithDictionary:v4];
    footerButtonColor = v5->_footerButtonColor;
    v5->_footerButtonColor = v18;

    v20 = [AMSUIAppearance _footerButtonFontWithDictionary:v4];
    footerButtonFont = v5->_footerButtonFont;
    v5->_footerButtonFont = v20;

    v5->_iconAnimationPlayCount = [AMSUIAppearance _iconAnimationPlayCount:v4];
    v22 = [AMSUIAppearance _imageSymbolConfigurationWithDictionary:v4];
    imageSymbolConfiguration = v5->_imageSymbolConfiguration;
    v5->_imageSymbolConfiguration = v22;

    v24 = [AMSUIAppearance _imageTintColorWithDictionary:v4];
    imageTintColor = v5->_imageTintColor;
    v5->_imageTintColor = v24;

    v5->_impressionAnimationStyle = [(AMSUIAccountMessageAppearance *)v5 _animationStyleWithDictionary:v4];
    v5->_primaryImageRenderingMode = [AMSUIAppearance _primaryImageRenderingModeWithDictionary:v4];
    v26 = [AMSUIAppearance _titleFontWithDictionary:v4];
    titleFont = v5->_titleFont;
    v5->_titleFont = v26;

    v28 = [AMSUIAppearance _titleTextColorWithDictionary:v4];
    titleTextColor = v5->_titleTextColor;
    v5->_titleTextColor = v28;

    v30 = [AMSUIAppearance _messageFontWithDictionary:v4];
    messageFont = v5->_messageFont;
    v5->_messageFont = v30;

    v32 = [AMSUIAppearance _messageTextColorWithDictionary:v4];
    messageTextColor = v5->_messageTextColor;
    v5->_messageTextColor = v32;

    [(AMSUIAccountMessageAppearance *)v5 _setImageStyleWithDictionary:v4];
  }

  return v5;
}

- (int64_t)_animationStyleWithDictionary:(id)a3
{
  v3 = [AMSUIAppearance _impressionAnimationIdentifierWithDictionary:a3];
  v4 = [&unk_1F394A8A0 objectForKeyedSubscript:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)_setImageStyleWithDictionary:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"imageStyle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  v5 = v7;
  if (v7)
  {
    v6 = [v7 unsignedIntValue];
    v5 = v7;
    self->_imageStyle = v6;
  }
}

@end