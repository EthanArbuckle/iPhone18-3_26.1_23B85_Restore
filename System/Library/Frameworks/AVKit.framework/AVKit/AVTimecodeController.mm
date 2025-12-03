@interface AVTimecodeController
- (AVTimecodeController)initWithTimecodeTrack:(id)track videoTrack:(id)videoTrack;
- (BOOL)readTimecodes;
- (BOOL)validateCMTime:(id *)time;
- (CVSMPTETime)timecodeForFrameNumber64UsingCachedDescription:(SEL)description;
- (CVSMPTETime)timecodeForOffset:(SEL)offset from:(int64_t)from timecode:(int64_t)timecode;
- (double)timeIntervalForFrameNumber:(int64_t)number;
- (id)calculateTimecodeAtFrame:(int64_t)frame;
- (id)maxTimecodeString;
- (id)timecodeForFrameNumber32UsingFormatDescription:(opaqueCMFormatDescription *)description timecodeStartFrame:(int64_t)frame;
- (int64_t)calculateFrameNumberAtCMTime:(id *)time;
- (int64_t)calculateFrameNumberAtTimeInterval:(double)interval;
- (int64_t)calculateFrameNumberAtTimecode:(id)timecode;
- (int64_t)offsetFor:(id)for fromTimecode:(id)timecode;
- (void)cacheTimecodeDescriptionForSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)calculateMaxFrameAndTimecode;
@end

@implementation AVTimecodeController

