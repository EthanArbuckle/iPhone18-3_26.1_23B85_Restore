@interface AVMutableCompositionTrack
- (BOOL)_insertTimeRange:(id *)range ofTrack:(id)track atTime:(id *)time fireKVO:(BOOL)o error:(id *)error;
- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofTrack:(AVAssetTrack *)track atTime:(CMTime *)startTime error:(NSError *)outError;
- (BOOL)insertTimeRanges:(NSArray *)timeRanges ofTracks:(NSArray *)tracks atTime:(CMTime *)startTime error:(NSError *)outError;
- (BOOL)isEnabled;
- (BOOL)validateTrackSegments:(NSArray *)trackSegments error:(NSError *)outError;
- (CGAffineTransform)preferredTransform;
- (CMTimeScale)naturalTimeScale;
- (NSArray)segments;
- (NSString)extendedLanguageTag;
- (NSString)languageCode;
- (float)preferredVolume;
- (int64_t)alternateGroupID;
- (void)_insertEmptyTimeRange:(id *)range fireKVO:(BOOL)o;
- (void)_notifyAssetThatDurationDidChangeWithSuccess:(BOOL)success;
- (void)_notifyAssetThatDurationWillChange;
- (void)_notifySelfThatSegmentsDidChangeWithSuccess:(BOOL)success;
- (void)_notifySelfThatSegmentsWillChange;
- (void)_removeTimeRange:(id *)range fireKVO:(BOOL)o;
- (void)_setTrackReaderPropertyValue:(void *)value forKey:(__CFString *)key;
- (void)_updateTrackAssociationToTrack:(id)track type:(id)type operation:(int64_t)operation;
- (void)addTrackAssociationToTrack:(AVCompositionTrack *)compositionTrack type:(AVTrackAssociationType)trackAssociationType;
- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange;
- (void)removeTimeRange:(CMTimeRange *)timeRange;
- (void)removeTrackAssociationToTrack:(AVCompositionTrack *)compositionTrack type:(AVTrackAssociationType)trackAssociationType;
- (void)replaceFormatDescription:(CMFormatDescriptionRef)originalFormatDescription withFormatDescription:(CMFormatDescriptionRef)replacementFormatDescription;
- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration;
- (void)setAlternateGroupID:(int64_t)d;
- (void)setEnabled:(BOOL)enabled;
- (void)setMetadata:(id)metadata;
- (void)setNaturalTimeScale:(CMTimeScale)naturalTimeScale;
- (void)setPreferredTransform:(CGAffineTransform *)preferredTransform;
- (void)setPreferredVolume:(float)preferredVolume;
- (void)setSegments:(NSArray *)segments;
@end

@implementation AVMutableCompositionTrack

- (void)_notifyAssetThatDurationWillChange
{
  asset = [(AVAssetTrack *)self asset];

  [(AVAsset *)asset willChangeValueForKey:@"duration"];
}

- (void)_notifyAssetThatDurationDidChangeWithSuccess:(BOOL)success
{
  successCopy = success;
  [[(AVAssetTrack *)self asset] didChangeValueForKey:@"duration"];
  if (successCopy)
  {
    asset = [(AVAssetTrack *)self asset];
    if (asset)
    {
      v6 = asset;
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

      [defaultCenter postNotificationName:@"AVAssetDurationDidChangeNotification" object:v6];
    }
  }
}

- (void)_notifySelfThatSegmentsWillChange
{
  [(AVMutableCompositionTrack *)self _notifyAssetThatDurationWillChange];

  [(AVMutableCompositionTrack *)self willChangeValueForKey:@"segments"];
}

- (void)_notifySelfThatSegmentsDidChangeWithSuccess:(BOOL)success
{
  successCopy = success;
  [(AVMutableCompositionTrack *)self _notifyAssetThatDurationDidChangeWithSuccess:?];
  [(AVMutableCompositionTrack *)self didChangeValueForKey:@"segments"];
  if (successCopy)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];

    [defaultCenter postNotificationName:@"AVAssetTrackSegmentsDidChangeNotification" object:self];
  }
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = AVMutableCompositionTrack;
  return [(AVCompositionTrack *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithBool:enabled];
  v5 = *MEMORY[0x1E6971FE0];

  [(AVMutableCompositionTrack *)self _setTrackReaderPropertyValue:v4 forKey:v5];
}

