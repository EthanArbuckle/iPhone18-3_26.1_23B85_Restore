@interface AMSUIToastAppearance
- (AMSUIToastAppearance)init;
- (AMSUIToastAppearance)initWithDictionary:(id)dictionary;
@end

@implementation AMSUIToastAppearance

- (AMSUIToastAppearance)init
{
  v3.receiver = self;
  v3.super_class = AMSUIToastAppearance;
  result = [(AMSUIAppearance *)&v3 init];
  if (result)
  {
    result->_iconAnimationPlayCount = -90;
    result->_primaryImageRenderingMode = 0;
  }

  return result;
}

- (AMSUIToastAppearance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v35.receiver = self;
  v35.super_class = AMSUIToastAppearance;
  v5 = [(AMSUIAppearance *)&v35 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [AMSUIAppearance _accessoryButtonBackgroundColorWithDictionary:dictionaryCopy];
    accessoryButtonBackgroundColor = v5->_accessoryButtonBackgroundColor;
    v5->_accessoryButtonBackgroundColor = v6;

    v8 = [AMSUIAppearance _accessoryButtonColorWithDictionary:dictionaryCopy];
    accessoryButtonColor = v5->_accessoryButtonColor;
    v5->_accessoryButtonColor = v8;

    v10 = [AMSUIAppearance _accessoryButtonFontWithDictionary:dictionaryCopy];
    accessoryButtonFont = v5->_accessoryButtonFont;
    v5->_accessoryButtonFont = v10;

    v12 = [AMSUIAppearance _backgroundColorWithDictionary:dictionaryCopy];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v12;

    v14 = [AMSUIAppearance _backgroundImageWithDictionary:dictionaryCopy];
    backgroundImage = v5->_backgroundImage;
    v5->_backgroundImage = v14;

    v16 = [AMSUIAppearance _footerButtonBackgroundColorWithDictionary:dictionaryCopy];
    footerButtonBackgroundColor = v5->_footerButtonBackgroundColor;
    v5->_footerButtonBackgroundColor = v16;

    v18 = [AMSUIAppearance _footerButtonColorWithDictionary:dictionaryCopy];
    footerButtonColor = v5->_footerButtonColor;
    v5->_footerButtonColor = v18;

    v20 = [AMSUIAppearance _footerButtonFontWithDictionary:dictionaryCopy];
    footerButtonFont = v5->_footerButtonFont;
    v5->_footerButtonFont = v20;

    v5->_iconAnimationPlayCount = [AMSUIAppearance _iconAnimationPlayCount:dictionaryCopy];
    v22 = [AMSUIAppearance _imageSymbolConfigurationWithDictionary:dictionaryCopy];
    imageSymbolConfiguration = v5->_imageSymbolConfiguration;
    v5->_imageSymbolConfiguration = v22;

    v24 = [AMSUIAppearance _imageTintColorWithDictionary:dictionaryCopy];
    imageTintColor = v5->_imageTintColor;
    v5->_imageTintColor = v24;

    v5->_primaryImageRenderingMode = [AMSUIAppearance _primaryImageRenderingModeWithDictionary:dictionaryCopy];
    v26 = [AMSUIAppearance _titleFontWithDictionary:dictionaryCopy];
    titleFont = v5->_titleFont;
    v5->_titleFont = v26;

    v28 = [AMSUIAppearance _titleTextColorWithDictionary:dictionaryCopy];
    titleTextColor = v5->_titleTextColor;
    v5->_titleTextColor = v28;

    v30 = [AMSUIAppearance _messageFontWithDictionary:dictionaryCopy];
    messageFont = v5->_messageFont;
    v5->_messageFont = v30;

    v32 = [AMSUIAppearance _messageTextColorWithDictionary:dictionaryCopy];
    messageTextColor = v5->_messageTextColor;
    v5->_messageTextColor = v32;
  }

  return v5;
}

@end