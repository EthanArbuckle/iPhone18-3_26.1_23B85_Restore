@interface AVFigAssetTrackInspector
- ($2FE3C3292E52C4A5B67D27538456EAD9)gaplessSourceTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaDecodeTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaPresentationTimeRange;
- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)latentBaseDecodeTimeStampOfFirstTrackFragment;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minSampleDuration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)uneditedDuration;
- (BOOL)_isDefunct;
- (BOOL)hasSeamSamples;
- (BOOL)isEqual:(id)a3;
- (BOOL)requiresFrameReordering;
- (CGAffineTransform)preferredTransform;
- (CGSize)dimensions;
- (CGSize)naturalSize;
- (OpaqueFigFormatReader)_figFormatReader;
- (OpaqueFigSampleCursorService)_getFigSampleCursorServiceReportingTimeAccuracy:(BOOL *)a3;
- (OpaqueFigTrackReader)_figTrackReader;
- (__CFString)figAssetPropertyForSegments;
- (float)nominalFrameRate;
- (float)preferredVolume;
- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5;
- (id)_segmentsForProperty:(__CFString *)a3;
- (id)availableMetadataFormats;
- (id)commonMetadata;
- (id)extendedLanguageTag;
- (id)formatDescriptions;
- (id)languageCode;
- (id)metadataForFormat:(id)a3;
- (id)segmentForTrackTime:(id *)a3;
- (id)segments;
- (int)naturalTimeScale;
- (int)trackID;
- (int64_t)_loadStatusForFigAssetTrackProperty:(id)a3 error:(id *)a4;
- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4;
- (int64_t)totalSampleDataLength;
- (unint64_t)hash;
- (void)_addFigNotifications;
- (void)_invokeCompletionHandlerForLoadingBatches:(id)a3;
- (void)_removeFigNotifications;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3;
- (void)_valueAsCFTypeForProperty:(__CFString *)a3 propertyString:(id)a4;
- (void)dealloc;
- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4;
@end

@implementation AVFigAssetTrackInspector

- (void)_addFigNotifications
{
  if (self->_figAsset && self->_figAssetTrack)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVAssetTrackInspector *)self _weakReference];
    CFRetain(v4);
    [v3 addListenerWithWeakReference:v4 callback:handleFigAssetTrackNotification name:*MEMORY[0x1E6971478] object:self->_figAssetTrack flags:0];
    v5 = *MEMORY[0x1E6970EC8];
    figAsset = self->_figAsset;

    [v3 addListenerWithWeakReference:v4 callback:handleFigAssetNotification name:v5 object:figAsset flags:0];
  }
}

- (int)trackID
{
  v5 = 0;
  figAssetTrack = self->_figAssetTrack;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v3)
  {
    return 0;
  }

  v3(figAssetTrack, &v5, 0);
  return v5;
}

