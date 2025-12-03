@interface BKAssetLookup
+ (BKAssetLookup)assetLookupWithID:(id)d options:(id)options completion:(id)completion;
+ (BKAssetLookup)assetLookupWithIdentifier:(id)identifier options:(id)options completion:(id)completion;
+ (void)validateAssetAuthorization:(id)authorization completion:(id)completion;
- (BKAssetLookup)initWithID:(id)d options:(id)options completion:(id)completion;
- (BKAssetLookup)initWithIdentifier:(id)identifier options:(id)options completion:(id)completion;
- (BOOL)_isProperlyInstalledAssetURL:(id)l;
- (void)_completeWithAssetViewController:(id)controller helper:(id)helper error:(id)error;
- (void)_load;
- (void)cancel;
@end

@implementation BKAssetLookup

+ (BKAssetLookup)assetLookupWithID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  dCopy = d;
  v11 = [[self alloc] initWithID:dCopy options:optionsCopy completion:completionCopy];

  return v11;
}

+ (BKAssetLookup)assetLookupWithIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  identifierCopy = identifier;
  v11 = [[self alloc] initWithIdentifier:identifierCopy options:optionsCopy completion:completionCopy];

  return v11;
}

- (BKAssetLookup)initWithID:(id)d options:(id)options completion:(id)completion
{
  completionCopy = completion;
  optionsCopy = options;
  v10 = [BKAssetID identifierWithAssetID:d];
  v11 = [(BKAssetLookup *)self initWithIdentifier:v10 options:optionsCopy completion:completionCopy];

  return v11;
}

- (BKAssetLookup)initWithIdentifier:(id)identifier options:(id)options completion:(id)completion
{
  identifierCopy = identifier;
  optionsCopy = options;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = BKAssetLookup;
  v11 = [(BKAssetLookup *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(BKAssetLookup *)v11 setAssetIdentifier:identifierCopy];
    [(BKAssetLookup *)v12 setCompletion:completionCopy];
    [(BKAssetLookup *)v12 setOptions:optionsCopy];
    v13 = dispatch_queue_create("BKAssetLookup", 0);
    [(BKAssetLookup *)v12 setSync:v13];

    [(BKAssetLookup *)v12 _load];
  }

  return v12;
}

- (void)_completeWithAssetViewController:(id)controller helper:(id)helper error:(id)error
{
  controllerCopy = controller;
  helperCopy = helper;
  errorCopy = error;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000273A4;
  v19 = sub_100027618;
  v20 = 0;
  sync = [(BKAssetLookup *)self sync];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000FEC04;
  v14[3] = &unk_100A036C0;
  v14[4] = self;
  v14[5] = &v15;
  dispatch_sync(sync, v14);

  v12 = objc_retainBlock(v16[5]);
  v13 = v12;
  if (v12)
  {
    (*(v12 + 2))(v12, controllerCopy, helperCopy, errorCopy);
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

- (BOOL)_isProperlyInstalledAssetURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    pathExtension = [lCopy pathExtension];
    if ([pathExtension caseInsensitiveCompare:@"epub"] && objc_msgSend(pathExtension, "caseInsensitiveCompare:", @"ibooks"))
    {
      v5 = 1;
    }

    else
    {
      v6 = objc_alloc_init(NSFileManager);
      path = [lCopy path];
      v8 = [v6 attributesOfItemAtPath:path error:0];

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

+ (void)validateAssetAuthorization:(id)authorization completion:(id)completion
{
  authorizationCopy = authorization;
  completionCopy = completion;
  v7 = completionCopy;
  if (authorizationCopy)
  {
    v8 = +[AEPluginRegistry sharedInstance];
    v9 = [v8 pluginForURL:authorizationCopy];

    if (v9)
    {
      v10 = [NSFileAccessIntent readingIntentWithURL:authorizationCopy options:1];
      v11 = objc_opt_new();
      v23 = v10;
      v12 = [NSArray arrayWithObjects:&v23 count:1];
      v13 = objc_opt_new();
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000FF7C4;
      v18[3] = &unk_100A07458;
      v19 = authorizationCopy;
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
    v15 = objc_retainBlock(completionCopy);
    v9 = v15;
    if (v15)
    {
      (*(v15 + 2))(v15, 0);
    }
  }
}

@end