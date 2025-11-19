@interface HMAccessoryCategory
- (BOOL)isEqual:(id)a3;
- (BOOL)isTelevisionAccessoryCategory;
- (BOOL)isWiFiRouterAccessoryCategory;
- (HMAccessoryCategory)init;
- (HMAccessoryCategory)initWithCoder:(id)a3;
- (HMAccessoryCategory)initWithType:(id)a3 name:(id)a4;
- (NSString)description;
- (NSString)localizedDescription;
- (id)dumpState;
- (id)localizedDescriptionPlural;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HMAccessoryCategory

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessoryCategory *)self categoryType];
  [v4 encodeObject:v5 forKey:@"HM.accessoryCategoryType"];

  v6 = [(HMAccessoryCategory *)self name];
  [v4 encodeObject:v6 forKey:@"HM.accessoryCategoryName"];
}

- (HMAccessoryCategory)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategoryType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategoryName"];

  v7 = [(HMAccessoryCategory *)self initWithType:v5 name:v6];
  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
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
    if (v6)
    {
      v7 = [(HMAccessoryCategory *)self categoryType];
      v8 = [(HMAccessoryCategory *)v6 categoryType];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(HMAccessoryCategory *)self name];
        v10 = [(HMAccessoryCategory *)v6 name];
        v11 = [v9 isEqualToString:v10];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v2 = [(HMAccessoryCategory *)self categoryType];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(HMAccessoryCategory *)self name];
  v6 = [(HMAccessoryCategory *)self categoryType];
  v7 = [v3 stringWithFormat:@"<%@ name = %@, type = %@>", v4, v5, v6];

  return v7;
}

- (id)dumpState
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(HMAccessoryCategory *)self name];
  v5 = [(HMAccessoryCategory *)self localizedDescription];
  v6 = [(HMAccessoryCategory *)self categoryType];
  v7 = [v3 stringWithFormat:@"name: %@  type: %@(%@)", v4, v5, v6];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E69A2970]];

  return v8;
}

- (BOOL)isWiFiRouterAccessoryCategory
{
  v2 = [(HMAccessoryCategory *)self categoryType];
  v3 = [v2 isEqualToString:@"337635B4-552A-48AD-A38D-DD2D5E826C9A"];

  return v3;
}

- (BOOL)isTelevisionAccessoryCategory
{
  v3 = [(HMAccessoryCategory *)self categoryType];
  if ([v3 isEqualToString:@"830C0952-7CD8-44FB-B0C0-DA4EDB0F32A9"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(HMAccessoryCategory *)self categoryType];
    if ([v5 isEqualToString:@"FB953A08-6CDD-44E0-B011-CFAC559A3CFB"])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(HMAccessoryCategory *)self categoryType];
      v4 = [v6 isEqualToString:@"B0C866C4-3E25-4F6A-8476-A8A3B579A86E"];
    }
  }

  return v4;
}

- (id)localizedDescriptionPlural
{
  v2 = [(HMAccessoryCategory *)self categoryType];
  v3 = pluralLocalizationKeyForAccessoryCategoryType(v2);

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

- (NSString)localizedDescription
{
  v2 = [(HMAccessoryCategory *)self categoryType];
  v3 = localizationKeyForAccessoryCategoryType(v2);

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

- (id)uniqueIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  v4 = [(HMAccessoryCategory *)self categoryType];
  v5 = [v3 initWithUUIDString:v4];

  return v5;
}

- (HMAccessoryCategory)initWithType:(id)a3 name:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(__CFString *)v6 isEqualToString:@"8C1F6C9C-18D3-4C74-BA43-9380B6ACF64"])
  {
    v8 = @"830C0952-7CD8-44FB-B0C0-DA4EDB0F32A9";
  }

  else
  {
    v8 = v6;
  }

  v9 = v8;
  v13.receiver = self;
  v13.super_class = HMAccessoryCategory;
  v10 = [(HMAccessoryCategory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_categoryType, v8);
    objc_storeStrong(&v11->_name, a4);
  }

  return v11;
}

- (HMAccessoryCategory)init
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

@end