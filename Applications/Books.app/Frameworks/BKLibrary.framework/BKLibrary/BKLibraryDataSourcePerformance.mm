@interface BKLibraryDataSourcePerformance
+ (void)initialize;
- (BKLibraryDataSourcePerformance)initWithResource:(id)a3 forceRandomBooks:(BOOL)a4;
- (BKLibraryManager)libraryManager;
- (id)_cachedProductProfiles;
- (void)_fetchProductProfiles;
- (void)_libraryDataSourcePerformanceChanged;
- (void)_updateCreationDate;
- (void)_updateEnabled;
- (void)assetForLibraryAsset:(id)a3 completion:(id)a4;
- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5;
- (void)dealloc;
- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5;
- (void)fetchAssetIDsWithCompletion:(id)a3;
- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5;
@end

@implementation BKLibraryDataSourcePerformance

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    [v2 registerDefaults:&off_DDF30];
  }
}

- (BKLibraryDataSourcePerformance)initWithResource:(id)a3 forceRandomBooks:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v26.receiver = self;
  v26.super_class = BKLibraryDataSourcePerformance;
  v8 = [(BKLibraryDataSourcePerformance *)&v26 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_resourceName, a3);
    v10 = dispatch_queue_create("BKLibraryDataSourcePerformance", &_dispatch_queue_attr_concurrent);
    queue = v9->_queue;
    v9->_queue = v10;

    v12 = [NSString stringWithFormat:@"com.apple.ibooks.library.datasource.performance.%@", v7];
    identifier = v9->_identifier;
    v9->_identifier = v12;

    v14 = +[NSUserDefaults standardUserDefaults];
    v15 = [v14 BOOLForKey:@"BKLibraryDataSourcePerformance-PPT"];

    if ((v15 & 1) != 0 || v4)
    {
      [(BKLibraryDataSourcePerformance *)v9 setRunningPPT:1];
      [(BKLibraryDataSourcePerformance *)v9 setIsEnabled:1];
      [(BKLibraryDataSourcePerformance *)v9 setNumRandomBooks:500];
      [(BKLibraryDataSourcePerformance *)v9 setRandomBookBaseID:1000000];
      [(BKLibraryDataSourcePerformance *)v9 setCreateSeriesContainers:1];
    }

    else
    {
      v16 = +[NSUserDefaults standardUserDefaults];
      [v16 addObserver:v9 forKeyPath:@"BKLibraryPerformanceDataSource" options:0 context:off_EEE98];

      v17 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
      v18 = [v17 lastObject];
      v19 = [v18 stringByAppendingPathComponent:@"BKLibraryDataSourcePerformance"];

      if (v19)
      {
        v20 = +[NSFileManager defaultManager];
        [v20 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:0];

        v21 = [NSString stringWithFormat:@"ProductProfiles-%@.plist", v7];
        v22 = [v19 stringByAppendingPathComponent:v21];
        v23 = [NSURL fileURLWithPath:v22];
        cacheURL = v9->_cacheURL;
        v9->_cacheURL = v23;
      }

      [(BKLibraryDataSourcePerformance *)v9 _updateEnabled];
    }
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSUserDefaults standardUserDefaults];
  [v3 removeObserver:self forKeyPath:@"BKLibraryPerformanceDataSource" context:off_EEE98];

  v4.receiver = self;
  v4.super_class = BKLibraryDataSourcePerformance;
  [(BKLibraryDataSourcePerformance *)&v4 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (off_EEE98 == a6)
  {
    objc_initWeak(&location, self);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_5864C;
    v18[3] = &unk_D6660;
    objc_copyWeak(&v19, &location);
    v13 = objc_retainBlock(v18);
    v14 = objc_retainBlock(v13);
    if (v14)
    {
      if (+[NSThread isMainThread])
      {
        v14[2](v14);
      }

      else
      {
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_5868C;
        block[3] = &unk_D6858;
        v17 = v14;
        dispatch_async(&_dispatch_main_q, block);
      }
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = BKLibraryDataSourcePerformance;
    [(BKLibraryDataSourcePerformance *)&v15 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)_libraryDataSourcePerformanceChanged
{
  v3 = [(BKLibraryDataSourcePerformance *)self isEnabled];
  [(BKLibraryDataSourcePerformance *)self _updateEnabled];
  if (v3 != [(BKLibraryDataSourcePerformance *)self isEnabled])
  {
    v4 = [(BKLibraryDataSourcePerformance *)self libraryManager];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_58754;
    v5[3] = &unk_D70B8;
    v5[4] = self;
    [v4 libraryDataSource:self updateWithName:@"performance enabled changed" block:v5];
  }
}

- (void)_updateEnabled
{
  v3 = +[NSUserDefaults standardUserDefaults];
  self->_isEnabled = [v3 BOOLForKey:@"BKLibraryPerformanceDataSource"];
}

- (void)_updateCreationDate
{
  v3 = [(BKLibraryDataSourcePerformance *)self cacheURL];
  v6 = 0;
  [v3 getResourceValue:&v6 forKey:NSURLCreationDateKey error:0];
  v4 = v6;

  creationDate = self->_creationDate;
  self->_creationDate = v4;
}

- (void)_fetchProductProfiles
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(BKLibraryDataSourcePerformance *)self resourceName];
  v5 = [v3 URLForResource:v4 withExtension:@"plist"];

  if (v5)
  {
    v6 = [[NSDictionary alloc] initWithContentsOfURL:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:@"adamIds"];
  v8 = [NSSet setWithArray:v7];
  v9 = [v8 allObjects];

  v10 = +[AEUserPublishing sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_58A0C;
  v11[3] = &unk_D6DF0;
  v11[4] = self;
  [v10 productProfilesForStoreIDs:v9 completion:v11];
}

- (id)_cachedProductProfiles
{
  v3 = [(BKLibraryDataSourcePerformance *)self cacheURL];
  v4 = [NSData dataWithContentsOfURL:v3];

  v15 = 0;
  v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v15];
  v6 = v15;
  if (v6)
  {
    v7 = BKLibraryLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_9126C(self, v6, v7);
    }

    v8 = 0;
  }

  else
  {
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v7 = [NSSet setWithObjects:v9, v10, v11, v12, objc_opt_class(), 0];
    objc_opt_class();
    v13 = [v5 decodeObjectOfClasses:v7 forKey:@"Root"];
    v8 = BUDynamicCast();
  }

  return v8;
}

- (void)bookCoverForLibraryAssetProperties:(id)a3 size:(CGSize)a4 completion:(id)a5
{
  v9 = a3;
  v6 = a5;
  if (!qword_EFD60)
  {
    BKGenericBookCoverDefaultSettings();
    qword_EFD60 = BKGenericBookCoverCreateImage();
  }

  v7 = objc_retainBlock(v6);
  if (v7)
  {
    v8 = [UIImage im_imageWithCGImage:qword_EFD60];
    (*(v7 + 2))(v7, v8, 0, 0);
  }
}

- (void)deleteAssets:(id)a3 exhaustive:(BOOL)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0);
    v5 = v6;
  }
}

