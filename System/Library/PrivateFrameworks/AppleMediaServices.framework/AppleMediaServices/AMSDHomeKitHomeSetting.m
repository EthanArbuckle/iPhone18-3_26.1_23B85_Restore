@interface AMSDHomeKitHomeSetting
- (AMSDHomeKitHomeSetting)initWithSetting:(id)a3;
- (BOOL)BOOLValue;
- (NSString)hashedDescription;
@end

@implementation AMSDHomeKitHomeSetting

- (AMSDHomeKitHomeSetting)initWithSetting:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSDHomeKitHomeSetting;
  v6 = [(AMSDHomeKitHomeSetting *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_setting, a3);
  }

  return v7;
}

- (BOOL)BOOLValue
{
  v2 = [(AMSDHomeKitHomeSetting *)self setting];
  v3 = [v2 value];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 BOOLValue];
  return v5;
}

- (NSString)hashedDescription
{
  v3 = objc_opt_class();
  v4 = [(AMSDHomeKitHomeSetting *)self setting];
  v5 = [v4 keyPath];
  v6 = [(AMSDHomeKitHomeSetting *)self setting];
  v7 = [v6 value];
  v8 = AMSHashIfNeeded();
  v9 = [NSString stringWithFormat:@"<%@: %p keyPath = %@ | value = %@>", v3, self, v5, v8];

  return v9;
}

@end