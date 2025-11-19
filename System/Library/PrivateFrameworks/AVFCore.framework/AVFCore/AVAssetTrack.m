@interface AVAssetTrack
+ (id)mediaCharacteristicsForMediaTypes;
- ($2FE3C3292E52C4A5B67D27538456EAD9)gaplessSourceTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaDecodeTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaPresentationTimeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)latentBaseDecodeTimeStampOfFirstTrackFragment;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)uneditedDuration;
- (AVAssetTrackSegment)segmentForTrackTime:(CMTime *)trackTime;
- (AVSampleCursor)makeSampleCursorWithPresentationTimeStamp:(CMTime *)presentationTimeStamp;
- (BOOL)_firstFormatDescriptionIsLPCM;
- (BOOL)_hasEmptyEdits;
- (BOOL)_hasMultipleDistinctFormatDescriptions;
- (BOOL)_hasScaledEdits;
- (BOOL)_subtitleFormatDescriptionMatchesTextDisplayFlags:(unsigned int)a3 flagsMask:(unsigned int)a4;
- (BOOL)hasMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (BOOL)hasMediaCharacteristics:(id)a3;
- (BOOL)isDefunct;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)preferredTransform;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (CMTime)minFrameDuration;
- (CMTime)samplePresentationTimeForTrackTime:(SEL)a3;
- (CMTimeRange)timeRange;
- (NSArray)associatedTracksOfType:(AVTrackAssociationType)trackAssociationType;
- (NSArray)availableMetadataFormats;
- (NSArray)availableTrackAssociationTypes;
- (NSArray)metadata;
- (NSArray)metadataForFormat:(AVMetadataFormat)format;
- (NSString)description;
- (id)_firstAssociatedTrackWithAssociationType:(id)a3;
- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5;
- (void)_startListeningToFigAssetTrackNotifications;
- (void)_stopListeningToFigAssetTrackNotifications;
- (void)dealloc;
- (void)loadAssociatedTracksOfType:(AVTrackAssociationType)trackAssociationType completionHandler:(void *)completionHandler;
- (void)loadMetadataForFormat:(AVMetadataFormat)format completionHandler:(void *)completionHandler;
- (void)loadSamplePresentationTimeForTrackTime:(CMTime *)trackTime completionHandler:(void *)completionHandler;
- (void)loadSegmentForTrackTime:(CMTime *)trackTime completionHandler:(void *)completionHandler;
@end

@implementation AVAssetTrack

