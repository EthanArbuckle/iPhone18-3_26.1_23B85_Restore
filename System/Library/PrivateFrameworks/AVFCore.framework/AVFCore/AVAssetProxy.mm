@interface AVAssetProxy
+ (id)assetProxyWithPropertyList:(id)list;
+ (id)makePropertyListForMovieProxyHeader:(id)header name:(id)name prefersNominalDurations:(BOOL)durations;
- (AVAssetProxy)initWithPropertyList:(id)list;
- (id)tracks;
- (void)dealloc;
@end

@implementation AVAssetProxy

+ (id)makePropertyListForMovieProxyHeader:(id)header name:(id)name prefersNominalDurations:(BOOL)durations
{
  headerCopy = header;
  if (header)
  {
    durationsCopy = durations;
    v8 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{header, @"moop", objc_msgSend(MEMORY[0x1E696AD98], "numberWithShort:", 1), @"mpvr", 0}];
    headerCopy = v8;
    if (durationsCopy)
    {
      [v8 setObject:MEMORY[0x1E695E118] forKey:@"prefers-nominal-durations"];
    }

    if (name)
    {
      [headerCopy setObject:name forKey:@"name"];
    }
  }

  return headerCopy;
}

+ (id)assetProxyWithPropertyList:(id)list
{
  v3 = [[self alloc] initWithPropertyList:list];

  return v3;
}

- (AVAssetProxy)initWithPropertyList:(id)list
{
  v9.receiver = self;
  v9.super_class = AVAssetProxy;
  v4 = [(AVAsset *)&v9 init];
  if (v4)
  {
    if (![list objectForKey:@"moop"])
    {
      goto LABEL_13;
    }

    v5 = objc_alloc_init(AVAssetProxyInternal);
    v4->_assetProxy = v5;
    if (!v5)
    {
      goto LABEL_13;
    }

    CFRetain(v5);
    v4->_assetProxy->makeTracksArrayOnce = objc_alloc_init(AVDispatchOnce);
    v6 = [list objectForKey:@"name"];
    if (v6)
    {
      [MEMORY[0x1E695DF20] dictionaryWithObject:v6 forKey:*MEMORY[0x1E6971028]];
    }

    figAssetCreationFlagsForAssetReferenceRestrictions(2);
    if ([objc_msgSend(list objectForKey:{@"mpvr", "shortValue"}])
    {
      [objc_msgSend(list objectForKey:{@"prefers-nominal-durations", "BOOLValue"}];
    }

    v7 = FigAssetRemoteCreateWithMovieProxyData();
    if (!v7)
    {
      v4->_assetProxy->loader = [[AVFigAssetInspectorLoader alloc] initWithFigAsset:0 forAsset:v4];
    }

    if (!v4->_assetProxy->loader)
    {
      v4->_assetProxy->loader = [[AVUnreachableAssetInspectorLoader alloc] initWithFigError:v7 userInfo:0];
    }

    if (!v4->_assetProxy->loader)
    {
LABEL_13:

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  assetProxy = self->_assetProxy;
  if (assetProxy)
  {

    CFRelease(self->_assetProxy);
  }

  v4.receiver = self;
  v4.super_class = AVAssetProxy;
  [(AVAsset *)&v4 dealloc];
}

- (id)tracks
{
  makeTracksArrayOnce = self->_assetProxy->makeTracksArrayOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __22__AVAssetProxy_tracks__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)makeTracksArrayOnce runBlockOnce:v5];
  return self->_assetProxy->tracks;
}

uint64_t __22__AVAssetProxy_tracks__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [objc_msgSend(*(a1 + 32) "_assetInspector")];
  if (v3 >= 1)
  {
    v4 = v3;
    for (i = 0; i != v4; ++i)
    {
      v6 = [[AVAssetTrack alloc] _initWithAsset:*(a1 + 32) trackIndex:i];
      if (v6)
      {
        [v2 addObject:v6];
      }
    }
  }

  result = [v2 copy];
  *(*(*(a1 + 32) + 16) + 16) = result;
  return result;
}

@end