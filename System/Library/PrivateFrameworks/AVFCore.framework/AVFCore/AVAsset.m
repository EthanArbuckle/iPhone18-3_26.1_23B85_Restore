@interface AVAsset
+ (AVAsset)assetWithData:(id)a3 contentType:(id)a4 options:(id)a5;
+ (AVAsset)assetWithURL:(NSURL *)URL;
+ (AVAsset)assetWithURL:(id)a3 figPlaybackItem:(OpaqueFigPlaybackItem *)a4 trackIDs:(id)a5 dynamicBehavior:(BOOL)a6;
+ (BOOL)_assetCreationOptionsPrefersSandboxedOption:(id)a3;
+ (id)inspectionOnlyAssetWithFigAsset:(OpaqueFigAsset *)a3;
+ (id)inspectionOnlyAssetWithStreamDataParser:(id)a3 tracks:(id)a4;
+ (id)makeAssetLoggingIdentifier;
+ (void)initialize;
- (AVAsset)init;
- (AVAssetTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (AVDisplayCriteria)preferredDisplayCriteria;
- (AVMediaSelection)preferredMediaSelection;
- (AVMediaSelectionGroup)mediaSelectionGroupForMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (AVMetadataItem)creationDate;
- (BOOL)_isStreaming;
- (BOOL)_prefersNominalDurations;
- (BOOL)canContainFragments;
- (BOOL)containsFragments;
- (BOOL)hasProtectedContent;
- (BOOL)isCompatibleWithAirPlayVideo;
- (BOOL)isCompatibleWithPhotosTranscodingServiceWithOptions:(id)a3;
- (BOOL)isCompatibleWithSavedPhotosAlbum;
- (BOOL)isComposable;
- (BOOL)isDefunct;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExportable;
- (BOOL)isPlayable;
- (BOOL)isReadable;
- (BOOL)providesPreciseDurationAndTiming;
- (BOOL)supportsAnalysisReporting;
- (CGAffineTransform)preferredTransform;
- (CGSize)maximumVideoResolution;
- (CGSize)naturalSize;
- (CMPersistentTrackID)unusedTrackID;
- (CMTime)duration;
- (CMTime)minimumTimeOffsetFromLive;
- (CMTime)overallDurationHint;
- (Class)_classForTrackInspectors;
- (NSArray)allMediaSelections;
- (NSArray)availableMediaCharacteristicsWithMediaSelectionOptions;
- (NSArray)availableMetadataFormats;
- (NSArray)chapterMetadataGroupsBestMatchingPreferredLanguages:(NSArray *)preferredLanguages;
- (NSArray)chapterMetadataGroupsWithTitleLocale:(NSLocale *)locale containingItemsWithCommonKeys:(NSArray *)commonKeys;
- (NSArray)commonMetadata;
- (NSArray)fragments;
- (NSArray)metadata;
- (NSArray)metadataForFormat:(AVMetadataFormat)format;
- (NSArray)trackGroups;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (NSString)lyrics;
- (OpaqueFigAsset)_figAsset;
- (OpaqueFigFormatReader)_copyFormatReader;
- (OpaqueFigPlaybackItem)_playbackItem;
- (double)_fragmentMindingInterval;
- (float)preferredRate;
- (float)preferredSoundCheckVolumeNormalization;
- (float)preferredVolume;
- (id)_ID3Metadata;
- (id)_assetAnalysisMessages;
- (id)_assetInspector;
- (id)_assetInspectorLoader;
- (id)_chapterDataTypeForMediaSubType:(int)a3;
- (id)_chapterMetadataGroupsBestMatchingPreferredLanguages:(id)a3 containingItemsWithCommonKeys:(id)a4;
- (id)_chapterMetadataGroupsWithFigChapterGroups:(id)a3 titleLanguage:(id)a4 containingItemsWithCommonKeys:(id)a5;
- (id)_chapterMetadataGroupsWithTitleLanguage:(id)a3 containingItemsWithCommonKeys:(id)a4;
- (id)_chapterTracks;
- (id)_commonLoggingIdentifier;
- (id)_comparisonToken;
- (id)_customMediaSelectionScheme;
- (id)_firstTrackGroupWithMediaTypes:(id)a3;
- (id)_localizedMediaSelectionOptionDisplayNames;
- (id)_mediaSelectionGroupDictionaries;
- (id)_nameForLogging;
- (id)_tracksWithClass:(Class)a3;
- (id)alternateTrackGroups;
- (id)audioAlternatesTrackGroup;
- (id)availableVideoDynamicRanges;
- (id)compatibleTrackForCompositionTrack:(id)a3;
- (id)makePropertyListForProxyWithOptions:(id)a3;
- (id)mediaSelectionGroupForPropertyList:(id)a3 mediaSelectionOption:(id *)a4;
- (id)propertyListForProxy;
- (id)subtitleAlternatesTrackGroup;
- (id)trackReferences;
- (id)tracksWithMediaCharacteristics:(id)a3;
- (id)valueForUndefinedKey:(id)a3;
- (int)naturalTimeScale;
- (int64_t)moovAtomSize;
- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4;
- (unint64_t)_addChapterMetadataItem:(id)a3 timeRange:(id *)a4 toChapters:(id)a5 fromIndex:(unint64_t)a6;
- (unint64_t)hash;
- (void)_loadChapterInfo;
- (void)_loadValuesSynchronouslyForKeys:(id)a3 trackKeys:(id)a4;
- (void)_serverHasDied;
- (void)_setFragmentMindingInterval:(double)a3;
- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3;
- (void)cancelLoading;
- (void)dealloc;
- (void)findCompatibleTrackForCompositionTrack:(id)a3 completionHandler:(id)a4;
- (void)findUnusedTrackIDWithCompletionHandler:(void *)completionHandler;
- (void)loadChapterMetadataGroupsBestMatchingPreferredLanguages:(NSArray *)preferredLanguages completionHandler:(void *)completionHandler;
- (void)loadChapterMetadataGroupsWithTitleLocale:(NSLocale *)locale containingItemsWithCommonKeys:(NSArray *)commonKeys completionHandler:(void *)completionHandler;
- (void)loadMediaSelectionGroupForMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic completionHandler:(void *)completionHandler;
- (void)loadMetadataForFormat:(AVMetadataFormat)format completionHandler:(void *)completionHandler;
- (void)loadTrackWithTrackID:(CMPersistentTrackID)trackID completionHandler:(void *)completionHandler;
- (void)loadTracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic completionHandler:(void *)completionHandler;
- (void)loadTracksWithMediaType:(AVMediaType)mediaType completionHandler:(void *)completionHandler;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 keysForCollectionKeys:(id)a4 completionHandler:(id)a5;
@end

@implementation AVAsset

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    FigKTraceInit();
  }
}

- (id)_nameForLogging
{
  asset = self->_asset;
  if (!asset)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  loggingIdentifier = asset->loggingIdentifier;
  if (!loggingIdentifier)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"%p", self];
  }

  return [(AVLoggingIdentifier *)loggingIdentifier name];
}

- (id)_commonLoggingIdentifier
{
  v2 = self->_asset->loggingIdentifier;

  return v2;
}

- (OpaqueFigAsset)_figAsset
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 _figAsset];
}

+ (id)makeAssetLoggingIdentifier
{
  v2 = [[AVCommonLoggingIdentifier alloc] initWithIdentifierSuffix:0x1F0A91850 prefixlength:3];

  return v2;
}

