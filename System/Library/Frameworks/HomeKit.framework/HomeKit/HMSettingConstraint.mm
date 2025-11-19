@interface HMSettingConstraint
+ (id)shortDescription;
+ (id)supportedValueClasses;
- (BOOL)isEqual:(id)a3;
- (HMSettingConstraint)init;
- (HMSettingConstraint)initWithCoder:(id)a3;
- (HMSettingConstraint)initWithType:(int64_t)a3 value:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)shortDescription;
- (unint64_t)hash;
@end

@implementation HMSettingConstraint

- (HMSettingConstraint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.type"];
  v6 = [objc_opt_class() supportedValueClasses];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"HM.value"];

  v8 = -[HMSettingConstraint initWithType:value:](self, "initWithType:value:", [v5 integerValue], v7);
  if (v8 && [v4 containsValueForKey:@"HM.identifier"])
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.identifier"];
    identifier = v8->_identifier;
    v8->_identifier = v9;
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

  v8 = [(HMSettingConstraint *)self identifier];
  v9 = [v8 UUIDString];
  v10 = [(HMSettingConstraint *)self type]- 1;
  if (v10 > 3)
  {
    v11 = @"Unknown";
  }

  else
  {
    v11 = off_1E754C8F0[v10];
  }

  v12 = [(HMSettingConstraint *)self value];
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
  v5 = [(HMSettingConstraint *)self identifier];
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
    if (v6 && (v7 = [(HMSettingConstraint *)self type], v7 == [(HMSettingConstraint *)v6 type]))
    {
      v8 = [(HMSettingConstraint *)self value];
      v9 = [(HMSettingConstraint *)v6 value];
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
  v3 = [(HMSettingConstraint *)self value];
  v4 = [v3 hash];
  v5 = [(HMSettingConstraint *)self type];

  return v5 ^ v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMSettingConstraint allocWithZone:a3];
  v5 = [(HMSettingConstraint *)self type];
  v6 = [(HMSettingConstraint *)self value];
  v7 = [v6 copy];
  v8 = [(HMSettingConstraint *)v4 initWithType:v5 value:v7];

  return v8;
}

- (HMSettingConstraint)initWithType:(int64_t)a3 value:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = HMSettingConstraint;
  v7 = [(HMSettingConstraint *)&v13 init];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_type = a3;
    v10 = [v6 copy];
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