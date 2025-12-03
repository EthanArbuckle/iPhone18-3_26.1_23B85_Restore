@interface AMSSnapshotBagBuilder
- (id)buildWithError:(id *)error;
@end

@implementation AMSSnapshotBagBuilder

- (id)buildWithError:(id *)error
{
  data = [(AMSSnapshotBagBuilder *)self data];
  if (!data)
  {
    goto LABEL_8;
  }

  v6 = data;
  expirationDate = [(AMSSnapshotBagBuilder *)self expirationDate];
  if (!expirationDate)
  {
    goto LABEL_7;
  }

  v8 = expirationDate;
  profile = [(AMSSnapshotBagBuilder *)self profile];
  if (!profile)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = profile;
  profileVersion = [(AMSSnapshotBagBuilder *)self profileVersion];

  if (profileVersion)
  {
    v12 = objc_alloc_init(AMSBagFrozenDataSourceBuilder);
    data2 = [(AMSSnapshotBagBuilder *)self data];
    [(AMSBagFrozenDataSourceBuilder *)v12 setData:data2];

    defaultValues = [(AMSSnapshotBagBuilder *)self defaultValues];
    [(AMSBagFrozenDataSourceBuilder *)v12 setDefaultValues:defaultValues];

    expirationDate2 = [(AMSSnapshotBagBuilder *)self expirationDate];
    [(AMSBagFrozenDataSourceBuilder *)v12 setExpirationDate:expirationDate2];

    profile2 = [(AMSSnapshotBagBuilder *)self profile];
    [(AMSBagFrozenDataSourceBuilder *)v12 setProfile:profile2];

    profileVersion2 = [(AMSSnapshotBagBuilder *)self profileVersion];
    [(AMSBagFrozenDataSourceBuilder *)v12 setProfileVersion:profileVersion2];

    processInfo = [(AMSSnapshotBagBuilder *)self processInfo];
    [(AMSBagFrozenDataSourceBuilder *)v12 setProcessInfo:processInfo];

    v19 = [AMSSnapshotBag alloc];
    createFrozenDataSource = [(AMSBagFrozenDataSourceBuilder *)v12 createFrozenDataSource];
    v21 = [(AMSSnapshotBag *)v19 _initWithDataSource:createFrozenDataSource];

    goto LABEL_11;
  }

LABEL_8:
  if (error)
  {
    AMSError(2, @"Missing Required Parameter", @"One or more required parameters are missing.", 0);
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_11:

  return v21;
}

@end