- (CMTime)duration
{
  result = [(AVAsset *)self _assetInspectorLoader];
  if (result)
  {

    return [(CMTime *)result duration];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (AVAsset)init
{
  v7.receiver = self;
  v7.super_class = AVAsset;
  v3 = [(AVAsset *)&v7 init];
  if (v3)
  {
    v4 = objc_opt_class();
    AVRequireConcreteObject(v3, a2, v4);
    v5 = objc_alloc_init(AVAssetInternal);
    v3->_asset = v5;
    if (v5)
    {
      v3->_asset->loadChapterInfoOnce = objc_alloc_init(AVDispatchOnce);
      v3->_asset->weakReference = [[AVWeakReference alloc] initWithReferencedObject:v3];
      v3->_asset->loggingIdentifier = +[AVAsset makeAssetLoggingIdentifier];
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

- (BOOL)_isStreaming
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 _isStreaming];
}

- (BOOL)_prefersNominalDurations
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 _prefersNominalDurations];
}

+ (AVAsset)assetWithURL:(NSURL *)URL
{
  if (objc_opt_class() == a1)
  {

    return [AVURLAsset URLAssetWithURL:URL options:0];
  }

  else
  {
    v4 = [objc_alloc(objc_opt_class()) initWithURL:URL options:0];

    return v4;
  }
}

+ (AVAsset)assetWithData:(id)a3 contentType:(id)a4 options:(id)a5
{
  if (!a4)
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "contentType != nil";
    goto LABEL_10;
  }

  if (![a3 length])
  {
    v15 = MEMORY[0x1E695DF30];
    v16 = *MEMORY[0x1E695D940];
    v17 = "[data length] > 0";
LABEL_10:
    v18 = [v15 exceptionWithName:v16 reason:AVMethodExceptionReasonWithObjectAndSelector(a1 userInfo:{a2, @"invalid parameter not satisfying: %s", a4, a5, v5, v6, v7, v17), 0}];
    objc_exception_throw(v18);
  }

  if (objc_opt_class() == a1)
  {
    a1 = objc_opt_class();
  }

  v13 = [[a1 alloc] initWithData:a3 contentType:a4 options:a5];

  return v13;
}

- (void)dealloc
{
  asset = self->_asset;
  if (asset)
  {
  }

  v4.receiver = self;
  v4.super_class = AVAsset;
  [(AVAsset *)&v4 dealloc];
}

- (id)_assetInspector
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)_assetInspectorLoader
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (id)_comparisonToken
{
  result = [(AVAsset *)self _assetInspectorLoader];
  if (!result)
  {
    result = [(AVAsset *)self _assetInspector];
    if (!result)
    {
      v4 = MEMORY[0x1E696B098];

      return [v4 valueWithNonretainedObject:self];
    }
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVAsset *)self _assetInspectorLoader];
  v6 = [a3 _assetInspectorLoader];

  return [v5 isEqual:v6];
}

- (unint64_t)hash
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 hash];
}

- (id)valueForUndefinedKey:(id)a3
{
  if ([a3 isEqualToString:@"streaming"])
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(AVAsset *)self _isStreaming];

    return [v5 numberWithBool:v6];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVAsset;
    return [(AVAsset *)&v8 valueForUndefinedKey:a3];
  }
}

- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4
{
  v6 = [(AVAsset *)self _assetInspectorLoader];

  return [v6 statusOfValueForKey:a3 error:a4];
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  v6 = [(AVAsset *)self _assetInspectorLoader];

  [v6 loadValuesAsynchronouslyForKeys:a3 completionHandler:a4];
}

- (void)_loadValuesSynchronouslyForKeys:(id)a3 trackKeys:(id)a4
{
  v11[1] = *MEMORY[0x1E69E9840];
  v7 = dispatch_group_create();
  dispatch_group_enter(v7);
  if (a4)
  {
    v10 = @"tracks";
    v11[0] = a4;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__AVAsset__loadValuesSynchronouslyForKeys_trackKeys___block_invoke;
  v9[3] = &unk_1E7460C00;
  v9[4] = v7;
  [(AVAsset *)self loadValuesAsynchronouslyForKeys:a3 keysForCollectionKeys:v8 completionHandler:v9];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v7);
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 keysForCollectionKeys:(id)a4 completionHandler:(id)a5
{
  v8 = [(AVAsset *)self _assetInspectorLoader];

  [v8 loadValuesAsynchronouslyForKeys:a3 keysForCollectionKeys:a4 completionHandler:a5];
}

- (void)cancelLoading
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  [v2 cancelLoading];
}

- (OpaqueFigFormatReader)_copyFormatReader
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (OpaqueFigPlaybackItem)_playbackItem
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 _playbackItem];
}

- (Class)_classForTrackInspectors
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  return 0;
}

- (double)_fragmentMindingInterval
{
  if (![(AVAsset *)self _mindsFragments])
  {
    return 0.0;
  }

  v3 = [(AVAsset *)self _assetInspectorLoader];

  [v3 _fragmentMindingInterval];
  return result;
}

- (void)_setFragmentMindingInterval:(double)a3
{
  if ([(AVAsset *)self _mindsFragments])
  {
    v5 = [(AVAsset *)self _assetInspectorLoader];

    [v5 _setFragmentMindingInterval:a3];
  }
}

- (void)_setIsAssociatedWithFragmentMinder:(BOOL)a3
{
  v3 = a3;
  if ([(AVAsset *)self _mindsFragments])
  {
    v5 = [(AVAsset *)self _assetInspectorLoader];

    [v5 _setIsAssociatedWithFragmentMinder:v3];
  }
}

- (float)preferredRate
{
  v2 = [(AVAsset *)self _assetInspector];

  [v2 preferredRate];
  return result;
}

- (float)preferredVolume
{
  v2 = [(AVAsset *)self _assetInspector];

  [v2 preferredVolume];
  return result;
}

- (float)preferredSoundCheckVolumeNormalization
{
  v2 = [(AVAsset *)self _assetInspector];

  [v2 preferredSoundCheckVolumeNormalization];
  return result;
}

- (CGAffineTransform)preferredTransform
{
  result = [(AVAsset *)self _assetInspector];
  if (result)
  {

    return [(CGAffineTransform *)result preferredTransform];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (CGSize)maximumVideoResolution
{
  v2 = [(AVAsset *)self _assetInspector];

  [v2 maximumVideoResolution];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)availableVideoDynamicRanges
{
  result = [-[AVAsset _assetInspector](self "_assetInspector")];
  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (AVDisplayCriteria)preferredDisplayCriteria
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 preferredDisplayCriteria];
}

- (CMTime)minimumTimeOffsetFromLive
{
  result = [(AVAsset *)self _assetInspector];
  if (result)
  {

    return [(CMTime *)result minimumTimeOffsetFromLive];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (CGSize)naturalSize
{
  [-[AVAsset _assetInspectorLoader](self "_assetInspectorLoader")];
  v3 = [(AVAsset *)self tracksWithMediaType:@"vide"];
  if ([(NSArray *)v3 count])
  {
    [-[NSArray objectAtIndex:](v3 objectAtIndex:{0), "naturalSize"}];
  }

  else
  {
    v4 = 0.0;
    v5 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (int)naturalTimeScale
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 naturalTimeScale];
}

- (BOOL)providesPreciseDurationAndTiming
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 providesPreciseDurationAndTiming];
}

- (NSArray)trackGroups
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AVAsset *)self alternateTrackGroups];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [(NSArray *)v4 addObject:[[AVAssetTrackGroup alloc] initWithAsset:self trackIDs:*(*(&v10 + 1) + 8 * v8++)]];
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_firstTrackGroupWithMediaTypes:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(AVAsset *)self trackGroups];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *v14;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v14 != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(*(&v13 + 1) + 8 * v9);
    v11 = [v10 trackIDs];
    if ([v11 count])
    {
      if ([a3 containsObject:{-[AVAssetTrack mediaType](-[AVAsset trackWithTrackID:](self, "trackWithTrackID:", objc_msgSend(objc_msgSend(v11, "objectAtIndex:", 0), "intValue")), "mediaType")}])
      {
        return v10;
      }
    }

    if (v7 == ++v9)
    {
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)audioAlternatesTrackGroup
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"soun";
  return -[AVAsset _firstTrackGroupWithMediaTypes:](self, "_firstTrackGroupWithMediaTypes:", [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1]);
}

