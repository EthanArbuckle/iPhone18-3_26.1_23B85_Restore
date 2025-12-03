@interface HMAccessorySettingConstraint
+ (NSSet)supportedValueClasses;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMAccessorySettingConstraint)init;
- (HMAccessorySettingConstraint)initWithCoder:(id)coder;
- (HMAccessorySettingConstraint)initWithIdentifier:(id)identifier type:(int64_t)type value:(id)value;
- (HMAccessorySettingConstraint)initWithType:(int64_t)type value:(id)value;
- (NSUUID)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessorySettingConstraint

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(HMAccessorySettingConstraint *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"HM.identifier"];

  [coderCopy encodeInteger:-[HMAccessorySettingConstraint type](self forKey:{"type"), @"HM.type"}];
  value = [(HMAccessorySettingConstraint *)self value];
  [coderCopy encodeObject:value forKey:@"HM.value"];
}

- (HMAccessorySettingConstraint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"HM.type"];
  supportedValueClasses = [objc_opt_class() supportedValueClasses];
  v7 = [coderCopy decodeObjectOfClasses:supportedValueClasses forKey:@"HM.value"];

  v8 = [(HMAccessorySettingConstraint *)self initWithType:v5 value:v7];
  if (v8 && [coderCopy containsValueForKey:@"HM.identifier"])
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    [v9 getUUIDBytes:v8->_identifierUUIDBytes];
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

  identifier = [(HMAccessorySettingConstraint *)self identifier];
  uUIDString = [identifier UUIDString];
  v10 = [(HMAccessorySettingConstraint *)self type]- 1;
  if (v10 > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E75469B8[v10];
  }

  value = [(HMAccessorySettingConstraint *)self value];
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
  identifier = [(HMAccessorySettingConstraint *)self identifier];
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
    if (v6 && (v7 = [(HMAccessorySettingConstraint *)self type], v7 == [(HMAccessorySettingConstraint *)v6 type]))
    {
      value = [(HMAccessorySettingConstraint *)self value];
      value2 = [(HMAccessorySettingConstraint *)v6 value];
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
  value = [(HMAccessorySettingConstraint *)self value];
  v4 = [value hash];
  type = [(HMAccessorySettingConstraint *)self type];

  return type ^ v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMAccessorySettingConstraint allocWithZone:zone];
  type = [(HMAccessorySettingConstraint *)self type];
  value = [(HMAccessorySettingConstraint *)self value];
  v7 = [value copy];
  v8 = [(HMAccessorySettingConstraint *)v4 initWithType:type value:v7];

  return v8;
}

- (NSUUID)identifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifierUUIDBytes];

  return v2;
}

- (HMAccessorySettingConstraint)initWithIdentifier:(id)identifier type:(int64_t)type value:(id)value
{
  identifierCopy = identifier;
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = HMAccessorySettingConstraint;
  v10 = [(HMAccessorySettingConstraint *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [identifierCopy getUUIDBytes:v10->_identifierUUIDBytes];
    v11->_type = type;
    v12 = [valueCopy copy];
    value = v11->_value;
    v11->_value = v12;
  }

  return v11;
}

- (HMAccessorySettingConstraint)initWithType:(int64_t)type value:(id)value
{
  v6 = MEMORY[0x1E696AFB0];
  valueCopy = value;
  uUID = [v6 UUID];
  v9 = [(HMAccessorySettingConstraint *)self initWithIdentifier:uUID type:type value:valueCopy];

  return v9;
}

- (HMAccessorySettingConstraint)init
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

+ (NSSet)supportedValueClasses
{
  if (supportedValueClasses_onceToken != -1)
  {
    dispatch_once(&supportedValueClasses_onceToken, &__block_literal_global_863);
  }

  v3 = supportedValueClasses_supportedValueClasses;

  return v3;
}

void __53__HMAccessorySettingConstraint_supportedValueClasses__block_invoke()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v5 count:3];
  v2 = [v0 setWithArray:{v1, v5, v6}];
  v3 = supportedValueClasses_supportedValueClasses;
  supportedValueClasses_supportedValueClasses = v2;

  v4 = *MEMORY[0x1E69E9840];
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end