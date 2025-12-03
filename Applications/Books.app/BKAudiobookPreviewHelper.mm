@interface BKAudiobookPreviewHelper
- (BKAudiobookPreviewHelper)initWithMAsset:(id)asset lockupProfile:(id)profile;
- (BOOL)_valid;
- (NSDictionary)lockupProfileDictionary;
- (NSString)description;
- (NSURL)previewURL;
- (double)previewDuration;
- (id)_previewDictionary;
- (id)helperCoverImage;
- (id)helperMetadataForKey:(id)key needsCoordination:(BOOL)coordination;
- (id)helperMinifiedController;
- (void)helperCoverImageWithCompletion:(id)completion;
- (void)helperViewControllerWithOptions:(id)options completion:(id)completion;
@end

@implementation BKAudiobookPreviewHelper

- (BKAudiobookPreviewHelper)initWithMAsset:(id)asset lockupProfile:(id)profile
{
  assetCopy = asset;
  profileCopy = profile;
  v13.receiver = self;
  v13.super_class = BKAudiobookPreviewHelper;
  v9 = [(BKAudiobookPreviewHelper *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mAsset, asset);
    objc_storeStrong(&v10->__lockupProfile, profile);
  }

  if (![(BKAudiobookPreviewHelper *)v10 _valid])
  {
    v11 = sub_1001B9CD0();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10078ECCC(v11);
    }

    v10 = 0;
  }

  return v10;
}

- (NSURL)previewURL
{
  mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
  previewURL = [mAsset previewURL];

  return previewURL;
}

- (double)previewDuration
{
  objc_opt_class();
  _previewDictionary = [(BKAudiobookPreviewHelper *)self _previewDictionary];
  v4 = [_previewDictionary objectForKeyedSubscript:@"duration"];
  v5 = BUDynamicCast();

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (NSDictionary)lockupProfileDictionary
{
  objc_opt_class();
  _lockupProfile = [(BKAudiobookPreviewHelper *)self _lockupProfile];
  profileDictionary = [_lockupProfile profileDictionary];
  v5 = BUDynamicCast();

  return v5;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKAudiobookPreviewHelper *)self helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:0];
  previewURL = [(BKAudiobookPreviewHelper *)self previewURL];
  mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
  v8 = [mAsset id];
  v9 = [NSString stringWithFormat:@"<%@: %p> [Title: %@] [URL: %@] [AssetID: %@]", v4, self, v5, previewURL, v8];

  return v9;
}

- (id)helperCoverImage
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100027364;
  v14 = sub_1000275F8;
  v15 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E908C;
  v7[3] = &unk_100A06F78;
  v9 = &v10;
  v3 = dispatch_semaphore_create(0);
  v8 = v3;
  [(BKAudiobookPreviewHelper *)self helperCoverImageWithCompletion:v7];
  v4 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v3, v4);
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

- (void)helperCoverImageWithCompletion:(id)completion
{
  completionCopy = completion;
  mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
  artworkURL = [mAsset artworkURL];

  if ([artworkURL length])
  {
    v7 = [artworkURL jsa_normalizedArtworkURLOfSize:@"jpg" withFormat:1500.0, 1500.0];
    v8 = [NSURL URLWithString:v7];

    objc_initWeak(&location, self);
    if (v8)
    {
      v9 = +[NSURLSession sharedSession];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000E92C0;
      v12[3] = &unk_100A06FC8;
      objc_copyWeak(&v14, &location);
      v13 = completionCopy;
      v10 = [v9 dataTaskWithURL:v8 completionHandler:v12];

      [v10 resume];
      objc_destroyWeak(&v14);
      goto LABEL_7;
    }
  }

  else
  {
    objc_initWeak(&location, self);
  }

  v11 = objc_retainBlock(completionCopy);
  v8 = v11;
  if (v11)
  {
    (*(v11 + 2))(v11, 0);
  }

LABEL_7:

  objc_destroyWeak(&location);
}

- (void)helperViewControllerWithOptions:(id)options completion:(id)completion
{
  optionsCopy = options;
  completionCopy = completion;
  v8 = +[BKAudiobookNowPlayingModuleFactory instantiate];
  if (v8)
  {
    objc_initWeak(&location, v8);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E9648;
    v11[3] = &unk_100A06FF0;
    objc_copyWeak(&v14, &location);
    v12 = 0;
    v13 = completionCopy;
    [v8 setHelper:self completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v9 = objc_retainBlock(completionCopy);
    v10 = v9;
    if (v9)
    {
      (*(v9 + 2))(v9, 0, 0);
    }
  }
}

- (id)helperMetadataForKey:(id)key needsCoordination:(BOOL)coordination
{
  keyCopy = key;
  if ([keyCopy isEqualToString:AEHelperStringMetadataAssetIDKey])
  {
    goto LABEL_2;
  }

  if ([keyCopy isEqualToString:AEHelperStringMetadataAuthorKey])
  {
    mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
    artistName = [mAsset artistName];
    goto LABEL_5;
  }

  if ([keyCopy isEqualToString:AEHelperStringMetadataStoreIDKey])
  {
LABEL_2:
    mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
    artistName = [mAsset id];
LABEL_5:
    v8 = artistName;

    goto LABEL_6;
  }

  if ([keyCopy isEqualToString:AEHelperStringMetadataTitleKey])
  {
    mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
    artistName = [mAsset name];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)helperMinifiedController
{
  v2 = [[BKAudiobookMinifiedController alloc] initWithHelper:self];

  return v2;
}

- (id)_previewDictionary
{
  objc_opt_class();
  objc_opt_class();
  objc_opt_class();
  _lockupProfile = [(BKAudiobookPreviewHelper *)self _lockupProfile];
  offer = [_lockupProfile offer];
  v5 = [offer objectForKeyedSubscript:@"assets"];
  v6 = BUDynamicCast();
  firstObject = [v6 firstObject];
  v8 = BUDynamicCast();
  v9 = [v8 objectForKeyedSubscript:@"preview"];
  v10 = BUDynamicCast();

  return v10;
}

- (BOOL)_valid
{
  _lockupProfile = [(BKAudiobookPreviewHelper *)self _lockupProfile];
  if (_lockupProfile)
  {
    mAsset = [(BKAudiobookPreviewHelper *)self mAsset];
    v5 = [mAsset id];
    if ([v5 length])
    {
      previewURL = [(BKAudiobookPreviewHelper *)self previewURL];
      if (previewURL)
      {
        [(BKAudiobookPreviewHelper *)self previewDuration];
        v8 = v7 > 0.0;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end