- (id)subtitleAlternatesTrackGroup
{
  v3[3] = *MEMORY[0x1E69E9840];
  v3[0] = @"sbtl";
  v3[1] = @"text";
  v3[2] = @"clcp";
  return -[AVAsset _firstTrackGroupWithMediaTypes:](self, "_firstTrackGroupWithMediaTypes:", [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:3]);
}

- (id)alternateTrackGroups
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 alternateTrackGroups];
}

- (id)_mediaSelectionGroupDictionaries
{
  [-[AVAsset _assetInspectorLoader](self "_assetInspectorLoader")];
  v3 = [(AVAsset *)self _assetInspector];

  return [v3 _mediaSelectionGroupDictionaries];
}

- (id)_localizedMediaSelectionOptionDisplayNames
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 _localizedMediaSelectionOptionDisplayNames];
}

- (id)_customMediaSelectionScheme
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 _customMediaSelectionScheme];
}

- (NSArray)availableMediaCharacteristicsWithMediaSelectionOptions
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(AVAsset *)self _mediaSelectionGroupDictionaries];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    v7 = *MEMORY[0x1E6973750];
    v23 = *MEMORY[0x1E6973748];
    v22 = *MEMORY[0x1E6973718];
    v21 = *MEMORY[0x1E6973720];
    v20 = *MEMORY[0x1E6973730];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 objectForKey:v7];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 isEqualToString:@"soun"];
          v13 = @"AVMediaCharacteristicAudible";
          if (v12)
          {
            goto LABEL_17;
          }

          v14 = [v11 isEqualToString:@"sbtl"];
          v13 = @"AVMediaCharacteristicLegible";
          if (v14)
          {
            goto LABEL_17;
          }

          v15 = [v11 isEqualToString:@"clcp"];
          v13 = @"AVMediaCharacteristicLegible";
          if (v15)
          {
            goto LABEL_17;
          }

          v16 = [v11 isEqualToString:@"vide"];
          v13 = @"AVMediaCharacteristicVisual";
          if (v16)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v17 = [v9 objectForKey:v23];
          if ([v17 containsObject:v22])
          {
            [v3 addObject:@"AVMediaCharacteristicAudible"];
          }

          if ([v17 containsObject:v21])
          {
            [v3 addObject:@"AVMediaCharacteristicLegible"];
          }

          v18 = [v17 containsObject:v20];
          v13 = @"AVMediaCharacteristicVisual";
          if (v18)
          {
LABEL_17:
            [v3 addObject:v13];
            continue;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v5);
  }

  return [v3 allObjects];
}

- (AVMediaSelectionGroup)mediaSelectionGroupForMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v25 = *MEMORY[0x1E69E9840];
  if ([(NSString *)mediaCharacteristic isEqualToString:@"AVMediaCharacteristicAudible"])
  {
    v19 = 0;
    v5 = @"soun";
    v6 = MEMORY[0x1E6973718];
LABEL_7:
    v7 = *v6;
    goto LABEL_8;
  }

  if ([(NSString *)mediaCharacteristic isEqualToString:@"AVMediaCharacteristicLegible"])
  {
    v5 = @"sbtl";
    v19 = @"clcp";
    v6 = MEMORY[0x1E6973720];
    goto LABEL_7;
  }

  if ([(NSString *)mediaCharacteristic isEqualToString:@"AVMediaCharacteristicVisual"])
  {
    v19 = 0;
    v5 = @"vide";
    v6 = MEMORY[0x1E6973730];
    goto LABEL_7;
  }

  v19 = 0;
  v7 = 0;
  v5 = 0;
LABEL_8:
  if (!(v5 | v7))
  {
    return 0;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [(AVAsset *)self _mediaSelectionGroupDictionaries];
  result = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (result)
  {
    v10 = result;
    v18 = self;
    v11 = *v21;
    v12 = *MEMORY[0x1E6973750];
    v13 = *MEMORY[0x1E6973748];
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [v15 objectForKey:{v12, v18}];
        if (v16)
        {
          v17 = v16;
          if ([v16 isEqualToString:v5] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v19))
          {
            return [AVMediaSelectionGroup mediaSelectionGroupWithAsset:v18 dictionary:v15];
          }
        }

        if ([objc_msgSend(v15 objectForKey:{v13), "containsObject:", v7}])
        {
          return [AVMediaSelectionGroup mediaSelectionGroupWithAsset:v18 dictionary:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      result = 0;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)loadMediaSelectionGroupForMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __75__AVAsset_loadMediaSelectionGroupForMediaCharacteristic_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = mediaCharacteristic;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"availableMediaCharacteristicsWithMediaSelectionOptions", v4);
}

uint64_t __75__AVAsset_loadMediaSelectionGroupForMediaCharacteristic_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) mediaSelectionGroupForMediaCharacteristic:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (id)mediaSelectionGroupForPropertyList:(id)a3 mediaSelectionOption:(id *)a4
{
  v31 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [(AVAsset *)self _mediaSelectionGroupDictionaries];
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v22 = a4;
  v23 = self;
  v25 = *v27;
  v9 = *MEMORY[0x1E6973750];
  v10 = *MEMORY[0x1E6973740];
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v27 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v26 + 1) + 8 * i);
      v13 = [v12 objectForKey:{v9, v22}];
      v14 = [a3 objectForKey:v9];
      if (v14)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = 0;
        }
      }

      v15 = [v12 objectForKey:v10];
      v16 = [a3 objectForKey:v10];
      if (v13)
      {
        v17 = v14 == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || ([v13 isEqualToString:v14] & 1) == 0)
      {
        v18 = !v15 || v16 == 0;
        if (v18 || ![v15 isEqual:v16])
        {
          continue;
        }
      }

      v19 = [AVMediaSelectionGroup mediaSelectionGroupWithAsset:v23 dictionary:v12];
      if (v19)
      {
        if ([AVMediaSelectionOption _plistHasOptionIdentifier:a3])
        {
          v21 = [(AVMediaSelectionGroup *)v19 mediaSelectionOptionWithPropertyListMatchToMediaSelectionArray:a3];
          if (!v21)
          {
            v19 = 0;
          }
        }

        else
        {
          v21 = 0;
        }

        if (v22)
        {
          *v22 = v21;
        }
      }

      return v19;
    }

    v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    v19 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

  return v19;
}

- (AVMediaSelection)preferredMediaSelection
{
  v2 = [[AVMediaSelection alloc] _initWithAsset:self];

  return v2;
}

- (NSArray)allMediaSelections
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(AVAsset *)self preferredMediaSelection];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self;
  obj = [(AVAsset *)self availableMediaCharacteristicsWithMediaSelectionOptions];
  v18 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v18)
  {
    v16 = *v24;
    do
    {
      v5 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v6 = [(AVAsset *)v17 mediaSelectionGroupForMediaCharacteristic:*(*(&v23 + 1) + 8 * v5)];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v7 = [(AVMediaSelectionGroup *)v6 options];
        v8 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v20;
          do
          {
            v11 = 0;
            do
            {
              if (*v20 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v19 + 1) + 8 * v11);
              v13 = [(AVMediaSelection *)v4 mutableCopy];
              [v13 selectMediaOption:v12 inMediaSelectionGroup:v6];
              [v3 addObject:v13];

              ++v11;
            }

            while (v9 != v11);
            v9 = [(NSArray *)v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v18);
      v18 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v18);
  }

  return [v3 copy];
}

- (id)trackReferences
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 trackReferences];
}

- (AVMetadataItem)creationDate
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 creationDate];
}

- (NSString)lyrics
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 lyrics];
}

- (NSArray)commonMetadata
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 commonMetadata];
}