- (id)_initWithAsset:(id)a3 trackID:(int)a4 trackIndex:(int64_t)a5
{
  v6 = *&a4;
  v28.receiver = self;
  v28.super_class = AVFigAssetTrackInspector;
  v8 = [AVAssetTrackInspector _initWithAsset:sel__initWithAsset_trackID_trackIndex_ trackID:? trackIndex:?];
  if (v8)
  {
    if (a3)
    {
      ValueAtIndex = 0;
      v9 = [a3 _figAsset];
      v26 = 0;
      if (v9)
      {
        v10 = v9;
        if (v6)
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 40);
          if (v11)
          {
            v11(v10, v6, &ValueAtIndex);
          }
        }

        else if ((a5 & 0x8000000000000000) == 0)
        {
          cf = 0;
          CMBaseObject = FigAssetGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v14 = v13(CMBaseObject, *MEMORY[0x1E6971308], *MEMORY[0x1E695E480], &cf);
            v15 = cf;
            if (v14)
            {
              v16 = 1;
            }

            else
            {
              v16 = cf == 0;
            }

            if (!v16)
            {
              v17 = CFGetTypeID(cf);
              TypeID = CFArrayGetTypeID();
              v15 = cf;
              if (v17 == TypeID)
              {
                Count = CFArrayGetCount(cf);
                v15 = cf;
                if (Count > a5)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(cf, a5);
                  v15 = cf;
                }
              }
            }

            if (v15)
            {
              CFRelease(v15);
            }
          }
        }

        v20 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v21 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v21)
          {
            v21(v20, 0, &v26);
          }
        }

        v22 = CFRetain(v10);
        v9 = ValueAtIndex;
        v8[4] = v22;
        if (v9)
        {
          v9 = CFRetain(v9);
        }
      }

      else
      {
        v8[4] = 0;
      }

      v8[5] = v9;
      v8[6] = objc_alloc_init(AVDispatchOnce);
      v8[8] = objc_alloc_init(AVDispatchOnce);
      v8[10] = objc_alloc_init(AVDispatchOnce);
      *(v8 + 32) = v26;
      *(v8 + 144) = [a3 _prefersNominalDurations];
      v8[17] = [a3 _weakReference];
      v8[13] = FigSimpleMutexCreate();
      v8[15] = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8[14] = dispatch_queue_create("com.apple.avfoundation.avassettrack.completionsQueue", v23);
      [v8 _addFigNotifications];
    }

    if (!v8[4] || !v8[5] || !v8[13] || !v8[15] || !v8[14])
    {

      return 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  [(AVFigAssetTrackInspector *)self _removeFigNotifications];

  completionHandlerQueue = self->_completionHandlerQueue;
  if (completionHandlerQueue)
  {
    dispatch_release(completionHandlerQueue);
  }

  if (self->_loadingMutex)
  {
    FigSimpleMutexDestroy();
  }

  figAsset = self->_figAsset;
  if (figAsset)
  {
    CFRelease(figAsset);
  }

  figAssetTrack = self->_figAssetTrack;
  if (figAssetTrack)
  {
    CFRelease(figAssetTrack);
  }

  figFormatReader = self->_figFormatReader;
  if (figFormatReader)
  {
    CFRelease(figFormatReader);
  }

  figTrackReader = self->_figTrackReader;
  if (figTrackReader)
  {
    CFRelease(figTrackReader);
  }

  figSampleCursorService = self->_figSampleCursorService;
  if (figSampleCursorService)
  {
    CFRelease(figSampleCursorService);
  }

  v9.receiver = self;
  v9.super_class = AVFigAssetTrackInspector;
  [(AVAssetTrackInspector *)&v9 dealloc];
}

- (void)_removeFigNotifications
{
  if (self->_figAsset && self->_figAssetTrack)
  {
    v3 = [AVCMNotificationDispatcher notificationDispatcherForCMNotificationCenter:CMNotificationCenterGetDefaultLocalCenter()];
    v4 = [(AVAssetTrackInspector *)self _weakReference];
    [v3 removeListenerWithWeakReference:v4 callback:handleFigAssetTrackNotification name:*MEMORY[0x1E6971478] object:self->_figAssetTrack];
    [v3 removeListenerWithWeakReference:v4 callback:handleFigAssetNotification name:*MEMORY[0x1E6970EC8] object:self->_figAsset];

    CFRelease(v4);
  }
}

- (int64_t)_loadStatusForFigAssetTrackProperty:(id)a3 error:(id *)a4
{
  v12 = 0;
  v13 = 0;
  figAssetTrack = self->_figAssetTrack;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    v9 = 0;
    v8 = -12782;
LABEL_6:
    v10 = 3;
    if (!a4)
    {
      return v10;
    }

LABEL_7:
    if (v10 == 3)
    {
      *a4 = AVErrorWithNSErrorAndOSStatus(v9, v8, 0);
      return 3;
    }

    return v10;
  }

  v8 = v7(figAssetTrack, a3, &v13 + 4, &v13, &v12);
  v9 = v12;
  if (v8)
  {
    goto LABEL_6;
  }

  if (v13 == -12844)
  {
    return 2;
  }

  v10 = SHIDWORD(v13);
  if (HIDWORD(v13) == 3)
  {
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  if (a4)
  {
    goto LABEL_7;
  }

  return v10;
}