- (NSArray)segments
{
  v3.receiver = self;
  v3.super_class = AVMutableCompositionTrack;
  return [(AVCompositionTrack *)&v3 segments];
}

- (void)setSegments:(NSArray *)segments
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = [[AVTelemetryInterval alloc] initAndStartWith:38];
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  v6 = [(NSArray *)segments count];
  [(AVMutableCompositionTrack *)self _notifyAssetThatDurationWillChange];
  if (v6 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = malloc_type_malloc(108 * v6, 0x1060040CB727B4DuLL);
    if (!v7)
    {
      v16 = 1;
      goto LABEL_19;
    }

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = [(NSArray *)segments countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = *v24;
      v10 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(segments);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if (v12)
          {
            [*(*(&v23 + 1) + 8 * i) timeMapping];
          }

          else
          {
            v21 = 0u;
            v22 = 0u;
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
          }

          *v10 = v17;
          v10[1] = v18;
          v10[4] = v21;
          v10[5] = v22;
          v10[2] = v19;
          v10[3] = v20;
          *(v10 + 12) = [v12 sourceURL];
          *(v10 + 26) = [v12 sourceTrackID];
          v10 = (v10 + 108);
        }

        v8 = [(NSArray *)segments countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v8);
    }
  }

  trackID = [(AVAssetTrack *)self trackID];
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v14)
  {
    v15 = v14(_mutableComposition, trackID, v6, v7);
  }

  else
  {
    v15 = -12782;
  }

  v16 = v15 == 0;
LABEL_19:
  free(v7);
  [(AVMutableCompositionTrack *)self _notifyAssetThatDurationDidChangeWithSuccess:v16];
  AVTelemetryIntervalEnd(&v27);
}

- (BOOL)insertTimeRange:(CMTimeRange *)timeRange ofTrack:(AVAssetTrack *)track atTime:(CMTime *)startTime error:(NSError *)outError
{
  v15 = [[AVTelemetryInterval alloc] initAndStartWith:39];
  v11 = *&timeRange->start.epoch;
  v14[0] = *&timeRange->start.value;
  v14[1] = v11;
  v14[2] = *&timeRange->duration.timescale;
  v13 = *startTime;
  LOBYTE(outError) = [(AVMutableCompositionTrack *)self _insertTimeRange:v14 ofTrack:track atTime:&v13 fireKVO:1 error:outError];
  AVTelemetryIntervalEnd(&v15);
  return outError;
}

- (BOOL)insertTimeRanges:(NSArray *)timeRanges ofTracks:(NSArray *)tracks atTime:(CMTime *)startTime error:(NSError *)outError
{
  v54 = *MEMORY[0x1E69E9840];
  v51 = [[AVTelemetryInterval alloc] initAndStartWith:40];
  selfCopy = self;
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v32 = startTime;
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsWillChange];
  v11 = [(NSArray *)timeRanges count];
  if (v11 != [(NSArray *)tracks count])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Count of timeRanges array and count of tracks array do not match." userInfo:0]);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v12 = [(NSArray *)tracks countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v12)
  {
    v38 = *v48;
    v35 = *MEMORY[0x1E695E738];
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(tracks);
        }

        v14 = *(*(&v47 + 1) + 8 * i);
        if ([v14 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
        {
          [array addObject:v35];
          [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 0)}];
        }

        else
        {
          asset = [v14 asset];
          _absoluteURL = [asset _absoluteURL];
          _mutableComposition2 = [asset _mutableComposition];
          [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v14, "trackID"))}];
          if (_absoluteURL)
          {
            [array addObject:_absoluteURL];
            _figAsset = [asset _figAsset];
            v19 = *(*(CMBaseObjectGetVTable() + 16) + 176);
            if (!v19)
            {
              goto LABEL_32;
            }

            v20 = v19(_mutableComposition, _absoluteURL, _figAsset);
            if (v20)
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (!_mutableComposition2)
            {
              fig_log_get_emitter();
              v30 = FigSignalErrorAtGM();
              goto LABEL_34;
            }

            [array addObject:_mutableComposition2];
          }
        }
      }

      v12 = [(NSArray *)tracks countByEnumeratingWithState:&v47 objects:v53 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v21 = [(NSArray *)timeRanges countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v21)
  {
    v22 = *v44;
    v23 = *MEMORY[0x1E695E480];
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(timeRanges);
        }

        v25 = *(*(&v43 + 1) + 8 * j);
        memset(v42, 0, sizeof(v42));
        if (v25)
        {
          [v25 CMTimeRangeValue];
        }

        time = v42[0];
        v26 = CMTimeCopyAsDictionary(&time, v23);
        time = v42[1];
        v27 = CMTimeCopyAsDictionary(&time, v23);
        [array3 addObject:v26];
        [array4 addObject:v27];
        if (v26)
        {
          CFRelease(v26);
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }

      v21 = [(NSArray *)timeRanges countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v21);
  }

  trackID = [(AVAssetTrack *)selfCopy trackID];
  time = *v32;
  v29 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (v29)
  {
    v42[0] = time;
    v30 = v29(_mutableComposition, trackID, array, array2, array3, array4, v42);
LABEL_34:
    v20 = v30;
  }

  else
  {
LABEL_32:
    v20 = -12782;
  }

