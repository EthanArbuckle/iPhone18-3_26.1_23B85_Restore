@interface BKLibraryDataSourcePlistManagedBooks
- (BOOL)wantsPlistEntry:(id)a3;
- (id)q_pathsOfStillMissingAssets;
- (void)managedBooksDidChange;
- (void)q_didJoinPlistContentsOnFetch;
- (void)q_pollStorageForMissingFilesWithGeneration:(int64_t)a3;
- (void)q_willJoinPlistContentsOnFetch;
@end

@implementation BKLibraryDataSourcePlistManagedBooks

- (void)managedBooksDidChange
{
  v3 = [(BKLibraryDataSourcePlist *)self libraryManager];
  [v3 reloadDataSource:self completion:0];
}

- (BOOL)wantsPlistEntry:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKey:@"FullPath"];

  v6 = BUDynamicCast();

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [(BKLibraryDataSourcePlist *)self fileManager];
  v8 = [v7 fileExistsAtPath:v6];

  if ((v8 & 1) == 0)
  {
    v10 = [(BKLibraryDataSourcePlistManagedBooks *)self pathsOfMissingAssets];
    [v10 addObject:v6];

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v9 = 1;
LABEL_6:

  return v9;
}

- (void)q_willJoinPlistContentsOnFetch
{
  [(BKLibraryDataSourcePlistManagedBooks *)self setFetchGeneration:[(BKLibraryDataSourcePlistManagedBooks *)self fetchGeneration]+ 1];
  v3 = +[NSMutableArray array];
  [(BKLibraryDataSourcePlistManagedBooks *)self setPathsOfMissingAssets:v3];
}

- (void)q_didJoinPlistContentsOnFetch
{
  v3 = [(BKLibraryDataSourcePlistManagedBooks *)self pathsOfMissingAssets];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(BKLibraryDataSourcePlist *)self assetsQueue];
    [(BKLibraryDataSourcePlistManagedBooks *)self setPollSeconds:1];
    v6 = dispatch_time(0, 1000000000 * [(BKLibraryDataSourcePlistManagedBooks *)self pollSeconds]);
    objc_initWeak(&location, self);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100136318;
    block[3] = &unk_100A070B8;
    objc_copyWeak(&v8, &location);
    block[4] = self;
    dispatch_after(v6, v5, block);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (id)q_pathsOfStillMissingAssets
{
  v3 = [(BKLibraryDataSourcePlistManagedBooks *)self pathsOfMissingAssets];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100136448;
  v8[3] = &unk_100A080E0;
  v8[4] = self;
  v4 = [v3 indexesOfObjectsPassingTest:v8];

  v5 = [(BKLibraryDataSourcePlistManagedBooks *)self pathsOfMissingAssets];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (void)q_pollStorageForMissingFilesWithGeneration:(int64_t)a3
{
  if ([(BKLibraryDataSourcePlistManagedBooks *)self fetchGeneration]== a3)
  {
    v5 = [(BKLibraryDataSourcePlistManagedBooks *)self q_pathsOfStillMissingAssets];
    if ([v5 count])
    {
      [(BKLibraryDataSourcePlistManagedBooks *)self setPollSeconds:2 * [(BKLibraryDataSourcePlistManagedBooks *)self pollSeconds]];
      if ([(BKLibraryDataSourcePlistManagedBooks *)self pollSeconds]<= 600)
      {
        v6 = dispatch_time(0, 1000000000 * [(BKLibraryDataSourcePlistManagedBooks *)self pollSeconds]);
        objc_initWeak(&location, self);
        v7 = [(BKLibraryDataSourcePlist *)self assetsQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001365FC;
        block[3] = &unk_100A08108;
        objc_copyWeak(v9, &location);
        v9[1] = a3;
        dispatch_after(v6, v7, block);

        objc_destroyWeak(v9);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(BKLibraryDataSourcePlistManagedBooks *)self managedBooksDidChange];
    }
  }
}

@end