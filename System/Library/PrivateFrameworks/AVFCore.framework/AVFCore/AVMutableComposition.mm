@interface AVMutableComposition
+ (AVMutableComposition)composition;
+ (AVMutableComposition)compositionWithURLAssetInitializationOptions:(NSDictionary *)URLAssetInitializationOptions;
- (AVMutableCompositionTrack)addMutableTrackWithMediaType:(AVMediaType)mediaType preferredTrackID:(CMPersistentTrackID)preferredTrackID;
- (AVMutableCompositionTrack)mutableTrackCompatibleWithTrack:(AVAssetTrack *)track;
- (AVMutableCompositionTrack)trackWithTrackID:(CMPersistentTrackID)trackID;
- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime *)startTime error:(NSError *)outError;
- (CGSize)naturalSize;
- (NSArray)tracks;
- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic;
- (NSArray)tracksWithMediaType:(AVMediaType)mediaType;
- (id)_addMutableTrackWithMediaType:(id)type preferredTrackID:(int)d fireKVO:(BOOL)o;
- (id)_initWithComposition:(id)composition;
- (id)_newTrackForIndex:(int64_t)index;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_notifyTracksThatSegmentsDidChange:(id)change successfully:(BOOL)successfully;
- (void)_notifyTracksThatSegmentsWillChange:(id)change;
- (void)_removeTrack:(id)track fireKVO:(BOOL)o;
- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange;
- (void)insertTimeRange:(CMTimeRange *)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime *)startTime completionHandler:(void *)completionHandler;
- (void)removeTimeRange:(CMTimeRange *)timeRange;
- (void)removeTrack:(AVCompositionTrack *)track;
- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration;
- (void)setMetadata:(id)metadata;
@end

@implementation AVMutableComposition

+ (AVMutableComposition)composition
{
  v2 = objc_alloc_init(self);

  return v2;
}

+ (AVMutableComposition)compositionWithURLAssetInitializationOptions:(NSDictionary *)URLAssetInitializationOptions
{
  v6 = objc_alloc_init(self);
  v18 = 0;
  if (!-[AVComposition _setURLAssetInitializationOptions:error:](v6, "_setURLAssetInitializationOptions:error:", URLAssetInitializationOptions, &v18) && [v18 code] == -11999)
  {
    v8 = [objc_msgSend(v18 "userInfo")];
    reason = [v8 reason];
    v10 = MEMORY[0x1E695DF30];
    name = [v8 name];
    if (reason)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@": %@", reason];
    }

    v17 = [v10 exceptionWithName:name reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Cannot honor specified AVURLAsset initialization options for AVMutableComposition <%p>%@", v11, v12, v13, v14, v15, self), 0}];
    objc_exception_throw(v17);
  }

  return v6;
}

- (id)_initWithComposition:(id)composition
{
  v4.receiver = self;
  v4.super_class = AVMutableComposition;
  return [(AVComposition *)&v4 _initWithComposition:composition];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVComposition allocWithZone:zone];

  return [(AVComposition *)v4 _initWithComposition:self];
}

- (id)_newTrackForIndex:(int64_t)index
{
  v5 = [AVMutableCompositionTrack alloc];

  return [(AVAssetTrack *)v5 _initWithAsset:self trackIndex:index];
}

- (NSArray)tracks
{
  v3.receiver = self;
  v3.super_class = AVMutableComposition;
  return [(AVComposition *)&v3 tracks];
}

- (AVMutableCompositionTrack)trackWithTrackID:(CMPersistentTrackID)trackID
{
  v4.receiver = self;
  v4.super_class = AVMutableComposition;
  return [(AVComposition *)&v4 trackWithTrackID:*&trackID];
}

- (NSArray)tracksWithMediaType:(AVMediaType)mediaType
{
  v4.receiver = self;
  v4.super_class = AVMutableComposition;
  return [(AVComposition *)&v4 tracksWithMediaType:mediaType];
}

- (NSArray)tracksWithMediaCharacteristic:(AVMediaCharacteristic)mediaCharacteristic
{
  v4.receiver = self;
  v4.super_class = AVMutableComposition;
  return [(AVComposition *)&v4 tracksWithMediaCharacteristic:mediaCharacteristic];
}

