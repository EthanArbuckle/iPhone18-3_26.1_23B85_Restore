@interface AVAssetTrackInspector
+ (AVAssetTrackInspector)assetTrackInspectorWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index;
- ($2FE3C3292E52C4A5B67D27538456EAD9)gaplessSourceTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaDecodeTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaPresentationTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)samplePresentationTimeForTrackTime:(SEL)time;
- (BOOL)hasProtectedContent;
- (CGAffineTransform)preferredTransform;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (NSArray)mediaCharacteristics;
- (NSLocale)locale;
- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index;
- (id)_segmentsForSegmentData:(id)data;
- (id)makeSampleCursorAtFirstSampleInDecodeOrder;
- (id)makeSampleCursorAtLastSampleInDecodeOrder;
- (id)segmentForTrackTime:(id *)time;
- (int64_t)statusOfValueForKey:(id)key error:(id *)error;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler;
@end

@implementation AVAssetTrackInspector

+ (AVAssetTrackInspector)assetTrackInspectorWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index
{
  v5 = [objc_alloc(objc_msgSend(asset "_classForTrackInspectors"))];

  return v5;
}

- (id)_initWithAsset:(id)asset trackID:(int)d trackIndex:(int64_t)index
{
  v7.receiver = self;
  v7.super_class = AVAssetTrackInspector;
  v5 = [(AVAssetTrackInspector *)&v7 init:asset];
  if (v5)
  {
    v5->_weakReference = [[AVWeakReference alloc] initWithReferencedObject:v5];
    v5->_synthesizeMediaCharacteristicsOnce = objc_alloc_init(AVDispatchOnce);
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAssetTrackInspector;
  [(AVAssetTrackInspector *)&v3 dealloc];
}

- (int64_t)statusOfValueForKey:(id)key error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 2;
}

- (void)loadValuesAsynchronouslyForKeys:(id)keys completionHandler:(id)handler
{
  if (handler)
  {
    (*(handler + 2))(handler);
  }
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaPresentationTimeRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaDecodeTimeRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

- (NSArray)mediaCharacteristics
{
  synthesizeMediaCharacteristicsOnce = self->_synthesizeMediaCharacteristicsOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVAssetTrackInspector_mediaCharacteristics__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)synthesizeMediaCharacteristicsOnce runBlockOnce:v5];
  return self->_cachedMediaCharacteristics;
}

void *__45__AVAssetTrackInspector_mediaCharacteristics__block_invoke(uint64_t a1)
{
  result = AVSynthesizeAVMediaCharacteristicsFromFigValues([*(a1 + 32) _arrayForProperty:*MEMORY[0x1E69738E8]], objc_msgSend(*(a1 + 32), "_figMediaType"));
  *(*(a1 + 32) + 24) = result;
  return result;
}

- (NSLocale)locale
{
  extendedLanguageTag = [(AVAssetTrackInspector *)self extendedLanguageTag];
  if (extendedLanguageTag || (extendedLanguageTag = [(AVAssetTrackInspector *)self languageCode]) != 0)
  {
    extendedLanguageTag = CFLocaleCreate(*MEMORY[0x1E695E480], extendedLanguageTag);
  }

  return extendedLanguageTag;
}

- (CGSize)naturalSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)dimensions
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
}

- (id)_segmentsForSegmentData:(id)data
{
  v4 = [data length];
  if (v4 < 0x60)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  v5 = v4 / 0x60;
  bytes = [data bytes];
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
  do
  {
    v8 = [AVAssetTrackSegment alloc];
    v9 = bytes[1];
    v14[0] = *bytes;
    v14[1] = v9;
    v10 = bytes[2];
    v11 = bytes[3];
    v12 = bytes[5];
    v14[4] = bytes[4];
    v14[5] = v12;
    v14[2] = v10;
    v14[3] = v11;
    [v7 addObject:{-[AVAssetTrackSegment _initWithTimeMapping:](v8, "_initWithTimeMapping:", v14)}];
    bytes += 6;
    --v5;
  }

  while (v5);
  if (!v7)
  {
    return [MEMORY[0x1E695DEC8] array];
  }

  return v7;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)gaplessSourceTimeRange
{
  v3 = MEMORY[0x1E6960C98];
  v4 = *(MEMORY[0x1E6960C98] + 16);
  *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
  *&retstr->var0.var3 = v4;
  *&retstr->var1.var1 = *(v3 + 32);
  return self;
}