- (void)_startListeningToFigAssetTrackNotifications
{
  v3 = [(AVAssetTrack *)self _figAssetTrack];
  v4 = [(AVAssetTrack *)self _weakReference];
  if (v3)
  {
    v5 = v4;
    if (v4)
    {
      self->_track->figAssetTrackNotificationSource = CFRetain(v3);
      self->_track->figAssetTrackNotificationListenerWeakReference = CFRetain(v5);
      [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
      OUTLINED_FUNCTION_0_2();

      [v6 addListenerWithWeakReference:? callback:? name:? object:? flags:?];
    }
  }
}

+ (id)mediaCharacteristicsForMediaTypes
{
  if (mediaCharacteristicsForMediaTypes_onceToken != -1)
  {
    +[AVAssetTrack mediaCharacteristicsForMediaTypes];
  }

  return mediaCharacteristicsForMediaTypes_sMediaCharacteristicsForMediaTypes;
}

void __49__AVAssetTrack_mediaCharacteristicsForMediaTypes__block_invoke()
{
  if (!mediaCharacteristicsForMediaTypes_sMediaCharacteristicsForMediaTypes)
  {
    v6 = MEMORY[0x1E695DF20];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AVMediaCharacteristicVisual", @"AVMediaCharacteristicFrameBased", 0}];
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AVMediaCharacteristicAudible", 0}];
    v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AVMediaCharacteristicVisual", @"AVMediaCharacteristicLegible", @"AVMediaCharacteristicFrameBased", 0}];
    v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AVMediaCharacteristicVisual", @"AVMediaCharacteristicLegible", 0}];
    v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AVMediaCharacteristicVisual", @"AVMediaCharacteristicLegible", @"AVMediaCharacteristicFrameBased", 0}];
    v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:{@"AVMediaCharacteristicVisual", 0}];
    mediaCharacteristicsForMediaTypes_sMediaCharacteristicsForMediaTypes = [v6 dictionaryWithObjectsAndKeys:{v5, @"vide", v4, @"soun", v0, @"text", v1, @"clcp", v2, @"sbtl", v3, @"tmcd", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:", @"AVMediaCharacteristicFrameBased", 0), @"meta", 0}];
  }
}

- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5
{
  v6 = *&a4;
  v13.receiver = self;
  v13.super_class = AVAssetTrack;
  v8 = [(AVAssetTrack *)&v13 init];
  if (v8)
  {
    v9 = [AVAssetTrackInspector assetTrackInspectorWithAsset:a3 trackID:v6 trackIndex:a5];
    if (v9 && (v10 = v9, v11 = objc_alloc_init(AVAssetTrackInternal), (v8->_track = v11) != 0))
    {
      CFRetain(v11);
      v8->_track->trackInspector = v10;
      v8->_track->assetWeakReference = [a3 _weakReference];
      v8->_track->weakReferenceToSelf = [[AVWeakReference alloc] initWithReferencedObject:v8];
      [(AVAssetTrack *)v8 _startListeningToFigAssetTrackNotifications];
    }

    else
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  if (self->_track)
  {
    [(AVAssetTrack *)self _stopListeningToFigAssetTrackNotifications];

    CFRelease(self->_track);
  }

  v3.receiver = self;
  v3.super_class = AVAssetTrack;
  [(AVAssetTrack *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, trackID = %d, mediaType = %@>", NSStringFromClass(v4), self, -[AVAssetTrack trackID](self, "trackID"), -[AVAssetTrack mediaType](self, "mediaType")];
}

- (BOOL)_subtitleFormatDescriptionMatchesTextDisplayFlags:(unsigned int)a3 flagsMask:(unsigned int)a4
{
  v7 = [(NSString *)[(AVAssetTrack *)self mediaType] isEqualToString:@"sbtl"];
  if (v7)
  {
    v8 = [(AVAssetTrack *)self formatDescriptions];
    if ([(NSArray *)v8 count]== 1)
    {
      displayFlagsOut = 0;
      v9 = [(NSArray *)v8 objectAtIndex:0];
      MediaType = CMFormatDescriptionGetMediaType(v9);
      LOBYTE(v7) = 0;
      if (MediaType == 1935832172)
      {
        if (CMTextFormatDescriptionGetDisplayFlags(v9, &displayFlagsOut))
        {
          v11 = 0;
        }

        else
        {
          v11 = (displayFlagsOut & a4) == a3;
        }

        LOBYTE(v7) = v11;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)hasMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v4 = [(AVAssetTrackInspector *)self->_track->trackInspector mediaCharacteristics];

  return [(NSArray *)v4 containsObject:mediaCharacteristic];
}

- (BOOL)hasMediaCharacteristics:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(a3);
      }

      v9 = [(AVAssetTrack *)self hasMediaCharacteristic:*(*(&v11 + 1) + 8 * v8)];
      if (!v9)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [a3 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v9) = 1;
  }

  return v9;
}

- (CMTimeRange)timeRange
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [(CMTimeRange *)result timeRange];
  }

  *&retstr->start.epoch = 0u;
  *&retstr->duration.timescale = 0u;
  *&retstr->start.value = 0u;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)uneditedDuration
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result uneditedDuration];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaPresentationTimeRange
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [($2FE3C3292E52C4A5B67D27538456EAD9 *)result mediaPresentationTimeRange];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return result;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaDecodeTimeRange
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [($2FE3C3292E52C4A5B67D27538456EAD9 *)result mediaDecodeTimeRange];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)latentBaseDecodeTimeStampOfFirstTrackFragment
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result latentBaseDecodeTimeStampOfFirstTrackFragment];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return result;
}

- (CGSize)naturalSize
{
  [(AVAssetTrackInspector *)self->_track->trackInspector naturalSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)dimensions
{
  [(AVAssetTrackInspector *)self->_track->trackInspector dimensions];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [(CGAffineTransform *)result preferredTransform];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return result;
}

- (CMTime)minFrameDuration
{
  trackInspector = self->_track->trackInspector;
  if (trackInspector)
  {
    [(AVAssetTrackInspector *)trackInspector minSampleDuration];
  }

  result = [objc_msgSend(+[AVAssetTrack mediaCharacteristicsForMediaTypes](AVAssetTrack "mediaCharacteristicsForMediaTypes")];
  if (result)
  {
    *&retstr->value = 0uLL;
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E6960C70];
    *&retstr->value = *MEMORY[0x1E6960C70];
    v7 = *(v8 + 16);
  }

  retstr->epoch = v7;
  return result;
}

- (AVAssetTrackSegment)segmentForTrackTime:(CMTime *)trackTime
{
  trackInspector = self->_track->trackInspector;
  v5 = *trackTime;
  return [(AVAssetTrackInspector *)trackInspector segmentForTrackTime:&v5];
}

- (void)loadSegmentForTrackTime:(CMTime *)trackTime completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__AVAssetTrack_loadSegmentForTrackTime_completionHandler___block_invoke;
  v4[3] = &unk_1E74622B0;
  v5 = *trackTime;
  v4[4] = self;
  v4[5] = completionHandler;
  AVLoadValueAsynchronously(self, @"segments", v4);
}

