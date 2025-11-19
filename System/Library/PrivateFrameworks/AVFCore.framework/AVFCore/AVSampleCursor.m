@interface AVSampleCursor
+ (AVSampleCursor)sampleCursorWithFigSampleCursor:(OpaqueFigSampleCursor *)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stepByDecodeTime:(SEL)a3;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stepByPresentationTime:(SEL)a3;
- (AVSampleCursor)initWithFigSampleCursor:(OpaqueFigSampleCursor *)a3;
- (AVSampleCursorAudioDependencyInfo)currentSampleAudioDependencyInfo;
- (AVSampleCursorChunkInfo)currentChunkInfo;
- (AVSampleCursorDependencyInfo)currentSampleDependencyInfo;
- (AVSampleCursorStorageRange)currentChunkStorageRange;
- (AVSampleCursorStorageRange)currentSampleStorageRange;
- (AVSampleCursorSyncInfo)currentSampleSyncInfo;
- (BOOL)samplesWithEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor:(AVSampleCursor *)cursor;
- (BOOL)samplesWithLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor:(AVSampleCursor *)cursor;
- (CMFormatDescriptionRef)copyCurrentSampleFormatDescription;
- (CMTime)currentSampleDuration;
- (CMTime)decodeTimeStamp;
- (CMTime)presentationTimeStamp;
- (CMTime)stepByDecodeTime:(SEL)a3 wasPinned:(CMTime *)deltaDecodeTime;
- (CMTime)stepByPresentationTime:(SEL)a3 wasPinned:(CMTime *)deltaPresentationTime;
- (NSComparisonResult)comparePositionInDecodeOrderWithPositionOfCursor:(AVSampleCursor *)cursor;
- (NSDictionary)currentSampleDependencyAttachments;
- (NSInteger)samplesRequiredForDecoderRefresh;
- (NSURL)currentChunkStorageURL;
- (const)currentSampleAudioDependencyInfo;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)seamIdentifier;
- (int64_t)currentSampleIndexInChunk;
- (int64_t)stepInDecodeOrderByCount:(int64_t)stepCount;
- (int64_t)stepInPresentationOrderByCount:(int64_t)stepCount;
- (opaqueCMSampleBuffer)createSampleBufferForCurrentSampleReturningError:(id *)a3;
- (opaqueCMSampleBuffer)createSampleBufferFromCurrentSampleToEndCursor:(id)a3 error:(id *)a4;
- (uint64_t)currentChunkStorageURL;
- (void)dealloc;
@end

@implementation AVSampleCursor

+ (AVSampleCursor)sampleCursorWithFigSampleCursor:(OpaqueFigSampleCursor *)a3
{
  v3 = [[a1 alloc] initWithFigSampleCursor:a3];

  return v3;
}

