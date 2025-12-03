@interface BKLibraryDataSourcePlistSampleBooks
- (BOOL)wantsPlistEntry:(id)entry;
- (void)fetchAssetIDsWithCompletion:(id)completion;
- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion;
@end

@implementation BKLibraryDataSourcePlistSampleBooks

- (BOOL)wantsPlistEntry:(id)entry
{
  v3 = [IMLibraryPlist isSampleFromPlistEntry:entry];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)fetchAssetIDsWithCompletion:(id)completion
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A7220;
  v5[3] = &unk_100A05E68;
  selfCopy = self;
  completionCopy = completion;
  v4.receiver = selfCopy;
  v4.super_class = BKLibraryDataSourcePlistSampleBooks;
  v3 = completionCopy;
  [(BKLibraryDataSourcePlist *)&v4 fetchAssetIDsWithCompletion:v5];
}

- (void)fetchAssetsWithIDs:(id)ds completion:(id)completion
{
  dsCopy = ds;
  completionCopy = completion;
  v6 = +[NSMutableArray array];
  v7 = [dsCopy count];
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

  v10 = objc_retainBlock(completionCopy);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, v6, 0);
  }
}

@end