- (void)resolveLibraryAsset:(id)a3 options:(id)a4 completion:(id)a5
{
  v5 = objc_retainBlock(a5);
  if (v5)
  {
    v6 = v5;
    (*(v5 + 2))(v5, 0, 0, 0);
    v5 = v6;
  }
}

- (void)assetForLibraryAsset:(id)a3 completion:(id)a4
{
  v4 = objc_retainBlock(a4);
  if (v4)
  {
    v5 = v4;
    (*(v4 + 2))(v4, 0, 0);
    v4 = v5;
  }
}

- (void)fetchAssetIDsWithCompletion:(id)a3
{
  v4 = a3;
  kdebug_trace();
  if ([(BKLibraryDataSourcePerformance *)self runningPPT])
  {
    v5 = +[NSMutableArray array];
    if ([(BKLibraryDataSourcePerformance *)self numRandomBooks])
    {
      v6 = 0;
      do
      {
        v7 = [NSNumber numberWithInteger:[(BKLibraryDataSourcePerformance *)self randomBookBaseID]+ v6];
        v8 = [v7 stringValue];
        [v5 addObject:v8];

        ++v6;
      }

      while (v6 < [(BKLibraryDataSourcePerformance *)self numRandomBooks]);
    }

    kdebug_trace();
    v9 = objc_retainBlock(v4);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, v5, 0);
    }
  }

  else
  {
    v11 = [(BKLibraryDataSourcePerformance *)self queue];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_59310;
    v12[3] = &unk_D5550;
    v12[4] = self;
    v13 = v4;
    dispatch_async(v11, v12);
  }
}

- (void)fetchAssetsWithIDs:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  kdebug_trace();
  v8 = [(BKLibraryDataSourcePerformance *)self runningPPT];
  v9 = [(BKLibraryDataSourcePerformance *)self queue];
  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_59568;
    block[3] = &unk_D62F8;
    v19 = v6;
    v20 = self;
    v21 = v7;
    v10 = v7;
    v11 = v6;
    dispatch_async(v9, block);

    v12 = v19;
  }

  else
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_597D8;
    v15[3] = &unk_D62F8;
    v15[4] = self;
    v16 = v6;
    v17 = v7;
    v13 = v7;
    v14 = v6;
    dispatch_async(v9, v15);

    v12 = v16;
  }
}

- (BKLibraryManager)libraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryManager);

  return WeakRetained;
}

@end