@interface HMNumberSetting
- (BOOL)isKindOfClass:(Class)a3;
- (HMNumberSetting)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 value:(id)a6 properties:(unint64_t)a7 minimumValue:(id)a8 maximumValue:(id)a9 stepValue:(id)a10;
- (id)internalValue;
- (id)valueForUpdate:(id)a3;
@end

@implementation HMNumberSetting

- (id)valueForUpdate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Value is not of type NSNumber" userInfo:0];
      objc_exception_throw(v6);
    }
  }

  v4 = [[HMSettingValue alloc] initNumberSettingWithValue:v3];

  return v4;
}

- (id)internalValue
{
  v3 = [HMSettingValue alloc];
  v4 = [(HMSetting *)self value];
  v5 = [(HMSettingValue *)v3 initNumberSettingWithValue:v4];

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = HMNumberSetting;
  return [(HMNumberSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == a3;
}

- (HMNumberSetting)initWithIdentifier:(id)a3 name:(id)a4 type:(int64_t)a5 value:(id)a6 properties:(unint64_t)a7 minimumValue:(id)a8 maximumValue:(id)a9 stepValue:(id)a10
{
  v22 = a8;
  v21 = a9;
  v17 = a10;
  v23.receiver = self;
  v23.super_class = HMNumberSetting;
  v18 = [(HMSetting *)&v23 initWithIdentifier:a3 name:a4 type:a5 value:a6 properties:a7];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_minimumValue, a8);
    objc_storeStrong(&v19->_maximumValue, a9);
    objc_storeStrong(&v19->_stepValue, a10);
  }

  return v19;
}

@end