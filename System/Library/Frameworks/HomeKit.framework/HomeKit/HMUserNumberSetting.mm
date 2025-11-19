@interface HMUserNumberSetting
- (BOOL)doesValueConformToConstraints:(id)a3;
- (void)updateValue:(id)a3 completionHandler:(id)a4;
@end

@implementation HMUserNumberSetting

- (BOOL)doesValueConformToConstraints:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(HMNumberSetting *)self minimumValue];
    if (v7)
    {
      v8 = [v6 intValue];
      v9 = [(HMNumberSetting *)self minimumValue];
      if (v8 >= [v9 intValue])
      {
        v11 = [(HMNumberSetting *)self maximumValue];
        if (v11)
        {
          v12 = [v6 intValue];
          v13 = [(HMNumberSetting *)self maximumValue];
          v10 = v12 <= [v13 intValue];
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateValue:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMSetting *)self settingManager];
  [v8 updateValueForSetting:self value:v7 completionHandler:v6];
}

@end