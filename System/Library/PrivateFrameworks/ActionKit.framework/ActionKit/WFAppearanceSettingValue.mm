@interface WFAppearanceSettingValue
- (NSString)wfName;
- (WFAppearanceSettingValue)initWithCoder:(id)a3;
- (WFAppearanceSettingValue)initWithSetting:(int64_t)a3;
- (id)valueByInvertingSetting;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFAppearanceSettingValue

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[WFAppearanceSettingValue setting](self forKey:{"setting"), @"setting"}];
}

- (WFAppearanceSettingValue)initWithCoder:(id)a3
{
  v4 = [a3 decodeIntegerForKey:@"setting"];

  return [(WFAppearanceSettingValue *)self initWithSetting:v4];
}

- (NSString)wfName
{
  v2 = [(WFAppearanceSettingValue *)self setting];
  if (v2 == 2)
  {
    v3 = @"Light Mode";
    goto LABEL_7;
  }

  if (v2 == 1)
  {
    v3 = @"Dark Mode";
LABEL_7:
    v2 = WFLocalizedString(v3);
    goto LABEL_8;
  }

  if (!v2)
  {
    v2 = WFLocalizedStringWithKey(@"Unknown (appearance)", @"Unknown");
  }

LABEL_8:

  return v2;
}

- (id)valueByInvertingSetting
{
  v2 = [(WFAppearanceSettingValue *)self setting];
  if (v2 <= 2)
  {
    v3 = [[WFAppearanceSettingValue alloc] initWithSetting:qword_23E24AC58[v2]];
  }

  return v3;
}

- (WFAppearanceSettingValue)initWithSetting:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = WFAppearanceSettingValue;
  v4 = [(WFAppearanceSettingValue *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_setting = a3;
    v6 = v4;
  }

  return v5;
}

@end