@interface HMSelectionSetting
- (BOOL)isKindOfClass:(Class)a3;
- (id)internalValue;
- (id)valueForUpdate:(id)a3;
@end

@implementation HMSelectionSetting

- (id)valueForUpdate:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Value is not of type HMSelectionSettingItem" userInfo:0];
    objc_exception_throw(v11);
  }

  v6 = [HMSettingValue alloc];
  v7 = [v5 identifier];
  v8 = [v5 title];
  v9 = [(HMSettingValue *)v6 initWithType:4 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:v7 selectionValue:v8];

  return v9;
}

- (id)internalValue
{
  v2 = [(HMSetting *)self value];
  v3 = [HMSettingValue alloc];
  v4 = [v2 identifier];
  v5 = [v2 title];
  v6 = [(HMSettingValue *)v3 initWithType:4 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:v4 selectionValue:v5];

  return v6;
}

- (BOOL)isKindOfClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = HMSelectionSetting;
  return [(HMSelectionSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == a3;
}

@end