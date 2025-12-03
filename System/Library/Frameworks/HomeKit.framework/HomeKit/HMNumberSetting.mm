@interface HMNumberSetting
- (BOOL)isKindOfClass:(Class)class;
- (HMNumberSetting)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type value:(id)value properties:(unint64_t)properties minimumValue:(id)minimumValue maximumValue:(id)maximumValue stepValue:(id)self0;
- (id)internalValue;
- (id)valueForUpdate:(id)update;
@end

@implementation HMNumberSetting

- (id)valueForUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Value is not of type NSNumber" userInfo:0];
      objc_exception_throw(v6);
    }
  }

  v4 = [[HMSettingValue alloc] initNumberSettingWithValue:updateCopy];

  return v4;
}

- (id)internalValue
{
  v3 = [HMSettingValue alloc];
  value = [(HMSetting *)self value];
  v5 = [(HMSettingValue *)v3 initNumberSettingWithValue:value];

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = HMNumberSetting;
  return [(HMNumberSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == class;
}

- (HMNumberSetting)initWithIdentifier:(id)identifier name:(id)name type:(int64_t)type value:(id)value properties:(unint64_t)properties minimumValue:(id)minimumValue maximumValue:(id)maximumValue stepValue:(id)self0
{
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  stepValueCopy = stepValue;
  v23.receiver = self;
  v23.super_class = HMNumberSetting;
  v18 = [(HMSetting *)&v23 initWithIdentifier:identifier name:name type:type value:value properties:properties];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_minimumValue, minimumValue);
    objc_storeStrong(&v19->_maximumValue, maximumValue);
    objc_storeStrong(&v19->_stepValue, stepValue);
  }

  return v19;
}

@end