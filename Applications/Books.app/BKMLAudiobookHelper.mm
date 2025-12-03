@interface BKMLAudiobookHelper
+ (BOOL)_audiobookIsStreamingFromURL:(id)l;
+ (id)_audiobookAlbumTitleFromURL:(id)l;
- (BKMLAudiobookHelper)initWithAssetUrl:(id)url options:(id)options;
- (BOOL)isStreaming;
- (NSString)albumTitle;
- (NSString)description;
- (id)assetID;
- (id)displayTitle;
- (id)helperCoverImageOfSize:(CGSize)size;
- (id)helperMetadataForKey:(id)key needsCoordination:(BOOL)coordination;
- (id)helperMinifiedController;
- (id)sharedAnnotationProvider;
- (void)helperViewControllerWithOptions:(id)options completion:(id)completion;
@end

@implementation BKMLAudiobookHelper

- (BKMLAudiobookHelper)initWithAssetUrl:(id)url options:(id)options
{
  urlCopy = url;
  optionsCopy = options;
  v12.receiver = self;
  v12.super_class = BKMLAudiobookHelper;
  v9 = [(BKMLAudiobookHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_assetUrl, url);
    objc_storeStrong(&v10->_options, options);
  }

  return v10;
}

+ (BOOL)_audiobookIsStreamingFromURL:(id)l
{
  bu_dictionaryForQueryItems = [l bu_dictionaryForQueryItems];
  v4 = [bu_dictionaryForQueryItems objectForKeyedSubscript:@"isCloudItem"];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)_audiobookAlbumTitleFromURL:(id)l
{
  bu_dictionaryForQueryItems = [l bu_dictionaryForQueryItems];
  v4 = [bu_dictionaryForQueryItems objectForKeyedSubscript:@"albumTitle"];

  return v4;
}

- (BOOL)isStreaming
{
  v3 = objc_opt_class();
  assetUrl = self->_assetUrl;

  return [v3 _audiobookIsStreamingFromURL:assetUrl];
}

- (NSString)albumTitle
{
  v3 = objc_opt_class();
  assetUrl = self->_assetUrl;

  return [v3 _audiobookAlbumTitleFromURL:assetUrl];
}

- (id)assetID
{
  options = [(BKMLAudiobookHelper *)self options];
  v3 = [options objectForKeyedSubscript:@"assetID"];

  return v3;
}

- (id)displayTitle
{
  objc_opt_class();
  v3 = [(BKMLAudiobookHelper *)self helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:1];
  v4 = BUDynamicCast();

  return v4;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BKMLAudiobookHelper *)self helperMetadataForKey:AEHelperStringMetadataTitleKey needsCoordination:1];
  assetUrl = self->_assetUrl;
  assetID = [(BKMLAudiobookHelper *)self assetID];
  v8 = [NSString stringWithFormat:@"<%@: %p> [Title: %@] [URL: %@] [AssetID: %@]", v4, self, v5, assetUrl, assetID];

  return v8;
}

- (id)helperCoverImageOfSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  options = [(BKMLAudiobookHelper *)self options];
  v6 = [options objectForKey:AEHelperImageMetadataCoverBlockKey];

  if (v6)
  {
    v7 = v6[2](v6, width, height);
  }

  else
  {
    v8 = sub_1001B9CD0();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_1007909F0(v8);
    }

    v7 = 0;
  }

  return v7;
}

- (void)helperViewControllerWithOptions:(id)options completion:(id)completion
{
  completionCopy = completion;
  v6 = +[BKAudiobookNowPlayingModuleFactory instantiate];
  v7 = v6;
  if (v6)
  {
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10013A724;
    v14[3] = &unk_100A04C50;
    v8 = v6;
    v15 = v8;
    v16 = 0;
    v17 = completionCopy;
    v9 = objc_retainBlock(v14);
    v10 = +[BKAudiobookNowPlayingModuleFactory currentMiniPlayer];
    v11 = v10;
    if (!v10)
    {
      v10 = v8;
    }

    [v10 setHelper:self completion:v9];
  }

  else
  {
    v12 = objc_retainBlock(completionCopy);
    v13 = v12;
    if (v12)
    {
      (*(v12 + 2))(v12, 0, 0);
    }
  }
}

- (id)helperMinifiedController
{
  v2 = [[BKAudiobookMinifiedController alloc] initWithHelper:self];

  return v2;
}

- (id)helperMetadataForKey:(id)key needsCoordination:(BOOL)coordination
{
  if ([key isEqualToString:{AEHelperStringMetadataAssetIDKey, coordination}])
  {
    assetID = [(BKMLAudiobookHelper *)self assetID];
  }

  else
  {
    assetID = 0;
  }

  return assetID;
}

- (id)sharedAnnotationProvider
{
  v3 = +[AEPluginRegistry sharedInstance];
  v4 = [v3 pluginForURL:self->_assetUrl];

  sharedAnnotationProvider = [v4 sharedAnnotationProvider];

  return sharedAnnotationProvider;
}

@end