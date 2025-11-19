@interface HMAccessorySettingConstraint
+ (NSSet)supportedValueClasses;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMAccessorySettingConstraint)init;
- (HMAccessorySettingConstraint)initWithCoder:(id)a3;
- (HMAccessorySettingConstraint)initWithIdentifier:(id)a3 type:(int64_t)a4 value:(id)a5;
- (HMAccessorySettingConstraint)initWithType:(int64_t)a3 value:(id)a4;
- (NSUUID)identifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessorySettingConstraint

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessorySettingConstraint *)self identifier];
  [v4 encodeObject:v5 forKey:@"HM.identifier"];

  [v4 encodeInteger:-[HMAccessorySettingConstraint type](self forKey:{"type"), @"HM.type"}];
  v6 = [(HMAccessorySettingConstraint *)self value];
  [v4 encodeObject:v6 forKey:@"HM.value"];
}

- (HMAccessorySettingConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"HM.type"];
  v6 = [objc_opt_class() supportedValueClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"HM.value"];

  v8 = [(HMAccessorySettingConstraint *)self initWithType:v5 value:v7];
  if (v8 && [v4 containsValueForKey:@"HM.identifier"])
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    [v9 getUUIDBytes:v8->_identifierUUIDBytes];
  }

  return v8;
}

- (id)descriptionWithPointer:(BOOL)a3
{
  v3 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [objc_opt_class() shortDescription];
  if (v3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %p", self];
  }

  else
  {
    v7 = &stru_1F0E92498;
  }

  v8 = [(HMAccessorySettingConstraint *)self identifier];
  v9 = [v8 UUIDString];
  v10 = [(HMAccessorySettingConstraint *)self type]- 1;
  if (v10 > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E75469B8[v10];
  }

  v12 = [(HMAccessorySettingConstraint *)self value];
  v13 = [v5 stringWithFormat:@"<%@%@, Identifier = %@, Type = %@, Value = %@>", v6, v7, v9, v11, v12];

  if (v3)
  {
  }

  return v13;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [objc_opt_class() shortDescription];
  v5 = [(HMAccessorySettingConstraint *)self identifier];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"%@ %@", v4, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6 && (v7 = [(HMAccessorySettingConstraint *)self type], v7 == [(HMAccessorySettingConstraint *)v6 type]))
    {
      v8 = [(HMAccessorySettingConstraint *)self value];
      v9 = [(HMAccessorySettingConstraint *)v6 value];
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
  v3 = [(HMAccessorySettingConstraint *)self value];
  v4 = [v3 hash];
  v5 = [(HMAccessorySettingConstraint *)self type];

  return v5 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMAccessorySettingConstraint allocWithZone:a3];
  v5 = [(HMAccessorySettingConstraint *)self type];
  v6 = [(HMAccessorySettingConstraint *)self value];
  v7 = [v6 copy];
  v8 = [(HMAccessorySettingConstraint *)v4 initWithType:v5 value:v7];

  return v8;
}

- (NSUUID)identifier
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:self->_identifierUUIDBytes];

  return v2;
}

- (HMAccessorySettingConstraint)initWithIdentifier:(id)a3 type:(int64_t)a4 value:(id)a5
{
  v8 = a3;
  v9 = a5;
  v15.receiver = self;
  v15.super_class = HMAccessorySettingConstraint;
  v10 = [(HMAccessorySettingConstraint *)&v15 init];
  v11 = v10;
  if (v10)
  {
    [v8 getUUIDBytes:v10->_identifierUUIDBytes];
    v11->_type = a4;
    v12 = [v9 copy];
    value = v11->_value;
    v11->_value = v12;
  }

  return v11;
}

- (HMAccessorySettingConstraint)initWithType:(int64_t)a3 value:(id)a4
{
  v6 = MEMORY[0x1E696AFB0];
  v7 = a4;
  v8 = [v6 UUID];
  v9 = [(HMAccessorySettingConstraint *)self initWithIdentifier:v8 type:a3 value:v7];

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