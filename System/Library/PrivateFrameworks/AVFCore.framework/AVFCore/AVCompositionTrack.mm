@interface AVCompositionTrack
- (AVCompositionTrackSegment)segmentForTrackTime:(CMTime *)trackTime;
- (BOOL)isEnabled;
- (NSArray)formatDescriptionReplacements;
- (NSArray)segments;
- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index;
- (id)description;
- (void)dealloc;
@end

@implementation AVCompositionTrack

- (void)dealloc
{
  priv = self->_priv;
  if (priv)
  {
    mutableComposition = priv->mutableComposition;
    if (mutableComposition)
    {
      CFRelease(mutableComposition);
      self->_priv->mutableComposition = 0;
      priv = self->_priv;
    }
  }

  v5.receiver = self;
  v5.super_class = AVCompositionTrack;
  [(AVAssetTrack *)&v5 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p trackID = %d, mediaType = %@, editCount = %d>", NSStringFromClass(v4), self, -[AVAssetTrack trackID](self, "trackID"), -[AVAssetTrack mediaType](self, "mediaType"), -[NSArray count](-[AVCompositionTrack segments](self, "segments"), "count")];
}

- (BOOL)isEnabled
{
  cf = 0;
  v13 = [[AVTelemetryInterval alloc] initAndStartWith:34];
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  trackID = [(AVAssetTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5(_mutableComposition, trackID, *MEMORY[0x1E6971FE0], *MEMORY[0x1E695E480], &cf);
  v7 = cf;
  if (v6)
  {
    v10 = 1;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (!cf)
  {
LABEL_9:
    v10 = 1;
    goto LABEL_10;
  }

  v8 = CFGetTypeID(cf);
  TypeID = CFBooleanGetTypeID();
  v7 = cf;
  v10 = 1;
  if (v8 == TypeID && cf)
  {
    v10 = CFBooleanGetValue(cf) != 0;
    v7 = cf;
  }

  if (v7)
  {
LABEL_8:
    CFRelease(v7);
  }

LABEL_10:
  AVTelemetryIntervalEnd(&v13);
  return v10;
}

- (NSArray)segments
{
  v4.receiver = self;
  v4.super_class = AVCompositionTrack;
  v5 = [[AVTelemetryInterval alloc] initAndStartWith:35];
  segments = [(AVAssetTrack *)&v4 segments];
  AVTelemetryIntervalEnd(&v5);
  return segments;
}

- (AVCompositionTrackSegment)segmentForTrackTime:(CMTime *)trackTime
{
  v9 = [[AVTelemetryInterval alloc] initAndStartWith:36];
  v8.receiver = self;
  v8.super_class = AVCompositionTrack;
  v7 = *trackTime;
  v5 = [(AVAssetTrack *)&v8 segmentForTrackTime:&v7];
  AVTelemetryIntervalEnd(&v9);
  return v5;
}

- (NSArray)formatDescriptionReplacements
{
  v29 = *MEMORY[0x1E69E9840];
  theArray = 0;
  v27 = [[AVTelemetryInterval alloc] initAndStartWith:37];
  _mutableComposition = [(AVCompositionTrack *)self _mutableComposition];
  trackID = [(AVAssetTrack *)self trackID];
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v5)
  {
    v6 = v5(_mutableComposition, trackID, *MEMORY[0x1E6971FE8], *MEMORY[0x1E695E480], &theArray);
    v7 = theArray;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = theArray == 0;
    }

    if (v8)
    {
      goto LABEL_22;
    }

    if (CFArrayGetCount(theArray))
    {
      array = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](theArray, "count")}];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = theArray;
      v11 = [(__CFArray *)theArray countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v11)
      {
        v12 = *v23;
        v13 = *MEMORY[0x1E6971FB0];
        v14 = *MEMORY[0x1E6971FA8];
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v23 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [v16 objectForKey:v13];
            v18 = [v16 objectForKey:v14];
            if (v17)
            {
              v19 = v18 == 0;
            }

            else
            {
              v19 = 1;
            }

            if (!v19)
            {
              v20 = [[AVCompositionTrackFormatDescriptionReplacement alloc] initWithOriginalFormatDescription:v17 andReplacementFormatDescription:v18];
              [(NSArray *)array addObject:v20];
            }
          }

          v11 = [(__CFArray *)v10 countByEnumeratingWithState:&v22 objects:v28 count:16];
        }

        while (v11);
      }

      if (theArray)
      {
        CFRelease(theArray);
      }

      goto LABEL_25;
    }
  }

  v7 = theArray;
LABEL_22:
  if (v7)
  {
    CFRelease(v7);
  }

  array = [MEMORY[0x1E695DEC8] array];
LABEL_25:
  AVTelemetryIntervalEnd(&v27);
  return array;
}

- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index
{
  v10.receiver = self;
  v10.super_class = AVCompositionTrack;
  v6 = [(AVAssetTrack *)&v10 _initWithAsset:asset trackID:*&d trackIndex:index];
  if (v6)
  {
    v7 = objc_alloc_init(AVCompositionTrackInternal);
    v6[2] = v7;
    if (v7)
    {
      *(v6[2] + 8) = [asset _mutableComposition];
      v8 = *(v6[2] + 8);
      if (v8)
      {
        CFRetain(v8);
      }
    }
  }

  return v6;
}

@end