@interface HMSelectionSetting
- (BOOL)isKindOfClass:(Class)class;
- (id)internalValue;
- (id)valueForUpdate:(id)update;
@end

@implementation HMSelectionSetting

- (id)valueForUpdate:(id)update
{
  updateCopy = update;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = updateCopy;
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
  identifier = [v5 identifier];
  title = [v5 title];
  v9 = [(HMSettingValue *)v6 initWithType:4 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:identifier selectionValue:title];

  return v9;
}

- (id)internalValue
{
  value = [(HMSetting *)self value];
  v3 = [HMSettingValue alloc];
  identifier = [value identifier];
  title = [value title];
  v6 = [(HMSettingValue *)v3 initWithType:4 stringValue:0 numberValue:0 dataValue:0 selectionIdentifier:identifier selectionValue:title];

  return v6;
}

- (BOOL)isKindOfClass:(Class)class
{
  v5.receiver = self;
  v5.super_class = HMSelectionSetting;
  return [(HMSelectionSetting *)&v5 isKindOfClass:?]|| objc_opt_class() == class;
}

@end