- (CGSize)naturalSize
{
  v4.receiver = self;
  v4.super_class = AVMutableComposition;
  [(AVComposition *)&v4 naturalSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setMetadata:(id)metadata
{
  v8 = [[AVTelemetryInterval alloc] initAndStartWith:25];
  v5 = [AVMetadataItem _figMetadataPropertyFromMetadataItems:metadata];
  [(AVComposition *)self _mutableComposition];
  FigBaseObject = FigMutableCompositionGetFigBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v7)
  {
    v7(FigBaseObject, *MEMORY[0x1E6971FC8], v5);
  }

  AVTelemetryIntervalEnd(&v8);
}

- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime *)startTime error:(NSError *)outError
{
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  _copyFormatReader = [(AVComposition *)self _copyFormatReader];
  _absoluteURL = [(AVAsset *)asset _absoluteURL];
  _mutableComposition2 = [(AVAsset *)asset _mutableComposition];
  v43 = 0;
  v44 = 0;
  _mutableTracks = [(AVComposition *)self _mutableTracks];
  v15 = [_mutableTracks copy];
  [(AVMutableComposition *)self willChangeValueForKey:@"duration"];
  [(AVMutableComposition *)self willChangeValueForKey:@"tracks"];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsWillChange:v15];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v16(_copyFormatReader, &v44);
  if (v17)
  {
    goto LABEL_21;
  }

  if (!_absoluteURL)
  {
    if (_mutableComposition)
    {
      v38 = *&timeRange->start.value;
      epoch = timeRange->start.epoch;
      v34 = *&timeRange->duration.value;
      v36 = timeRange->duration.epoch;
      v30 = *&startTime->value;
      v32 = startTime->epoch;
      v21 = *(*(CMBaseObjectGetVTable() + 16) + 192);
      if (v21)
      {
        v49 = v38;
        v50 = epoch;
        v47 = v34;
        v48 = v36;
        v45 = v30;
        v46 = v32;
        v17 = v21(_mutableComposition, _mutableComposition2, &v49, &v47, &v45);
        if (v17)
        {
          goto LABEL_21;
        }

        goto LABEL_15;
      }

LABEL_20:
      v17 = -12782;
      goto LABEL_21;
    }

    v45 = *&startTime->value;
    v46 = startTime->epoch;
    v39 = *&timeRange->duration.value;
    v42 = timeRange->duration.epoch;
    v22 = *(*(CMBaseObjectGetVTable() + 16) + 112);
    if (!v22)
    {
      goto LABEL_20;
    }

    v49 = v45;
    v50 = v46;
    v47 = v39;
    v48 = v42;
    v17 = v22(0, &v49, &v47);
    if (!v17)
    {
      goto LABEL_15;
    }

LABEL_21:
    v25 = AVLocalizedErrorWithUnderlyingOSStatus(v17, 0);
    v26 = 0;
    goto LABEL_22;
  }

  _figAsset = [(AVAsset *)asset _figAsset];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v19)
  {
    goto LABEL_20;
  }

  v17 = v19(_mutableComposition, _absoluteURL, _figAsset);
  if (v17)
  {
    goto LABEL_21;
  }

  v37 = *&timeRange->start.value;
  v40 = timeRange->start.epoch;
  v33 = *&timeRange->duration.value;
  v35 = timeRange->duration.epoch;
  v29 = *&startTime->value;
  v31 = startTime->epoch;
  v20 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v20)
  {
    goto LABEL_20;
  }

  v49 = v37;
  v50 = v40;
  v47 = v33;
  v48 = v35;
  v45 = v29;
  v46 = v31;
  v17 = v20(_mutableComposition, _absoluteURL, &v49, &v47, &v45);
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_15:
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v23)
  {
    goto LABEL_20;
  }

  v17 = v23(_copyFormatReader, &v43);
  if (v17)
  {
    goto LABEL_21;
  }

  for (i = v44; i < v43; ++i)
  {
    [_mutableTracks addObject:{-[AVMutableComposition _newTrackForIndex:](self, "_newTrackForIndex:", i)}];
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v25 = 0;
  v26 = 1;
LABEL_22:
  [(AVMutableComposition *)self didChangeValueForKey:@"tracks"];
  [(AVMutableComposition *)self didChangeValueForKey:@"duration"];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsDidChange:v15 successfully:v26];
  if (outError)
  {
    *outError = v25;
  }

  if (_copyFormatReader)
  {
    CFRelease(_copyFormatReader);
  }

  return v26;
}