- (NSArray)availableMetadataFormats
{
  [-[AVAsset _assetInspectorLoader](self "_assetInspectorLoader")];
  v3 = [-[AVAsset _assetInspector](self "_assetInspector")];
  if (!+[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace]|| ![(NSArray *)v3 containsObject:@"org.mp4ra"])
  {
    return v3;
  }

  return [(NSArray *)v3 arrayByAddingObject:@"com.apple.quicktime.udta"];
}

- (NSArray)metadataForFormat:(AVMetadataFormat)format
{
  v5 = [-[AVAsset _assetInspector](self "_assetInspector")];
  if (!+[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace]|| ![(NSString *)format isEqualToString:@"com.apple.quicktime.udta"])
  {
    return v5;
  }

  v6 = +[AVMetadataItem _replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:](AVMetadataItem, "_replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:", [-[AVAsset _assetInspector](self "_assetInspector")]);

  return [(NSArray *)v5 arrayByAddingObjectsFromArray:v6];
}

- (void)loadMetadataForFormat:(AVMetadataFormat)format completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVAsset_loadMetadataForFormat_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = format;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"availableMetadataFormats", v4);
}

uint64_t __51__AVAsset_loadMetadataForFormat_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) metadataForFormat:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (NSArray)metadata
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(AVAsset *)self availableMetadataFormats];
  v4 = [MEMORY[0x1E695DF70] array];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [(NSArray *)v4 addObjectsFromArray:[(AVAsset *)self metadataForFormat:*(*(&v10 + 1) + 8 * v8++)]];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_ID3Metadata
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 metadataForFormat:@"AVMetadataFormatTypedID3Metadata"];
}

- (id)_tracksWithClass:(Class)a3
{
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [-[AVAsset _assetInspector](self "_assetInspector")];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 count];
  }

  else
  {
    v8 = [-[AVAsset _assetInspector](self "_assetInspector")];
  }

  v9 = v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      if (v7)
      {
        v11 = [v7 objectAtIndex:v10];
        valuePtr = 0;
        CFNumberGetValue(v11, kCFNumberSInt32Type, &valuePtr);
        v12 = [a3 alloc];
        v13 = [v12 _initWithAsset:self trackID:valuePtr];
      }

      else
      {
        v13 = [[a3 alloc] _initWithAsset:self trackIndex:v10];
      }

      v14 = v13;
      if (v14)
      {
        [v5 addObject:v14];
      }

      ++v10;
    }

    while (v9 != v10);
  }

  return v5;
}

- (NSArray)tracks
{
  v4 = objc_opt_class();
  AVRequestConcreteImplementation(self, a2, v4);
  v5 = MEMORY[0x1E695DEC8];

  return [v5 array];
}

- (AVAssetTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(AVAsset *)self tracks];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v12;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v12 != v7)
    {
      objc_enumerationMutation(v4);
    }

    v9 = *(*(&v11 + 1) + 8 * v8);
    if ([(AVAssetTrack *)v9 trackID]== trackID)
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (void)loadTrackWithTrackID:(CMPersistentTrackID)trackID completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__AVAsset_loadTrackWithTrackID_completionHandler___block_invoke;
  v4[3] = &unk_1E74620A0;
  v5 = trackID;
  v4[4] = self;
  v4[5] = completionHandler;
  AVLoadValueAsynchronously(self, @"tracks", v4);
}

uint64_t __50__AVAsset_loadTrackWithTrackID_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) trackWithTrackID:*(a1 + 48)];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v3 = [[AVAssetTrackEnumerator alloc] initWithAsset:self mediaType:mediaType];
  v4 = [(AVAssetTrackEnumerator *)v3 allObjects];

  return v4;
}

- (void)loadTracksWithMediaType:(AVMediaType)mediaType completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__AVAsset_loadTracksWithMediaType_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = mediaType;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"tracks", v4);
}

uint64_t __53__AVAsset_loadTracksWithMediaType_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) tracksWithMediaType:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v4 = [MEMORY[0x1E695DEC8] arrayWithObject:mediaCharacteristic];

  return [(AVAsset *)self tracksWithMediaCharacteristics:v4];
}

- (void)loadTracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__AVAsset_loadTracksWithMediaCharacteristic_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = mediaCharacteristic;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"tracks", v4);
}

uint64_t __63__AVAsset_loadTracksWithMediaCharacteristic_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) tracksWithMediaCharacteristic:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (id)tracksWithMediaCharacteristics:(id)a3
{
  v3 = [[AVAssetTrackEnumerator alloc] initWithAsset:self mediaCharacteristics:a3];
  v4 = [(AVAssetTrackEnumerator *)v3 allObjects];

  return v4;
}

- (id)compatibleTrackForCompositionTrack:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = -[AVAsset tracksWithMediaType:](self, "tracksWithMediaType:", [a3 mediaType]);
  if (![(NSArray *)v3 count])
  {
    return 0;
  }

  return [(NSArray *)v3 objectAtIndex:0];
}

- (void)findCompatibleTrackForCompositionTrack:(id)a3 completionHandler:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __68__AVAsset_findCompatibleTrackForCompositionTrack_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = a3;
  v4[6] = a4;
  AVLoadValueAsynchronously(self, @"tracks", v4);
}

uint64_t __68__AVAsset_findCompatibleTrackForCompositionTrack_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) compatibleTrackForCompositionTrack:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

+ (BOOL)_assetCreationOptionsPrefersSandboxedOption:(id)a3
{
  v3 = [a3 objectForKey:@"AVAssetPrefersSandboxedParsingOptionKey"];

  return [v3 BOOLValue];
}

- (void)_serverHasDied
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  [v2 _serverHasDied];
}

- (BOOL)hasProtectedContent
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 hasProtectedContent];
}

- (BOOL)isPlayable
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 isPlayable];
}

- (BOOL)isExportable
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 isExportable];
}

- (BOOL)isReadable
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 isReadable];
}

- (BOOL)isComposable
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 isComposable];
}

- (BOOL)isCompatibleWithPhotosTranscodingServiceWithOptions:(id)a3
{
  v4 = [(AVAsset *)self _assetInspector];

  return [v4 isCompatibleWithPhotosTranscodingServiceWithOptions:a3];
}

- (BOOL)isCompatibleWithSavedPhotosAlbum
{
  v2 = [(AVAsset *)self _assetInspectorLoader];

  return [v2 isCompatibleWithSavedPhotosAlbum];
}

- (BOOL)isCompatibleWithAirPlayVideo
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 isCompatibleWithAirPlayVideo];
}

- (BOOL)canContainFragments
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 canContainFragments];
}

- (BOOL)containsFragments
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 containsFragments];
}

- (CMTime)overallDurationHint
{
  result = [(AVAsset *)self _assetInspector];
  if (result)
  {

    return [(CMTime *)result overallDurationHint];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (BOOL)supportsAnalysisReporting
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 supportsAnalysisReporting];
}

- (id)_assetAnalysisMessages
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 _assetAnalysisMessages];
}

- (int64_t)moovAtomSize
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 _moovAtomSize];
}

- (void)_loadChapterInfo
{
  loadChapterInfoOnce = self->_asset->loadChapterInfoOnce;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __53__AVAsset_AVAssetChapterInspection___loadChapterInfo__block_invoke;
  v3[3] = &unk_1E7460C00;
  v3[4] = self;
  [(AVDispatchOnce *)loadChapterInfoOnce runBlockOnce:v3];
}