- (int64_t)statusOfValueForKey:(id)a3 error:(id *)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = 0;
  prefersNominalDurations = self->_prefersNominalDurations;
  if (dictionaryOfFigAssetTrackPropertiesForTrackKeys_buildFigAssetTrackPropertiesForTrackKeysOnce != -1)
  {
    dictionaryOfFigAssetTrackPropertiesForTrackKeys_cold_1();
  }

  v8 = &dictionaryOfFigAssetTrackPropertiesForTrackKeys_sLegacyFigAssetTrackPropertiesForTrackKeys;
  if (!prefersNominalDurations)
  {
    v8 = &dictionaryOfFigAssetTrackPropertiesForTrackKeys_sFigAssetTrackPropertiesForTrackKeys;
  }

  v9 = [*v8 objectForKey:a3];
  if (v9)
  {
    v10 = v9;
    FigSimpleMutexLock();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      v14 = 2;
LABEL_8:
      v15 = 0;
      while (1)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = [(AVFigAssetTrackInspector *)self _loadStatusForFigAssetTrackProperty:*(*(&v20 + 1) + 8 * v15) error:&v24];
        v17 = v16 == 3 ? 3 : v14;
        v14 = v16 <= 1 ? v16 : v17;
        if (v16 < 2 || v16 == 3)
        {
          break;
        }

        if (v12 == ++v15)
        {
          v12 = [v10 countByEnumeratingWithState:&v20 objects:v25 count:16];
          if (v12)
          {
            goto LABEL_8;
          }

          break;
        }
      }
    }

    else
    {
      v14 = 2;
    }

    FigSimpleMutexUnlock();
    if (a4 && v14 == 3)
    {
      *a4 = v24;
    }
  }

  else
  {
    NSLog(&cfstr_AvassettrackSt.isa, a3);
    return 2;
  }

  return v14;
}

- (void)loadValuesAsynchronouslyForKeys:(id)a3 completionHandler:(id)a4
{
  FigSimpleMutexLock();
  if (a3)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    prefersNominalDurations = self->_prefersNominalDurations;
    if (dictionaryOfFigAssetTrackPropertiesForTrackKeys_buildFigAssetTrackPropertiesForTrackKeysOnce != -1)
    {
      dictionaryOfFigAssetTrackPropertiesForTrackKeys_cold_1();
    }

    v9 = &dictionaryOfFigAssetTrackPropertiesForTrackKeys_sLegacyFigAssetTrackPropertiesForTrackKeys;
    if (!prefersNominalDurations)
    {
      v9 = &dictionaryOfFigAssetTrackPropertiesForTrackKeys_sFigAssetTrackPropertiesForTrackKeys;
    }

    v10 = *v9;
    v11 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    v12 = [MEMORY[0x1E695DFA8] setWithCapacity:0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__AVFigAssetTrackInspector_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke;
    v22[3] = &unk_1E7464EB8;
    v22[4] = v10;
    v22[5] = v12;
    v22[6] = v11;
    [a3 enumerateObjectsUsingBlock:v22];
    if ([v11 count])
    {
      NSLog(&cfstr_AvassettrackLo.isa, [v11 allObjects]);
    }

    v13 = [v12 allObjects];
    if ([v13 count])
    {
      valuePtr = 0;
      v20 = 0;
      figAssetTrack = self->_figAssetTrack;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v15)
      {
        if (!v15(figAssetTrack, v13, &v20, &valuePtr) && v20 == 0)
        {
          v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
          if (v17)
          {
            v18 = v17;
            [v7 setObject:v17 forKey:0x1F0A9BA90];
            CFRelease(v18);
          }
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v7 count])
  {
    if (a4)
    {
      v19 = [a4 copy];
      [v7 setObject:v19 forKey:0x1F0A9BAB0];
    }

    [(NSMutableArray *)self->_loadingBatches addObject:v7];
    FigSimpleMutexUnlock();
  }

  else
  {
    FigSimpleMutexUnlock();
    if (a4)
    {
      (*(a4 + 2))(a4);
    }
  }
}

uint64_t __78__AVFigAssetTrackInspector_loadValuesAsynchronouslyForKeys_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKey:a2];
  if (v4)
  {
    v5 = v4;
    v6 = *(a1 + 40);

    return [v6 addObjectsFromArray:v5];
  }

  else
  {
    v8 = *(a1 + 48);

    return [v8 addObject:a2];
  }
}

