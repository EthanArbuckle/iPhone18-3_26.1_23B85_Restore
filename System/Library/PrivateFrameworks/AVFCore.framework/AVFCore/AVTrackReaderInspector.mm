@interface AVTrackReaderInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)latentBaseDecodeTimeStampOfFirstTrackFragment;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSampleDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)uneditedDuration;
- (BOOL)hasAudioSampleDependencies;
- (BOOL)isEqual:(id)a3;
- (CGAffineTransform)preferredTransform;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (OpaqueFigSampleCursorService)_getFigSampleCursorServiceReportingTimeAccuracy:(BOOL *)a3;
- (float)preferredVolume;
- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5;
- (id)_trackReferences;
- (id)commonMetadata;
- (id)loudnessInfo;
- (id)mediaCharacteristics;
- (int)decodabilityValidationResult;
- (int)playabilityValidationResult;
- (unint64_t)hash;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3;
- (void)dealloc;
@end

@implementation AVTrackReaderInspector

- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5
{
  v6 = *&a4;
  v17 = a4;
  v16.receiver = self;
  v16.super_class = AVTrackReaderInspector;
  v8 = [AVAssetTrackInspector _initWithAsset:sel__initWithAsset_trackID_trackIndex_ trackID:? trackIndex:?];
  if (v8)
  {
    if (a3)
    {
      v15 = 0;
      v14 = 0;
      v9 = [a3 _copyFormatReader];
      v8[4] = v9;
      if (v9)
      {
        v10 = v9;
        if (v6)
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 56);
          if (v11)
          {
            v11(v10, v6, &v15, &v14);
          }
        }

        else if ((a5 & 0x8000000000000000) == 0)
        {
          v12 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (v12)
          {
            v12(v10, a5, &v15, &v14, &v17);
          }
        }
      }

      if (!v15)
      {
        goto LABEL_14;
      }

      v8[5] = v15;
      v8[6] = objc_alloc_init(AVDispatchOnce);
      *(v8 + 17) = v17;
      *(v8 + 18) = v14;
      *(v8 + 88) = [a3 _prefersNominalDurations];
      v8[10] = [a3 _weakReference];
    }

    if (!v8[5])
    {
LABEL_14:

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  formatReader = self->_formatReader;
  if (formatReader)
  {
    CFRelease(formatReader);
  }

  trackReader = self->_trackReader;
  if (trackReader)
  {
    CFRelease(trackReader);
  }

  figSampleCursorService = self->_figSampleCursorService;
  if (figSampleCursorService)
  {
    CFRelease(figSampleCursorService);
  }

  v6.receiver = self;
  v6.super_class = AVTrackReaderInspector;
  [(AVAssetTrackInspector *)&v6 dealloc];
}

- (OpaqueFigSampleCursorService)_getFigSampleCursorServiceReportingTimeAccuracy:(BOOL *)a3
{
  copySampleCursorServiceOnce = self->_copySampleCursorServiceOnce;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __74__AVTrackReaderInspector__getFigSampleCursorServiceReportingTimeAccuracy___block_invoke;
  v7[3] = &unk_1E7460C00;
  v7[4] = self;
  [(AVDispatchOnce *)copySampleCursorServiceOnce runBlockOnce:v7];
  if (a3)
  {
    *a3 = self->_sampleCursorTimeAccuracyIsExact;
  }

  return self->_figSampleCursorService;
}

void __74__AVTrackReaderInspector__getFigSampleCursorServiceReportingTimeAccuracy___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v4)
    {
      v4(v2, v1 + 56);
    }

    v8 = 0;
    FigBaseObject = FigFormatReaderGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(FigBaseObject, *MEMORY[0x1E6971AA8], *MEMORY[0x1E695E480], &v8);
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }

    *(*(a1 + 32) + 64) = v7 == *MEMORY[0x1E695E4D0];
    if (v7)
    {
      CFRelease(v7);
    }
  }
}

