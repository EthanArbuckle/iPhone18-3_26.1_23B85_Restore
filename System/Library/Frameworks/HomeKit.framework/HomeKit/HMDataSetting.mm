@interface HMDataSetting
- (BOOL)isKindOfClass:(Class)class;
- (id)internalValue;
- (id)valueForUpdate:(id)update;
@end

@implementation HMDataSetting

- (id)valueForUpdate:(id)update
{
  updateCopy = update;
  if (updateCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Value is not of type NSData" userInfo:0];
      objc_exception_throw(v6);
    }
  }

  v4 = [[HMSettingValue alloc] initDataSettingWithValue:updateCopy];

  return v4;
}

- (id)internalValue
{
  v3 = [HMSettingValue alloc];
  value = [(HMSetting *)self value];
  v5 = [(HMSettingValue *)v3 initDataSettingWithValue:value];

  return v5;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = HMDataSetting;
  return [(HMDataSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == class;
}

@end