LABEL_35:
  if (outError && v20)
  {
    *outError = AVLocalizedErrorWithUnderlyingOSStatus(v20, 0);
  }

  [(AVMutableCompositionTrack *)selfCopy _notifySelfThatSegmentsDidChangeWithSuccess:v20 == 0];
  AVTelemetryIntervalEnd(&v51);
  return v20 == 0;
}

- (void)_insertEmptyTimeRange:(id *)range fireKVO:(BOOL)o
{
  oCopy = o;
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  if (oCopy)
  {
    [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsWillChange];
  }

  trackID = [(AVAssetTrack *)self trackID];
  v13 = *&range->var0.var0;
  var3 = range->var0.var3;
  v11 = *&range->var1.var0;
  v12 = range->var1.var3;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v9)
  {
    v10 = 0;
    if (!oCopy)
    {
      return;
    }

    goto LABEL_7;
  }

  v17 = v13;
  v18 = var3;
  v15 = v11;
  v16 = v12;
  v10 = v9(_mutableComposition, trackID, &v17, &v15) == 0;
  if (oCopy)
  {
LABEL_7:
    [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsDidChangeWithSuccess:v10, v11, v12];
  }
}

- (void)insertEmptyTimeRange:(CMTimeRange *)timeRange
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:41];
  v5 = *&timeRange->start.epoch;
  v6[0] = *&timeRange->start.value;
  v6[1] = v5;
  v6[2] = *&timeRange->duration.timescale;
  [(AVMutableCompositionTrack *)self _insertEmptyTimeRange:v6 fireKVO:1];
  AVTelemetryIntervalEnd(&v7);
}

- (void)_removeTimeRange:(id *)range fireKVO:(BOOL)o
{
  oCopy = o;
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  if (oCopy)
  {
    [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsWillChange];
  }

  trackID = [(AVAssetTrack *)self trackID];
  v13 = *&range->var0.var0;
  var3 = range->var0.var3;
  v11 = *&range->var1.var0;
  v12 = range->var1.var3;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 120);
  if (!v9)
  {
    v10 = 0;
    if (!oCopy)
    {
      return;
    }

    goto LABEL_7;
  }

  v17 = v13;
  v18 = var3;
  v15 = v11;
  v16 = v12;
  v10 = v9(_mutableComposition, trackID, &v17, &v15) == 0;
  if (oCopy)
  {
LABEL_7:
    [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsDidChangeWithSuccess:v10, v11, v12];
  }
}

- (void)removeTimeRange:(CMTimeRange *)timeRange
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:42];
  v5 = *&timeRange->start.epoch;
  v6[0] = *&timeRange->start.value;
  v6[1] = v5;
  v6[2] = *&timeRange->duration.timescale;
  [(AVMutableCompositionTrack *)self _removeTimeRange:v6 fireKVO:1];
  AVTelemetryIntervalEnd(&v7);
}

