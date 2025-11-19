@interface AMSBagFrozenDataSource
- (AMSBagFrozenDataSource)initWithCoder:(id)a3;
- (NSString)description;
- (id)_initWithProfile:(id)a3 profileVersion:(id)a4 data:(id)a5 expirationDate:(id)a6 processInfo:(id)a7 defaultValues:(id)a8;
- (id)copyWithZone:(_NSZone *)a3;
- (id)defaultValueForKey:(id)a3;
- (id)valueForURLVariable:(id)a3 account:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)loadWithCompletion:(id)a3;
- (void)valueForURLVariable:(id)a3 account:(id)a4 completion:(id)a5;
@end

@implementation AMSBagFrozenDataSource

- (id)_initWithProfile:(id)a3 profileVersion:(id)a4 data:(id)a5 expirationDate:(id)a6 processInfo:(id)a7 defaultValues:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = AMSBagFrozenDataSource;
  v18 = [(AMSBagFrozenDataSource *)&v24 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_data, a5);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 1, a6);
    objc_storeStrong(p_isa + 2, a7);
    objc_storeStrong(p_isa + 3, a3);
    objc_storeStrong(p_isa + 4, a4);
  }

  return p_isa;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AMSBagFrozenDataSource *)self profile];
  v6 = [(AMSBagFrozenDataSource *)self profileVersion];
  v7 = [v3 stringWithFormat:@"<%@: %p profile: %@; version: %@>", v4, self, v5, v6];;

  return v7;
}

- (id)defaultValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(AMSBagFrozenDataSource *)self defaultValues];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (!v6)
  {
    v7 = [(AMSBagFrozenDataSource *)self profile];
    v8 = [(AMSBagFrozenDataSource *)self profileVersion];
    v6 = [AMSBagKeySet defaultValueForKey:v4 profile:v7 profileVersion:v8];
  }

  return v6;
}

- (void)loadWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [AMSBagDataSourceLoadResult alloc];
  v6 = [(AMSBagFrozenDataSource *)self data];
  v7 = [(AMSBagFrozenDataSource *)self expirationDate];
  v8 = [(AMSBagDataSourceLoadResult *)v5 initWithData:v6 expirationDate:v7 loadedBagIdentifier:0 loadedBagPartialIdentifier:0];

  v4[2](v4, v8, 0);
}

- (id)valueForURLVariable:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSBagFrozenDataSource *)self processInfo];
  v9 = [AMSBagNetworkDataSource valueForURLVariable:v7 account:v6 clientInfo:v8];

  return v9;
}

- (void)valueForURLVariable:(id)a3 account:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(AMSBagFrozenDataSource *)self processInfo];
  [AMSBagNetworkDataSource valueForURLVariable:v10 account:v9 clientInfo:v11 completion:v8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(AMSBagFrozenDataSource);
  v6 = [(NSDictionary *)self->_data copyWithZone:a3];
  data = v5->_data;
  v5->_data = v6;

  v8 = [(NSDictionary *)self->_defaultValues copyWithZone:a3];
  defaultValues = v5->_defaultValues;
  v5->_defaultValues = v8;

  v10 = [(NSDate *)self->_expirationDate copyWithZone:a3];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v10;

  v12 = [(AMSProcessInfo *)self->_processInfo copyWithZone:a3];
  processInfo = v5->_processInfo;
  v5->_processInfo = v12;

  v14 = [(NSString *)self->_profile copyWithZone:a3];
  profile = v5->_profile;
  v5->_profile = v14;

  v16 = [(NSString *)self->_profileVersion copyWithZone:a3];
  profileVersion = v5->_profileVersion;
  v5->_profileVersion = v16;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSBagFrozenDataSource *)self data];
  [v4 encodeObject:v5 forKey:@"data"];

  v6 = [(AMSBagFrozenDataSource *)self defaultValues];
  [v4 encodeObject:v6 forKey:@"defaultValues"];

  v7 = [(AMSBagFrozenDataSource *)self expirationDate];
  [v4 encodeObject:v7 forKey:@"expirationDate"];

  v8 = [(AMSBagFrozenDataSource *)self processInfo];
  [v4 encodeObject:v8 forKey:@"processInfo"];

  v9 = [(AMSBagFrozenDataSource *)self profile];
  [v4 encodeObject:v9 forKey:@"profile"];

  v10 = [(AMSBagFrozenDataSource *)self profileVersion];
  [v4 encodeObject:v10 forKey:@"profileVersion"];
}

- (AMSBagFrozenDataSource)initWithCoder:(id)a3
{
  v23[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v22.receiver = self;
  v22.super_class = AMSBagFrozenDataSource;
  v5 = [(AMSBagFrozenDataSource *)&v22 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v23[0] = objc_opt_class();
    v23[1] = objc_opt_class();
    v23[2] = objc_opt_class();
    v23[3] = objc_opt_class();
    v23[4] = objc_opt_class();
    v23[5] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"data"];
    data = v5->_data;
    v5->_data = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"defaultValues"];
    defaultValues = v5->_defaultValues;
    v5->_defaultValues = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"processInfo"];
    processInfo = v5->_processInfo;
    v5->_processInfo = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profile"];
    profile = v5->_profile;
    v5->_profile = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"profileVersion"];
    profileVersion = v5->_profileVersion;
    v5->_profileVersion = v19;
  }

  return v5;
}

@end