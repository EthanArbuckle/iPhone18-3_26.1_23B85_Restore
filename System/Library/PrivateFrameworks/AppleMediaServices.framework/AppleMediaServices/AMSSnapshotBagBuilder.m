@interface AMSSnapshotBagBuilder
- (id)buildWithError:(id *)a3;
@end

@implementation AMSSnapshotBagBuilder

- (id)buildWithError:(id *)a3
{
  v5 = [(AMSSnapshotBagBuilder *)self data];
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [(AMSSnapshotBagBuilder *)self expirationDate];
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [(AMSSnapshotBagBuilder *)self profile];
  if (!v9)
  {

LABEL_7:
    goto LABEL_8;
  }

  v10 = v9;
  v11 = [(AMSSnapshotBagBuilder *)self profileVersion];

  if (v11)
  {
    v12 = objc_alloc_init(AMSBagFrozenDataSourceBuilder);
    v13 = [(AMSSnapshotBagBuilder *)self data];
    [(AMSBagFrozenDataSourceBuilder *)v12 setData:v13];

    v14 = [(AMSSnapshotBagBuilder *)self defaultValues];
    [(AMSBagFrozenDataSourceBuilder *)v12 setDefaultValues:v14];

    v15 = [(AMSSnapshotBagBuilder *)self expirationDate];
    [(AMSBagFrozenDataSourceBuilder *)v12 setExpirationDate:v15];

    v16 = [(AMSSnapshotBagBuilder *)self profile];
    [(AMSBagFrozenDataSourceBuilder *)v12 setProfile:v16];

    v17 = [(AMSSnapshotBagBuilder *)self profileVersion];
    [(AMSBagFrozenDataSourceBuilder *)v12 setProfileVersion:v17];

    v18 = [(AMSSnapshotBagBuilder *)self processInfo];
    [(AMSBagFrozenDataSourceBuilder *)v12 setProcessInfo:v18];

    v19 = [AMSSnapshotBag alloc];
    v20 = [(AMSBagFrozenDataSourceBuilder *)v12 createFrozenDataSource];
    v21 = [(AMSSnapshotBag *)v19 _initWithDataSource:v20];

    goto LABEL_11;
  }

LABEL_8:
  if (a3)
  {
    AMSError(2, @"Missing Required Parameter", @"One or more required parameters are missing.", 0);
    *a3 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

LABEL_11:

  return v21;
}

@end