- (void)scaleTimeRange:(CMTimeRange *)timeRange toDuration:(CMTime *)duration
{
  v15 = [[AVTelemetryInterval alloc] initAndStartWith:43];
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsWillChange];
  trackID = [(AVAssetTrack *)self trackID];
  v13 = *&timeRange->start.value;
  epoch = timeRange->start.epoch;
  v12 = timeRange->duration;
  v11 = *duration;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 136);
  if (v9)
  {
    v18 = v13;
    v19 = epoch;
    v17 = v12;
    v16 = v11;
    v10 = v9(_mutableComposition, trackID, &v18, &v17, &v16) == 0;
  }

  else
  {
    v10 = 0;
  }

  [(AVMutableCompositionTrack *)self _notifySelfThatSegmentsDidChangeWithSuccess:v10, *&v11.value, v11.epoch];
  AVTelemetryIntervalEnd(&v15);
}

- (BOOL)validateTrackSegments:(NSArray *)trackSegments error:(NSError *)outError
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = [[AVTelemetryInterval alloc] initAndStartWith:44];
  v14 = *MEMORY[0x1E6960CC0];
  *&v26.value = *MEMORY[0x1E6960CC0];
  v6 = *(MEMORY[0x1E6960CC0] + 16);
  v26.epoch = v6;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = [(NSArray *)trackSegments countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v7)
  {
LABEL_20:
    v11 = 1;
    goto LABEL_29;
  }

  v8 = *v23;
LABEL_3:
  v9 = 0;
  while (1)
  {
    if (*v23 != v8)
    {
      objc_enumerationMutation(trackSegments);
    }

    v10 = *(*(&v22 + 1) + 8 * v9);
    memset(v21, 0, sizeof(v21));
    v20 = 0u;
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    if (v10)
    {
      [v10 timeMapping];
    }

    *&time1.value = v20;
    time1.epoch = *&v21[0];
    time2 = v26;
    if (CMTimeCompare(&time1, &time2))
    {
      v12 = -11824;
      if (!outError)
      {
        goto LABEL_28;
      }

      goto LABEL_26;
    }

    if ((BYTE4(v21[1]) & 0x1D) != 1 || (time1 = *(v21 + 8), *&time2.value = v14, time2.epoch = v6, CMTimeCompare(&time1, &time2) < 1))
    {
      v12 = -11825;
      if (!outError)
      {
        goto LABEL_28;
      }

LABEL_26:
      v11 = 0;
      *outError = [MEMORY[0x1E696ABC0] errorWithDomain:@"AVFoundationErrorDomain" code:v12 userInfo:0];
      goto LABEL_29;
    }

    if ([v10 sourceURL])
    {
      break;
    }

    if (BYTE12(v18))
    {
      goto LABEL_23;
    }

LABEL_18:
    time2 = v26;
    rhs = *(v21 + 8);
    CMTimeAdd(&time1, &time2, &rhs);
    v26 = time1;
    if (v7 == ++v9)
    {
      v7 = [(NSArray *)trackSegments countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v7)
      {
        goto LABEL_3;
      }

      goto LABEL_20;
    }
  }

  if ((BYTE12(v18) & 0x1D) == 1)
  {
    *&time1.value = v18;
    time1.epoch = *&v19[0];
    *&time2.value = v14;
    time2.epoch = v6;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      if ((BYTE4(v19[1]) & 0x1D) != 1 || (time1 = *(v19 + 8), *&time2.value = v14, time2.epoch = v6, CMTimeCompare(&time1, &time2) < 1))
      {
        v12 = -11827;
        if (!outError)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }

      goto LABEL_18;
    }
  }

LABEL_23:
  v12 = -11826;
  if (outError)
  {
    goto LABEL_26;
  }

LABEL_28:
  v11 = 0;
LABEL_29:
  AVTelemetryIntervalEnd(&v27);
  return v11;
}

- (void)_setTrackReaderPropertyValue:(void *)value forKey:(__CFString *)key
{
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  trackID = [(AVAssetTrack *)self trackID];
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (v9)
  {

    v9(_mutableComposition, trackID, key, value);
  }
}

- (CMTimeScale)naturalTimeScale
{
  v3.receiver = self;
  v3.super_class = AVMutableCompositionTrack;
  return [(AVAssetTrack *)&v3 naturalTimeScale];
}

