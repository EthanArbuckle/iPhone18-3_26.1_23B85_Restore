@interface AVFigAssetWriterCaptionTrack
- (BOOL)addCaption:(id)a3 error:(id *)a4;
- (BOOL)addCaptionGroup:(id)a3 error:(id *)a4;
- (BOOL)addCaptionGroupAsSampleBuffer:(id)a3 error:(id *)a4;
- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4;
- (BOOL)flushCaptionsUntilTime:(id *)a3 error:(id *)a4;
- (BOOL)flushCaptionsWithError:(id *)a3;
- (BOOL)markEndOfDataReturningError:(id *)a3;
- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)a3 sourcePixelBufferAttributes:(id)a4 multiPass:(BOOL)a5 error:(id *)a6;
- (void)dealloc;
- (void)prepareToEndSession;
@end

@implementation AVFigAssetWriterCaptionTrack

- (int)_attachToFigAssetWriterUsingFormatSpecification:(id)a3 sourcePixelBufferAttributes:(id)a4 multiPass:(BOOL)a5 error:(id *)a6
{
  v9 = CMMediaTypeFromAVMediaType([(AVFigAssetWriterTrack *)self mediaType:a3]);
  v10 = [(AVMediaFileType *)[(AVFigAssetWriterTrack *)self mediaFileType] UTI];
  v30 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if ([(NSString *)v10 isEqualToString:@"com.apple.itunes-timed-text"])
  {
    v12 = 1634301044;
  }

  else if ([(NSString *)v10 isEqualToString:@"com.scenarist.closed-caption"])
  {
    v12 = 1664495672;
  }

  else if ([(NSString *)v10 isEqualToString:@"org.w3.webvtt"])
  {
    v12 = 2004251764;
  }

  else
  {
    v12 = 0;
  }

  v13 = [a3 outputSettings];
  v14 = v13;
  if (v13)
  {
    [v13 captionTimeCodeFrameDuration];
  }

  v28 = 0uLL;
  v29 = 0;
  v15 = FigCFDictionarySetCMTime();
  if (v15)
  {
    goto LABEL_24;
  }

  v16 = [v14 useDropFrameTimeCode];
  v17 = MEMORY[0x1E695E4C0];
  if (v16)
  {
    v17 = MEMORY[0x1E695E4D0];
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E6971868], *v17);
  v18 = [(AVFigAssetWriterTrack *)self figAssetWriter];
  v19 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (!v19)
  {
    v25 = 4294954514;
LABEL_17:
    v21 = [AVAssetWriter _errorForOSStatus:v25, v28, v29];
    goto LABEL_18;
  }

  v15 = v19(v18, v9, v12, Mutable, &v30);
  if (v15)
  {
LABEL_24:
    v25 = v15;
    goto LABEL_17;
  }

  v20 = objc_alloc_init(AVCaptionGrouper);
  v21 = 0;
  self->_captionGrouper = v20;
  v22 = MEMORY[0x1E6960C98];
  v23 = *(MEMORY[0x1E6960C98] + 16);
  *&self->_previousCaptionTimeRange.start.value = *MEMORY[0x1E6960C98];
  *&self->_previousCaptionTimeRange.start.epoch = v23;
  *&self->_previousCaptionTimeRange.duration.timescale = *(v22 + 32);
  v24 = MEMORY[0x1E6960C70];
  *&self->_nextGroupStartTime.value = *MEMORY[0x1E6960C70];
  self->_nextGroupStartTime.epoch = *(v24 + 16);
LABEL_18:
  v26 = v30;
  if (a6 && !v30)
  {
    *a6 = v21;
  }

  if (Mutable)
  {
    CFRelease(Mutable);
    return v30;
  }

  return v26;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVFigAssetWriterCaptionTrack;
  [(AVFigAssetWriterTrack *)&v3 dealloc];
}

- (BOOL)addSampleBuffer:(opaqueCMSampleBuffer *)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = AVErrorForClientProgrammingError([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Cannot call appendSampleBuffer: when a caption adaptor is attached" userInfo:0]);
  }

  return 0;
}

- (BOOL)flushCaptionsUntilTime:(id *)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  captionGrouper = self->_captionGrouper;
  v18 = *a3;
  v7 = [(AVCaptionGrouper *)captionGrouper flushAddedCaptionsIntoGroupsUpToTime:&v18];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [(AVFigAssetWriterCaptionTrack *)self addCaptionGroupAsSampleBuffer:*(*(&v14 + 1) + 8 * v11) error:a4];
      if (!v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v19 count:16];
        if (v9)
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
    LOBYTE(v12) = 1;
  }

  return v12;
}

- (BOOL)flushCaptionsWithError:(id *)a3
{
  v4 = *MEMORY[0x1E6960C88];
  v5 = *(MEMORY[0x1E6960C88] + 16);
  return [(AVFigAssetWriterCaptionTrack *)self flushCaptionsUntilTime:&v4 error:a3];
}