uint64_t __53__AVAsset_AVAssetChapterInspection___loadChapterInfo__block_invoke(uint64_t a1)
{
  v1 = a1;
  v96 = *MEMORY[0x1E69E9840];
  v2 = [objc_msgSend(*(a1 + 32) "_assetInspectorLoader")];
  v3 = [objc_msgSend(*(v1 + 32) "_assetInspectorLoader")];
  v68 = v1;
  if ([v2 count])
  {
    v58 = v3;
    v69 = [MEMORY[0x1E695DF70] array];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v87 objects:v95 count:16];
    if (!v4)
    {
      goto LABEL_22;
    }

    v5 = v4;
    v66 = *v88;
    v6 = *MEMORY[0x1E6971898];
    v7 = *MEMORY[0x1E6971888];
    v8 = *MEMORY[0x1E6971880];
    v9 = *MEMORY[0x1E6971EB0];
    v60 = *MEMORY[0x1E6971890];
    obj = v2;
    v64 = *MEMORY[0x1E6971EB8];
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v88 != v66)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v87 + 1) + 8 * i);
        v12 = [v11 valueForKey:v6];
        v13 = [v11 valueForKey:v7];
        v14 = [v11 valueForKey:v8];
        if (!v14)
        {
          ISO639_1FromISO639_2T = FigMetadataGetISO639_1FromISO639_2T();
          if (ISO639_1FromISO639_2T)
          {
            v14 = ISO639_1FromISO639_2T;
          }

          else
          {
            v14 = v13;
          }
        }

        if ([v12 isEqualToString:v9])
        {
          v16 = [v11 valueForKey:v60];
        }

        else
        {
          v16 = 0;
        }

        v17 = *(*(v68 + 32) + 8);
        v19 = *(v17 + 32);
        v18 = (v17 + 32);
        if (v19)
        {
          if (![v12 isEqualToString:v64])
          {
            goto LABEL_18;
          }

          v18 = (*(*(v68 + 32) + 8) + 32);
        }

        *v18 = v12;
LABEL_18:
        v20 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v12, @"AVChapterGroupTypeKey", v13, @"AVChapterGroupLanguageCodeKey", v14, @"AVChapterGroupExtendedLanguageTagKey", 0}];
        if ([v16 count])
        {
          [v20 setObject:v16 forKey:@"AVChapterGroupPerChapterInfoKey"];
        }

        [v69 addObject:v20];
      }

      v5 = [obj countByEnumeratingWithState:&v87 objects:v95 count:16];
      if (!v5)
      {
LABEL_22:
        v1 = v68;
        *(*(*(v68 + 32) + 8) + 24) = [v69 copy];
        v3 = v58;
        break;
      }
    }
  }

  v21 = [MEMORY[0x1E695DF70] array];
  v22 = *(*(*(v1 + 32) + 8) + 24);
  if (v22)
  {
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v83 objects:v94 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v84;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v84 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v83 + 1) + 8 * j);
          if ([objc_msgSend(v27 valueForKey:{@"AVChapterGroupTypeKey", "isEqualToString:", *(*(*(v1 + 32) + 8) + 32)}])
          {
            v28 = [v27 valueForKey:@"AVChapterGroupExtendedLanguageTagKey"];
            if (v28)
            {
              v29 = v28;
              if (([v21 containsObject:v28] & 1) == 0)
              {
                [v21 addObject:v29];
              }
            }

            v30 = [v27 valueForKey:@"AVChapterGroupLanguageCodeKey"];
            v1 = v68;
            if (v30)
            {
              v31 = v30;
              if (([v21 containsObject:v30] & 1) == 0)
              {
                [v21 addObject:v31];
              }
            }
          }
        }

        v24 = [v22 countByEnumeratingWithState:&v83 objects:v94 count:16];
      }

      while (v24);
    }

    goto LABEL_72;
  }

  if (![v3 count])
  {
    goto LABEL_72;
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v59 = v3;
  v65 = [v3 countByEnumeratingWithState:&v79 objects:v93 count:16];
  if (v65)
  {
    obja = *v80;
    v61 = *MEMORY[0x1E69718B0];
    v32 = *MEMORY[0x1E6971F30];
    v33 = *MEMORY[0x1E6971F50];
    v34 = *MEMORY[0x1E6971F58];
    do
    {
      v35 = 0;
      do
      {
        if (*v80 != obja)
        {
          objc_enumerationMutation(v59);
        }

        v67 = v35;
        v36 = [*(*(&v79 + 1) + 8 * v35) objectForKey:v61];
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v70 = v36;
        v37 = [v36 countByEnumeratingWithState:&v75 objects:v92 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v76;
          do
          {
            for (k = 0; k != v38; ++k)
            {
              if (*v76 != v39)
              {
                objc_enumerationMutation(v70);
              }

              v41 = *(*(&v75 + 1) + 8 * k);
              v42 = [v41 objectForKey:v32];
              v43 = [v41 objectForKey:v33];
              v44 = [v41 objectForKey:v34];
              if (v42)
              {
                v45 = 1;
              }

              else
              {
                v45 = v44 == 0;
              }

              if (!v45)
              {
                v42 = [v44 localeIdentifier];
              }

              if (v43)
              {
                v46 = 1;
              }

              else
              {
                v46 = v42 == 0;
              }

              if (v46)
              {
                if (!v42)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                v43 = AVLanguageCodeFromExtendedLanguageTag(v42);
              }

              if (([v21 containsObject:v42] & 1) == 0)
              {
                [v21 addObject:v42];
              }

LABEL_63:
              if (v43 && ([v21 containsObject:v43] & 1) == 0)
              {
                [v21 addObject:v43];
              }
            }

            v38 = [v70 countByEnumeratingWithState:&v75 objects:v92 count:16];
          }

          while (v38);
        }

        v35 = v67 + 1;
      }

      while (v67 + 1 != v65);
      v65 = [v59 countByEnumeratingWithState:&v79 objects:v93 count:16];
    }

    while (v65);
  }

  v1 = v68;
  if (![v21 count])
  {
    [v21 addObject:@"und"];
  }

LABEL_72:
  *(*(*(v1 + 32) + 8) + 40) = [v21 copy];
  v47 = [MEMORY[0x1E695DF70] array];
  v48 = [MEMORY[0x1E695DF70] array];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v49 = [v21 countByEnumeratingWithState:&v71 objects:v91 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v72;
    do
    {
      for (m = 0; m != v50; ++m)
      {
        if (*v72 != v51)
        {
          objc_enumerationMutation(v21);
        }

        v53 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:*(*(&v71 + 1) + 8 * m)];
        if (v53)
        {
          v54 = v53;
          if (([v47 containsObject:v53] & 1) == 0)
          {
            v55 = [v54 localeIdentifier];
            if (v55)
            {
              v56 = v55;
              if (([v48 containsObject:v55] & 1) == 0)
              {
                [v48 addObject:v56];
              }
            }

            [v47 addObject:v54];
          }
        }
      }

      v50 = [v21 countByEnumeratingWithState:&v71 objects:v91 count:16];
    }

    while (v50);
  }

  *(*(*(v68 + 32) + 8) + 48) = [v48 copy];
  result = [v47 copy];
  *(*(*(v68 + 32) + 8) + 56) = result;
  return result;
}

