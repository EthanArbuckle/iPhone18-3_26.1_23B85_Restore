@interface AMSBagFrozenDataSourceBuilder
- (AMSBagFrozenDataSourceBuilder)initWithFrozenDataSource:(id)a3;
- (id)createFrozenBag;
- (id)createFrozenDataSource;
@end

@implementation AMSBagFrozenDataSourceBuilder

- (id)createFrozenDataSource
{
  v3 = [(AMSBagFrozenDataSourceBuilder *)self data];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [(AMSBagFrozenDataSourceBuilder *)self expirationDate];
  if (v5)
  {
    v6 = v5;
    v7 = [(AMSBagFrozenDataSourceBuilder *)self profile];
    if (!v7)
    {
      v15 = 0;
      goto LABEL_9;
    }

    v8 = v7;
    v9 = [(AMSBagFrozenDataSourceBuilder *)self profileVersion];

    if (v9)
    {
      v10 = [AMSBagFrozenDataSource alloc];
      v4 = [(AMSBagFrozenDataSourceBuilder *)self profile];
      v6 = [(AMSBagFrozenDataSourceBuilder *)self profileVersion];
      v11 = [(AMSBagFrozenDataSourceBuilder *)self data];
      v12 = [(AMSBagFrozenDataSourceBuilder *)self expirationDate];
      v13 = [(AMSBagFrozenDataSourceBuilder *)self processInfo];
      v14 = [(AMSBagFrozenDataSourceBuilder *)self defaultValues];
      v15 = [(AMSBagFrozenDataSource *)v10 _initWithProfile:v4 profileVersion:v6 data:v11 expirationDate:v12 processInfo:v13 defaultValues:v14];

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

- (AMSBagFrozenDataSourceBuilder)initWithFrozenDataSource:(id)a3
{
  v4 = a3;
  v5 = [(AMSBagFrozenDataSourceBuilder *)self init];
  if (v5)
  {
    v6 = [v4 data];
    v7 = [v6 copy];
    data = v5->_data;
    v5->_data = v7;

    v9 = [v4 defaultValues];
    v10 = [v9 copy];
    defaultValues = v5->_defaultValues;
    v5->_defaultValues = v10;

    v12 = [v4 expirationDate];
    v13 = [v12 copy];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v13;

    v15 = [v4 profile];
    v16 = [v15 copy];
    profile = v5->_profile;
    v5->_profile = v16;

    v18 = [v4 profileVersion];
    v19 = [v18 copy];
    profileVersion = v5->_profileVersion;
    v5->_profileVersion = v19;

    v21 = [v4 processInfo];
    v22 = [v21 copy];
    processInfo = v5->_processInfo;
    v5->_processInfo = v22;
  }

  return v5;
}

- (id)createFrozenBag
{
  v3 = [(AMSBagFrozenDataSourceBuilder *)self data];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [(AMSBagFrozenDataSourceBuilder *)self expirationDate];
  if (!v5)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [(AMSBagFrozenDataSourceBuilder *)self profile];
  if (!v7)
  {

    goto LABEL_8;
  }

  v8 = v7;
  v9 = [(AMSBagFrozenDataSourceBuilder *)self profileVersion];

  if (!v9)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_10;
  }

  v10 = [AMSBag alloc];
  v4 = [(AMSBagFrozenDataSourceBuilder *)self createFrozenDataSource];
  v11 = [(AMSBag *)v10 initWithDataSource:v4];
LABEL_9:

LABEL_10:

  return v11;
}

@end