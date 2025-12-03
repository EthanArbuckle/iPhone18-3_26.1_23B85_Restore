@interface HMAccessoryNumberSetting
- (HMAccessoryNumberSetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value minimumValue:(id)minimumValue maximumValue:(id)maximumValue stepValue:(id)stepValue;
- (NSNumber)maximumValue;
- (NSNumber)minimumValue;
- (NSNumber)stepValue;
- (void)updateValue:(id)value;
@end

@implementation HMAccessoryNumberSetting

- (NSNumber)stepValue
{
  internal = [(HMAccessorySetting *)self internal];
  v3 = [internal constraintWithType:3];
  value = [v3 value];

  return value;
}

- (NSNumber)maximumValue
{
  internal = [(HMAccessorySetting *)self internal];
  v3 = [internal constraintWithType:2];
  value = [v3 value];

  return value;
}

- (NSNumber)minimumValue
{
  internal = [(HMAccessorySetting *)self internal];
  v3 = [internal constraintWithType:1];
  value = [v3 value];

  return value;
}

- (void)updateValue:(id)value
{
  valueCopy = value;
  internal = [(HMAccessorySetting *)self internal];
  [internal setValue:valueCopy];

  internal2 = [(HMAccessorySetting *)self internal];
  [(HMAccessorySetting *)self _settingDidUpdateValue:internal2];
}

- (HMAccessoryNumberSetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value minimumValue:(id)minimumValue maximumValue:(id)maximumValue stepValue:(id)stepValue
{
  minimumValueCopy = minimumValue;
  maximumValueCopy = maximumValue;
  stepValueCopy = stepValue;
  v17 = MEMORY[0x1E695DF70];
  valueCopy = value;
  keyCopy = key;
  v20 = [v17 arrayWithCapacity:2];
  if (minimumValueCopy)
  {
    v21 = [[HMAccessorySettingConstraint alloc] initWithType:1 value:minimumValueCopy];
    [v20 addObject:v21];
  }

  if (maximumValueCopy)
  {
    v22 = [[HMAccessorySettingConstraint alloc] initWithType:2 value:maximumValueCopy];
    [v20 addObject:v22];
  }

  if (stepValueCopy)
  {
    v23 = [[HMAccessorySettingConstraint alloc] initWithType:3 value:stepValueCopy];
    [v20 addObject:v23];
  }

  v24 = [[_HMAccessorySetting alloc] initWithType:2 properties:properties name:keyCopy constraints:v20];

  [(_HMAccessorySetting *)v24 setValue:valueCopy];
  v25 = [(HMAccessorySetting *)self initWithInternal:v24];

  return v25;
}

@end