- (void)_valueAsCFTypeForProperty:(__CFString *)a3
{
  v7 = 0;
  result = [(AVTrackReaderInspector *)self _figTrackReader];
  if (result)
  {
    FigBaseObject = FigTrackReaderGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(FigBaseObject, a3, *MEMORY[0x1E695E480], &v7);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (int)playabilityValidationResult
{
  v3 = +[AVURLAsset _avfValidationPlist];
  if (!v3)
  {
    return -50;
  }

  v4 = v3;
  v5 = [(AVTrackReaderInspector *)self _figTrackReader];
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  formatReader = self->_formatReader;

  return MEMORY[0x1EEDCD540](formatReader, v6, v4);
}

- (int)decodabilityValidationResult
{
  v3 = +[AVURLAsset _avfValidationPlist];
  if (!v3)
  {
    return -50;
  }

  v4 = v3;
  v5 = [(AVTrackReaderInspector *)self _figTrackReader];
  if (!v5)
  {
    return -50;
  }

  v6 = v5;
  formatReader = self->_formatReader;

  return MEMORY[0x1EEDCD548](formatReader, v6, v4);
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  v4 = [(AVTrackReaderInspector *)self segments];
  result = [v4 count];
  v6 = &result[-1].var1.var3 + 7;
  if (result == 1)
  {
    result = [v4 objectAtIndex:0];
    if (result)
    {
      result = [($2FE3C3292E52C4A5B67D27538456EAD9 *)result timeMapping];
    }

    else
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
    }

    v11 = v30;
    *&retstr->var0.var0 = v29;
    *&retstr->var0.var3 = v11;
    v9 = v31;
    goto LABEL_10;
  }

  if (!result)
  {
    v7 = MEMORY[0x1E6960C98];
    v8 = *(MEMORY[0x1E6960C98] + 16);
    *&retstr->var0.var0 = *MEMORY[0x1E6960C98];
    *&retstr->var0.var3 = v8;
    v9 = *(v7 + 32);
LABEL_10:
    *&retstr->var1.var1 = v9;
    return result;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [v4 objectAtIndex:0];
  if (v10)
  {
    [v10 timeMapping];
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
  }

  v18 = 0u;
  memset(&v19, 0, sizeof(v19));
  v16 = 0u;
  v17 = 0u;
  v12 = [v4 objectAtIndex:v6];
  if (v12)
  {
    [v12 timeMapping];
  }

  else
  {
    v18 = 0u;
    memset(&v19, 0, sizeof(v19));
    v16 = 0u;
    v17 = 0u;
  }

  range = v19;
  CMTimeRangeGetEnd(&lhs, &range);
  *&v13.value = v23;
  v13.epoch = v24;
  CMTimeSubtract(&range.start, &lhs, &v13);
  *&lhs.value = v23;
  lhs.epoch = v24;
  return CMTimeRangeMake(retstr, &lhs, &range.start);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)uneditedDuration
{
  if (self)
  {
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _timeForProperty:*MEMORY[0x1E6973AF8]];
  }

  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  return self;
}

- (BOOL)hasAudioSampleDependencies
{
  if ([-[AVTrackReaderInspector mediaType](self "mediaType")])
  {
    return [(AVFigObjectInspector *)self _BOOLeanForProperty:*MEMORY[0x1E6973A58]]!= 0;
  }

  v4.receiver = self;
  v4.super_class = AVTrackReaderInspector;
  return [(AVAssetTrackInspector *)&v4 hasAudioSampleDependencies];
}

- (id)mediaCharacteristics
{
  v3 = [(AVFigObjectInspector *)self _arrayForProperty:*MEMORY[0x1E69738E8]];
  v4 = [(AVTrackReaderInspector *)self _figMediaType];

  return AVSynthesizeAVMediaCharacteristicsFromFigValues(v3, v4);
}

- (CGSize)naturalSize
{
  [(AVFigObjectInspector *)self _sizeForProperty:*MEMORY[0x1E69739D8] defaultValue:-1.0, -1.0];
  if (v3 == -1.0 && v4 == -1.0)
  {
    v6 = *MEMORY[0x1E69739F0];

    [(AVFigObjectInspector *)self _sizeForProperty:v6];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)dimensions
{
  [(AVFigObjectInspector *)self _sizeForProperty:*MEMORY[0x1E69739F0]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  if (self)
  {
    return [(CGAffineTransform *)self _affineTransformForProperty:*MEMORY[0x1E6973AA0]];
  }

  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  return self;
}

- (float)preferredVolume
{
  if ([-[AVTrackReaderInspector mediaType](self "mediaType")])
  {
    v4 = *MEMORY[0x1E6973B10];
    LODWORD(v3) = 1.0;

    [(AVFigObjectInspector *)self _floatForProperty:v4 defaultValue:v3];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = AVTrackReaderInspector;
    [(AVAssetTrackInspector *)&v6 preferredVolume];
  }

  return result;
}

- (id)loudnessInfo
{
  if ([-[AVTrackReaderInspector mediaType](self "mediaType")])
  {
    v3 = *MEMORY[0x1E6973A98];

    return [(AVFigObjectInspector *)self _dictionaryForProperty:v3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVTrackReaderInspector;
    return [(AVAssetTrackInspector *)&v5 loudnessInfo];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSampleDuration
{
  if (self)
  {
    v3 = *MEMORY[0x1E6973900];
    v4 = *MEMORY[0x1E6960C70];
    v5 = *(MEMORY[0x1E6960C70] + 16);
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self _timeForProperty:v3 defaultValue:&v4];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)latentBaseDecodeTimeStampOfFirstTrackFragment
{
  dictionaryRepresentation = 0;
  *retstr = **&MEMORY[0x1E6960C70];
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 8);
  result = (VTable + 8);
  v8 = *(v7 + 48);
  if (v8)
  {
    v8(FigBaseObject, *MEMORY[0x1E6973A80], *MEMORY[0x1E695E480], &dictionaryRepresentation);
    result = dictionaryRepresentation;
    if (dictionaryRepresentation)
    {
      CMTimeMakeFromDictionary(retstr, dictionaryRepresentation);
      CFRelease(dictionaryRepresentation);
    }
  }

  return result;
}

- (id)commonMetadata
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  cf = 0;
  if (self->_trackReader)
  {
    if (!FigMetadataCopyTrackCommonMetadata())
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = cf;
      v5 = [cf countByEnumeratingWithState:&v11 objects:v16 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v11 + 1) + 8 * i)];
            if (v9)
            {
              [v3 addObject:v9];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
        }

        while (v6);
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

- (id)_trackReferences
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = [-[AVTrackReaderInspector asset](self "asset")];
  v13 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AVTrackReaderInspector *)self trackID];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v3 objectForKey:v9];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __42__AVTrackReaderInspector__trackReferences__block_invoke;
        v14[3] = &unk_1E7464EE0;
        v15 = v4;
        v14[4] = v10;
        v11 = [v10 indexesOfObjectsPassingTest:v14];
        if ([v11 count])
        {
          [v13 setObject:objc_msgSend(v10 forKey:{"objectsAtIndexes:", v11), v9}];
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v13;
}

BOOL __42__AVTrackReaderInspector__trackReferences__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (a3)
  {
    v3 = *(a1 + 40);
    if (v3 == [objc_msgSend(*(a1 + 32) objectAtIndex:{a3 - 1), "intValue"}])
    {
      return 1;
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

  v5 = [(AVTrackReaderInspector *)self _figTrackReader];
  v6 = [a3 _figTrackReader];
  if (v5 == v6)
  {
    return 1;
  }

  v7 = v6;
  result = 0;
  if (v5)
  {
    if (v7)
    {
      return CFEqual(v5, v7) != 0;
    }
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [(AVTrackReaderInspector *)self _figTrackReader];
  if (v3)
  {

    return CFHash(v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVTrackReaderInspector;
    return [(AVTrackReaderInspector *)&v5 hash];
  }
}

@end