uint64_t __58__AVAssetTrack_loadSegmentForTrackTime_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = *(a1 + 64);
    [v5 segmentForTrackTime:&v6];
    return (*(*(a1 + 40) + 16))();
  }
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)gaplessSourceTimeRange
{
  result = self->_track->trackInspector;
  if (result)
  {
    return [($2FE3C3292E52C4A5B67D27538456EAD9 *)result gaplessSourceTimeRange];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return result;
}

- (CMTime)samplePresentationTimeForTrackTime:(SEL)a3
{
  result = self->_track->trackInspector;
  if (result)
  {
    v5 = *trackTime;
    return [(CMTime *)result samplePresentationTimeForTrackTime:&v5];
  }

  else
  {
    retstr->value = 0;
    *&retstr->timescale = 0;
    retstr->epoch = 0;
  }

  return result;
}

- (void)loadSamplePresentationTimeForTrackTime:(CMTime *)trackTime completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__AVAssetTrack_loadSamplePresentationTimeForTrackTime_completionHandler___block_invoke;
  v4[3] = &unk_1E74622B0;
  v5 = *trackTime;
  v4[4] = self;
  v4[5] = completionHandler;
  AVLoadValueAsynchronously(self, @"segments", v4);
}

uint64_t __73__AVAssetTrack_loadSamplePresentationTimeForTrackTime_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 40) + 16);
    v11 = *MEMORY[0x1E6960C70];
    v12 = *(MEMORY[0x1E6960C70] + 16);
    return v4(v3, &v11, a2);
  }

  else
  {
    v11 = 0uLL;
    v12 = 0;
    v6 = *(a1 + 32);
    if (v6)
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 64);
      [v6 samplePresentationTimeForTrackTime:&v9];
    }

    v7 = *(a1 + 40);
    v8 = *(v7 + 16);
    v9 = v11;
    v10 = v12;
    return v8(v7, &v9, 0);
  }
}

- (NSArray)availableMetadataFormats
{
  v2 = [(AVAssetTrackInspector *)self->_track->trackInspector availableMetadataFormats];
  if (!+[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace]|| ![(NSArray *)v2 containsObject:@"org.mp4ra"])
  {
    return v2;
  }

  return [(NSArray *)v2 arrayByAddingObject:@"com.apple.quicktime.udta"];
}

- (NSArray)metadataForFormat:(AVMetadataFormat)format
{
  v5 = [(AVAssetTrackInspector *)self->_track->trackInspector metadataForFormat:?];
  if (!+[AVMetadataItem _clientExpectsISOUserDataKeysInQuickTimeUserDataKeySpace]|| ![(NSString *)format isEqualToString:@"com.apple.quicktime.udta"])
  {
    return v5;
  }

  v6 = [AVMetadataItem _replaceQuickTimeUserDataKeySpaceWithISOUserDataKeySpaceIfRequired:[(NSArray *)v5 arrayByAddingObjectsFromArray:[(AVAssetTrackInspector *)self->_track->trackInspector metadataForFormat:@"org.mp4ra"]]];

  return [(NSArray *)v5 arrayByAddingObjectsFromArray:v6];
}

- (void)loadMetadataForFormat:(AVMetadataFormat)format completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__AVAssetTrack_loadMetadataForFormat_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = format;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"availableMetadataFormats", v4);
}

uint64_t __56__AVAssetTrack_loadMetadataForFormat_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
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
  v3 = [(AVAssetTrack *)self availableMetadataFormats];
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

        [(NSArray *)v4 addObjectsFromArray:[(AVAssetTrack *)self metadataForFormat:*(*(&v10 + 1) + 8 * v8++)]];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_firstAssociatedTrackWithAssociationType:(id)a3
{
  v3 = [(AVAssetTrack *)self associatedTracksOfType:a3];
  result = [(NSArray *)v3 count];
  if (result)
  {

    return [(NSArray *)v3 objectAtIndex:0];
  }

  return result;
}

- (NSArray)availableTrackAssociationTypes
{
  v2 = [(AVAssetTrack *)self _trackReferences];

  return [v2 allKeys];
}