- (void)setNaturalTimeScale:(CMTimeScale)naturalTimeScale
{
  if (naturalTimeScale)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:?];
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x1E6973AE8];

  [(AVMutableCompositionTrack *)self _setTrackReaderPropertyValue:v4 forKey:v5];
}

- (NSString)languageCode
{
  v3.receiver = self;
  v3.super_class = AVMutableCompositionTrack;
  return [(AVAssetTrack *)&v3 languageCode];
}

- (NSString)extendedLanguageTag
{
  v3.receiver = self;
  v3.super_class = AVMutableCompositionTrack;
  return [(AVAssetTrack *)&v3 extendedLanguageTag];
}

- (CGAffineTransform)preferredTransform
{
  v4.receiver = self;
  v4.super_class = AVMutableCompositionTrack;
  return [(CGAffineTransform *)&v4 preferredTransform];
}

- (void)setPreferredTransform:(CGAffineTransform *)preferredTransform
{
  v5 = *preferredTransform;
  v4 = FigCreate3x3MatrixArrayFromCGAffineTransform();
  [(AVMutableCompositionTrack *)self _setTrackReaderPropertyValue:v4 forKey:*MEMORY[0x1E6973AA0], *&v5.a, *&v5.c, *&v5.tx];
  if (v4)
  {
    CFRelease(v4);
  }
}

- (float)preferredVolume
{
  v3.receiver = self;
  v3.super_class = AVMutableCompositionTrack;
  [(AVAssetTrack *)&v3 preferredVolume];
  return result;
}

- (void)setPreferredVolume:(float)preferredVolume
{
  v4 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  v5 = *MEMORY[0x1E6973B10];

  [(AVMutableCompositionTrack *)self _setTrackReaderPropertyValue:v4 forKey:v5];
}

- (void)setAlternateGroupID:(int64_t)d
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:d];
  v5 = *MEMORY[0x1E6971FD8];

  [(AVMutableCompositionTrack *)self _setTrackReaderPropertyValue:v4 forKey:v5];
}

uint64_t __75__AVMutableCompositionTrack__updateTrackAssociationToTrack_type_operation___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = a3 | 1;
  if (*(a1 + 40) <= (a3 | 1uLL))
  {
    return 0;
  }

  result = [a2 isEqual:*(a1 + 48)];
  if (result)
  {
    result = [objc_msgSend(*(a1 + 32) objectAtIndex:{v5), "isEqual:", *(a1 + 56)}];
    if (result)
    {
      result = 1;
      *a4 = 1;
    }
  }

  return result;
}

- (void)addTrackAssociationToTrack:(AVCompositionTrack *)compositionTrack type:(AVTrackAssociationType)trackAssociationType
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:45];
  [(AVMutableCompositionTrack *)self _updateTrackAssociationToTrack:compositionTrack type:trackAssociationType operation:0];
  AVTelemetryIntervalEnd(&v7);
}

- (void)removeTrackAssociationToTrack:(AVCompositionTrack *)compositionTrack type:(AVTrackAssociationType)trackAssociationType
{
  v7 = [[AVTelemetryInterval alloc] initAndStartWith:46];
  [(AVMutableCompositionTrack *)self _updateTrackAssociationToTrack:compositionTrack type:trackAssociationType operation:1];
  AVTelemetryIntervalEnd(&v7);
}

- (void)setMetadata:(id)metadata
{
  v4 = [AVMetadataItem _figMetadataPropertyFromMetadataItems:metadata];
  v5 = *MEMORY[0x1E6971FF0];

  [(AVMutableCompositionTrack *)self _setTrackReaderPropertyValue:v4 forKey:v5];
}

