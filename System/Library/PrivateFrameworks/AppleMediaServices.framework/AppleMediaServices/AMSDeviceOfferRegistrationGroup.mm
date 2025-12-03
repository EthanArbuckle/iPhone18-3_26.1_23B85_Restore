@interface AMSDeviceOfferRegistrationGroup
- (AMSDeviceOfferRegistrationGroup)initWithDatabaseEntry:(id)entry;
- (BOOL)_serialsMatchSerialsFromGroup:(id)group;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRegistrationGroup:(id)group;
- (BOOL)isModifiedVersionOfGroup:(id)group;
- (NSString)description;
- (id)_initWithRegistrationItems:(id)items validationOptions:(unint64_t)options;
- (id)serializeToDictionary;
- (unint64_t)hash;
@end

@implementation AMSDeviceOfferRegistrationGroup

- (AMSDeviceOfferRegistrationGroup)initWithDatabaseEntry:(id)entry
{
  entryCopy = entry;
  v5 = [entryCopy objectForKeyedSubscript:@"registrationItems"];
  v6 = [v5 ams_mapWithTransform:&__block_literal_global_42];
  v7 = [entryCopy objectForKeyedSubscript:@"validationOptions"];

  if (v7)
  {
    unsignedIntegerValue = [v7 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v9 = [(AMSDeviceOfferRegistrationGroup *)self _initWithRegistrationItems:v6 validationOptions:unsignedIntegerValue];

  return v9;
}

AMSDeviceOfferRegistrationItem *__57__AMSDeviceOfferRegistrationGroup_initWithDatabaseEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOfferRegistrationItem alloc] initWithDatabaseEntry:v2];

  return v3;
}

- (id)_initWithRegistrationItems:(id)items validationOptions:(unint64_t)options
{
  itemsCopy = items;
  v11.receiver = self;
  v11.super_class = AMSDeviceOfferRegistrationGroup;
  v8 = [(AMSDeviceOfferRegistrationGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_registrationItems, items);
    v9->_validationOptions = options;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  registrationItems = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v5 = [v3 stringWithFormat:@"{items:%@ validationOptions:%lu}", registrationItems, -[AMSDeviceOfferRegistrationGroup validationOptions](self, "validationOptions")];

  return v5;
}

- (id)serializeToDictionary
{
  v3 = objc_opt_new();
  registrationItems = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v5 = [registrationItems ams_mapWithTransform:&__block_literal_global_12_0];
  [v3 setObject:v5 forKeyedSubscript:@"registrationItems"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSDeviceOfferRegistrationGroup validationOptions](self, "validationOptions")}];
  [v3 setObject:v6 forKeyedSubscript:@"validationOptions"];

  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  validationOptions = [(AMSDeviceOfferRegistrationGroup *)self validationOptions];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  registrationItems = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v5 = [registrationItems countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(registrationItems);
        }

        validationOptions ^= [*(*(&v10 + 1) + 8 * v8++) hash];
      }

      while (v6 != v8);
      v6 = [registrationItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return validationOptions;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(AMSDeviceOfferRegistrationGroup *)self isEqualToRegistrationGroup:equalCopy];
  }

  return v6;
}

- (BOOL)isEqualToRegistrationGroup:(id)group
{
  groupCopy = group;
  validationOptions = [(AMSDeviceOfferRegistrationGroup *)self validationOptions];
  if (validationOptions == [groupCopy validationOptions])
  {
    v6 = MEMORY[0x1E695DFD8];
    registrationItems = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
    v8 = [v6 setWithArray:registrationItems];
    v9 = MEMORY[0x1E695DFD8];
    registrationItems2 = [groupCopy registrationItems];
    v11 = [v9 setWithArray:registrationItems2];
    v12 = [v8 isEqualToSet:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isModifiedVersionOfGroup:(id)group
{
  groupCopy = group;
  if ([(AMSDeviceOfferRegistrationGroup *)self _serialsMatchSerialsFromGroup:groupCopy])
  {
    v5 = ![(AMSDeviceOfferRegistrationGroup *)self isEqual:groupCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_serialsMatchSerialsFromGroup:(id)group
{
  v4 = MEMORY[0x1E695DFD8];
  groupCopy = group;
  registrationItems = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v7 = [registrationItems ams_mapWithTransform:&__block_literal_global_17];
  v8 = [v4 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  registrationItems2 = [groupCopy registrationItems];

  v11 = [registrationItems2 ams_mapWithTransform:&__block_literal_global_19];
  v12 = [v9 setWithArray:v11];

  LOBYTE(v11) = [v8 isEqualToSet:v12];
  return v11;
}

@end