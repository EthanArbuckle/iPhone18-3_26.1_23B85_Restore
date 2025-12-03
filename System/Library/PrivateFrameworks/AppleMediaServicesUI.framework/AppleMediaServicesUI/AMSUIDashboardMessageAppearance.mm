@interface AMSUIDashboardMessageAppearance
- (AMSUIDashboardMessageAppearance)init;
- (AMSUIDashboardMessageAppearance)initWithDictionary:(id)dictionary;
@end

@implementation AMSUIDashboardMessageAppearance

- (AMSUIDashboardMessageAppearance)init
{
  v3.receiver = self;
  v3.super_class = AMSUIDashboardMessageAppearance;
  result = [(AMSUIAppearance *)&v3 init];
  if (result)
  {
    result->_iconAnimationPlayCount = -90;
    result->_primaryImageRenderingMode = 0;
  }

  return result;
}

- (AMSUIDashboardMessageAppearance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v37.receiver = self;
  v37.super_class = AMSUIDashboardMessageAppearance;
  v5 = [(AMSUIAppearance *)&v37 initWithDictionary:dictionaryCopy];
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

    v22 = [AMSUIAppearance _imageSymbolConfigurationWithDictionary:dictionaryCopy];
    imageSymbolConfiguration = v5->_imageSymbolConfiguration;
    v5->_imageSymbolConfiguration = v22;

    v24 = [AMSUIAppearance _imageTintColorWithDictionary:dictionaryCopy];
    imageTintColor = v5->_imageTintColor;
    v5->_imageTintColor = v24;

    v5->_iconAnimationPlayCount = [AMSUIAppearance _iconAnimationPlayCount:dictionaryCopy];
    v5->_primaryImageRenderingMode = [AMSUIAppearance _primaryImageRenderingModeWithDictionary:dictionaryCopy];
    v26 = [AMSUIAppearance _separatorColorWithDictionary:dictionaryCopy];
    separatorColor = v5->_separatorColor;
    v5->_separatorColor = v26;

    v28 = [AMSUIAppearance _titleFontWithDictionary:dictionaryCopy];
    titleFont = v5->_titleFont;
    v5->_titleFont = v28;

    v30 = [AMSUIAppearance _titleTextColorWithDictionary:dictionaryCopy];
    titleTextColor = v5->_titleTextColor;
    v5->_titleTextColor = v30;

    v32 = [AMSUIAppearance _messageFontWithDictionary:dictionaryCopy];
    messageFont = v5->_messageFont;
    v5->_messageFont = v32;

    v34 = [AMSUIAppearance _messageTextColorWithDictionary:dictionaryCopy];
    messageTextColor = v5->_messageTextColor;
    v5->_messageTextColor = v34;
  }

  return v5;
}

@end