- (OpaqueFigFormatReader)_figFormatReader
{
  copyFigFormatReaderOnce = self->_copyFigFormatReaderOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__AVFigAssetTrackInspector__figFormatReader__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)copyFigFormatReaderOnce runBlockOnce:v5];
  return self->_figFormatReader;
}

uint64_t __44__AVFigAssetTrackInspector__figFormatReader__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = *(v1 + 32);
  if (result)
  {
    CMBaseObject = FigAssetGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 48);
    if (v6)
    {
      v7 = *MEMORY[0x1E6971228];
      v8 = *MEMORY[0x1E695E480];

      return v6(CMBaseObject, v7, v8, v1 + 56);
    }
  }

  return result;
}

- (OpaqueFigTrackReader)_figTrackReader
{
  copyFigTrackReaderOnce = self->_copyFigTrackReaderOnce;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__AVFigAssetTrackInspector__figTrackReader__block_invoke;
  v5[3] = &unk_1E7460C00;
  v5[4] = self;
  [(AVDispatchOnce *)copyFigTrackReaderOnce runBlockOnce:v5];
  return self->_figTrackReader;
}

uint64_t __43__AVFigAssetTrackInspector__figTrackReader__block_invoke(uint64_t a1)
{
  v13 = 0;
  v2 = *(*(a1 + 32) + 40);
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 32);
  if (v6)
  {
    result = v6(v2, &v13, 0);
    if (!result)
    {
      result = [*(a1 + 32) _figFormatReader];
      if (result)
      {
        v7 = result;
        v8 = v13;
        v9 = *(a1 + 32);
        v10 = CMBaseObjectGetVTable();
        v11 = *(v10 + 16);
        result = v10 + 16;
        v12 = *(v11 + 56);
        if (v12)
        {
          return v12(v7, v8, v9 + 72, 0);
        }
      }
    }
  }

  return result;
}

- (OpaqueFigSampleCursorService)_getFigSampleCursorServiceReportingTimeAccuracy:(BOOL *)a3
{
  copySampleCursorServiceOnce = self->_copySampleCursorServiceOnce;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __76__AVFigAssetTrackInspector__getFigSampleCursorServiceReportingTimeAccuracy___block_invoke;
  v7[3] = &unk_1E7460C00;
  v7[4] = self;
  [(AVDispatchOnce *)copySampleCursorServiceOnce runBlockOnce:v7];
  if (a3)
  {
    *a3 = self->_sampleCursorTimeAccuracyIsExact;
  }

  return self->_figSampleCursorService;
}

void __76__AVFigAssetTrackInspector__getFigSampleCursorServiceReportingTimeAccuracy___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _figTrackReader];
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v5)
    {
      v5(v3, v4 + 88);
    }

    if ([*(a1 + 32) _figFormatReader])
    {
      v9 = 0;
      FigBaseObject = FigFormatReaderGetFigBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v7)
      {
        v7(FigBaseObject, *MEMORY[0x1E6971AA8], *MEMORY[0x1E695E480], &v9);
        v8 = v9;
      }

      else
      {
        v8 = 0;
      }

      *(*(a1 + 32) + 96) = v8 == *MEMORY[0x1E695E4D0];
      if (v8)
      {
        CFRelease(v8);
      }
    }
  }
}