- (id)segmentForTrackTime:(id *)time
{
  v29 = *MEMORY[0x1E69E9840];
  segments = [(AVAssetTrackInspector *)self segments];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(NSArray *)segments countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
    goto LABEL_26;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v25;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v25 != v8)
      {
        objc_enumerationMutation(segments);
      }

      v10 = *(*(&v24 + 1) + 8 * i);
      if (v10)
      {
        [*(*(&v24 + 1) + 8 * i) timeMapping];
      }

      else
      {
        v22 = 0u;
        memset(&v23, 0, sizeof(v23));
        v20 = 0u;
        v21 = 0u;
      }

      range = v23;
      time = *time;
      if (CMTimeRangeContainsTime(&range, &time))
      {
        v7 = v10;
      }
    }

    v6 = [(NSArray *)segments countByEnumeratingWithState:&v24 objects:v28 count:16];
  }

  while (v6);
  if (!v7)
  {
LABEL_26:
    if ([(NSArray *)segments count])
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
      memset(&range, 0, sizeof(range));
      firstObject = [(NSArray *)segments firstObject];
      if (firstObject)
      {
        [firstObject timeMapping];
      }

      else
      {
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
        memset(&range, 0, sizeof(range));
      }

      time = *time;
      *&v14.value = v16;
      v14.epoch = v17;
      if (CMTimeCompare(&time, &v14) < 0)
      {
        return [(NSArray *)segments firstObject];
      }

      else
      {
        return [(NSArray *)segments lastObject];
      }
    }

    else
    {
      return 0;
    }
  }

  return v7;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)samplePresentationTimeForTrackTime:(SEL)time
{
  v14[0] = *a4;
  result = [(AVAssetTrackInspector *)self segmentForTrackTime:v14];
  if (result && (memset(v16, 0, sizeof(v16)), v15 = 0u, memset(v14, 0, sizeof(v14)), result = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)result timeMapping], (v14[0].var2 & 1) != 0) && (v14[1].var2 & 1) != 0 && !v14[1].var3 && (v14[1].var0 & 0x8000000000000000) == 0 && (BYTE12(v15) & 1) != 0 && (BYTE4(v16[1]) & 1) != 0 && !*(&v16[1] + 1) && (*(&v16[0] + 1) & 0x8000000000000000) == 0 && (time = *(v16 + 8), Seconds = CMTimeGetSeconds(&time), time = v14[1], v9 = CMTimeGetSeconds(&time), memset(&time, 0, sizeof(time)), lhs = *a4, *&rhs.value = v15, rhs.epoch = *&v16[0], result = CMTimeSubtract(&time, &lhs, &rhs), Seconds > 0.0) && (time.flags & 0x1D) == 1 && (memset(&lhs, 0, sizeof(lhs)), rhs = time, result = CMTimeMultiplyByFloat64(&lhs, &rhs, v9 / Seconds), (lhs.flags & 0x1D) == 1))
  {
    rhs = lhs;
    v10 = v14[0];
    return CMTimeAdd(retstr, &rhs, &v10);
  }

  else
  {
    v7 = MEMORY[0x1E6960C70];
    *&retstr->var0 = *MEMORY[0x1E6960C70];
    retstr->var3 = *(v7 + 16);
  }

  return result;
}

- (BOOL)hasProtectedContent
{
  formatDescriptions = [(AVAssetTrackInspector *)self formatDescriptions];
  if (formatDescriptions)
  {
    v3 = formatDescriptions;
    Count = CFArrayGetCount(formatDescriptions);
    v5 = Count - 1;
    if (Count < 1)
    {
      LOBYTE(formatDescriptions) = 0;
    }

    else
    {
      v6 = 0;
      do
      {
        CFArrayGetValueAtIndex(v3, v6);
        v7 = FigCPEIsSupportedFormatDescription();
        LOBYTE(formatDescriptions) = v7 != 0;
        if (v7)
        {
          break;
        }
      }

      while (v5 != v6++);
    }
  }

  return formatDescriptions;
}

- (id)makeSampleCursorAtFirstSampleInDecodeOrder
{
  cf = 0;
  v2 = [(AVAssetTrackInspector *)self _getFigSampleCursorServiceReportingTimeAccuracy:0];
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v3)
    {
      return 0;
    }

    v4 = v3(v2, &cf);
    v5 = cf;
    if (v4)
    {
      v2 = 0;
      if (!cf)
      {
        return v2;
      }

      goto LABEL_5;
    }

    v2 = [AVSampleCursor sampleCursorWithFigSampleCursor:cf];
    v5 = cf;
    if (cf)
    {
LABEL_5:
      CFRelease(v5);
    }
  }

  return v2;
}

- (id)makeSampleCursorAtLastSampleInDecodeOrder
{
  cf = 0;
  v2 = [(AVAssetTrackInspector *)self _getFigSampleCursorServiceReportingTimeAccuracy:0];
  if (v2)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v3)
    {
      return 0;
    }

    v4 = v3(v2, &cf);
    v5 = cf;
    if (v4)
    {
      v2 = 0;
      if (!cf)
      {
        return v2;
      }

      goto LABEL_5;
    }

    v2 = [AVSampleCursor sampleCursorWithFigSampleCursor:cf];
    v5 = cf;
    if (cf)
    {
LABEL_5:
      CFRelease(v5);
    }
  }

  return v2;
}

@end