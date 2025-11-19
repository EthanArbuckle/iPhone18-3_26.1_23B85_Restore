@interface HMMediaContentProfileAccessControl
+ (BOOL)isAccessorySupported:(id)a3;
+ (id)shortDescription;
- (BOOL)isEqual:(id)a3;
- (HMMediaContentProfileAccessControl)initWithUser:(id)a3 accessories:(id)a4;
- (NSArray)accessories;
- (id)descriptionWithPointer:(BOOL)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)shortDescription;
@end

@implementation HMMediaContentProfileAccessControl

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

  v8 = [(HMMediaContentProfileAccessControl *)self accessories];
  if ([v8 count])
  {
    v9 = [(HMMediaContentProfileAccessControl *)self accessories];
    v10 = [v5 stringWithFormat:@"<%@%@, Accessories = %@>", v6, v7, v9];
  }

  else
  {
    v10 = [v5 stringWithFormat:@"<%@%@, Accessories = %@>", v6, v7, @"None"];
  }

  if (v3)
  {
  }

  return v10;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMMediaContentProfileAccessControl;
    if ([(HMAccessControl *)&v16 isEqual:v4])
    {
      v5 = v4;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;

      if (v7)
      {
        v8 = MEMORY[0x1E695DFD8];
        v9 = [(HMMediaContentProfileAccessControl *)self accessories];
        v10 = [v8 setWithArray:v9];

        v11 = MEMORY[0x1E695DFD8];
        v12 = [(HMMediaContentProfileAccessControl *)v7 accessories];
        v13 = [v11 setWithArray:v12];

        v14 = [v10 isEqualToSet:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableMediaContentProfileAccessControl allocWithZone:a3];
  v5 = [(HMAccessControl *)self user];
  v6 = [(HMMediaContentProfileAccessControl *)self accessories];
  v7 = [(HMMediaContentProfileAccessControl *)v4 initWithUser:v5 accessories:v6];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)isAccessorySupported:(id)a3
{
  v3 = a3;
  v4 = [v3 category];
  v5 = [v4 categoryType];
  if (![v5 isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"])
  {

    goto LABEL_5;
  }

  v6 = [v3 supportsMediaContentProfile];

  if ((v6 & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (NSArray)accessories
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableSet *)self->_internalAccessories allObjects];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HMMediaContentProfileAccessControl)initWithUser:(id)a3 accessories:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HMMediaContentProfileAccessControl;
  v7 = [(HMAccessControl *)&v11 initWithUser:a3];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFA8] setWithArray:v6];
    internalAccessories = v7->_internalAccessories;
    v7->_internalAccessories = v8;
  }

  return v7;
}

@end