- (unint64_t)_addChapterMetadataItem:(id)a3 timeRange:(id *)a4 toChapters:(id)a5 fromIndex:(unint64_t)a6
{
  v10 = [a5 count];
  if (v10 > a6)
  {
    v11 = v10;
    v12 = MEMORY[0x1E6960CC0];
    for (i = a6; v11 != i; ++i)
    {
      v14 = [a5 objectAtIndex:i];
      v15 = v14;
      memset(&v24, 0, sizeof(v24));
      if (v14)
      {
        [v14 timeRange];
      }

      range = v24;
      memset(&v23, 0, sizeof(v23));
      v16 = *&a4->var0.var3;
      *&otherRange.start.value = *&a4->var0.var0;
      *&otherRange.start.epoch = v16;
      *&otherRange.duration.timescale = *&a4->var1.var1;
      CMTimeRangeGetIntersection(&v23, &range, &otherRange);
      if ((v23.start.flags & 1) == 0 || (v23.duration.flags & 1) == 0 || v23.duration.epoch || v23.duration.value < 0 || (range.start = v23.duration, *&otherRange.start.value = *v12, otherRange.start.epoch = *(v12 + 16), CMTimeCompare(&range.start, &otherRange.start)))
      {
        v17 = [objc_msgSend(v15 "items")];
        [v17 addObject:a3];
        [v15 setItems:v17];
        a6 = i;
      }

      else
      {
        memset(&otherRange, 0, 24);
        v18 = *&a4->var0.var3;
        *&range.start.value = *&a4->var0.var0;
        *&range.start.epoch = v18;
        *&range.duration.timescale = *&a4->var1.var1;
        CMTimeRangeGetEnd(&otherRange.start, &range);
        *&range.start.value = *&v24.start.value;
        range.start.epoch = v24.start.epoch;
        start = otherRange.start;
        if (CMTimeCompare(&range.start, &start) < 1)
        {
          a6 = i;
        }

        *&range.start.value = *&v24.start.value;
        range.start.epoch = v24.start.epoch;
        start = otherRange.start;
        if ((CMTimeCompare(&range.start, &start) & 0x80000000) == 0)
        {
          return a6;
        }
      }
    }
  }

  return a6;
}

- (id)_chapterDataTypeForMediaSubType:(int)a3
{
  result = 0;
  if (a3 > 1785750886)
  {
    if (a3 == 1785750887)
    {
      v4 = MEMORY[0x1E6960220];
    }

    else
    {
      if (a3 != 1886283552)
      {
        return result;
      }

      v4 = MEMORY[0x1E6960230];
    }
  }

  else if (a3 == 1465011269)
  {
    v4 = MEMORY[0x1E69601F0];
  }

  else
  {
    if (a3 != 1734960672)
    {
      return result;
    }

    v4 = MEMORY[0x1E6960218];
  }

  return *v4;
}

- (id)_chapterMetadataGroupsWithTitleLanguage:(id)a3 containingItemsWithCommonKeys:(id)a4
{
  v52 = *MEMORY[0x1E69E9840];
  [(AVAsset *)self _loadChapterInfo];
  v7 = [-[AVAsset _assetInspectorLoader](self "_assetInspectorLoader")];
  v8 = [-[AVAsset _assetInspectorLoader](self "_assetInspectorLoader")];
  if ([v7 count])
  {
    result = [(AVAsset *)self _chapterMetadataGroupsWithFigChapterGroups:v7 titleLanguage:a3 containingItemsWithCommonKeys:a4];
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      if ([-[AVAsset _availableCanonicalizedChapterLanguages](self "_availableCanonicalizedChapterLanguages")])
      {
        v10 = [(AVAsset *)self _absoluteURL];
        v11 = [(AVAsset *)self referenceRestrictions];
        v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count")}];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v36 = [v8 countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v36)
        {
          v12 = 2 * (v11 & 0xFu);
          v34 = *MEMORY[0x1E69718B0];
          v35 = *v47;
          v32 = *MEMORY[0x1E69718A0];
          v33 = *MEMORY[0x1E69718B8];
          v31 = *MEMORY[0x1E6960CC0];
          v30 = *(MEMORY[0x1E6960CC0] + 16);
          v29 = *MEMORY[0x1E6960C68];
          v28 = *(MEMORY[0x1E6960C68] + 16);
          obj = v8;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v47 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v46 + 1) + 8 * i);
              v15 = [v14 objectForKey:v34];
              v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v15, "count")}];
              v42 = 0u;
              v43 = 0u;
              v44 = 0u;
              v45 = 0u;
              v17 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v43;
                do
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v43 != v19)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v21 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v42 + 1) + 8 * j) containerURL:v10 securityOptions:v12];
                    if (v21)
                    {
                      [v16 addObject:v21];
                    }
                  }

                  v18 = [v15 countByEnumeratingWithState:&v42 objects:v50 count:16];
                }

                while (v18);
              }

              *&v41.value = v31;
              v41.epoch = v30;
              *&v40.value = v29;
              v40.epoch = v28;
              v22 = [v14 objectForKey:v33];
              if (v22)
              {
                CMTimeMakeFromDictionary(&v41, v22);
              }

              v23 = [v14 objectForKey:v32];
              if (v23)
              {
                CMTimeMakeFromDictionary(&v40, v23);
              }

              memset(&v39, 0, sizeof(v39));
              start.start = v41;
              duration = v40;
              CMTimeRangeMake(&v39, &start.start, &duration);
              v24 = [AVTimedMetadataGroup alloc];
              start = v39;
              v25 = [(AVTimedMetadataGroup *)v24 initWithItems:v16 timeRange:&start];
              if (v25)
              {
                [v27 addObject:v25];
              }
            }

            v36 = [obj countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v36);
        }

        result = [v27 copy];
      }

      else
      {
        result = 0;
      }
    }
  }

  if (!result)
  {
    return MEMORY[0x1E695E0F0];
  }

  return result;
}

- (id)_chapterMetadataGroupsBestMatchingPreferredLanguages:(id)a3 containingItemsWithCommonKeys:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(a3);
        }

        v12 = [MEMORY[0x1E695DF58] canonicalLocaleIdentifierFromString:*(*(&v24 + 1) + 8 * i)];
        if (v12)
        {
          [v7 addObject:v12];
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  [(AVAsset *)self _availableCanonicalizedChapterLanguages];
  v13 = FigCopyRankedLanguagesAccordingToPreferredLanguages();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v14)
  {
    return MEMORY[0x1E695E0F0];
  }

  v15 = v14;
  v16 = *v21;
  v17 = MEMORY[0x1E695E0F0];
LABEL_12:
  v18 = 0;
  while (1)
  {
    if (*v21 != v16)
    {
      objc_enumerationMutation(v13);
    }

    result = [(AVAsset *)self _chapterMetadataGroupsWithTitleLanguage:*(*(&v20 + 1) + 8 * v18) containingItemsWithCommonKeys:a4];
    if (result)
    {
      return result;
    }

    if (v15 == ++v18)
    {
      v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      if (v15)
      {
        goto LABEL_12;
      }

      return v17;
    }
  }
}

- (NSArray)chapterMetadataGroupsBestMatchingPreferredLanguages:(NSArray *)preferredLanguages
{
  v5 = [MEMORY[0x1E695DEC8] arrayWithObject:@"artwork"];

  return [(AVAsset *)self _chapterMetadataGroupsBestMatchingPreferredLanguages:preferredLanguages containingItemsWithCommonKeys:v5];
}

- (void)loadChapterMetadataGroupsBestMatchingPreferredLanguages:(NSArray *)preferredLanguages completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __111__AVAsset_AVAssetChapterInspection__loadChapterMetadataGroupsBestMatchingPreferredLanguages_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = preferredLanguages;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"availableChapterLocales", v4);
}

uint64_t __111__AVAsset_AVAssetChapterInspection__loadChapterMetadataGroupsBestMatchingPreferredLanguages_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) chapterMetadataGroupsBestMatchingPreferredLanguages:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (NSArray)chapterMetadataGroupsWithTitleLocale:(NSLocale *)locale containingItemsWithCommonKeys:(NSArray *)commonKeys
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = [(NSLocale *)locale localeIdentifier];
  return -[AVAsset _chapterMetadataGroupsBestMatchingPreferredLanguages:containingItemsWithCommonKeys:](self, "_chapterMetadataGroupsBestMatchingPreferredLanguages:containingItemsWithCommonKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1], commonKeys);
}

