@interface AMSBagFrozenDataSource
- (AMSBagFrozenDataSource)initWithCoder:(id)coder;
- (NSString)description;
- (id)_initWithProfile:(id)profile profileVersion:(id)version data:(id)data expirationDate:(id)date processInfo:(id)info defaultValues:(id)values;
- (id)copyWithZone:(_NSZone *)zone;
- (id)defaultValueForKey:(id)key;
- (id)valueForURLVariable:(id)variable account:(id)account;
- (void)encodeWithCoder:(id)coder;
- (void)loadWithCompletion:(id)completion;
- (void)valueForURLVariable:(id)variable account:(id)account completion:(id)completion;
@end

@implementation AMSBagFrozenDataSource

- (id)_initWithProfile:(id)profile profileVersion:(id)version data:(id)data expirationDate:(id)date processInfo:(id)info defaultValues:(id)values
{
  profileCopy = profile;
  versionCopy = version;
  dataCopy = data;
  dateCopy = date;
  infoCopy = info;
  valuesCopy = values;
  v24.receiver = self;
  v24.super_class = AMSBagFrozenDataSource;
  v18 = [(AMSBagFrozenDataSource *)&v24 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_data, data);
    objc_storeStrong(p_isa + 6, values);
    objc_storeStrong(p_isa + 1, date);
    objc_storeStrong(p_isa + 2, info);
    objc_storeStrong(p_isa + 3, profile);
    objc_storeStrong(p_isa + 4, version);
  }

  return p_isa;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  profile = [(AMSBagFrozenDataSource *)self profile];
  profileVersion = [(AMSBagFrozenDataSource *)self profileVersion];
  v7 = [v3 stringWithFormat:@"<%@: %p profile: %@; version: %@>", v4, self, profile, profileVersion];;

  return v7;
}

- (id)defaultValueForKey:(id)key
{
  keyCopy = key;
  defaultValues = [(AMSBagFrozenDataSource *)self defaultValues];
  v6 = [defaultValues objectForKeyedSubscript:keyCopy];

  if (!v6)
  {
    profile = [(AMSBagFrozenDataSource *)self profile];
    profileVersion = [(AMSBagFrozenDataSource *)self profileVersion];
    v6 = [AMSBagKeySet defaultValueForKey:keyCopy profile:profile profileVersion:profileVersion];
  }

  return v6;
}

- (void)loadWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [AMSBagDataSourceLoadResult alloc];
  data = [(AMSBagFrozenDataSource *)self data];
  expirationDate = [(AMSBagFrozenDataSource *)self expirationDate];
  v8 = [(AMSBagDataSourceLoadResult *)v5 initWithData:data expirationDate:expirationDate loadedBagIdentifier:0 loadedBagPartialIdentifier:0];

  completionCopy[2](completionCopy, v8, 0);
}

- (id)valueForURLVariable:(id)variable account:(id)account
{
  accountCopy = account;
  variableCopy = variable;
  processInfo = [(AMSBagFrozenDataSource *)self processInfo];
  v9 = [AMSBagNetworkDataSource valueForURLVariable:variableCopy account:accountCopy clientInfo:processInfo];

  return v9;
}

- (void)valueForURLVariable:(id)variable account:(id)account completion:(id)completion
{
  completionCopy = completion;
  accountCopy = account;
  variableCopy = variable;
  processInfo = [(AMSBagFrozenDataSource *)self processInfo];
  [AMSBagNetworkDataSource valueForURLVariable:variableCopy account:accountCopy clientInfo:processInfo completion:completionCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AMSBagFrozenDataSource);
  v6 = [(NSDictionary *)self->_data copyWithZone:zone];
  data = v5->_data;
  v5->_data = v6;

  v8 = [(NSDictionary *)self->_defaultValues copyWithZone:zone];
  defaultValues = v5->_defaultValues;
  v5->_defaultValues = v8;

  v10 = [(NSDate *)self->_expirationDate copyWithZone:zone];
  expirationDate = v5->_expirationDate;
  v5->_expirationDate = v10;

  v12 = [(AMSProcessInfo *)self->_processInfo copyWithZone:zone];
  processInfo = v5->_processInfo;
  v5->_processInfo = v12;

  v14 = [(NSString *)self->_profile copyWithZone:zone];
  profile = v5->_profile;
  v5->_profile = v14;

  v16 = [(NSString *)self->_profileVersion copyWithZone:zone];
  profileVersion = v5->_profileVersion;
  v5->_profileVersion = v16;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(AMSBagFrozenDataSource *)self data];
  [coderCopy encodeObject:data forKey:@"data"];

  defaultValues = [(AMSBagFrozenDataSource *)self defaultValues];
  [coderCopy encodeObject:defaultValues forKey:@"defaultValues"];

  expirationDate = [(AMSBagFrozenDataSource *)self expirationDate];
  [coderCopy encodeObject:expirationDate forKey:@"expirationDate"];

  processInfo = [(AMSBagFrozenDataSource *)self processInfo];
  [coderCopy encodeObject:processInfo forKey:@"processInfo"];

  profile = [(AMSBagFrozenDataSource *)self profile];
  [coderCopy encodeObject:profile forKey:@"profile"];

  profileVersion = [(AMSBagFrozenDataSource *)self profileVersion];
  [coderCopy encodeObject:profileVersion forKey:@"profileVersion"];
}

- (AMSBagFrozenDataSource)initWithCoder:(id)coder
{
  v23[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"data"];
    data = v5->_data;
    v5->_data = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"defaultValues"];
    defaultValues = v5->_defaultValues;
    v5->_defaultValues = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"expirationDate"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"processInfo"];
    processInfo = v5->_processInfo;
    v5->_processInfo = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profile"];
    profile = v5->_profile;
    v5->_profile = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"profileVersion"];
    profileVersion = v5->_profileVersion;
    v5->_profileVersion = v19;
  }

  return v5;
}

@end