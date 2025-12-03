@interface HMAccessoryCategory
- (BOOL)isEqual:(id)equal;
- (BOOL)isTelevisionAccessoryCategory;
- (BOOL)isWiFiRouterAccessoryCategory;
- (HMAccessoryCategory)init;
- (HMAccessoryCategory)initWithCoder:(id)coder;
- (HMAccessoryCategory)initWithType:(id)type name:(id)name;
- (NSString)description;
- (NSString)localizedDescription;
- (id)dumpState;
- (id)localizedDescriptionPlural;
- (id)uniqueIdentifier;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMAccessoryCategory

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  categoryType = [(HMAccessoryCategory *)self categoryType];
  [coderCopy encodeObject:categoryType forKey:@"HM.accessoryCategoryType"];

  name = [(HMAccessoryCategory *)self name];
  [coderCopy encodeObject:name forKey:@"HM.accessoryCategoryName"];
}

- (HMAccessoryCategory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategoryType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.accessoryCategoryName"];

  v7 = [(HMAccessoryCategory *)self initWithType:v5 name:v6];
  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
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
    if (v6)
    {
      categoryType = [(HMAccessoryCategory *)self categoryType];
      categoryType2 = [(HMAccessoryCategory *)v6 categoryType];
      if ([categoryType isEqualToString:categoryType2])
      {
        name = [(HMAccessoryCategory *)self name];
        name2 = [(HMAccessoryCategory *)v6 name];
        v11 = [name isEqualToString:name2];
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
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v3 = [categoryType hash];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(HMAccessoryCategory *)self name];
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v7 = [v3 stringWithFormat:@"<%@ name = %@, type = %@>", v4, name, categoryType];

  return v7;
}

- (id)dumpState
{
  v3 = MEMORY[0x1E696AEC0];
  name = [(HMAccessoryCategory *)self name];
  localizedDescription = [(HMAccessoryCategory *)self localizedDescription];
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v7 = [v3 stringWithFormat:@"name: %@  type: %@(%@)", name, localizedDescription, categoryType];

  v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:v7 forKey:*MEMORY[0x1E69A2970]];

  return v8;
}

- (BOOL)isWiFiRouterAccessoryCategory
{
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v3 = [categoryType isEqualToString:@"337635B4-552A-48AD-A38D-DD2D5E826C9A"];

  return v3;
}

- (BOOL)isTelevisionAccessoryCategory
{
  categoryType = [(HMAccessoryCategory *)self categoryType];
  if ([categoryType isEqualToString:@"830C0952-7CD8-44FB-B0C0-DA4EDB0F32A9"])
  {
    v4 = 1;
  }

  else
  {
    categoryType2 = [(HMAccessoryCategory *)self categoryType];
    if ([categoryType2 isEqualToString:@"FB953A08-6CDD-44E0-B011-CFAC559A3CFB"])
    {
      v4 = 1;
    }

    else
    {
      categoryType3 = [(HMAccessoryCategory *)self categoryType];
      v4 = [categoryType3 isEqualToString:@"B0C866C4-3E25-4F6A-8476-A8A3B579A86E"];
    }
  }

  return v4;
}

- (id)localizedDescriptionPlural
{
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v3 = pluralLocalizationKeyForAccessoryCategoryType(categoryType);

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

- (NSString)localizedDescription
{
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v3 = localizationKeyForAccessoryCategoryType(categoryType);

  v4 = +[HMLocalization sharedManager];
  v5 = [v4 getLocalizedOrCustomString:v3];

  return v5;
}

- (id)uniqueIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E696AFB0]);
  categoryType = [(HMAccessoryCategory *)self categoryType];
  v5 = [v3 initWithUUIDString:categoryType];

  return v5;
}

- (HMAccessoryCategory)initWithType:(id)type name:(id)name
{
  typeCopy = type;
  nameCopy = name;
  if ([(__CFString *)typeCopy isEqualToString:@"8C1F6C9C-18D3-4C74-BA43-9380B6ACF64"])
  {
    v8 = @"830C0952-7CD8-44FB-B0C0-DA4EDB0F32A9";
  }

  else
  {
    v8 = typeCopy;
  }

  v9 = v8;
  v13.receiver = self;
  v13.super_class = HMAccessoryCategory;
  v10 = [(HMAccessoryCategory *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_categoryType, v8);
    objc_storeStrong(&v11->_name, name);
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