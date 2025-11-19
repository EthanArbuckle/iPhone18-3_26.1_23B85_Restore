@interface AEAssetURLActivityItemProvider
- (AEAssetURLActivityItemProvider)initWithDelegate:(id)a3 propertySource:(id)a4;
- (id)_tempBookURL;
- (id)item;
- (id)placeholderItem;
- (void)dealloc;
@end

@implementation AEAssetURLActivityItemProvider

- (AEAssetURLActivityItemProvider)initWithDelegate:(id)a3 propertySource:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [NSURL URLWithString:&stru_2D2930];
  v11.receiver = self;
  v11.super_class = AEAssetURLActivityItemProvider;
  v9 = [(AEAssetBaseActivityItemProvider *)&v11 initWithDelegate:v7 placeholderItem:v8 propertySource:v6];

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
  v3 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  if ([v3 isStoreAsset])
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = [(AEAssetURLActivityItemProvider *)self _tempBookURL];
  }

  v5 = v4;

  return v5;
}

- (id)item
{
  v3 = [(AEAssetURLActivityItemProvider *)self activityType];
  v4 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  [v4 setActivityType:v3];

  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_7F288;
  v32 = sub_7F298;
  v33 = 0;
  v5 = [(AEAssetURLActivityItemProvider *)self activityType];
  LODWORD(v4) = [(AEAssetBaseActivityItemProvider *)self shouldShareActivityType:v5];

  if (v4)
  {
    v6 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
    if ([v6 isStoreAsset])
    {
      v7 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
      [v7 storeURL];
    }

    else
    {
      v7 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
      [v7 bookURL];
    }
    v8 = ;

    if ([v8 isFileURL])
    {
      v9 = [(AEAssetURLActivityItemProvider *)self _tempBookURL];
      v10 = +[NSFileManager defaultManager];
      v11 = [v9 path];
      v12 = [v10 fileExistsAtPath:v11];

      if (v12 && ([v9 path], v13 = objc_claimAutoreleasedReturnValue(), v27 = 0, objc_msgSend(v10, "removeItemAtPath:error:", v13, &v27), v14 = v27, v13, v14))
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
        v24 = self;
        v25 = &v28;
        v23 = v9;
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
  v8 = [(AEAssetBaseActivityItemProvider *)self propertyProvider];
  v9 = [v8 bookURL];
  v10 = [v9 lastPathComponent];

  if (v10)
  {
    v11 = [v7 URLByAppendingPathComponent:v10];
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