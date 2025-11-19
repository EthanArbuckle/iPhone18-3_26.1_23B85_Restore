@interface BKAssetLookup
+ (BKAssetLookup)assetLookupWithID:(id)a3 options:(id)a4 completion:(id)a5;
+ (BKAssetLookup)assetLookupWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
+ (void)validateAssetAuthorization:(id)a3 completion:(id)a4;
- (BKAssetLookup)initWithID:(id)a3 options:(id)a4 completion:(id)a5;
- (BKAssetLookup)initWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
- (BOOL)_isProperlyInstalledAssetURL:(id)a3;
- (void)_completeWithAssetViewController:(id)a3 helper:(id)a4 error:(id)a5;
- (void)_load;
- (void)cancel;
@end

@implementation BKAssetLookup

+ (BKAssetLookup)assetLookupWithID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithID:v10 options:v9 completion:v8];

  return v11;
}

+ (BKAssetLookup)assetLookupWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[a1 alloc] initWithIdentifier:v10 options:v9 completion:v8];

  return v11;
}

- (BKAssetLookup)initWithID:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [BKAssetID identifierWithAssetID:a3];
  v11 = [(BKAssetLookup *)self initWithIdentifier:v10 options:v9 completion:v8];

  return v11;
}

- (BKAssetLookup)initWithIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BKAssetLookup;
  v11 = [(BKAssetLookup *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(BKAssetLookup *)v11 setAssetIdentifier:v8];
    [(BKAssetLookup *)v12 setCompletion:v10];
    [(BKAssetLookup *)v12 setOptions:v9];
    v13 = dispatch_queue_create("BKAssetLookup", 0);
    [(BKAssetLookup *)v12 setSync:v13];

    [(BKAssetLookup *)v12 _load];
  }

  return v12;
}

- (void)_completeWithAssetViewController:(id)a3 helper:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000273A4;
  v19 = sub_100027618;
  v20 = 0;
  v11 = [(BKAssetLookup *)self sync];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FEC04;
  v14[3] = &unk_100A036C0;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(v11, v14);

  v12 = objc_retainBlock(v16[5]);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, v8, v9, v10);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_load
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000FED64;
  v3[3] = &unk_100A033C8;
  v3[4] = self;
  v2 = objc_retainBlock(v3);
  if (+[NSThread isMainThread])
  {
    (v2[2])(v2);
  }

  else
  {
    dispatch_async(&_dispatch_main_q, v2);
  }
}

- (BOOL)_isProperlyInstalledAssetURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 pathExtension];
    if ([v4 caseInsensitiveCompare:@"epub"] && objc_msgSend(v4, "caseInsensitiveCompare:", @"ibooks"))
    {
      v5 = 1;
    }

    else
    {
      v6 = objc_alloc_init(NSFileManager);
      v7 = [v3 path];
      v8 = [v6 attributesOfItemAtPath:v7 error:0];

      if (v8)
      {
        v9 = [v8 objectForKey:NSFileType];
        v5 = [v9 isEqualToString:NSFileTypeDirectory];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (void)cancel
{
  v3 = [NSError errorWithDomain:@"BKAssetLookup" code:0 userInfo:0];
  [(BKAssetLookup *)self _completeWithAssetViewController:0 helper:0 error:v3];
}

+ (void)validateAssetAuthorization:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    v8 = +[AEPluginRegistry sharedInstance];
    v9 = [v8 pluginForURL:v5];

    if (v9)
    {
      v10 = [NSFileAccessIntent readingIntentWithURL:v5 options:1];
      v11 = objc_opt_new();
      v23 = v10;
      v12 = [NSArray arrayWithObjects:&v23 count:1];
      v13 = objc_opt_new();
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000FF7C4;
      v18[3] = &unk_100A07458;
      v19 = v5;
      v22 = v7;
      v20 = v9;
      v21 = v10;
      v14 = v10;
      [v11 coordinateAccessWithIntents:v12 queue:v13 byAccessor:v18];
    }

    else
    {
      v16 = objc_retainBlock(v7);
      v17 = v16;
      if (v16)
      {
        (*(v16 + 2))(v16, 0);
      }
    }
  }

  else
  {
    v15 = objc_retainBlock(v6);
    v9 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

@end