- (void)loadChapterMetadataGroupsWithTitleLocale:(NSLocale *)locale containingItemsWithCommonKeys:(NSArray *)commonKeys completionHandler:(void *)completionHandler
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __126__AVAsset_AVAssetChapterInspection__loadChapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeys_completionHandler___block_invoke;
  v5[3] = &unk_1E74620C8;
  v5[4] = self;
  v5[5] = locale;
  v5[6] = commonKeys;
  v5[7] = completionHandler;
  AVLoadValueAsynchronously(self, @"availableChapterLocales", v5);
}

uint64_t __126__AVAsset_AVAssetChapterInspection__loadChapterMetadataGroupsWithTitleLocale_containingItemsWithCommonKeys_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) chapterMetadataGroupsWithTitleLocale:*(a1 + 40) containingItemsWithCommonKeys:*(a1 + 48)];
  }

  v3 = *(*(a1 + 56) + 16);

  return v3();
}

- (id)_chapterTracks
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v4 = [-[AVAsset trackReferences](self "trackReferences")];
  v5 = [v4 count];
  if (v5 >= 2)
  {
    v6 = v5 >> 1;
    v7 = 1;
    do
    {
      v8 = -[AVAsset trackWithTrackID:](self, "trackWithTrackID:", [objc_msgSend(v4 objectAtIndex:{v7), "intValue"}]);
      if (v8)
      {
        [v3 addObject:v8];
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isDefunct
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 _isDefunct];
}

- (NSArray)fragments
{
  v2 = -[AVFragmentedAssetsArray initWithCount:firstSequenceNumber:]([AVFragmentedAssetsArray alloc], "initWithCount:firstSequenceNumber:", [-[AVAsset _assetInspectorLoader](self "_assetInspectorLoader")], objc_msgSend(-[AVAsset _assetInspectorLoader](self, "_assetInspectorLoader"), "firstFragmentSequenceNumber"));

  return v2;
}

- (CMPersistentTrackID)unusedTrackID
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(AVAsset *)self tracks];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (!v3)
  {
    return 2;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v11;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(v2);
      }

      v8 = *(*(&v10 + 1) + 8 * i);
      if ([v8 trackID] > v5)
      {
        v5 = [v8 trackID];
      }
    }

    v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  }

  while (v4);
  return v5 + 2;
}

- (void)findUnusedTrackIDWithCompletionHandler:(void *)completionHandler
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __82__AVAsset_AVAssetVideoCompositionUtility__findUnusedTrackIDWithCompletionHandler___block_invoke;
  v3[3] = &unk_1E7463978;
  v3[4] = self;
  v3[5] = completionHandler;
  AVLoadValueAsynchronously(self, @"tracks", v3);
}

uint64_t __82__AVAsset_AVAssetVideoCompositionUtility__findUnusedTrackIDWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) unusedTrackID];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (id)propertyListForProxy
{
  v2 = [(AVAsset *)self _assetInspector];

  return [v2 propertyListForProxy];
}

- (id)makePropertyListForProxyWithOptions:(id)a3
{
  v4 = [(AVAsset *)self _assetInspector];

  return [v4 makePropertyListForProxyWithOptions:a3];
}

+ (id)inspectionOnlyAssetWithFigAsset:(OpaqueFigAsset *)a3
{
  v3 = [[AVStreamDataInspectionOnlyAsset alloc] initWithFigAsset:a3];

  return v3;
}

+ (id)inspectionOnlyAssetWithStreamDataParser:(id)a3 tracks:(id)a4
{
  v4 = [[AVStreamDataAsset alloc] initWithParser:a3 tracks:a4];

  return v4;
}

+ (AVAsset)assetWithURL:(id)a3 figPlaybackItem:(OpaqueFigPlaybackItem *)a4 trackIDs:(id)a5 dynamicBehavior:(BOOL)a6
{
  v7 = [[AVPlaybackItemInspectorLoader alloc] initWithURL:a3 playbackItem:a4 trackIDs:a5 dynamicBehavior:a6];
  v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v7, @"AVURLAssetInspectorLoaderKey", 0}];
  if (!v7 || !v8)
  {
    return 0;
  }

  return [AVURLAsset URLAssetWithURL:a3 options:v8];
}

