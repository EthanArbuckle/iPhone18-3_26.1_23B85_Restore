@interface BrowseManagerContentCache
+ (void)initialize;
- (BOOL)_needsRefreshWithTraits:(id)a3;
- (BOOL)_traitsAreValid:(id)a3;
- (BrowseManagerContentCache)init;
- (NSMapTable)categoryResultsCache;
- (id)_diskCachedCategories;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)readCategoriesFromDiskIfNeeded;
- (void)setGeoCategories:(id)a3;
- (void)setLatestTraits:(id)a3;
- (void)setWritesToDisk:(BOOL)a3;
- (void)updateCacheWithBlock:(id)a3;
- (void)writeCategories;
@end

@implementation BrowseManagerContentCache

- (BrowseManagerContentCache)init
{
  v6.receiver = self;
  v6.super_class = BrowseManagerContentCache;
  v2 = [(BrowseManagerContentCache *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_writesToDisk = 257;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v3 selector:"didReceiveMemoryWarning" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v3;
}

- (void)readCategoriesFromDiskIfNeeded
{
  v3 = [(BrowseManagerContentCache *)self geoCategories];

  if (!v3)
  {
    v4 = [(BrowseManagerContentCache *)self _diskCachedCategories];
    [(BrowseManagerContentCache *)self setGeoCategories:v4];
  }
}

- (void)writeCategories
{
  if ([(BrowseManagerContentCache *)self writesToDisk])
  {
    v3 = [(NSArray *)self->_geoCategories copy];
    v4 = dispatch_get_global_queue(-32768, 0);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100096A2C;
    v6[3] = &unk_101661A90;
    v7 = v3;
    v8 = self;
    v5 = v3;
    dispatch_async(v4, v6);
  }
}

- (void)setWritesToDisk:(BOOL)a3
{
  if (self->_writesToDisk != a3)
  {
    self->_writesToDisk = a3;
    if (!a3)
    {
      v8 = +[NSFileManager defaultManager];
      v4 = [(BrowseManagerContentCache *)self diskCachingKey];
      v5 = sub_1000925BC(v4);

      v6 = [v5 path];
      v7 = [v8 fileExistsAtPath:v6];

      if (v7)
      {
        [v8 removeItemAtURL:v5 error:0];
      }
    }
  }
}

- (id)_diskCachedCategories
{
  v2 = [(BrowseManagerContentCache *)self diskCachingKey];
  v3 = sub_1000925BC(v2);

  if (v3 && (+[NSFileManager defaultManager](NSFileManager, "defaultManager"), v4 = objc_claimAutoreleasedReturnValue(), [v3 path], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "fileExistsAtPath:", v5), v5, v4, v6))
  {
    v25 = 0;
    v7 = [NSArray arrayWithContentsOfURL:v3 error:&v25];
    v8 = v25;
    if (!v7)
    {
      v9 = sub_10008C23C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v28 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to load _diskCachedCategories, error: %{public}@", buf, 0xCu);
      }
    }

    v20 = v8;
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [[GEOSearchCategoryStorage alloc] initWithData:*(*(&v21 + 1) + 8 * i)];
          v17 = [[GEOSearchCategory alloc] initWithStorage:v16];
          [v10 addObject:v17];
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = 0;
  }

  v18 = [v10 copy];

  return v18;
}

- (void)didReceiveMemoryWarning
{
  v2 = [(BrowseManagerContentCache *)self categoryResultsCache];
  [v2 removeAllObjects];
}

- (void)updateCacheWithBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    v5 = self;
    objc_sync_enter(v5);
    v6[2](v6, v5);
    objc_sync_exit(v5);

    v4 = v6;
  }
}

- (BOOL)_needsRefreshWithTraits:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 navigating])
    {
      v6 = sub_10008C23C();
      v7 = 1;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v33 = 0;
        v8 = "Refresh categories. Reason: navigating";
        v9 = &v33;
LABEL_20:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, v8, v9, 2u);
      }
    }

    else
    {
      v10 = [(GEOMapServiceTraits *)self->_latestTraits mode];
      if (v10 == [v5 mode])
      {
        v11 = [(GEOMapServiceTraits *)self->_latestTraits mapRegion];
        GEOMapRectForMapRegion();
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v19 = v18;

        v20 = [v5 mapRegion];
        GEOMapRectForMapRegion();
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        if (self->_latestTraits && v22 == v13 && v24 == v15 && v26 == v17 && v28 == v19)
        {
          v6 = sub_10008C23C();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "Did not refresh categories", v30, 2u);
          }

          v7 = 0;
        }

        else
        {
          v6 = sub_10008C23C();
          v7 = 1;
          if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            v8 = "Refresh categories. Reason: region is different";
            v9 = buf;
            goto LABEL_20;
          }
        }
      }

      else
      {
        v6 = sub_10008C23C();
        v7 = 1;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v32 = 0;
          v8 = "Refresh categories. Reason: traits.mode has changed";
          v9 = &v32;
          goto LABEL_20;
        }
      }
    }
  }

  else
  {
    v6 = sub_10008C23C();
    v7 = 1;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v34 = 0;
      v8 = "Refresh categories. Reason: nil traits";
      v9 = &v34;
      goto LABEL_20;
    }
  }

  return v7;
}

- (BOOL)_traitsAreValid:(id)a3
{
  v3 = a3;
  if ([v3 hasDeviceLocation])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 hasMapRegion];
  }

  return v4;
}

- (void)setLatestTraits:(id)a3
{
  v7 = a3;
  if ([(BrowseManagerContentCache *)self _traitsAreValid:?])
  {
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  v8 = v4;
  [(BrowseManagerContentCache *)self setNeedsRefresh:[(BrowseManagerContentCache *)self _needsRefreshWithTraits:v4]];
  v5 = [v8 copy];
  latestTraits = self->_latestTraits;
  self->_latestTraits = v5;

  [(GEOMapServiceTraits *)self->_latestTraits setPhotosCount:1];
}

- (void)setGeoCategories:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100B2C820;
  v4[3] = &unk_101638830;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(BrowseManagerContentCache *)v5 updateCacheWithBlock:v4];
}

- (NSMapTable)categoryResultsCache
{
  categoryResultsCache = self->_categoryResultsCache;
  if (!categoryResultsCache)
  {
    v4 = [NSMapTable mapTableWithKeyOptions:0 valueOptions:0];
    v5 = self->_categoryResultsCache;
    self->_categoryResultsCache = v4;

    categoryResultsCache = self->_categoryResultsCache;
  }

  return categoryResultsCache;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = BrowseManagerContentCache;
  [(BrowseManagerContentCache *)&v4 dealloc];
}

+ (void)initialize
{
  v2 = +[NSFileManager defaultManager];
  v3 = [v2 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];

  if (v3)
  {
    v9 = [v3 URLByAppendingPathComponent:@"Maps"];

    v4 = +[NSFileManager defaultManager];
    v5 = [v9 path];
    v6 = [v4 fileExistsAtPath:v5];

    if (v6)
    {
      v7 = +[NSFileManager defaultManager];
      [v7 removeItemAtURL:v9 error:0];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }
}

@end