- (void)replaceFormatDescription:(CMFormatDescriptionRef)originalFormatDescription withFormatDescription:(CMFormatDescriptionRef)replacementFormatDescription
{
  v51[2] = *MEMORY[0x1E69E9840];
  cf = 0;
  v47 = [[AVTelemetryInterval alloc] initAndStartWith:47];
  v8 = *MEMORY[0x1E69600C8];
  v51[0] = *MEMORY[0x1E69600D0];
  v51[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  if (!originalFormatDescription)
  {
    v37 = MEMORY[0x1E695DF30];
    v38 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"invalid parameter not satisfying: %s", v10, v11, v12, v13, v14, "originalFormatDescription != NULL");
    goto LABEL_25;
  }

  if (originalFormatDescription == replacementFormatDescription)
  {
    goto LABEL_22;
  }

  v15 = v9;
  if (replacementFormatDescription)
  {
    MediaType = CMFormatDescriptionGetMediaType(originalFormatDescription);
    if (MediaType != CMFormatDescriptionGetMediaType(replacementFormatDescription))
    {
      v37 = MEMORY[0x1E695DF30];
      v38 = AVMethodExceptionReasonWithObjectAndSelector(self, a2, @"Media type of the new format description must match that of the existing format description", v17, v18, v19, v20, v21, v39);
LABEL_25:
      objc_exception_throw([v37 exceptionWithName:*MEMORY[0x1E695D940] reason:v38 userInfo:0]);
    }
  }

  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  trackID = [(AVAssetTrack *)self trackID];
  v24 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v24)
  {
    v25 = *MEMORY[0x1E6971FE8];
    if (!v24(_mutableComposition, trackID, *MEMORY[0x1E6971FE8], *MEMORY[0x1E695E480], &cf))
    {
      v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(cf, "count")}];
      v40 = v25;
      selfCopy = self;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v27 = cf;
      v28 = [cf countByEnumeratingWithState:&v42 objects:v50 count:16];
      if (v28)
      {
        v29 = *v43;
        v30 = *MEMORY[0x1E6971FB0];
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v43 != v29)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v42 + 1) + 8 * i);
            if (!CMFormatDescriptionEqualIgnoringExtensionKeys([v32 objectForKey:v30], originalFormatDescription, v15, 0))
            {
              [v26 addObject:v32];
            }
          }

          v28 = [v27 countByEnumeratingWithState:&v42 objects:v50 count:16];
        }

        while (v28);
      }

      if (replacementFormatDescription)
      {
        v33 = *MEMORY[0x1E6971FA8];
        v48[0] = *MEMORY[0x1E6971FB0];
        v48[1] = v33;
        v49[0] = originalFormatDescription;
        v49[1] = replacementFormatDescription;
        [v26 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v49, v48, 2)}];
      }

      _mutableComposition2 = [(AVCompositionTrack *)selfCopy _mutableComposition];
      trackID2 = [(AVAssetTrack *)selfCopy trackID];
      v36 = *(*(CMBaseObjectGetVTable() + 16) + 80);
      if (v36)
      {
        v36(_mutableComposition2, trackID2, v40, v26);
      }

      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

LABEL_22:
  AVTelemetryIntervalEnd(&v47);
}