- (AVSampleCursor)initWithFigSampleCursor:(OpaqueFigSampleCursor *)a3
{
  v8.receiver = self;
  v8.super_class = AVSampleCursor;
  v4 = [(AVSampleCursor *)&v8 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVSampleCursorInternal);
    v4->_sampleCursor = v5;
    if (v5 && ((CFRetain(v5), !a3) ? (v6 = 0) : (v6 = CFRetain(a3)), (v4->_sampleCursor->figSampleCursor = v6) != 0))
    {
      v4->_sampleCursor->implementsGetDecodeTimeStamp = *(*(CMBaseObjectGetVTable() + 16) + 48) != 0;
      v4->_sampleCursor->implementsGetDuration = *(*(CMBaseObjectGetVTable() + 16) + 56) != 0;
      v4->_sampleCursor->implementsGetDependencyInfo = *(*(CMBaseObjectGetVTable() + 16) + 64) != 0;
      v4->_sampleCursor->implementsTestReorderingBoundary = *(*(CMBaseObjectGetVTable() + 16) + 80) != 0;
      v4->_sampleCursor->implementsCopySampleLocation = *(*(CMBaseObjectGetVTable() + 16) + 144) != 0;
      v4->_sampleCursor->implementsCopyChunkDetails = *(*(CMBaseObjectGetVTable() + 16) + 152) != 0;
      v4->_sampleCursor->implementsCreateSampleBuffer = *(*(CMBaseObjectGetVTable() + 16) + 112) != 0;
      v4->_sampleCursor->implementsGetMPEG2FrameType = *(*(CMBaseObjectGetVTable() + 16) + 72) != 0;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x1E695E480];
  if (self)
  {
    [(AVSampleCursor *)self presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v7 = CMTimeCopyDescription(v6, &time);
  if (self)
  {
    [(AVSampleCursor *)self decodeTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  return [v3 stringWithFormat:@"<%@: %p, PTS = %@, DTS = %@>", v5, self, v7, CMTimeCopyDescription(v6, &time)];
}

- (void)dealloc
{
  sampleCursor = self->_sampleCursor;
  if (sampleCursor)
  {
    if (sampleCursor->figSampleCursor)
    {
      CFRelease(sampleCursor->figSampleCursor);
      sampleCursor = self->_sampleCursor;
    }

    CFRelease(sampleCursor);
  }

  v4.receiver = self;
  v4.super_class = AVSampleCursor;
  [(AVSampleCursor *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  cf = 0;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v5)
  {
    return 0;
  }

  v6 = v5(figSampleCursor, &cf);
  v7 = cf;
  if (v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = cf == 0;
  }

  if (v8)
  {
    v10 = 0;
    if (!cf)
    {
      return v10;
    }

    goto LABEL_7;
  }

  v9 = [AVSampleCursor allocWithZone:a3];
  v10 = [(AVSampleCursor *)v9 initWithFigSampleCursor:cf];
  v7 = cf;
  if (cf)
  {
LABEL_7:
    CFRelease(v7);
  }

  return v10;
}

- (int64_t)stepInDecodeOrderByCount:(int64_t)stepCount
{
  v7 = 0;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 168);
  if (!v5)
  {
    return 0;
  }

  v5(figSampleCursor, stepCount, &v7);
  return v7;
}

- (int64_t)stepInPresentationOrderByCount:(int64_t)stepCount
{
  v7 = 0;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 176);
  if (!v5)
  {
    return 0;
  }

  v5(figSampleCursor, stepCount, &v7);
  return v7;
}

- (CMTime)stepByDecodeTime:(SEL)a3 wasPinned:(CMTime *)deltaDecodeTime
{
  v9 = MEMORY[0x1E6960CC0];
  v23 = *MEMORY[0x1E6960CC0];
  *&retstr->value = *MEMORY[0x1E6960CC0];
  v10 = *(v9 + 16);
  retstr->epoch = v10;
  v22 = *MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v11;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v13)
  {
    v13(figSampleCursor, &v26);
  }

  v14 = self->_sampleCursor->figSampleCursor;
  lhs = *deltaDecodeTime;
  VTable = CMBaseObjectGetVTable();
  v17 = *(VTable + 16);
  result = (VTable + 16);
  v18 = *(v17 + 120);
  if (v18 && ((v27 = lhs, result = v18(v14, &v27), result != -12840) ? (v19 = result == 0) : (v19 = 1), v19))
  {
    if (outWasPinned)
    {
      *outWasPinned = result == -12840;
    }

    *&v27.value = v22;
    v27.epoch = v11;
    v20 = self->_sampleCursor->figSampleCursor;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v21)
    {
      v21(v20, &v27);
    }

    lhs = v27;
    rhs = v26;
    return CMTimeSubtract(retstr, &lhs, &rhs);
  }

  else
  {
    *&retstr->value = v23;
    retstr->epoch = v10;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stepByDecodeTime:(SEL)a3
{
  if (self)
  {
    v4 = *a4;
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self stepByDecodeTime:&v4 wasPinned:0];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return self;
}

- (CMTime)stepByPresentationTime:(SEL)a3 wasPinned:(CMTime *)deltaPresentationTime
{
  v9 = MEMORY[0x1E6960CC0];
  v23 = *MEMORY[0x1E6960CC0];
  *&retstr->value = *MEMORY[0x1E6960CC0];
  v10 = *(v9 + 16);
  retstr->epoch = v10;
  v22 = *MEMORY[0x1E6960C70];
  *&v26.value = *MEMORY[0x1E6960C70];
  v11 = *(MEMORY[0x1E6960C70] + 16);
  v26.epoch = v11;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v13)
  {
    v13(figSampleCursor, &v26);
  }

  v14 = self->_sampleCursor->figSampleCursor;
  lhs = *deltaPresentationTime;
  VTable = CMBaseObjectGetVTable();
  v17 = *(VTable + 16);
  result = (VTable + 16);
  v18 = *(v17 + 128);
  if (v18 && ((v27 = lhs, result = v18(v14, &v27), result != -12840) ? (v19 = result == 0) : (v19 = 1), v19))
  {
    if (outWasPinned)
    {
      *outWasPinned = result == -12840;
    }

    *&v27.value = v22;
    v27.epoch = v11;
    v20 = self->_sampleCursor->figSampleCursor;
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v21)
    {
      v21(v20, &v27);
    }

    lhs = v27;
    rhs = v26;
    return CMTimeSubtract(retstr, &lhs, &rhs);
  }

  else
  {
    *&retstr->value = v23;
    retstr->epoch = v10;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)stepByPresentationTime:(SEL)a3
{
  if (self)
  {
    v4 = *a4;
    return [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self stepByPresentationTime:&v4 wasPinned:0];
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return self;
}

- (CMTime)presentationTimeStamp
{
  *retstr = **&MEMORY[0x1E6960C70];
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  VTable = CMBaseObjectGetVTable();
  v7 = *(VTable + 16);
  result = (VTable + 16);
  v8 = *(v7 + 40);
  if (v8)
  {

    return v8(figSampleCursor, retstr);
  }

  return result;
}

- (CMTime)decodeTimeStamp
{
  *retstr = **&MEMORY[0x1E6960C70];
  sampleCursor = self->_sampleCursor;
  implementsGetDecodeTimeStamp = sampleCursor->implementsGetDecodeTimeStamp;
  figSampleCursor = sampleCursor->figSampleCursor;
  VTable = CMBaseObjectGetVTable();
  v10 = *(VTable + 16);
  result = (VTable + 16);
  v9 = v10;
  if (implementsGetDecodeTimeStamp)
  {
    v11 = *(v9 + 48);
    if (!v11)
    {
      return result;
    }

    v12 = figSampleCursor;
    v13 = retstr;

    return v11(v12, v13);
  }

  v11 = *(v9 + 40);
  if (v11)
  {
    v12 = figSampleCursor;
    v13 = retstr;

    return v11(v12, v13);
  }

  return result;
}

- (NSComparisonResult)comparePositionInDecodeOrderWithPositionOfCursor:(AVSampleCursor *)cursor
{
  v4 = [(AVSampleCursor *)cursor _figSampleCursor];
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (v6)
  {
    v7 = v6;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = 0;
    if (!v4)
    {
LABEL_7:
      v9 = 0;
      goto LABEL_8;
    }
  }

  v8 = *(CMBaseObjectGetVTable() + 16);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
LABEL_8:
  if (v7 != v9 || !*(v7 + 32))
  {
    return 0;
  }

  v11 = *(v9 + 32);

  return v11(figSampleCursor, v4);
}

- (BOOL)samplesWithEarlierDecodeTimeStampsMayHaveLaterPresentationTimeStampsThanCursor:(AVSampleCursor *)cursor
{
  if (!self->_sampleCursor->implementsTestReorderingBoundary)
  {
    return 0;
  }

  v4 = [(AVSampleCursor *)cursor _figSampleCursor];
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    v7 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 != v8 || (v10 = *(v7 + 80)) == 0 || v10(figSampleCursor, v4, 0) == 0;
  }

  v7 = v6;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = *(CMBaseObjectGetVTable() + 16);
  return v7 != v8 || (v10 = *(v7 + 80)) == 0 || v10(figSampleCursor, v4, 0) == 0;
}

- (BOOL)samplesWithLaterDecodeTimeStampsMayHaveEarlierPresentationTimeStampsThanCursor:(AVSampleCursor *)cursor
{
  if (!self->_sampleCursor->implementsTestReorderingBoundary)
  {
    return 0;
  }

  v4 = [(AVSampleCursor *)cursor _figSampleCursor];
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    v7 = 0;
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 != v8 || (v10 = *(v7 + 80)) == 0 || v10(figSampleCursor, v4, 1) == 0;
  }

  v7 = v6;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = *(CMBaseObjectGetVTable() + 16);
  return v7 != v8 || (v10 = *(v7 + 80)) == 0 || v10(figSampleCursor, v4, 1) == 0;
}

- (opaqueCMSampleBuffer)createSampleBufferForCurrentSampleReturningError:(id *)a3
{
  sampleCursor = self->_sampleCursor;
  if (!sampleCursor->implementsCreateSampleBuffer)
  {
    return 0;
  }

  v11[3] = v3;
  v11[4] = v4;
  v11[0] = 0;
  figSampleCursor = sampleCursor->figSampleCursor;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v8)
  {
    v9 = v8(figSampleCursor, 0, v11);
    if (!a3)
    {
      return v11[0];
    }

LABEL_7:
    if (v9)
    {
      *a3 = AVLocalizedErrorWithUnderlyingOSStatus(v9, 0);
    }

    return v11[0];
  }

  v9 = -12782;
  if (a3)
  {
    goto LABEL_7;
  }

  return v11[0];
}