- (id)_chapterMetadataGroupsWithFigChapterGroups:(id)a3 titleLanguage:(id)a4 containingItemsWithCommonKeys:(id)a5
{
  v129 = a5;
  v115 = a4;
  v105 = a3;
  v162 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v6 = *(MEMORY[0x1E6960C98] + 32);
  *&v158.start.epoch = *(MEMORY[0x1E6960C98] + 16);
  *&v158.duration.timescale = v6;
  v7 = *MEMORY[0x1E6960C98];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  *&v158.start.value = v7;
  v154 = 0u;
  obj = self->_asset->chapterGroupInfo;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v154 objects:v161 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v108 = self;
  v10 = 0.0;
  v11 = *v155;
LABEL_3:
  v12 = 0;
  *&v136 = *&v10 + v9;
  while (1)
  {
    if (*v155 != v11)
    {
      objc_enumerationMutation(obj);
    }

    v13 = *(*(&v154 + 1) + 8 * v12);
    v14 = [v13 valueForKey:@"AVChapterGroupTypeKey"];
    v126 = v13;
    v15 = [v13 valueForKey:@"AVChapterGroupExtendedLanguageTagKey"];
    v16 = v15 ? [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v15] : 0;
    v17 = [v126 valueForKey:@"AVChapterGroupLanguageCodeKey"];
    v18 = v17 ? [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:v17] : 0;
    v19 = [v126 valueForKey:@"AVChapterGroupPerChapterInfoKey"];
    if ([v14 isEqualToString:v108->_asset->anchorChapterType])
    {
      if (([v115 isEqualToString:v16] & 1) != 0 || objc_msgSend(v115, "isEqualToString:", v18))
      {
        break;
      }
    }

    ++*&v10;
    if (v9 == ++v12)
    {
      v9 = [(NSArray *)obj countByEnumeratingWithState:&v154 objects:v161 count:16];
      v10 = v136;
      if (v9)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }

  v21 = [v126 valueForKey:@"AVChapterGroupChaptersKey"];
  v22 = MEMORY[0x1E69718A8];
  v23 = 0x1E695D000;
  if (!v21)
  {
    v21 = [MEMORY[0x1E695DF70] array];
    if (FCSupport_CopyChapterTimeRangesForChapterGroup())
    {
      return 0;
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v25 = Count;
        v26 = 0;
        obja = *MEMORY[0x1E69718A8];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v26);
          CMTimeRangeMakeFromDictionary(&v158, ValueAtIndex);
          if ([v19 count])
          {
            v28 = [v19 objectAtIndex:v26];
            LODWORD(valuePtr.start.value) = 0;
            CFNumberGetValue([v28 objectForKey:obja], kCFNumberSInt32Type, &valuePtr);
            v29 = v108;
            *&v30 = COERCE_DOUBLE([(AVAsset *)v108 _chapterDataTypeForMediaSubType:LODWORD(valuePtr.start.value)]);
          }

          else
          {
            *&v30 = 0.0;
            v29 = v108;
          }

          v31 = [AVChapterMetadataItem alloc];
          v40 = OUTLINED_FUNCTION_0_0(v32, v33, v34, v35, v36, v37, v38, v39, v97, v99, v102, *&v105, *&v108, *&v111, *&v115, v118, v122, *&v126, *&v129, v132, v136, *&obja, *&v145, *(&v145 + 1), *&v146, *(&v146 + 1), *&v147, *(&v147 + 1), *&v148, *(&v148 + 1), *&valuePtr.start.value, *&valuePtr.start.timescale, *&valuePtr.start.epoch, *&valuePtr.duration.value, *&valuePtr.duration.timescale, *&valuePtr.duration.epoch, v150, v151, v152, v153, *&v154, *(&v154 + 1), *&v155, *(&v155 + 1), *&v156, *(&v156 + 1), *&v157, *(&v157 + 1), *&v158.start.value, *&v158.start.timescale, *&v158.start.epoch, *&v158.duration.value);
          v98 = *&v30;
          v100 = v41;
          v43 = [v42 _initWithAsset:v29 chapterGroupIndex:*&v10 chapterIndex:v26 chapterType:v14 extendedLanguageTag:v15 languageCode:v17 chapterDataType:v40 time:? duration:?];
          v44 = [AVTimedMetadataGroup alloc];
          [MEMORY[0x1E695DEC8] arrayWithObject:v43];
          [v21 addObject:{-[AVTimedMetadataGroup initWithItems:timeRange:](v44, "initWithItems:timeRange:", OUTLINED_FUNCTION_1_0(v45, v46, v47, v48, v49, v50, v51, v52, v98, v100, v103, v106, v109, v112, v116, v119, v123, v127, v130, v133, v137, objc, *&v145, *(&v145 + 1), *&v146, *(&v146 + 1), *&v147, *(&v147 + 1), *&v148, *(&v148 + 1), *&valuePtr.start.value, *&valuePtr.start.timescale, *&valuePtr.start.epoch, *&valuePtr.duration.value, *&valuePtr.duration.timescale, *&valuePtr.duration.epoch, v150, v151, v152, v153, *&v154, *(&v154 + 1), *&v155, *(&v155 + 1), *&v156, *(&v156 + 1), *&v157, *(&v157 + 1), *&v158.start.value, *&v158.start.timescale, *&v158.start.epoch, *&v158.duration.value, *&v158.duration.timescale))}];
          ++v26;
        }

        while (v25 != v26);
      }

      v23 = 0x1E695D000uLL;
      v22 = MEMORY[0x1E69718A8];
      if (theArray)
      {
        CFRelease(theArray);
        theArray = 0;
      }
    }

    [v126 setObject:v21 forKey:@"AVChapterGroupChaptersKey"];
    if (!v21)
    {
      return 0;
    }
  }

  v20 = [v21 mutableCopy];
  v53 = [v20 count];
  if (v53)
  {
    v54 = v53;
    for (i = 0; i != v54; ++i)
    {
      v56 = [objc_msgSend(OUTLINED_FUNCTION_2_0() "objectAtIndex:"mutableCopy"")];
      [OUTLINED_FUNCTION_2_0() replaceObjectAtIndex:? withObject:?];
    }
  }

  v147 = 0u;
  v148 = 0u;
  v145 = 0u;
  v146 = 0u;
  chapterGroupInfo = v108->_asset->chapterGroupInfo;
  v124 = COERCE_DOUBLE([(NSArray *)chapterGroupInfo countByEnumeratingWithState:&v145 objects:v160 count:16]);
  if (v124 != 0.0)
  {
    v57 = 0;
    v120 = *v146;
    v138 = *v22;
    objb = v20;
    do
    {
      v58 = 0.0;
      do
      {
        if (*v146 != *&v120)
        {
          objc_enumerationMutation(chapterGroupInfo);
        }

        v59 = *(*(&v145 + 1) + 8 * *&v58);
        v60 = [v59 valueForKey:@"AVChapterGroupTypeKey"];
        v61 = [v59 valueForKey:@"AVChapterGroupExtendedLanguageTagKey"];
        if (v61)
        {
          v62 = [*(v23 + 3928) canonicalLanguageIdentifierFromString:v61];
        }

        else
        {
          v62 = 0;
        }

        v63 = [v59 valueForKey:@"AVChapterGroupLanguageCodeKey"];
        v134 = v58;
        if (v63)
        {
          v64 = [*(v23 + 3928) canonicalLanguageIdentifierFromString:v63];
        }

        else
        {
          v64 = 0;
        }

        v65 = [v59 valueForKey:@"AVChapterGroupPerChapterInfoKey"];
        v66 = [v129 containsObject:v60];
        if (v59 != v126)
        {
          v67 = v66;
          if (([v115 isEqualToString:v62] & 1) != 0 || ((objc_msgSend(v115, "isEqualToString:", v64) | v67)) && ((objc_msgSend(v129, "containsObject:", v60) & 1) != 0 || objc_msgSend(v60, "isEqualToString:", v108->_asset->anchorChapterType)))
          {
            if (FCSupport_CopyChapterTimeRangesForChapterGroup())
            {
              return objb;
            }

            if (theArray)
            {
              v68 = CFArrayGetCount(theArray);
              v69 = v108;
              if (v68)
              {
                v70 = v68;
                for (j = 0; j != v70; ++j)
                {
                  v72 = CFArrayGetValueAtIndex(theArray, j);
                  CMTimeRangeMakeFromDictionary(&valuePtr, v72);
                  v158 = valuePtr;
                  if ([v65 count])
                  {
                    v73 = [v65 objectAtIndex:j];
                    LODWORD(valuePtr.start.value) = 0;
                    CFNumberGetValue([v73 objectForKey:*&v138], kCFNumberSInt32Type, &valuePtr);
                    v74 = COERCE_DOUBLE([(AVAsset *)v69 _chapterDataTypeForMediaSubType:LODWORD(valuePtr.start.value)]);
                  }

                  else
                  {
                    v74 = 0.0;
                  }

                  v75 = [AVChapterMetadataItem alloc];
                  v84 = OUTLINED_FUNCTION_0_0(v76, v77, v78, v79, v80, v81, v82, v83, v97, v99, v102, *&v105, *&v108, *&chapterGroupInfo, *&v115, v120, v124, *&v126, *&v129, v134, v138, *&objb, *&v145, *(&v145 + 1), *&v146, *(&v146 + 1), *&v147, *(&v147 + 1), *&v148, *(&v148 + 1), *&valuePtr.start.value, *&valuePtr.start.timescale, *&valuePtr.start.epoch, *&valuePtr.duration.value, *&valuePtr.duration.timescale, *&valuePtr.duration.epoch, v150, v151, v152, v153, *&v154, *(&v154 + 1), *&v155, *(&v155 + 1), *&v156, *(&v156 + 1), *&v157, *(&v157 + 1), *&v158.start.value, *&v158.start.timescale, *&v158.start.epoch, *&v158.duration.value);
                  v101 = v85;
                  v87 = [v86 _initWithAsset:v69 chapterGroupIndex:v57 chapterIndex:j chapterType:v60 extendedLanguageTag:v61 languageCode:v63 chapterDataType:v84 time:? duration:?];
                  [(AVAsset *)v69 _addChapterMetadataItem:OUTLINED_FUNCTION_1_0(v88 timeRange:v89 toChapters:v90 fromIndex:v91, v92, v93, v94, v95, v74, v101, v104, v107, v110, v114, v117, v121, v125, v128, v131, v135, v139, objd, *&v145, *(&v145 + 1), *&v146, *(&v146 + 1), *&v147, *(&v147 + 1), *&v148, *(&v148 + 1), *&valuePtr.start.value, *&valuePtr.start.timescale, *&valuePtr.start.epoch, *&valuePtr.duration.value, *&valuePtr.duration.timescale, *&valuePtr.duration.epoch, v150, v151, v152, v153, *&v154, *(&v154 + 1), *&v155, *(&v155 + 1), *&v156, *(&v156 + 1), *&v157, *(&v157 + 1), *&v158.start.value, *&v158.start.timescale, *&v158.start.epoch, *&v158.duration.value, *&v158.duration.timescale)];
                }
              }

              v23 = 0x1E695D000;
              if (theArray)
              {
                CFRelease(theArray);
                theArray = 0;
              }
            }
          }
        }

        ++v57;
        *&v58 = *&v134 + 1;
      }

      while (*&v134 + 1 != *&v124);
      v124 = COERCE_DOUBLE([(NSArray *)chapterGroupInfo countByEnumeratingWithState:&v145 objects:v160 count:16]);
    }

    while (v124 != 0.0);
    return objb;
  }

  return v20;
}

@end