- (BOOL)readTimecodes
{
  timecodeTrack = [(AVTimecodeController *)self timecodeTrack];
  asset = [timecodeTrack asset];

  if (asset)
  {
    v5 = objc_alloc(MEMORY[0x1E6987E78]);
    timecodeTrack2 = [(AVTimecodeController *)self timecodeTrack];
    asset2 = [timecodeTrack2 asset];
    v8 = [v5 initWithAsset:asset2 error:0];

    if (v8)
    {
      timecodeTrack3 = [(AVTimecodeController *)self timecodeTrack];
      asset3 = [timecodeTrack3 asset];
      v11 = [asset3 avkit_tracksWithMediaType:*MEMORY[0x1E69875F8]];

      if ([v11 count] && (objc_msgSend(v11, "firstObject"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v13 = v12;
        v14 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v12 outputSettings:0];
        [v8 addOutput:v14];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    startReading = [v8 startReading];
    if (startReading)
    {
      while ([v8 status] == 1)
      {
        if ([(NSMutableArray *)self->_timecodes count])
        {
          break;
        }

        copyNextSampleBuffer = [v14 copyNextSampleBuffer];
        if (!copyNextSampleBuffer)
        {
          break;
        }

        v17 = copyNextSampleBuffer;
        [(AVTimecodeController *)self cacheTimecodeDescriptionForSampleBuffer:copyNextSampleBuffer];
        CFRelease(v17);
        if ([(NSMutableArray *)self->_timecodes count])
        {
          [v8 cancelReading];
        }
      }
    }

    firstObject = [(NSMutableArray *)self->_timecodes firstObject];
    v19 = firstObject;
    if (firstObject)
    {
      [firstObject frameDuration];
    }

    else
    {
      v21 = 0uLL;
      epoch = 0;
    }

    *&self->_observationInterval.value = v21;
    self->_observationInterval.epoch = epoch;

    v21 = *&self->_observationInterval.value;
    epoch = self->_observationInterval.epoch;
    if ([(AVTimecodeController *)self validateCMTime:&v21])
    {
      [(AVTimecodeController *)self calculateMaxFrameAndTimecode];
    }

    else
    {
      LOBYTE(startReading) = 0;
    }
  }

  else
  {
    LOBYTE(startReading) = 0;
  }

  return startReading;
}

- (BOOL)validateCMTime:(id *)time
{
  if ((time->var2 & 0x15) != 1)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  time1 = *time;
  v6 = **&MEMORY[0x1E6960CC0];
  return CMTimeCompare(&time1, &v6) > 0;
}

- (void)cacheTimecodeDescriptionForSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  DataBuffer = CMSampleBufferGetDataBuffer(buffer);
  FormatDescription = CMSampleBufferGetFormatDescription(buffer);
  if (DataBuffer)
  {
    v7 = FormatDescription;
    if (FormatDescription)
    {
      totalLengthOut = 0;
      lengthAtOffsetOut = 0;
      dataPointerOut = 0;
      if (!CMBlockBufferGetDataPointer(DataBuffer, 0, &lengthAtOffsetOut, &totalLengthOut, &dataPointerOut) && CMFormatDescriptionGetMediaSubType(v7) == 1953325924)
      {
        v8 = [(AVTimecodeController *)self timecodeForFrameNumber32UsingFormatDescription:v7 timecodeStartFrame:bswap32(*dataPointerOut)];
        [(NSMutableArray *)self->_timecodes addObject:v8];
      }
    }
  }
}

- (double)timeIntervalForFrameNumber:(int64_t)number
{
  firstObject = [(NSMutableArray *)self->_timecodes firstObject];

  result = 0.0;
  if (number >= 1 && firstObject)
  {
    memset(&v13, 0, sizeof(v13));
    firstObject2 = [(NSMutableArray *)self->_timecodes firstObject];
    v8 = firstObject2;
    if (firstObject2)
    {
      [firstObject2 frameDuration];
    }

    else
    {
      memset(&v13, 0, sizeof(v13));
    }

    memset(&v12, 0, sizeof(v12));
    naturalTimeScale = [(AVAssetTrack *)self->_videoTrack naturalTimeScale];
    time = v13;
    CMTimeConvertScale(&v12, &time, naturalTimeScale, kCMTimeRoundingMethod_QuickTime);
    memset(&time, 0, sizeof(time));
    v10 = v12;
    CMTimeMultiply(&time, &v10, number);
    v10 = time;
    return CMTimeGetSeconds(&v10);
  }

  return result;
}

- (int64_t)calculateFrameNumberAtTimeInterval:(double)interval
{
  memset(&v6, 0, sizeof(v6));
  CMTimeMakeWithSeconds(&v6, interval, [(AVAssetTrack *)self->_videoTrack naturalTimeScale]);
  v5 = v6;
  return [(AVTimecodeController *)self calculateFrameNumberAtCMTime:&v5];
}

- (CVSMPTETime)timecodeForOffset:(SEL)offset from:(int64_t)from timecode:(int64_t)timecode
{
  v10 = a6;
  v11 = v10;
  memset(&v31[32], 0, 24);
  if (v10)
  {
    [v10 frameDuration];
  }

  [(AVAssetTrack *)self->_videoTrack nominalFrameRate];
  if (v12 <= 50.0)
  {
    v14 = 2;
  }

  else
  {
    videoTrack = self->_videoTrack;
    if (videoTrack)
    {
      [(AVAssetTrack *)videoTrack minFrameDuration];
    }

    else
    {
      memset(v31, 0, 24);
    }

    *&v31[32] = *v31;
    timecode *= 2;
    v14 = 4;
  }

  *v31 = *&v31[32];
  if (![(AVTimecodeController *)self validateCMTime:v31])
  {
    [(AVAssetTrack *)self->_videoTrack nominalFrameRate];
    CMTimeMake(v31, 1, v15);
    *&v31[32] = *v31;
    if (![(AVTimecodeController *)self validateCMTime:v31])
    {
      CMTimeMake(v31, 1, 60);
      *&v31[32] = *v31;
    }
  }

  v16 = *&v31[40];
  v17 = *&v31[32];
  memset(v31, 0, 24);
  if (v11)
  {
    [v11 timecodeStruct];
    v18 = *&v31[8];
    *&retstr->type = 0;
    *&retstr->hours = 0;
    *&retstr->subframes = 0;
    if (v18 == 1953325924)
    {
      v19 = timecode + from;
      v20 = *&v31[12];
      retstr->type = 1953325924;
      retstr->flags = v20;
      if (timecode + from >= 0)
      {
        v21 = timecode + from;
      }

      else
      {
        v21 = -v19;
      }

      v22 = (v16 + v17 - 1) / v17;
      if (v20)
      {
        v23 = 60 * v22 - v14;
        v24 = 9 * v23 + 60 * v22;
        v25 = 9 * v14 * (v21 / v24);
        v26 = v21 % v24;
        if (v26 >= 60 * v22)
        {
          v25 += v14 + v14 * ((v26 - 60 * v22) / v23);
        }

        v21 += v25;
      }

      v27 = v21 / v22;
      retstr->frames = v21 % v22;
      retstr->seconds = v21 / v22 % 60;
      v28 = v21 / v22 / 60 % 60;
      retstr->minutes = v28;
      v29 = v27 / 3600;
      if ((v20 & 2) != 0 && (v29 %= 24, v19 < 0) && (v20 & 4) == 0)
      {
        retstr->hours = 23 - v29;
      }

      else
      {
        retstr->hours = v29;
        if (v19 < 0)
        {
          retstr->minutes = v28 | 0x80;
        }
      }
    }
  }

  else
  {
    *&retstr->subframes = 0;
    *&retstr->type = 0;
    *&retstr->hours = 0;
  }

  return result;
}

- (int64_t)offsetFor:(id)for fromTimecode:(id)timecode
{
  forCopy = for;
  timecodeCopy = timecode;
  v8 = timecodeCopy;
  memset(&v66, 0, sizeof(v66));
  if (timecodeCopy)
  {
    [timecodeCopy frameDuration];
    value = v66.value;
    v10 = v66.timescale - 1;
    if (forCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    v63 = 0;
    v64 = 0;
    v65 = 0;
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  value = 0;
  v10 = -1;
  if (!forCopy)
  {
    goto LABEL_6;
  }

LABEL_3:
  [forCopy timecodeStruct];
  v11 = SHIWORD(v65);
  if (v8)
  {
LABEL_4:
    [v8 timecodeStruct];
    v12 = SHIWORD(v62);
    goto LABEL_8;
  }

LABEL_7:
  v12 = 0;
  v60 = 0;
  v61 = 0;
  v62 = 0;
LABEL_8:
  v13 = v10 + value;
  v14 = v11 - v12;
  if (forCopy)
  {
    [forCopy timecodeStruct];
    v15 = SWORD2(v59);
  }

  else
  {
    v15 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  v16 = v14 >> 31;
  if (v8)
  {
    [v8 timecodeStruct];
    v17 = SWORD2(v56);
  }

  else
  {
    v17 = 0;
    v54 = 0;
    v55 = 0;
    v56 = 0;
  }

  v18 = v13;
  v19 = v15 - v17;
  v20 = __OFADD__(v19, v16);
  v21 = v19 + v16;
  if (v21 < 0 != v20)
  {
    v22 = v21 + 60;
  }

  else
  {
    v22 = v21;
  }

  if (forCopy)
  {
    [forCopy timecodeStruct];
    v23 = SWORD1(v53);
  }

  else
  {
    v23 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
  }

  v24 = v21 >> 31;
  v25 = v18 / value;
  if (v8)
  {
    [v8 timecodeStruct];
    v26 = SWORD1(v50);
  }

  else
  {
    v26 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
  }

  v27 = v23 - v26;
  v20 = __OFADD__(v27, v24);
  v28 = v27 + v24;
  v29 = v28 >> 31;
  if (v28 < 0 != v20)
  {
    v30 = v28 + 60;
  }

  else
  {
    v30 = v28;
  }

  if (forCopy)
  {
    [forCopy timecodeStruct];
    v31 = v47;
  }

  else
  {
    v31 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
  }

  v32 = v29 & 0xFFFFFFFE;
  if (v8)
  {
    [v8 timecodeStruct];
    v33 = v44;
  }

  else
  {
    v33 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
  }

  v34 = v31 - v33 + v32;
  memset(&v41, 0, sizeof(v41));
  CMTimeMake(&v41, v66.timescale, v66.timescale);
  memset(&v40, 0, sizeof(v40));
  CMTimeMake(&v40, 0, v41.timescale);
  time = v41;
  CMTimeMultiply(&rhs, &time, 3600 * v34);
  v37 = v40;
  CMTimeAdd(&time, &v37, &rhs);
  v40 = time;
  time = v41;
  CMTimeMultiply(&rhs, &time, 60 * v30);
  v37 = v40;
  CMTimeAdd(&time, &v37, &rhs);
  v40 = time;
  time = v41;
  CMTimeMultiply(&rhs, &time, v22);
  v37 = v40;
  CMTimeAdd(&time, &v37, &rhs);
  v40 = time;
  time = v66;
  CMTimeMultiply(&rhs, &time, (v25 & (v14 >> 31)) + v14);
  v37 = v40;
  CMTimeAdd(&time, &v37, &rhs);
  v40 = time;
  if ([v8 tc_flags])
  {
    CMTimeMake(&rhs, ((108 * v34) + (2 * (v30 / -10 + v30))) << (v25 > 50), v41.timescale);
    v37 = v40;
    CMTimeAdd(&time, &v37, &rhs);
    v40 = time;
  }

  time = v40;
  v35 = [(AVTimecodeController *)self calculateFrameNumberAtCMTime:&time];

  return v35;
}

- (CVSMPTETime)timecodeForFrameNumber64UsingCachedDescription:(SEL)description
{
  firstObject = [(NSMutableArray *)self->_timecodes firstObject];
  frameNumber = [firstObject frameNumber];
  firstObject2 = [(NSMutableArray *)self->_timecodes firstObject];
  [(AVTimecodeController *)self timecodeForOffset:a4 from:frameNumber timecode:firstObject2];

  return result;
}

- (id)timecodeForFrameNumber32UsingFormatDescription:(opaqueCMFormatDescription *)description timecodeStartFrame:(int64_t)frame
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(description);
  TimeCodeFlags = CMTimeCodeFormatDescriptionGetTimeCodeFlags(description);
  memset(&v13, 0, sizeof(v13));
  CMTimeCodeFormatDescriptionGetFrameDuration(&v13, description);
  v9 = objc_opt_new();
  [v9 setFrameNumber:frame];
  v12 = v13;
  [v9 setFrameDuration:&v12];
  v12.value = 0;
  *&v12.timescale = __PAIR64__(TimeCodeFlags, MediaSubType);
  v12.epoch = 0;
  [v9 setTimecodeStruct:&v12];
  [v9 setTc_flags:CMTimeCodeFormatDescriptionGetTimeCodeFlags(description)];
  [(AVTimecodeController *)self timecodeForOffset:0 from:frame timecode:v9];
  v12 = v11;
  [v9 setTimecodeStruct:&v12];

  return v9;
}

- (int64_t)calculateFrameNumberAtTimecode:(id)timecode
{
  timecodes = self->_timecodes;
  timecodeCopy = timecode;
  firstObject = [(NSMutableArray *)timecodes firstObject];
  v7 = [(AVTimecodeController *)self offsetFor:timecodeCopy fromTimecode:firstObject];

  return v7;
}

- (id)calculateTimecodeAtFrame:(int64_t)frame
{
  [(AVTimecodeController *)self timecodeForFrameNumber64UsingCachedDescription:frame];
  firstObject = [(NSMutableArray *)self->_timecodes firstObject];
  tc_flags = [firstObject tc_flags];
  v6 = @";";
  if ((tc_flags & 1) == 0)
  {
    v6 = @":";
  }

  v7 = v6;

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d:%02d:%02d%@%02d", 0, 0, 0, v7, 0];

  return v8;
}

- (int64_t)calculateFrameNumberAtCMTime:(id *)time
{
  firstObject = [(NSMutableArray *)self->_timecodes firstObject];

  if (!firstObject)
  {
    return 0;
  }

  [(AVAssetTrack *)self->_videoTrack nominalFrameRate];
  v8 = *time;
  return vcvtmd_s64_f64(CMTimeGetSeconds(&v8) * v6);
}

- (id)maxTimecodeString
{
  firstObject = [(NSMutableArray *)self->_timecodes firstObject];
  tc_flags = [firstObject tc_flags];
  v5 = @";";
  if ((tc_flags & 1) == 0)
  {
    v5 = @":";
  }

  v6 = v5;

  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%02d:%02d:%02d%@%02d", self->_maxTimecode.hours, self->_maxTimecode.minutes, self->_maxTimecode.seconds, v6, self->_maxTimecode.frames];

  return v7;
}

- (void)calculateMaxFrameAndTimecode
{
  videoTrack = self->_videoTrack;
  if (videoTrack)
  {
    [(AVAssetTrack *)videoTrack timeRange];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = 0u;
  }

  v7 = *(v6 + 8);
  v8 = *(&v6[1] + 1);
  v4 = [(AVTimecodeController *)self calculateFrameNumberAtCMTime:&v7, v5, *&v6[0]];
  self->_maxFrameNumber = v4;
  [(AVTimecodeController *)self timecodeForFrameNumber64UsingCachedDescription:v4];
  *&self->_maxTimecode.subframes = v7;
  *&self->_maxTimecode.hours = v8;
}

- (AVTimecodeController)initWithTimecodeTrack:(id)track videoTrack:(id)videoTrack
{
  trackCopy = track;
  videoTrackCopy = videoTrack;
  v17.receiver = self;
  v17.super_class = AVTimecodeController;
  v9 = [(AVTimecodeController *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timecodeTrack, track);
    objc_storeStrong(&v10->_videoTrack, videoTrack);
    v11 = objc_opt_new();
    timecodes = v10->_timecodes;
    v10->_timecodes = v11;

    v13 = MEMORY[0x1E6960C70];
    *&v10->_observationInterval.value = *MEMORY[0x1E6960C70];
    v10->_observationInterval.epoch = *(v13 + 16);
  }

  if ([(AVTimecodeController *)v10 readTimecodes])
  {
    v14 = v10;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  return v15;
}

@end