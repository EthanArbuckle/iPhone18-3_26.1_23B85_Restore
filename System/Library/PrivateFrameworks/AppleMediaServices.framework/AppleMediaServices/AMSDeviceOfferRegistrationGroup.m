@interface AMSDeviceOfferRegistrationGroup
- (AMSDeviceOfferRegistrationGroup)initWithDatabaseEntry:(id)a3;
- (BOOL)_serialsMatchSerialsFromGroup:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRegistrationGroup:(id)a3;
- (BOOL)isModifiedVersionOfGroup:(id)a3;
- (NSString)description;
- (id)_initWithRegistrationItems:(id)a3 validationOptions:(unint64_t)a4;
- (id)serializeToDictionary;
- (unint64_t)hash;
@end

@implementation AMSDeviceOfferRegistrationGroup

- (AMSDeviceOfferRegistrationGroup)initWithDatabaseEntry:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"registrationItems"];
  v6 = [v5 ams_mapWithTransform:&__block_literal_global_42];
  v7 = [v4 objectForKeyedSubscript:@"validationOptions"];

  if (v7)
  {
    v8 = [v7 unsignedIntegerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(AMSDeviceOfferRegistrationGroup *)self _initWithRegistrationItems:v6 validationOptions:v8];

  return v9;
}

AMSDeviceOfferRegistrationItem *__57__AMSDeviceOfferRegistrationGroup_initWithDatabaseEntry___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AMSDeviceOfferRegistrationItem alloc] initWithDatabaseEntry:v2];

  return v3;
}

- (id)_initWithRegistrationItems:(id)a3 validationOptions:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSDeviceOfferRegistrationGroup;
  v8 = [(AMSDeviceOfferRegistrationGroup *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_registrationItems, a3);
    v9->_validationOptions = a4;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v5 = [v3 stringWithFormat:@"{items:%@ validationOptions:%lu}", v4, -[AMSDeviceOfferRegistrationGroup validationOptions](self, "validationOptions")];

  return v5;
}

- (id)serializeToDictionary
{
  v3 = objc_opt_new();
  v4 = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v5 = [v4 ams_mapWithTransform:&__block_literal_global_12_0];
  [v3 setObject:v5 forKeyedSubscript:@"registrationItems"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSDeviceOfferRegistrationGroup validationOptions](self, "validationOptions")}];
  [v3 setObject:v6 forKeyedSubscript:@"validationOptions"];

  v7 = [v3 copy];

  return v7;
}

- (unint64_t)hash
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AMSDeviceOfferRegistrationGroup *)self validationOptions];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v3 ^= [*(*(&v10 + 1) + 8 * v8++) hash];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(AMSDeviceOfferRegistrationGroup *)self isEqualToRegistrationGroup:v4];
  }

  return v6;
}

- (BOOL)isEqualToRegistrationGroup:(id)a3
{
  v4 = a3;
  v5 = [(AMSDeviceOfferRegistrationGroup *)self validationOptions];
  if (v5 == [v4 validationOptions])
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
    v8 = [v6 setWithArray:v7];
    v9 = MEMORY[0x1E695DFD8];
    v10 = [v4 registrationItems];
    v11 = [v9 setWithArray:v10];
    v12 = [v8 isEqualToSet:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isModifiedVersionOfGroup:(id)a3
{
  v4 = a3;
  if ([(AMSDeviceOfferRegistrationGroup *)self _serialsMatchSerialsFromGroup:v4])
  {
    v5 = ![(AMSDeviceOfferRegistrationGroup *)self isEqual:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_serialsMatchSerialsFromGroup:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = [(AMSDeviceOfferRegistrationGroup *)self registrationItems];
  v7 = [v6 ams_mapWithTransform:&__block_literal_global_17];
  v8 = [v4 setWithArray:v7];

  v9 = MEMORY[0x1E695DFD8];
  v10 = [v5 registrationItems];

  v11 = [v10 ams_mapWithTransform:&__block_literal_global_19];
  v12 = [v9 setWithArray:v11];

  LOBYTE(v11) = [v8 isEqualToSet:v12];
  return v11;
}

@end