@interface AMSBagFrozenDataSourceBuilder
- (AMSBagFrozenDataSourceBuilder)initWithFrozenDataSource:(id)source;
- (id)createFrozenBag;
- (id)createFrozenDataSource;
@end

@implementation AMSBagFrozenDataSourceBuilder

- (id)createFrozenDataSource
{
  data = [(AMSBagFrozenDataSourceBuilder *)self data];
  if (!data)
  {
    goto LABEL_6;
  }

  profile2 = data;
  expirationDate = [(AMSBagFrozenDataSourceBuilder *)self expirationDate];
  if (expirationDate)
  {
    profileVersion2 = expirationDate;
    profile = [(AMSBagFrozenDataSourceBuilder *)self profile];
    if (!profile)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v8 = profile;
    profileVersion = [(AMSBagFrozenDataSourceBuilder *)self profileVersion];

    if (profileVersion)
    {
      v10 = [AMSBagFrozenDataSource alloc];
      profile2 = [(AMSBagFrozenDataSourceBuilder *)self profile];
      profileVersion2 = [(AMSBagFrozenDataSourceBuilder *)self profileVersion];
      data2 = [(AMSBagFrozenDataSourceBuilder *)self data];
      expirationDate2 = [(AMSBagFrozenDataSourceBuilder *)self expirationDate];
      processInfo = [(AMSBagFrozenDataSourceBuilder *)self processInfo];
      defaultValues = [(AMSBagFrozenDataSourceBuilder *)self defaultValues];
      v15 = [(AMSBagFrozenDataSource *)v10 _initWithProfile:profile2 profileVersion:profileVersion2 data:data2 expirationDate:expirationDate2 processInfo:processInfo defaultValues:defaultValues];

LABEL_9:
      goto LABEL_10;
    }

LABEL_6:
    v15 = 0;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_10:

LABEL_11:

  return v15;
}

- (AMSBagFrozenDataSourceBuilder)initWithFrozenDataSource:(id)source
{
  sourceCopy = source;
  v5 = [(AMSBagFrozenDataSourceBuilder *)self init];
  if (v5)
  {
    data = [sourceCopy data];
    v7 = [data copy];
    data = v5->_data;
    v5->_data = v7;

    defaultValues = [sourceCopy defaultValues];
    v10 = [defaultValues copy];
    defaultValues = v5->_defaultValues;
    v5->_defaultValues = v10;

    expirationDate = [sourceCopy expirationDate];
    v13 = [expirationDate copy];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;

    profile = [sourceCopy profile];
    v16 = [profile copy];
    profile = v5->_profile;
    v5->_profile = v16;

    profileVersion = [sourceCopy profileVersion];
    v19 = [profileVersion copy];
    profileVersion = v5->_profileVersion;
    v5->_profileVersion = v19;

    processInfo = [sourceCopy processInfo];
    v22 = [processInfo copy];
    processInfo = v5->_processInfo;
    v5->_processInfo = v22;
  }

  return v5;
}

- (id)createFrozenBag
{
  data = [(AMSBagFrozenDataSourceBuilder *)self data];
  if (!data)
  {
    goto LABEL_6;
  }

  createFrozenDataSource = data;
  expirationDate = [(AMSBagFrozenDataSourceBuilder *)self expirationDate];
  if (!expirationDate)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = expirationDate;
  profile = [(AMSBagFrozenDataSourceBuilder *)self profile];
  if (!profile)
  {

    goto LABEL_8;
  }

  v8 = profile;
  profileVersion = [(AMSBagFrozenDataSourceBuilder *)self profileVersion];

  if (!profileVersion)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = [AMSBag alloc];
  createFrozenDataSource = [(AMSBagFrozenDataSourceBuilder *)self createFrozenDataSource];
  v11 = [(AMSBag *)v10 initWithDataSource:createFrozenDataSource];
LABEL_9:

LABEL_10:

  return v11;
}

@end