- (void)_valueAsCFTypeForProperty:(__CFString *)a3
{
  v7 = 0;
  result = [(AVFigAssetTrackInspector *)self _figAssetTrack];
  if (result)
  {
    CMBaseObject = FigAssetTrackGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(CMBaseObject, a3, *MEMORY[0x1E695E480], &v7);
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (void)_valueAsCFTypeForProperty:(__CFString *)a3 propertyString:(id)a4
{
  cf = 0;
  v11 = 0;
  v6 = [(AVFigAssetTrackInspector *)self _figAssetTrack];
  if (v6)
  {
    v7 = v6;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v8)
    {
      v8(v7, a3, *MEMORY[0x1E695E480], &v11, &cf);
      if (cf)
      {
        AVLogRuntimeIssueIndicatingAssetTrackPropertyLoadHangRisk(a4);
        CFRelease(cf);
      }
    }
  }

  return v11;
}

- (id)formatDescriptions
{
  v3 = *MEMORY[0x1E69738A8];
  v4 = NSStringFromSelector(sel_formatDescriptions);

  return [(AVFigObjectInspector *)self _nonNilArrayForProperty:v3 propertyString:v4];
}

- (int64_t)totalSampleDataLength
{
  v3 = *MEMORY[0x1E6973940];
  v4 = NSStringFromSelector(sel_totalSampleDataLength);

  return [(AVFigObjectInspector *)self _longLongForProperty:v3 propertyString:v4];
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)timeRange
{
  result = NSStringFromSelector(sel_timeRange);
  if (self)
  {
    v6 = *MEMORY[0x1E6973938];

    return [(AVFigObjectInspector *)self _timeRangeForProperty:v6 propertyString:result];
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)uneditedDuration
{
  dictionaryRepresentation = 0;
  if ([(AVFigAssetTrackInspector *)self _figTrackReader]&& (FigBaseObject = FigTrackReaderGetFigBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(FigBaseObject, *MEMORY[0x1E6973AF8], *MEMORY[0x1E695E480], &dictionaryRepresentation), (v7 = dictionaryRepresentation) != 0))
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
    CMTimeMakeFromDictionary(retstr, v7);
    CFRelease(dictionaryRepresentation);
  }

  else
  {
    v9.receiver = self;
    v9.super_class = AVFigAssetTrackInspector;
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)&v9 uneditedDuration];
  }

  return result;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaPresentationTimeRange
{
  if (self)
  {
    return [($2FE3C3292E52C4A5B67D27538456EAD9 *)self _timeRangeForProperty:*MEMORY[0x1E69738F8]];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return self;
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)mediaDecodeTimeRange
{
  if (self)
  {
    return [($2FE3C3292E52C4A5B67D27538456EAD9 *)self _timeRangeForProperty:*MEMORY[0x1E69738F0]];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return self;
}

- (BOOL)requiresFrameReordering
{
  if (![(AVFigAssetTrackInspector *)self _figTrackReader])
  {
    return 0;
  }

  cf = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  if (v3(FigBaseObject, *MEMORY[0x1E6973A50], *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
  }

  else
  {
    v4 = cf == *MEMORY[0x1E695E4D0];
  }

  v5 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

- (int)naturalTimeScale
{
  v3 = *MEMORY[0x1E6973910];
  v4 = NSStringFromSelector(sel_naturalTimeScale);

  return [(AVFigObjectInspector *)self _SInt32ForProperty:v3 propertyString:v4];
}

- (id)languageCode
{
  v3 = *MEMORY[0x1E69738C8];
  v4 = NSStringFromSelector(sel_languageCode);

  return [(AVFigObjectInspector *)self _stringForProperty:v3 propertyString:v4];
}

- (id)extendedLanguageTag
{
  v3 = *MEMORY[0x1E69738A0];
  v4 = NSStringFromSelector(sel_extendedLanguageTag);

  return [(AVFigObjectInspector *)self _stringForProperty:v3 propertyString:v4];
}

- (CGSize)naturalSize
{
  v3 = *MEMORY[0x1E6973908];
  v4 = NSStringFromSelector(sel_naturalSize);

  [(AVFigObjectInspector *)self _sizeForProperty:v3 propertyString:v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)dimensions
{
  [(AVFigObjectInspector *)self _sizeForProperty:*MEMORY[0x1E6973890]];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  result = NSStringFromSelector(sel_preferredTransform);
  if (self)
  {
    v6 = *MEMORY[0x1E6973928];

    return [(AVFigObjectInspector *)self _affineTransformForProperty:v6 propertyString:result];
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (float)preferredVolume
{
  v3 = *MEMORY[0x1E6973948];
  v4 = NSStringFromSelector(sel_preferredVolume);
  LODWORD(v5) = 1.0;

  [(AVFigObjectInspector *)self _floatForProperty:v3 defaultValue:v4 propertyString:v5];
  return result;
}

- (float)nominalFrameRate
{
  v3 = *MEMORY[0x1E6973918];
  v4 = NSStringFromSelector(sel_nominalFrameRate);

  [(AVFigObjectInspector *)self _floatForProperty:v3 propertyString:v4];
  return result;
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
  if (self)
  {
    v3 = *MEMORY[0x1E69714B8];
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

- (id)_segmentsForProperty:(__CFString *)a3
{
  v4 = [(AVFigObjectInspector *)self _dataForProperty:a3];

  return [(AVAssetTrackInspector *)self _segmentsForSegmentData:v4];
}

- (__CFString)figAssetPropertyForSegments
{
  if (self->_prefersNominalDurations)
  {
    v2 = MEMORY[0x1E6971490];
  }

  else
  {
    v2 = MEMORY[0x1E69714D0];
  }

  return *v2;
}

- (id)segments
{
  v3 = [(AVFigAssetTrackInspector *)self figAssetPropertyForSegments];

  return [(AVFigAssetTrackInspector *)self _segmentsForProperty:v3];
}

- (id)segmentForTrackTime:(id *)a3
{
  v4 = [(AVFigObjectInspector *)self _dataForProperty:[(AVFigAssetTrackInspector *)self figAssetPropertyForSegments]];
  v5 = [v4 length];
  if (v5 < 0x60)
  {
    return 0;
  }

  v7 = v5 / 0x60;
  v8 = [v4 bytes];
  v9 = v8;
  v10 = v7;
  while (1)
  {
    time2 = *(v9 + 48);
    v24 = time2;
    time = *a3;
    if (CMTimeRangeContainsTime(&v24, &time))
    {
      break;
    }

    v9 += 96;
    if (!--v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [AVAssetTrackSegment alloc];
  v12 = *(v9 + 16);
  *&v24.start.value = *v9;
  *&v24.start.epoch = v12;
  v13 = *(v9 + 32);
  v14 = *(v9 + 48);
  v15 = *(v9 + 80);
  v26 = *(v9 + 64);
  v27 = v15;
  *&v24.duration.timescale = v13;
  v25 = v14;
  result = [(AVAssetTrackSegment *)v11 _initWithTimeMapping:&v24];
  if (result)
  {
    return result;
  }

LABEL_8:
  v16 = v7 - 1;
  *&v24.start.value = *&a3->var0;
  v24.start.epoch = a3->var3;
  *&time2.start.value = *(v8 + 48);
  time2.start.epoch = *(v8 + 64);
  if (CMTimeCompare(&v24.start, &time2.start) < 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  v18 = [AVAssetTrackSegment alloc];
  v19 = (v8 + 96 * v17);
  v20 = v19[1];
  *&v24.start.value = *v19;
  *&v24.start.epoch = v20;
  v21 = v19[2];
  v22 = v19[3];
  v23 = v19[5];
  v26 = v19[4];
  v27 = v23;
  *&v24.duration.timescale = v21;
  v25 = v22;
  return [(AVAssetTrackSegment *)v18 _initWithTimeMapping:&v24];
}

- ($2FE3C3292E52C4A5B67D27538456EAD9)gaplessSourceTimeRange
{
  if (self)
  {
    return [($2FE3C3292E52C4A5B67D27538456EAD9 *)self _timeRangeForProperty:*MEMORY[0x1E69714A8]];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  return self;
}

- (id)commonMetadata
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [(AVFigObjectInspector *)self _nonNilArrayForProperty:*MEMORY[0x1E6973880] propertyString:NSStringFromSelector(sel_commonMetadata)];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v10 + 1) + 8 * v7)];
        if (v8)
        {
          [v3 addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)availableMetadataFormats
{
  [(AVFigAssetTrackInspector *)self _ensureAllDependenciesOfKeyAreLoaded:@"availableMetadataFormats"];
  v3 = *MEMORY[0x1E6973878];
  v4 = NSStringFromSelector(sel_availableMetadataFormats);

  return [(AVFigObjectInspector *)self _nonNilArrayForProperty:v3 propertyString:v4];
}

- (id)metadataForFormat:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  if ([a3 isEqualToString:@"com.apple.quicktime.udta"])
  {
    v6 = MEMORY[0x1E69714E8];
LABEL_5:
    v7 = *v6;
    goto LABEL_9;
  }

  if ([a3 isEqualToString:@"org.mp4ra"])
  {
    v6 = MEMORY[0x1E69714B0];
    goto LABEL_5;
  }

  if ([a3 isEqualToString:@"com.apple.quicktime.mdta"])
  {
    v7 = *MEMORY[0x1E69714E0];
  }

  else
  {
    v7 = 0;
  }

LABEL_9:
  v8 = [(AVFigObjectInspector *)self _nonNilArrayForProperty:v7];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [AVMetadataItem _metadataItemWithFigMetadataDictionary:*(*(&v15 + 1) + 8 * v12)];
        if (v13)
        {
          [v5 addObject:v13];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)hasSeamSamples
{
  if (![(AVFigAssetTrackInspector *)self _figTrackReader])
  {
    return 0;
  }

  cf = 0;
  FigBaseObject = FigTrackReaderGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  if (v3(FigBaseObject, *MEMORY[0x1E6973A68], *MEMORY[0x1E695E480], &cf))
  {
    v4 = 0;
  }

  else
  {
    v4 = cf == *MEMORY[0x1E695E4D0];
  }

  v5 = v4;
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(AVFigAssetTrackInspector *)self _figAssetTrack];
  v6 = [a3 _figAssetTrack];
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
  v3 = [(AVFigAssetTrackInspector *)self _figAssetTrack];
  if (v3)
  {

    return CFHash(v3);
  }

  else
  {
    v5.receiver = self;
    v5.super_class = AVFigAssetTrackInspector;
    return [(AVFigAssetTrackInspector *)&v5 hash];
  }
}

- (void)_invokeCompletionHandlerForLoadingBatches:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(a3);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) objectForKey:0x1F0A9BAB0];
        if (v9)
        {
          dispatch_async(self->_completionHandlerQueue, v9);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (BOOL)_isDefunct
{
  v8 = 0;
  v2 = [(AVFigAssetTrackInspector *)self _figAssetTrack];
  v3 = *(CMBaseObjectGetVTable() + 8);
  if (*v3 < 5uLL)
  {
    v5 = 0;
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = v3[11];
    if (v4)
    {
      LOBYTE(v4) = v4(v2, &v8) == 0;
      v5 = v8;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v5)
  {
    v5 = v6;
  }

  return v5 == 1;
}

@end