@interface HMAccessoryDataSetting
- (HMAccessoryDataSetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value;
@end

@implementation HMAccessoryDataSetting

- (HMAccessoryDataSetting)initWithKey:(id)key properties:(unint64_t)properties value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  v10 = [[_HMAccessorySetting alloc] initWithType:1 properties:properties name:keyCopy constraints:0];

  [(_HMAccessorySetting *)v10 setValue:valueCopy];
  v11 = [(HMAccessorySetting *)self initWithInternal:v10];

  return v11;
}

@end