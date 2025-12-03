@interface AEAssetURLActivityItemProvider
- (AEAssetURLActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source;
- (id)_tempBookURL;
- (id)item;
- (id)placeholderItem;
- (void)dealloc;
@end

@implementation AEAssetURLActivityItemProvider

- (AEAssetURLActivityItemProvider)initWithDelegate:(id)delegate propertySource:(id)source
{
  sourceCopy = source;
  delegateCopy = delegate;
  v8 = [NSURL URLWithString:&stru_2D2930];
  v11.receiver = self;
  v11.super_class = AEAssetURLActivityItemProvider;
  v9 = [(AEAssetBaseActivityItemProvider *)&v11 initWithDelegate:delegateCopy placeholderItem:v8 propertySource:sourceCopy];

  return v9;
}

- (void)dealloc
{
  if (self->_temporaryURL)
  {
    v3 = +[NSFileManager defaultManager];
    [v3 removeItemAtURL:self->_temporaryURL error:0];
  }

  v4.receiver = self;
  v4.super_class = AEAssetURLActivityItemProvider;
  [(AEAssetURLActivityItemProvider *)&v4 dealloc];
}

- (id)placeholderItem
{
  propertyProvider = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  if ([propertyProvider isStoreAsset])
  {
    _tempBookURL = objc_opt_new();
  }

  else
  {
    _tempBookURL = [(AEAssetURLActivityItemProvider *)self _tempBookURL];
  }

  v5 = _tempBookURL;

  return v5;
}

- (id)item
{
  activityType = [(AEAssetURLActivityItemProvider *)self activityType];
  propertyProvider = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  [propertyProvider setActivityType:activityType];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_7F288;
  v32 = sub_7F298;
  v33 = 0;
  activityType2 = [(AEAssetURLActivityItemProvider *)self activityType];
  LODWORD(propertyProvider) = [(AEAssetBaseActivityItemProvider *)self shouldShareActivityType:activityType2];

  if (propertyProvider)
  {
    propertyProvider2 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    if ([propertyProvider2 isStoreAsset])
    {
      propertyProvider3 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
      [propertyProvider3 storeURL];
    }

    else
    {
      propertyProvider3 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
      [propertyProvider3 bookURL];
    }
    v8 = ;

    if ([v8 isFileURL])
    {
      _tempBookURL = [(AEAssetURLActivityItemProvider *)self _tempBookURL];
      v10 = +[NSFileManager defaultManager];
      path = [_tempBookURL path];
      v12 = [v10 fileExistsAtPath:path];

      if (v12 && ([_tempBookURL path], v13 = objc_claimAutoreleasedReturnValue(), v27 = 0, objc_msgSend(v10, "removeItemAtPath:error:", v13, &v27), v14 = v27, v13, v14))
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1E70E4();
        }
      }

      else
      {
        v17 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
        v26 = 0;
        v21[0] = _NSConcreteStackBlock;
        v21[1] = 3221225472;
        v21[2] = sub_7F2A0;
        v21[3] = &unk_2CB1F0;
        v22 = v10;
        selfCopy = self;
        v25 = &v28;
        v23 = _tempBookURL;
        [v17 coordinateReadingItemAtURL:v8 options:1 error:&v26 byAccessor:v21];
        v18 = v26;
        if (v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1E715C();
        }

        v14 = 0;
      }
    }

    else
    {
      v15 = v29;
      v16 = v8;
      v14 = v15[5];
      v15[5] = v16;
    }
  }

  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

- (id)_tempBookURL
{
  v3 = NSTemporaryDirectory();
  v4 = [v3 stringByAppendingPathComponent:@"Sharing"];

  v5 = +[NSFileManager defaultManager];
  if ([v5 fileExistsAtPath:v4])
  {
    v6 = 0;
  }

  else
  {
    v14 = 0;
    [v5 createDirectoryAtPath:v4 withIntermediateDirectories:1 attributes:0 error:&v14];
    v6 = v14;
    if (v6 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1E7264();
    }
  }

  v7 = [NSURL fileURLWithPath:v4 isDirectory:1];
  propertyProvider = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  bookURL = [propertyProvider bookURL];
  lastPathComponent = [bookURL lastPathComponent];

  if (lastPathComponent)
  {
    v11 = [v7 URLByAppendingPathComponent:lastPathComponent];
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1E72DC(self);
    }

    v11 = objc_opt_new();
  }

  v12 = v11;

  return v12;
}

@end