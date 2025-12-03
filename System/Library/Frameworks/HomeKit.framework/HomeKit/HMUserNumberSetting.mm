@interface HMUserNumberSetting
- (BOOL)doesValueConformToConstraints:(id)constraints;
- (void)updateValue:(id)value completionHandler:(id)handler;
@end

@implementation HMUserNumberSetting

- (BOOL)doesValueConformToConstraints:(id)constraints
{
  constraintsCopy = constraints;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = constraintsCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    minimumValue = [(HMNumberSetting *)self minimumValue];
    if (minimumValue)
    {
      intValue = [v6 intValue];
      minimumValue2 = [(HMNumberSetting *)self minimumValue];
      if (intValue >= [minimumValue2 intValue])
      {
        maximumValue = [(HMNumberSetting *)self maximumValue];
        if (maximumValue)
        {
          intValue2 = [v6 intValue];
          maximumValue2 = [(HMNumberSetting *)self maximumValue];
          v10 = intValue2 <= [maximumValue2 intValue];
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

- (void)updateValue:(id)value completionHandler:(id)handler
{
  handlerCopy = handler;
  valueCopy = value;
  settingManager = [(HMSetting *)self settingManager];
  [settingManager updateValueForSetting:self value:valueCopy completionHandler:handlerCopy];
}

@end