- (opaqueCMSampleBuffer)createSampleBufferFromCurrentSampleToEndCursor:(id)a3 error:(id *)a4
{
  if (!self->_sampleCursor->implementsCreateSampleBuffer)
  {
    return 0;
  }

  v13[5] = v4;
  v13[6] = v5;
  v8 = [a3 _figSampleCursor];
  v13[0] = 0;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 112);
  if (v10)
  {
    v11 = v10(figSampleCursor, v8, v13);
    if (!a4)
    {
      return v13[0];
    }

LABEL_7:
    if (v11)
    {
      *a4 = AVLocalizedErrorWithUnderlyingOSStatus(v11, 0);
    }

    return v13[0];
  }

  v11 = -12782;
  if (a4)
  {
    goto LABEL_7;
  }

  return v13[0];
}

- (CMTime)currentSampleDuration
{
  *retstr = **&MEMORY[0x1E6960C68];
  v4 = *&self->timescale;
  if (*(v4 + 17) == 1)
  {
    v5 = *(v4 + 8);
    VTable = CMBaseObjectGetVTable();
    v7 = *(VTable + 16);
    self = (VTable + 16);
    v8 = *(v7 + 56);
    if (v8)
    {

      return v8(v5, retstr);
    }
  }

  return self;
}

- (CMFormatDescriptionRef)copyCurrentSampleFormatDescription
{
  v5 = 0;
  figSampleCursor = self->_sampleCursor->figSampleCursor;
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 160);
  if (!v3)
  {
    return 0;
  }

  v3(figSampleCursor, &v5);
  return v5;
}

