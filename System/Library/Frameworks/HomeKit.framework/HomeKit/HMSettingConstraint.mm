@interface HMSettingConstraint
+ (id)shortDescription;
+ (id)supportedValueClasses;
- (BOOL)isEqual:(id)equal;
- (HMSettingConstraint)init;
- (HMSettingConstraint)initWithCoder:(id)coder;
- (HMSettingConstraint)initWithType:(int64_t)type value:(id)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMSettingConstraint

- (HMSettingConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.type"];
  supportedValueClasses = [objc_opt_class() supportedValueClasses];
  v7 = [coderCopy decodeObjectOfClasses:supportedValueClasses forKey:@"HM.value"];

  v8 = -[HMSettingConstraint initWithType:value:](self, "initWithType:value:", [v5 integerValue], v7);
  if (v8 && [coderCopy containsValueForKey:@"HM.identifier"])
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;
  }

  return v8;
}

- (id)descriptionWithPointer:(BOOL)pointer
{
  pointerCopy = pointer;
  v5 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  if (pointerCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  identifier = [(HMSettingConstraint *)self identifier];
  uUIDString = [identifier UUIDString];
  v10 = [(HMSettingConstraint *)self type]- 1;
  if (v10 > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E754C8F0[v10];
  }

  value = [(HMSettingConstraint *)self value];
  v13 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Type = %@, Value = %@>", shortDescription, v7, uUIDString, v11, value];

  if (pointerCopy)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  shortDescription = [objc_opt_class() shortDescription];
  identifier = [(HMSettingConstraint *)self identifier];
  uUIDString = [identifier UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", shortDescription, uUIDString];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v7 = [(HMSettingConstraint *)self type], v7 == [(HMSettingConstraint *)v6 type]))
    {
      value = [(HMSettingConstraint *)self value];
      value2 = [(HMSettingConstraint *)v6 value];
      v10 = HMFEqualObjects();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  value = [(HMSettingConstraint *)self value];
  v4 = [value hash];
  type = [(HMSettingConstraint *)self type];

  return type ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMSettingConstraint allocWithZone:zone];
  type = [(HMSettingConstraint *)self type];
  value = [(HMSettingConstraint *)self value];
  v7 = [value copy];
  v8 = [(HMSettingConstraint *)v4 initWithType:type value:v7];

  return v8;
}

- (HMSettingConstraint)initWithType:(int64_t)type value:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = HMSettingConstraint;
  v7 = [(HMSettingConstraint *)&v13 init];
  if (v7)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v7->_identifier;
    v7->_identifier = uUID;

    v7->_type = type;
    v10 = [valueCopy copy];
    value = v7->_value;
    v7->_value = v10;
  }

  return v7;
}

- (HMSettingConstraint)init
{
  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D930];
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)supportedValueClasses
{
  if (supportedValueClasses_onceToken_52012 != -1)
  {
    dispatch_once(&supportedValueClasses_onceToken_52012, &__block_literal_global_52013);
  }

  v3 = supportedValueClasses_supportedValueClasses_52014;

  return v3;
}

void __44__HMSettingConstraint_supportedValueClasses__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = supportedValueClasses_supportedValueClasses_52014;
  supportedValueClasses_supportedValueClasses_52014 = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end