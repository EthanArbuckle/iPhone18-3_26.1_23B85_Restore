@interface WFAppearanceSettingValue
- (NSString)wfName;
- (WFAppearanceSettingValue)initWithCoder:(id)coder;
- (WFAppearanceSettingValue)initWithSetting:(int64_t)setting;
- (id)valueByInvertingSetting;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFAppearanceSettingValue

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[WFAppearanceSettingValue setting](self forKey:{"setting"), @"setting"}];
}

- (WFAppearanceSettingValue)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"setting"];

  return [(WFAppearanceSettingValue *)self initWithSetting:v4];
}

- (NSString)wfName
{
  setting = [(WFAppearanceSettingValue *)self setting];
  if (setting == 2)
  {
    v3 = @"Light Mode";
    goto LABEL_7;
  }

  if (setting == 1)
  {
    v3 = @"Dark Mode";
LABEL_7:
    setting = WFLocalizedString(v3);
    goto LABEL_8;
  }

  if (!setting)
  {
    setting = WFLocalizedStringWithKey(@"Unknown (appearance)", @"Unknown");
  }

LABEL_8:

  return setting;
}

- (id)valueByInvertingSetting
{
  setting = [(WFAppearanceSettingValue *)self setting];
  if (setting <= 2)
  {
    v3 = [[WFAppearanceSettingValue alloc] initWithSetting:qword_23E24AC58[setting]];
  }

  return v3;
}

- (WFAppearanceSettingValue)initWithSetting:(int64_t)setting
{
  v8.receiver = self;
  v8.super_class = WFAppearanceSettingValue;
  v4 = [(WFAppearanceSettingValue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_setting = setting;
    v6 = v4;
  }

  return v5;
}

@end