- (NSArray)associatedTracksOfType:(AVTrackAssociationType)trackAssociationType
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [-[AVAssetTrack _trackReferences](self "_trackReferences")];
  if (!v4)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  v5 = v4;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = -[AVAsset trackWithTrackID:](-[AVAssetTrack asset](self, "asset"), "trackWithTrackID:", [*(*(&v13 + 1) + 8 * v10) intValue]);
        if (v11)
        {
          [(NSArray *)v6 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (!v6)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return v6;
}

- (void)loadAssociatedTracksOfType:(AVTrackAssociationType)trackAssociationType completionHandler:(void *)completionHandler
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __61__AVAssetTrack_loadAssociatedTracksOfType_completionHandler___block_invoke;
  v4[3] = &unk_1E7462078;
  v4[4] = self;
  v4[5] = trackAssociationType;
  v4[6] = completionHandler;
  AVLoadValueAsynchronously(self, @"availableTrackAssociationTypes", v4);
}

uint64_t __61__AVAssetTrack_loadAssociatedTracksOfType_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    [*(a1 + 32) associatedTracksOfType:*(a1 + 40)];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (AVSampleCursor)makeSampleCursorWithPresentationTimeStamp:(CMTime *)presentationTimeStamp
{
  trackInspector = self->_track->trackInspector;
  v5 = *presentationTimeStamp;
  return [(AVAssetTrackInspector *)trackInspector makeSampleCursorWithPresentationTimeStamp:&v5];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVAssetTrack *)self _assetTrackInspector];
  v6 = [a3 _assetTrackInspector];

  return [v5 isEqual:v6];
}

- (BOOL)_hasScaledEdits
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(AVAssetTrack *)self segments];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (v7)
        {
          [*(*(&v14 + 1) + 8 * v6) timeMapping];
          time1 = *(v12 + 8);
          [v7 timeMapping];
        }

        else
        {
          v11 = 0u;
          memset(v12, 0, sizeof(v12));
          *&time1.value = *(v12 + 8);
          time1.epoch = 0;
          memset(v9, 0, sizeof(v9));
        }

        time2 = *&v9[1];
        if (CMTimeCompare(&time1, &time2))
        {
          LOBYTE(v3) = 1;
          return v3;
        }

        ++v6;
      }

      while (v4 != v6);
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v4 = v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)_hasEmptyEdits
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(AVAssetTrack *)self segments];
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (v7)
        {
          [v7 timeMapping];
          if (v9)
          {
            continue;
          }
        }

        LOBYTE(v3) = 1;
        return v3;
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      LOBYTE(v3) = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)_hasMultipleDistinctFormatDescriptions
{
  v2 = [(AVAssetTrack *)self formatDescriptions];
  v3 = [(NSArray *)v2 count];
  v4 = [(NSArray *)v2 firstObject];
  if (v3 < 2)
  {
    return 0;
  }

  v5 = v4;
  v6 = 1;
  if (CMFormatDescriptionEqual([(NSArray *)v2 objectAtIndex:1], v4))
  {
    v7 = 2;
    do
    {
      v8 = v7;
      if (v3 == v7)
      {
        break;
      }

      v9 = CMFormatDescriptionEqual([(NSArray *)v2 objectAtIndex:v7], v5);
      v7 = v8 + 1;
    }

    while (v9);
    return v8 < v3;
  }

  return v6;
}

- (BOOL)_firstFormatDescriptionIsLPCM
{
  v2 = [(AVAssetTrack *)self formatDescriptions];
  v3 = [(NSArray *)v2 count];
  if (v3)
  {
    LOBYTE(v3) = CMFormatDescriptionGetMediaSubType([(NSArray *)v2 firstObject]) == 1819304813;
  }

  return v3;
}

- (BOOL)isDefunct
{
  v2 = [(AVAssetTrack *)self _assetTrackInspector];

  return [v2 _isDefunct];
}

- (void)_stopListeningToFigAssetTrackNotifications
{
  track = self->_track;
  if (track->figAssetTrackNotificationSource && track->figAssetTrackNotificationListenerWeakReference)
  {
    [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    OUTLINED_FUNCTION_0_2();
    [v4 removeListenerWithWeakReference:? callback:? name:? object:?];
    track = self->_track;
  }

  figAssetTrackNotificationListenerWeakReference = track->figAssetTrackNotificationListenerWeakReference;
  if (figAssetTrackNotificationListenerWeakReference)
  {
    CFRelease(figAssetTrackNotificationListenerWeakReference);
    self->_track->figAssetTrackNotificationListenerWeakReference = 0;
    track = self->_track;
  }

  figAssetTrackNotificationSource = track->figAssetTrackNotificationSource;
  if (figAssetTrackNotificationSource)
  {
    CFRelease(figAssetTrackNotificationSource);
    self->_track->figAssetTrackNotificationSource = 0;
  }
}

@end