@interface HMMediaContentProfileAccessControl
+ (BOOL)isAccessorySupported:(id)supported;
+ (id)shortDescription;
- (BOOL)isEqual:(id)equal;
- (HMMediaContentProfileAccessControl)initWithUser:(id)user accessories:(id)accessories;
- (NSArray)accessories;
- (id)descriptionWithPointer:(BOOL)pointer;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)shortDescription;
@end

@implementation HMMediaContentProfileAccessControl

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

  accessories = [(HMMediaContentProfileAccessControl *)self accessories];
  if ([accessories count])
  {
    accessories2 = [(HMMediaContentProfileAccessControl *)self accessories];
    v10 = [v5 stringWithFormat:@"<%@%@, Accessories = %@>", shortDescription, v7, accessories2];
  }

  else
  {
    v10 = [v5 stringWithFormat:@"<%@%@, Accessories = %@>", shortDescription, v7, @"None"];
  }

  if (pointerCopy)
  {
  }

  return v10;
}

- (id)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = HMMediaContentProfileAccessControl;
    if ([(HMAccessControl *)&v16 isEqual:equalCopy])
    {
      v5 = equalCopy;
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
        accessories = [(HMMediaContentProfileAccessControl *)self accessories];
        v10 = [v8 setWithArray:accessories];

        v11 = MEMORY[0x1E695DFD8];
        accessories2 = [(HMMediaContentProfileAccessControl *)v7 accessories];
        v13 = [v11 setWithArray:accessories2];

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

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableMediaContentProfileAccessControl allocWithZone:zone];
  user = [(HMAccessControl *)self user];
  accessories = [(HMMediaContentProfileAccessControl *)self accessories];
  v7 = [(HMMediaContentProfileAccessControl *)v4 initWithUser:user accessories:accessories];

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (BOOL)isAccessorySupported:(id)supported
{
  supportedCopy = supported;
  category = [supportedCopy category];
  categoryType = [category categoryType];
  if (![categoryType isEqualToString:@"F6D2A2AC-3A6E-4E6F-8196-678ABE909D8E"])
  {

    goto LABEL_5;
  }

  supportsMediaContentProfile = [supportedCopy supportsMediaContentProfile];

  if ((supportsMediaContentProfile & 1) == 0)
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
  allObjects = [(NSMutableSet *)self->_internalAccessories allObjects];
  os_unfair_lock_unlock(&self->super._lock);

  return allObjects;
}

- (HMMediaContentProfileAccessControl)initWithUser:(id)user accessories:(id)accessories
{
  accessoriesCopy = accessories;
  v11.receiver = self;
  v11.super_class = HMMediaContentProfileAccessControl;
  v7 = [(HMAccessControl *)&v11 initWithUser:user];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DFA8] setWithArray:accessoriesCopy];
    internalAccessories = v7->_internalAccessories;
    v7->_internalAccessories = v8;
  }

  return v7;
}

@end