- (BOOL)addCaption:(id)a3 error:(id *)a4
{
  v26 = 0;
  p_previousCaptionTimeRange = &self->_previousCaptionTimeRange;
  if (self->_previousCaptionTimeRange.start.flags)
  {
    if (a3)
    {
      [a3 timeRange];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v23 = 0u;
    }

    *time1 = v23;
    *&time1[16] = v24;
    time2 = p_previousCaptionTimeRange->start;
    if (CMTimeCompare(time1, &time2) < 0)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Caption times must be non-decreasing";
      goto LABEL_21;
    }
  }

  if (self->_nextGroupStartTime.flags)
  {
    if (a3)
    {
      [a3 timeRange];
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
    }

    *time1 = v19;
    *&time1[16] = v20;
    time2 = self->_nextGroupStartTime;
    if (CMTimeCompare(time1, &time2) < 0)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Caption cannot occur previous previous group";
LABEL_21:
      v13 = AVErrorForClientProgrammingError([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
      result = 0;
      v26 = v13;
      if (!a4)
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  if (a3)
  {
    [a3 timeRange];
  }

  else
  {
    v18 = 0u;
    memset(time1, 0, sizeof(time1));
  }

  v11 = *&time1[16];
  *&p_previousCaptionTimeRange->start.value = *time1;
  *&p_previousCaptionTimeRange->start.epoch = v11;
  *&p_previousCaptionTimeRange->duration.timescale = v18;
  [(AVCaptionGrouper *)self->_captionGrouper addCaption:a3];
  if (a3)
  {
    [a3 timeRange];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  *time1 = v14;
  *&time1[16] = v15;
  result = [(AVFigAssetWriterCaptionTrack *)self flushCaptionsUntilTime:time1 error:&v26, v14, v15, v16];
  if (a4)
  {
LABEL_22:
    if (!result)
    {
      *a4 = v26;
    }
  }

  return result;
}

- (BOOL)addCaptionGroup:(id)a3 error:(id *)a4
{
  v25 = 0;
  p_nextGroupStartTime = &self->_nextGroupStartTime;
  if (self->_nextGroupStartTime.flags)
  {
    if (a3)
    {
      [a3 timeRange];
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v22 = 0u;
    }

    *&time1.start.value = v22;
    time1.start.epoch = v23;
    time2 = *p_nextGroupStartTime;
    if (CMTimeCompare(&time1.start, &time2))
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Caption group times must be contiguous";
      goto LABEL_18;
    }
  }

  v11 = *&self->_previousCaptionTimeRange.start.epoch;
  *&time1.start.value = *&self->_previousCaptionTimeRange.start.value;
  *&time1.start.epoch = v11;
  *&time1.duration.timescale = *&self->_previousCaptionTimeRange.duration.timescale;
  CMTimeRangeGetEnd(&v20, &time1);
  if (v20.flags)
  {
    if (a3)
    {
      [a3 timeRange];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v16 = 0u;
    }

    *&time2.value = v16;
    time2.epoch = v17;
    v12 = *&self->_previousCaptionTimeRange.start.epoch;
    *&time1.start.value = *&self->_previousCaptionTimeRange.start.value;
    *&time1.start.epoch = v12;
    *&time1.duration.timescale = *&self->_previousCaptionTimeRange.duration.timescale;
    CMTimeRangeGetEnd(&v15, &time1);
    if (CMTimeCompare(&time2, &v15) < 0)
    {
      v8 = MEMORY[0x1E695DF30];
      v9 = *MEMORY[0x1E695D940];
      v10 = @"Caption group cannot occur before previous caption";
LABEL_18:
      v14 = AVErrorForClientProgrammingError([v8 exceptionWithName:v9 reason:v10 userInfo:0]);
      result = 0;
      v25 = v14;
      if (!a4)
      {
        return result;
      }

      goto LABEL_19;
    }
  }

  if (a3)
  {
    [a3 timeRange];
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  CMTimeRangeGetEnd(&time2, &time1);
  *p_nextGroupStartTime = time2;
  result = [(AVFigAssetWriterCaptionTrack *)self addCaptionGroupAsSampleBuffer:a3 error:&v25];
  if (a4)
  {
LABEL_19:
    if (!result)
    {
      *a4 = v25;
    }
  }

  return result;
}

- (void)prepareToEndSession
{
  [(AVFigAssetWriterCaptionTrack *)self flushCaptionsWithError:0];
  v3.receiver = self;
  v3.super_class = AVFigAssetWriterCaptionTrack;
  [(AVFigAssetWriterTrack *)&v3 prepareToEndSession];
}

- (BOOL)markEndOfDataReturningError:(id *)a3
{
  v8 = 0;
  v5 = [(AVFigAssetWriterCaptionTrack *)self flushCaptionsWithError:&v8];
  if (v5)
  {
    v7.receiver = self;
    v7.super_class = AVFigAssetWriterCaptionTrack;
    LOBYTE(v5) = [(AVFigAssetWriterTrack *)&v7 markEndOfDataReturningError:&v8];
  }

  if (a3 && !v5)
  {
    *a3 = v8;
  }

  return v5;
}

- (BOOL)addCaptionGroupAsSampleBuffer:(id)a3 error:(id *)a4
{
  v11 = 0;
  v6 = [a3 copySampleBufferWithError:&v11];
  if (v6)
  {
    v7 = v6;
    v10.receiver = self;
    v10.super_class = AVFigAssetWriterCaptionTrack;
    v8 = [(AVFigAssetWriterTrack *)&v10 addSampleBuffer:v6 error:&v11];
    CFRelease(v7);
    if (!a4)
    {
      return v8;
    }
  }

  else
  {
    v8 = 0;
    if (!a4)
    {
      return v8;
    }
  }

  if (!v8)
  {
    *a4 = v11;
  }

  return v8;
}

@end