- (BOOL)_insertTimeRange:(id *)range ofTrack:(id)track atTime:(id *)time fireKVO:(BOOL)o error:(id *)error
{
  oCopy = o;
  selfCopy = self;
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  asset = [track asset];
  _absoluteURL = [asset _absoluteURL];
  _mutableComposition2 = [asset _mutableComposition];
  HIDWORD(v45) = oCopy;
  if (oCopy)
  {
    [(AVMutableCompositionTrack *)selfCopy _notifySelfThatSegmentsWillChange];
  }

  if (_absoluteURL)
  {
    _figAsset = [asset _figAsset];
    v15 = *(*(CMBaseObjectGetVTable() + 16) + 176);
    if (v15)
    {
      v16 = v15(_mutableComposition, _absoluteURL, _figAsset);
      if (v16)
      {
        goto LABEL_14;
      }

      trackID = [(AVAssetTrack *)selfCopy trackID];
      [track trackID];
      v18 = OUTLINED_FUNCTION_1_6();
      v27 = *(v18 + 16);
      v26 = v18 + 16;
      if (*(v27 + 88))
      {
        v28 = OUTLINED_FUNCTION_0_7(v26, v19, v20, v21, v22, v23, v24, v25, v45, selfCopy, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
        v16 = v29(v28, trackID, _absoluteURL, track);
        goto LABEL_14;
      }
    }

LABEL_11:
    v43 = -12782;
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (_mutableComposition2)
  {
    trackID2 = [(AVAssetTrack *)selfCopy trackID];
    [track trackID];
    v31 = OUTLINED_FUNCTION_1_6();
    v40 = *(v31 + 16);
    v39 = v31 + 16;
    if (!*(v40 + 184))
    {
      goto LABEL_11;
    }

    v41 = OUTLINED_FUNCTION_0_7(v39, v32, v33, v34, v35, v36, v37, v38, v45, selfCopy, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    v16 = v42(v41, trackID2, _mutableComposition2, track);
  }

  else
  {
    fig_log_get_emitter();
    v16 = FigSignalErrorAtGM();
  }

LABEL_14:
  v43 = v16;
  if (!error)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (v43)
  {
    *error = AVLocalizedErrorWithUnderlyingOSStatus(v43, 0);
  }

LABEL_17:
  if (HIDWORD(v45))
  {
    [(AVMutableCompositionTrack *)selfCopy _notifySelfThatSegmentsDidChangeWithSuccess:v43 == 0];
  }

  return v43 == 0;
}

- (int64_t)alternateGroupID
{
  cf = 0;
  valuePtr = 0;
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  trackID = [(AVAssetTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v5)
  {
    v6 = v5(_mutableComposition, trackID, *MEMORY[0x1E6971FD8], *MEMORY[0x1E695E480], &cf);
    v7 = cf;
    if (!v6)
    {
      if (!cf)
      {
        return valuePtr;
      }

      v8 = CFGetTypeID(cf);
      TypeID = CFNumberGetTypeID();
      v7 = cf;
      if (v8 == TypeID && cf)
      {
        CFNumberGetValue(cf, kCFNumberSInt16Type, &valuePtr);
        v7 = cf;
      }
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }

  return valuePtr;
}

- (void)_updateTrackAssociationToTrack:(id)track type:(id)type operation:(int64_t)operation
{
  *&valuePtr[8] = 0;
  *valuePtr = [(AVAssetTrack *)self trackID];
  v9 = *MEMORY[0x1E695E480];
  v10 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  trackID = [track trackID];
  v11 = CFNumberCreate(v9, kCFNumberSInt32Type, &trackID);
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      [(AVCompositionTrack *)self _mutableComposition];
      FigBaseObject = FigMutableCompositionGetFigBaseObject();
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v14)
      {
        v27 = *MEMORY[0x1E6971FD0];
        if (!v14(FigBaseObject))
        {
          v15 = *&valuePtr[4];
          v16 = [*&valuePtr[4] objectForKey:type];
          v17 = [v16 count];
          if (v16)
          {
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __75__AVMutableCompositionTrack__updateTrackAssociationToTrack_type_operation___block_invoke;
            v28[3] = &unk_1E74634C0;
            v28[4] = v16;
            v28[5] = v17;
            v28[6] = v10;
            v28[7] = v12;
            v18 = [v16 indexOfObjectPassingTest:v28];
          }

          else
          {
            v18 = 0x7FFFFFFFFFFFFFFFLL;
          }

          v19 = v18 == 0x7FFFFFFFFFFFFFFFLL && operation == 0;
          v20 = v18 != 0x7FFFFFFFFFFFFFFFLL && operation == 1;
          if (v19 || v20)
          {
            v21 = v15 ? [v15 mutableCopy] : objc_msgSend(MEMORY[0x1E695DF90], "dictionary");
            v22 = v21;
            v23 = v16 ? [v16 mutableCopy] : objc_msgSend(MEMORY[0x1E695DF70], "array");
            v24 = v23;
            if (v22)
            {
              if (v23)
              {
                if (v19)
                {
                  [v23 addObject:v10];
                  [v24 addObject:v12];
                }

                else if (v20)
                {
                  [v23 removeObjectAtIndex:v18];
                  [v24 removeObjectAtIndex:v18];
                }

                [v22 setObject:v24 forKey:type];
                [(AVCompositionTrack *)self _mutableComposition];
                v25 = FigMutableCompositionGetFigBaseObject();
                v26 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v26)
                {
                  v26(v25, v27, v22);
                }
              }
            }
          }
        }
      }
    }
  }

  if (*&valuePtr[4])
  {
    CFRelease(*&valuePtr[4]);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

@end