- (void)insertTimeRange:(CMTimeRange *)timeRange ofAsset:(AVAsset *)asset atTime:(CMTime *)startTime completionHandler:(void *)completionHandler
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v6 = *&timeRange->start.epoch;
  v8 = *&timeRange->start.value;
  v7[2] = __73__AVMutableComposition_insertTimeRange_ofAsset_atTime_completionHandler___block_invoke;
  v7[3] = &unk_1E7463498;
  v9 = v6;
  v10 = *&timeRange->duration.timescale;
  v7[4] = self;
  v7[5] = asset;
  v11 = *startTime;
  v7[6] = completionHandler;
  AVLoadValueAsynchronously(asset, @"tracks", v7);
}

- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange
{
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:26];
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  tracks = [(AVMutableComposition *)self tracks];
  [(AVMutableComposition *)self willChangeValueForKey:@"duration"];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsWillChange:tracks];
  v10 = *&timeRange->start.value;
  epoch = timeRange->start.epoch;
  duration = timeRange->duration;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (!v7 || (v14 = v10, v15 = epoch, v13 = duration, v7(_mutableComposition, &v14, &v13)))
  {
    v8 = 0;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v8 = 1;
  }

  [(AVMutableComposition *)self didChangeValueForKey:@"duration", *&duration.value, duration.epoch];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsDidChange:tracks successfully:v8];
  AVTelemetryIntervalEnd(&v12);
}

- (void)removeTimeRange:(CMTimeRange *)timeRange
{
  v12 = [[AVTelemetryInterval alloc] initAndStartWith:27];
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  tracks = [(AVMutableComposition *)self tracks];
  [(AVMutableComposition *)self willChangeValueForKey:@"duration"];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsWillChange:tracks];
  v10 = *&timeRange->start.value;
  epoch = timeRange->start.epoch;
  duration = timeRange->duration;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 128);
  if (!v7 || (v14 = v10, v15 = epoch, v13 = duration, v7(_mutableComposition, &v14, &v13)))
  {
    v8 = 0;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v8 = 1;
  }

  [(AVMutableComposition *)self didChangeValueForKey:@"duration", *&duration.value, duration.epoch];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsDidChange:tracks successfully:v8];
  AVTelemetryIntervalEnd(&v12);
}

- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration
{
  v15 = [[AVTelemetryInterval alloc] initAndStartWith:28];
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  tracks = [(AVMutableComposition *)self tracks];
  [(AVMutableComposition *)self willChangeValueForKey:@"duration"];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsWillChange:tracks];
  v13 = *&timeRange->start.value;
  epoch = timeRange->start.epoch;
  v12 = timeRange->duration;
  v11 = *duration;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 144);
  if (!v9 || (v18 = v13, v19 = epoch, v17 = v12, v16 = v11, v9(_mutableComposition, &v18, &v17, &v16)))
  {
    v10 = 0;
  }

  else
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    v10 = 1;
  }

  [(AVMutableComposition *)self didChangeValueForKey:@"duration", *&v11.value, v11.epoch];
  [(AVMutableComposition *)self _notifyTracksThatSegmentsDidChange:tracks successfully:v10];
  AVTelemetryIntervalEnd(&v15);
}

- (AVMutableCompositionTrack)addMutableTrackWithMediaType:(AVMediaType)mediaType preferredTrackID:(CMPersistentTrackID)preferredTrackID
{
  v4 = *&preferredTrackID;
  v9 = [[AVTelemetryInterval alloc] initAndStartWith:29];
  v7 = [(AVMutableComposition *)self _addMutableTrackWithMediaType:mediaType preferredTrackID:v4 fireKVO:1];
  AVTelemetryIntervalEnd(&v9);
  return v7;
}

- (void)removeTrack:(AVCompositionTrack *)track
{
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:30];
  [(AVMutableComposition *)self _removeTrack:track fireKVO:1];
  AVTelemetryIntervalEnd(&v5);
}

