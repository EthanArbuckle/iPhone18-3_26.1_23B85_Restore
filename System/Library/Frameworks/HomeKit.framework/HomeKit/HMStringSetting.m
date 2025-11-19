@interface HMStringSetting
- (BOOL)isKindOfClass:(Class)a3;
- (id)internalValue;
- (id)valueForUpdate:(id)a3;
@end

@implementation HMStringSetting

- (id)valueForUpdate:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Value is not of type NSString" userInfo:0];
      objc_exception_throw(v6);
    }
  }

  v4 = [[HMSettingValue alloc] initStringSettingWithValue:v3];

  return v4;
}

- (id)internalValue
{
  v3 = [HMSettingValue alloc];
  v4 = [(HMSetting *)self value];
  v5 = [(HMSettingValue *)v3 initStringSettingWithValue:v4];

  return v5;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = HMStringSetting;
  return [(HMStringSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == a3;
}

@end