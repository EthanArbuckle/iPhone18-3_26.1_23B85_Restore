@interface AMSDHomeKitHomeSetting
- (AMSDHomeKitHomeSetting)initWithSetting:(id)setting;
- (BOOL)BOOLValue;
- (NSString)hashedDescription;
@end

@implementation AMSDHomeKitHomeSetting

- (AMSDHomeKitHomeSetting)initWithSetting:(id)setting
{
  settingCopy = setting;
  v9.receiver = self;
  v9.super_class = AMSDHomeKitHomeSetting;
  v6 = [(AMSDHomeKitHomeSetting *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setting, setting);
  }

  return v7;
}

- (BOOL)BOOLValue
{
  setting = [(AMSDHomeKitHomeSetting *)self setting];
  value = [setting value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = value;
  }

  else
  {
    v4 = 0;
  }

  bOOLValue = [v4 BOOLValue];
  return bOOLValue;
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  setting = [(AMSDHomeKitHomeSetting *)self setting];
  keyPath = [setting keyPath];
  setting2 = [(AMSDHomeKitHomeSetting *)self setting];
  value = [setting2 value];
  v8 = AMSHashIfNeeded();
  v9 = [NSString stringWithFormat:@"<%@: %p keyPath = %@ | value = %@>", v3, self, keyPath, v8];

  return v9;
}

@end