- (AVSampleCursorDependencyInfo)currentSampleDependencyInfo
{
  cf = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(FigBaseObject, *MEMORY[0x1E69736F0], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_7;
  }

  if (!cf)
  {
    v7 = 0;
    v6 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = 0;
    return ((v9 << 40) | (v8 << 32) | (v10 << 24) | (v11 << 16) | (v6 << 8) | v7);
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFDictionaryGetTypeID())
  {
    Value = CFDictionaryGetValue(cf, *MEMORY[0x1E6960450]);
    if (Value)
    {
      v6 = CFBooleanGetValue(Value) != 0;
      v7 = 1;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    v13 = CFDictionaryGetValue(cf, *MEMORY[0x1E6960400]);
    if (v13)
    {
      v10 = CFBooleanGetValue(v13) != 0;
      v11 = 1;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    v14 = CFDictionaryGetValue(cf, *MEMORY[0x1E6960448]);
    if (v14)
    {
      v9 = CFBooleanGetValue(v14) != 0;
      v8 = 1;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v6 = 0;
    v7 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return ((v9 << 40) | (v8 << 32) | (v10 << 24) | (v11 << 16) | (v6 << 8) | v7);
}

- (AVSampleCursorAudioDependencyInfo)currentSampleAudioDependencyInfo
{
  v7 = 0;
  v8 = 0;
  cf = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3 && !v3(FigBaseObject, *MEMORY[0x1E69736F0], *MEMORY[0x1E695E480], &cf))
  {
    if (!cf)
    {
      goto LABEL_7;
    }

    [(AVSampleCursor *)cf currentSampleAudioDependencyInfo];
  }

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_7:
  v4 = v7;
  v5 = v8;
  result.audioSamplePacketRefreshCount = v5;
  result.audioSampleIsIndependentlyDecodable = v4;
  return result;
}

- (NSDictionary)currentSampleDependencyAttachments
{
  v6 = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(FigBaseObject, *MEMORY[0x1E69736F0], *MEMORY[0x1E695E480], &v6);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)currentChunkStorageURL
{
  v10 = 0;
  v11 = 0;
  sampleCursor = self->_sampleCursor;
  if (sampleCursor->implementsCopyChunkDetails)
  {
    figSampleCursor = sampleCursor->figSampleCursor;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (!v4 || v4(figSampleCursor, &v11, &v10, 0, 0, 0, 0, 0, 0, 0))
    {
      goto LABEL_16;
    }
  }

  else if (sampleCursor->implementsCopySampleLocation)
  {
    v5 = sampleCursor->figSampleCursor;
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 144);
    if (!v6 || v6(v5, 0, 0, &v11, &v10))
    {
LABEL_16:
      v7 = v11;
      if (!v11)
      {
        return v10;
      }

      goto LABEL_14;
    }
  }

  v7 = v11;
  if (v10)
  {
    v8 = 1;
  }

  else
  {
    v8 = v11 == 0;
  }

  if (!v8)
  {
    [(AVSampleCursor *)v11 currentChunkStorageURL];
    goto LABEL_16;
  }

  if (v11)
  {
LABEL_14:
    CFRelease(v7);
  }

  return v10;
}

- (AVSampleCursorStorageRange)currentChunkStorageRange
{
  sampleCursor = self->_sampleCursor;
  if (sampleCursor->implementsCopyChunkDetails)
  {
    v9 = 0;
    v10 = 0;
    figSampleCursor = sampleCursor->figSampleCursor;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (v4)
    {
      v5 = v4(figSampleCursor, 0, 0, &v10, &v9, 0, 0, 0, 0, 0);
      v6 = v5 == 0;
      if (v5)
      {
        v7 = -1;
      }

      else
      {
        v7 = v10;
      }

      if (v6)
      {
        v8 = v9;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v7 = -1;
    }
  }

  else
  {
    v7 = [(AVSampleCursor *)self currentSampleStorageRange];
  }

  result.length = v8;
  result.offset = v7;
  return result;
}

- (AVSampleCursorChunkInfo)currentChunkInfo
{
  v2 = 65793;
  sampleCursor = self->_sampleCursor;
  if (sampleCursor->implementsCopyChunkDetails && (v10 = 0, v9 = 0, v8 = 0, figSampleCursor = sampleCursor->figSampleCursor, (v5 = *(*(CMBaseObjectGetVTable() + 16) + 152)) != 0) && !v5(figSampleCursor, 0, 0, 0, 0, &v10, 0, &v9 + 1, &v9, &v8))
  {
    v6 = v10;
    v2 = (HIBYTE(v9) != 0) | ((v9 != 0) << 8) | ((v8 != 0) << 16);
  }

  else
  {
    v6 = 1;
  }

  v7 = v2;
  result.chunkHasUniformSampleSizes = v7;
  result.chunkHasUniformSampleDurations = BYTE1(v7);
  result.chunkHasUniformFormatDescriptions = BYTE2(v7);
  result.chunkSampleCount = v6;
  return result;
}

- (int64_t)currentSampleIndexInChunk
{
  sampleCursor = self->_sampleCursor;
  if (!sampleCursor->implementsCopyChunkDetails)
  {
    return 0;
  }

  v8[3] = v2;
  v8[4] = v3;
  v8[0] = 0;
  figSampleCursor = sampleCursor->figSampleCursor;
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v6)
  {
    return 0;
  }

  if (v6(figSampleCursor, 0, 0, 0, 0, 0, v8, 0, 0, 0))
  {
    return 0;
  }

  return v8[0];
}

- (AVSampleCursorStorageRange)currentSampleStorageRange
{
  sampleCursor = self->_sampleCursor;
  v3 = -1;
  if (sampleCursor->implementsCopySampleLocation && (v9 = 0, v10 = -1, figSampleCursor = sampleCursor->figSampleCursor, (v5 = *(*(CMBaseObjectGetVTable() + 16) + 144)) != 0))
  {
    v6 = v5(figSampleCursor, &v10, &v9, 0, 0);
    if (v6)
    {
      v3 = -1;
    }

    else
    {
      v3 = v10;
    }

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v3;
  result.length = v7;
  result.offset = v8;
  return result;
}

- (NSInteger)samplesRequiredForDecoderRefresh
{
  number = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3)
  {
    return 0;
  }

  v4 = v3(FigBaseObject, *MEMORY[0x1E69736E8], *MEMORY[0x1E695E480], &number);
  v5 = number;
  if (v4)
  {
    v6 = 0;
    if (!number)
    {
      return v6;
    }

    goto LABEL_4;
  }

  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr);
  v6 = valuePtr;
  v5 = number;
  if (number)
  {
LABEL_4:
    CFRelease(v5);
  }

  return v6;
}

- (AVSampleCursorSyncInfo)currentSampleSyncInfo
{
  v14 = 1;
  v13 = 0;
  v12 = 0;
  sampleCursor = self->_sampleCursor;
  if (sampleCursor->implementsGetDependencyInfo)
  {
    figSampleCursor = sampleCursor->figSampleCursor;
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v4)
    {
      if (!v4(figSampleCursor, &v14, &v13, 0, &v12))
      {
        LODWORD(v4) = v12 != 0;
        v5 = v14 != 0;
        v6 = v13 != 0;
        return ((v6 << 8) | (v4 << 16) | v5);
      }

      goto LABEL_12;
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  if (!sampleCursor->implementsGetMPEG2FrameType)
  {
    LODWORD(v4) = 0;
    goto LABEL_14;
  }

  v11 = 0;
  v10 = 0;
  v7 = sampleCursor->figSampleCursor;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (!v8 || v8(v7, &v11, &v10 + 1, &v10))
  {
LABEL_12:
    v6 = 0;
    LODWORD(v4) = 0;
LABEL_15:
    v5 = 1;
    return ((v6 << 8) | (v4 << 16) | v5);
  }

  LODWORD(v4) = v11 == 66;
  v6 = v11 == 73 && HIBYTE(v10) != 0;
  v5 = (v11 == 73) & ~v6;
  return ((v6 << 8) | (v4 << 16) | v5);
}

- (id)seamIdentifier
{
  cf = 0;
  FigBaseObject = FigSampleCursorGetFigBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v3 || v3(FigBaseObject, *MEMORY[0x1E6973700], *MEMORY[0x1E695E480], &cf))
  {
    v5 = 0;
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x1E696AFB0]);
    v5 = [v4 initWithUUIDString:cf];
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

- (const)currentSampleAudioDependencyInfo
{
  v5 = CFGetTypeID(a1);
  result = CFDictionaryGetTypeID();
  if (v5 == result)
  {
    result = CFDictionaryGetValue(*a2, *MEMORY[0x1E69603E0]);
    if (result)
    {
      *a3 = 1;
      return CFNumberGetValue(result, kCFNumberNSIntegerType, a3 + 8);
    }
  }

  return result;
}

- (uint64_t)currentChunkStorageURL
{
  CMBaseObject = CMByteStreamGetCMBaseObject();
  VTable = CMBaseObjectGetVTable();
  v6 = *(VTable + 8);
  result = VTable + 8;
  v7 = *(v6 + 48);
  if (v7)
  {
    return v7(CMBaseObject, *MEMORY[0x1E695FFA0], *MEMORY[0x1E695E480], a2);
  }

  return result;
}

@end