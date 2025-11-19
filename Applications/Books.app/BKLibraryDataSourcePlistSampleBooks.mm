@interface BKLibraryDataSourcePlistSampleBooks
- (BOOL)wantsPlistEntry:(id)a3;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
@end

@implementation BKLibraryDataSourcePlistSampleBooks

- (BOOL)wantsPlistEntry:(id)a3
{
  v3 = [IMLibraryPlist isSampleFromPlistEntry:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7220;
  v5[3] = &unk_100A05E68;
  v6 = self;
  v7 = a3;
  v4.receiver = v6;
  v4.super_class = BKLibraryDataSourcePlistSampleBooks;
  v3 = v7;
  [(BKLibraryDataSourcePlist *)&v4 fetchAssetIDsWithCompletion:v5];
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v12 = a3;
  v5 = a4;
  v6 = +[NSMutableArray array];
  v7 = [v12 count];
  if (v7)
  {
    v8 = v7;
    do
    {
      v9 = +[NSNull null];
      [v6 addObject:v9];

      --v8;
    }

    while (v8);
  }

  v10 = objc_retainBlock(v5);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v6, 0);
  }
}

@end