- (AVMutableCompositionTrack)mutableTrackCompatibleWithTrack:(AVAssetTrack *)track
{
  v20 = [[AVTelemetryInterval alloc] initAndStartWith:31];
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  v19 = 0;
  asset = [(AVAssetTrack *)track asset];
  _absoluteURL = [(AVAsset *)asset _absoluteURL];
  _mutableComposition2 = [(AVAsset *)asset _mutableComposition];
  if (!track)
  {
    goto LABEL_12;
  }

  if (_absoluteURL)
  {
    _figAsset = [(AVAsset *)asset _figAsset];
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (!v10)
    {
      goto LABEL_12;
    }

    if (v10(_mutableComposition, _absoluteURL, _figAsset))
    {
      goto LABEL_12;
    }

    trackID = [(AVAssetTrack *)track trackID];
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v12)
    {
      goto LABEL_12;
    }

    v13 = v12(_mutableComposition, _absoluteURL, trackID, &v19);
  }

  else
  {
    v14 = _mutableComposition2;
    if (!_mutableComposition2)
    {
      goto LABEL_12;
    }

    trackID2 = [(AVAssetTrack *)track trackID];
    v16 = *(*(CMBaseObjectGetVTable() + 16) + 200);
    if (!v16)
    {
      goto LABEL_12;
    }

    v13 = v16(_mutableComposition, v14, trackID2, &v19);
  }

  if (v13)
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  v17 = [(AVMutableComposition *)self trackWithTrackID:v19];
LABEL_13:
  AVTelemetryIntervalEnd(&v20);
  return v17;
}

- (void)_notifyTracksThatSegmentsWillChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [change countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(change);
        }

        [*(*(&v8 + 1) + 8 * v7++) willChangeValueForKey:@"segments"];
      }

      while (v5 != v7);
      v5 = [change countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_notifyTracksThatSegmentsDidChange:(id)change successfully:(BOOL)successfully
{
  successfullyCopy = successfully;
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [change countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(change);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 didChangeValueForKey:@"segments"];
        if (successfullyCopy)
        {
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }
      }

      v7 = [change countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

uint64_t __73__AVMutableComposition_insertTimeRange_ofAsset_atTime_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  if (!a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 72);
    v9[0] = *(a1 + 56);
    v9[1] = v5;
    v9[2] = *(a1 + 88);
    v7 = *(a1 + 104);
    v8 = *(a1 + 120);
    [v3 insertTimeRange:v9 ofAsset:v4 atTime:&v7 error:&v10];
  }

  return (*(*(a1 + 48) + 16))();
}

- (id)_addMutableTrackWithMediaType:(id)type preferredTrackID:(int)d fireKVO:(BOOL)o
{
  oCopy = o;
  v6 = *&d;
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  v18 = 0;
  _mutableTracks = [(AVComposition *)self _mutableTracks];
  v11 = [type getCString:v19 maxLength:5 encoding:1];
  v12 = bswap32(v19[0]);
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v14 || v14(_mutableComposition, v13, 0, v6, &v18))
  {
    return 0;
  }

  if (oCopy)
  {
    [(AVMutableComposition *)self willChangeValueForKey:@"tracks"];
  }

  v15 = [AVMutableCompositionTrack alloc];
  v16 = [(AVAssetTrack *)v15 _initWithAsset:self trackID:v18];
  if (v16)
  {
    [_mutableTracks addObject:v16];
  }

  if (oCopy)
  {
    [(AVMutableComposition *)self didChangeValueForKey:@"tracks"];
  }

  return v16;
}

- (void)_removeTrack:(id)track fireKVO:(BOOL)o
{
  oCopy = o;
  _mutableComposition = [(AVComposition *)self _mutableComposition];
  _mutableTracks = [(AVComposition *)self _mutableTracks];
  v9 = [_mutableTracks indexOfObject:track];
  if (track)
  {
    if (_mutableTracks)
    {
      v10 = v9;
      if (v9 != 0x7FFFFFFFFFFFFFFFLL && [track asset] == self)
      {
        if (oCopy)
        {
          [(AVMutableComposition *)self willChangeValueForKey:@"duration"];
        }

        trackID = [track trackID];
        v12 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (v12 && !v12(_mutableComposition, trackID))
        {
          if (oCopy)
          {
            [(AVMutableComposition *)self willChangeValueForKey:@"tracks"];
            [_mutableTracks removeObjectAtIndex:v10];
            [(AVMutableComposition *)self didChangeValueForKey:@"tracks"];
          }

          else
          {
            [_mutableTracks removeObjectAtIndex:v10];
          }

          [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
        }
      }
    }
  }

  if (oCopy)
  {

    [(AVMutableComposition *)self didChangeValueForKey:@"duration"];
  }
}

@end