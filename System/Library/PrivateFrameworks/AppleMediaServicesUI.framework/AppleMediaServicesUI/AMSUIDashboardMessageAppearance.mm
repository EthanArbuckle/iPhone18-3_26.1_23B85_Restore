@interface AMSUIDashboardMessageAppearance
- (AMSUIDashboardMessageAppearance)init;
- (AMSUIDashboardMessageAppearance)initWithDictionary:(id)a3;
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

- (AMSUIDashboardMessageAppearance)initWithDictionary:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = AMSUIDashboardMessageAppearance;
  v5 = [(AMSUIAppearance *)&v37 initWithDictionary:v4];
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

    v22 = [AMSUIAppearance _imageSymbolConfigurationWithDictionary:v4];
    imageSymbolConfiguration = v5->_imageSymbolConfiguration;
    v5->_imageSymbolConfiguration = v22;

    v24 = [AMSUIAppearance _imageTintColorWithDictionary:v4];
    imageTintColor = v5->_imageTintColor;
    v5->_imageTintColor = v24;

    v5->_iconAnimationPlayCount = [AMSUIAppearance _iconAnimationPlayCount:v4];
    v5->_primaryImageRenderingMode = [AMSUIAppearance _primaryImageRenderingModeWithDictionary:v4];
    v26 = [AMSUIAppearance _separatorColorWithDictionary:v4];
    separatorColor = v5->_separatorColor;
    v5->_separatorColor = v26;

    v28 = [AMSUIAppearance _titleFontWithDictionary:v4];
    titleFont = v5->_titleFont;
    v5->_titleFont = v28;

    v30 = [AMSUIAppearance _titleTextColorWithDictionary:v4];
    titleTextColor = v5->_titleTextColor;
    v5->_titleTextColor = v30;

    v32 = [AMSUIAppearance _messageFontWithDictionary:v4];
    messageFont = v5->_messageFont;
    v5->_messageFont = v32;

    v34 = [AMSUIAppearance _messageTextColorWithDictionary:v4];
    messageTextColor = v5->_messageTextColor;
    v5->_messageTextColor = v34;
  }

  return v5;
}

@end