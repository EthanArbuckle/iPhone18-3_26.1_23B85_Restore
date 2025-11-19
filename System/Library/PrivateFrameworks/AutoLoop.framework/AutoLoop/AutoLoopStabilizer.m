@interface AutoLoopStabilizer
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)GetPreciseReferenceTimeFromHomographies:(SEL)a3;
- ($4C6D1E162277694FB76656457146213A)determinePreciseTimeRange;
- (AutoLoopStabilizer)init;
- (BOOL)CheckForTripodOKInHomographies:(const void *)a3 firstIndex:(unint64_t)a4 lastIndex:(unint64_t)a5 refIndex:(unint64_t)a6 cropRectOut:(CGRect *)a7 minConfidence:(float)a8 confidenceOut:(float *)a9;
- (BOOL)CropRectValid:(const CGRect *)a3;
- (BOOL)getNaturalTimeScaleForVideoTrackInAsset;
- (BOOL)tripodOKWithTrimming:(const void *)a3 frameTimes:(const void *)a4 minConfidence:(float)a5;
- (BOOL)updateStabilizerStatus;
- (CGRect)cropRect;
- (CGSize)inputMovieDimensions;
- (float)CropRatio:(const CGRect *)a3;
- (id)getVideoTrack;
- (int)FindAcceptableTripodSegmentForInput:(const void *)a3 frameTimes:(const void *)a4;
- (int)analyzeForAutoloopWithDirect:(BOOL)a3 toAnalysisOutput:(void *)a4;
- (int)processStabilizationAnalysis:(void *)a3 forcePassThru:(BOOL)a4 forceSmoothing:(BOOL)a5 forceSequentialTripod:(BOOL)a6;
- (int)processStabilizationAnalysisForCinematicL1:(void *)a3;
- (unint64_t)FindFrameIndexForReferenceTimeInHomographies:(const void *)a3;
- (void)ICReportProgress:(float)a3;
- (void)dealloc;
- (void)setFirstFrameTimeAfterDrop:(id *)a3;
- (void)setLastFrameTimeAfterDrop:(id *)a3;
- (void)setMaxAllowedTrimTimeEnd:(id *)a3;
- (void)setMaxAllowedTrimTimeStart:(id *)a3;
- (void)setMinimumFrameDuration:(id *)a3;
- (void)setRefFrameTime:(id *)a3;
- (void)setTrimLength:(id *)a3;
- (void)setTrimStart:(id *)a3;
@end

@implementation AutoLoopStabilizer

- (AutoLoopStabilizer)init
{
  v9.receiver = self;
  v9.super_class = AutoLoopStabilizer;
  v2 = [(AutoLoopStabilizer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 60) = 4294967294;
    v4 = MEMORY[0x277CC0888];
    v7 = *MEMORY[0x277CC0888];
    v8 = *(MEMORY[0x277CC0888] + 16);
    [v2 setRefFrameTime:&v7];
    v7 = *MEMORY[0x277CC0898];
    v8 = *(MEMORY[0x277CC0898] + 16);
    [v3 setMinimumFrameDuration:&v7];
    v5 = MEMORY[0x277CC08F0];
    v7 = *MEMORY[0x277CC08F0];
    v8 = *(MEMORY[0x277CC08F0] + 16);
    [v3 setMaxAllowedTrimTimeStart:&v7];
    v7 = *v5;
    v8 = *(v5 + 2);
    [v3 setMaxAllowedTrimTimeEnd:&v7];
    *(v3 + 14) = -8888;
    v3[10] = 1;
    *(v3 + 24) = xmmword_2419116B0;
    *(v3 + 5) = 0x3F59999A3F266666;
    [v3 setUseLimitedTime:0];
    v7 = *v4;
    v8 = *(v4 + 2);
    [v3 setTrimStart:&v7];
    v7 = *v4;
    v8 = *(v4 + 2);
    [v3 setTrimLength:&v7];
    [v3 setDisableGPUStabilization:0];
    [v3 setOptimizeProcessingForMemory:0];
  }

  return v3;
}

- (void)dealloc
{
  ICDestroyResult();
  self->icCorrectionResultRef = 0;
  v3.receiver = self;
  v3.super_class = AutoLoopStabilizer;
  [(AutoLoopStabilizer *)&v3 dealloc];
}

- (unint64_t)FindFrameIndexForReferenceTimeInHomographies:(const void *)a3
{
  time1 = self->refFrameTime;
  refFrameTime = **&MEMORY[0x277CC0888];
  v5 = CMTimeCompare(&time1, &refFrameTime);
  v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3);
  if (!v5)
  {
    return v6 >> 1;
  }

  v7 = v6;
  v8 = 24 * v6 - 24;
  while (v7 >= 1)
  {
    --v7;
    v9 = *a3 + v8;
    v10 = *(v9 + 16);
    *&time1.value = *v9;
    time1.epoch = v10;
    refFrameTime = self->refFrameTime;
    v8 -= 24;
    if (CMTimeCompare(&time1, &refFrameTime) <= 0)
    {
      return v7;
    }
  }

  return 0;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)GetPreciseReferenceTimeFromHomographies:(SEL)a3
{
  *retstr = **&MEMORY[0x277CC0888];
  if (*(a4 + 1) != *a4)
  {
    self = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self FindFrameIndexForReferenceTimeInHomographies:?];
    v6 = *a4 + 24 * self;
    *&retstr->var0 = *v6;
    retstr->var3 = *(v6 + 16);
  }

  return self;
}

- (float)CropRatio:(const CGRect *)a3
{
  v3 = vcvt_f32_f64(vdivq_f64(a3->size, self->inputMovieDimensions));
  if (v3.f32[0] >= v3.f32[1])
  {
    v3.f32[0] = v3.f32[1];
  }

  return v3.f32[0];
}

- (BOOL)CropRectValid:(const CGRect *)a3
{
  width = a3->size.width;
  height = a3->size.height;
  if (width < 1.0 || height < 1.0)
  {
    return 0;
  }

  x = a3->origin.x;
  y = a3->origin.y;
  v9.size.width = self->inputMovieDimensions.width;
  v9.size.height = self->inputMovieDimensions.height;
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  return CGRectIntersectsRect(*(&width - 2), v9);
}

- (id)getVideoTrack
{
  v2 = [(AutoLoopStabilizer *)self movieAssetIn];
  v3 = [v2 tracksWithMediaType:*MEMORY[0x277CE5EA8]];

  if (v3)
  {
    v4 = [v3 objectAtIndex:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)getNaturalTimeScaleForVideoTrackInAsset
{
  v3 = [(AutoLoopStabilizer *)self getVideoTrack];
  v4 = v3;
  if (v3)
  {
    -[AutoLoopStabilizer setNaturalTimeScale:](self, "setNaturalTimeScale:", [v3 naturalTimeScale]);
    [v4 minFrameDuration];
    v6 = v8;
    v7 = v9;
    [(AutoLoopStabilizer *)self setMinimumFrameDuration:&v6];
  }

  return v4 != 0;
}

- ($4C6D1E162277694FB76656457146213A)determinePreciseTimeRange
{
  v5 = MEMORY[0x277CC0888];
  v6 = *MEMORY[0x277CC0888];
  *&retstr->var0.var0 = *MEMORY[0x277CC0888];
  v7 = *(v5 + 16);
  retstr->var0.var3 = v7;
  *&retstr->var1.var0 = v6;
  retstr->var1.var3 = v7;
  v8 = [(AutoLoopStabilizer *)self getVideoTrack];
  v9 = v8;
  if (v8)
  {
    [v8 timeRange];
    v10 = *&v21[16];
    v23 = *v21;
    *v24 = *&v21[16];
    v11 = v22;
    *&v24[16] = v22;
    *&retstr->var0.var0 = *v21;
    *&retstr->var0.var3 = v10;
    *&retstr->var1.var1 = v11;
    if ([(AutoLoopStabilizer *)self useLimitedTime])
    {
      memset(v21, 0, 24);
      *&lhs.value = v23;
      lhs.epoch = *v24;
      rhs = *&v24[8];
      CMTimeAdd(v21, &lhs, &rhs);
      [(AutoLoopStabilizer *)self trimStart];
      *&rhs.value = v23;
      rhs.epoch = *v24;
      if (CMTimeCompare(&lhs, &rhs) < 1)
      {
        *&retstr->var0.var0 = v23;
        epoch = *v24;
      }

      else
      {
        [(AutoLoopStabilizer *)self trimStart];
        *&retstr->var0.var0 = *&lhs.value;
        epoch = lhs.epoch;
      }

      retstr->var0.var3 = epoch;
      memset(&lhs, 0, sizeof(lhs));
      *&rhs.value = *&retstr->var0.var0;
      rhs.epoch = epoch;
      [(AutoLoopStabilizer *)self trimLength];
      CMTimeAdd(&lhs, &rhs, &time1);
      time1 = lhs;
      time2 = *v21;
      v13 = CMTimeCompare(&time1, &time2);
      p_lhs = &lhs;
      if (v13 > 0)
      {
        p_lhs = v21;
      }

      rhs = *p_lhs;
      time2 = rhs;
      var0 = retstr->var0;
      CMTimeSubtract(&time1, &time2, &var0);
      retstr->var1 = time1;
    }
  }

  return result;
}

- (BOOL)CheckForTripodOKInHomographies:(const void *)a3 firstIndex:(unint64_t)a4 lastIndex:(unint64_t)a5 refIndex:(unint64_t)a6 cropRectOut:(CGRect *)a7 minConfidence:(float)a8 confidenceOut:(float *)a9
{
  v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v15 = [MEMORY[0x277CCABB0] numberWithInt:a4];
  [v14 setObject:v15 forKeyedSubscript:*MEMORY[0x277D1B308]];

  v16 = [MEMORY[0x277CCABB0] numberWithInt:a5];
  [v14 setObject:v16 forKeyedSubscript:*MEMORY[0x277D1B310]];

  v17 = [MEMORY[0x277CCABB0] numberWithInt:a6];
  [v14 setObject:v17 forKeyedSubscript:*MEMORY[0x277D1B318]];

  v18 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v19 = MEMORY[0x277D1B320];
  [v14 setObject:v18 forKeyedSubscript:*MEMORY[0x277D1B320]];

  CanDoTripod = ICCalcCanDoTripod();
  v21 = 0;
  v22 = [v21 objectForKeyedSubscript:*v19];
  [v22 floatValue];
  v24 = v23;

  if (a9)
  {
    *a9 = v24;
  }

  if (v24 >= a8)
  {
    v25 = CanDoTripod;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (BOOL)tripodOKWithTrimming:(const void *)a3 frameTimes:(const void *)a4 minConfidence:(float)a5
{
  if (!a3)
  {
    LOBYTE(v11) = 0;
    return v11;
  }

  if (*a4 == *(a4 + 1))
  {
    goto LABEL_20;
  }

  v55 = 0.0;
  [(AutoLoopStabilizer *)self setDidDrop:0];
  [(AutoLoopStabilizer *)self maxAllowedTrimTimeStart];
  v9 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    [(AutoLoopStabilizer *)self maxAllowedTrimTimeEnd];
    time2 = *v9;
    v10 = CMTimeCompare(&time1, &time2) > 0;
  }

  else
  {
    v10 = 1;
  }

  self->droppedStartFrameCount = 0;
  self->droppedEndFrameCount = 0;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 3) - 1;
  v13 = [(AutoLoopStabilizer *)self FindFrameIndexForReferenceTimeInHomographies:a4];
  *&v14 = a5;
  if ([(AutoLoopStabilizer *)self CheckForTripodOKInHomographies:a3 firstIndex:0 lastIndex:v12 refIndex:v13 cropRectOut:&time1 minConfidence:&v55 confidenceOut:v14])
  {
    [(AutoLoopStabilizer *)self CropRatio:&time1];
    v15 = v55;
LABEL_9:
    self->_lastTripodQuality = v15;
    if (v15 >= a5)
    {
      LOBYTE(v11) = 1;
    }

    else
    {
      LOBYTE(v11) = 0;
      self->_lastTripodQuality = 0.0;
    }

    return v11;
  }

  if (!v10)
  {
LABEL_20:
    LOBYTE(v11) = 0;
    return v11;
  }

  v53 = 0.0;
  time2 = *(*(a4 + 1) - 24);
  memset(&v52, 0, sizeof(v52));
  lhs = time2;
  [(AutoLoopStabilizer *)self maxAllowedTrimTimeEnd];
  CMTimeSubtract(&v52, &lhs, &rhs);
  v16 = *(a4 + 1) - *a4;
  v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
  v18 = v16 - 48;
  while (1)
  {
    v19 = v17;
    v20 = *a4;
    if (v19 < 2)
    {
      break;
    }

    lhs = v52;
    v21 = v20 + v18;
    v22 = *v21;
    rhs.epoch = *(v21 + 2);
    *&rhs.value = v22;
    v23 = CMTimeCompare(&lhs, &rhs);
    v18 -= 24;
    v17 = v19 - 1;
    if ((v23 & 0x80000000) == 0)
    {
      v20 = *a4;
      break;
    }
  }

  lhs = *v20;
  memset(&rhs, 0, sizeof(rhs));
  v49 = lhs;
  [(AutoLoopStabilizer *)self maxAllowedTrimTimeStart];
  CMTimeAdd(&rhs, &v49, &v48);
  v25 = v19 - 1;
  v26 = (v19 - 1) & ~((v19 - 1) >> 63);
  v27 = -1;
  v28 = 24;
  v29 = v26;
  while (v29)
  {
    v49 = rhs;
    v30 = *a4 + v28;
    v31 = *(v30 + 16);
    *&v48.value = *v30;
    v48.epoch = v31;
    --v29;
    ++v27;
    v28 += 24;
    if (CMTimeCompare(&v49, &v48) <= 0)
    {
      goto LABEL_23;
    }
  }

  v27 = v26;
LABEL_23:
  if (v27 >= v13)
  {
    v32 = v13;
  }

  else
  {
    v32 = v27;
  }

  if (v25 <= v13)
  {
    v33 = v13;
  }

  else
  {
    v33 = v25;
  }

  *&v24 = a5;
  v11 = [(AutoLoopStabilizer *)self CheckForTripodOKInHomographies:a3 firstIndex:v32 lastIndex:v33 refIndex:v13 cropRectOut:&time1 minConfidence:&v53 confidenceOut:v24];
  if (v11)
  {
    v15 = v53;
    LODWORD(v48.value) = 0;
    if (v32)
    {
      *&v34 = a5;
      if ([(AutoLoopStabilizer *)self CheckForTripodOKInHomographies:a3 firstIndex:v32 - 1 lastIndex:v33 refIndex:v13 cropRectOut:&time1 minConfidence:&v48 confidenceOut:v34])
      {
        while (1)
        {
          v15 = *&v48.value;
          v35 = v32 - 2;
          if (v32 < 2)
          {
            break;
          }

          *&v34 = a5;
          --v32;
          if (![(AutoLoopStabilizer *)self CheckForTripodOKInHomographies:a3 firstIndex:v35 lastIndex:v33 refIndex:v13 cropRectOut:&time1 minConfidence:&v48 confidenceOut:v34])
          {
            goto LABEL_37;
          }
        }

        v32 = 0;
      }
    }

LABEL_37:
    v36 = *a4;
    v37 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 1) - *a4) >> 3);
    if (v33 < v37 - 1)
    {
      *&v34 = a5;
      v38 = [(AutoLoopStabilizer *)self CheckForTripodOKInHomographies:a3 firstIndex:v32 lastIndex:v33 + 1 refIndex:v13 cropRectOut:&time1 minConfidence:&v48 confidenceOut:v34];
      v36 = *a4;
      v40 = *(a4 + 1);
      if (v38)
      {
        if (v13 <= v25)
        {
          v41 = v25;
        }

        else
        {
          v41 = v13;
        }

        while (1)
        {
          v33 = v41 + 1;
          v15 = *&v48.value;
          v37 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v36) >> 3);
          if (v41 + 1 >= v37 - 1)
          {
            break;
          }

          *&v39 = a5;
          v42 = [(AutoLoopStabilizer *)self CheckForTripodOKInHomographies:a3 firstIndex:v32 lastIndex:v41 + 2 refIndex:v13 cropRectOut:&time1 minConfidence:&v48 confidenceOut:v39];
          v36 = *a4;
          v40 = *(a4 + 1);
          v41 = v33;
          if (!v42)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
LABEL_44:
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v36) >> 3);
      }
    }

    self->droppedStartFrameCount = v32;
    self->droppedEndFrameCount = v37 + ~v33;
    v43 = &v36[v32];
    epoch = v43->epoch;
    *&v49.value = *&v43->value;
    v49.epoch = epoch;
    [(AutoLoopStabilizer *)self setFirstFrameTimeAfterDrop:&v49];
    v44 = *a4 + 24 * v33;
    v46 = *(v44 + 16);
    *&v49.value = *v44;
    v49.epoch = v46;
    [(AutoLoopStabilizer *)self setLastFrameTimeAfterDrop:&v49, v49.value, *&v49.timescale, v46];
    [(AutoLoopStabilizer *)self setDidDrop:1];
    goto LABEL_9;
  }

  return v11;
}

- (BOOL)updateStabilizerStatus
{
  statusUpdateBlock = self->_statusUpdateBlock;
  if (statusUpdateBlock)
  {
    return statusUpdateBlock[2](self->progressValue);
  }

  else
  {
    return 1;
  }
}

- (void)ICReportProgress:(float)a3
{
  [(AutoLoopStabilizer *)self setProgressValue:?];
  if (![(AutoLoopStabilizer *)self updateStabilizerStatus])
  {
    self->canceledAnalysis = 1;
  }
}

- (int)analyzeForAutoloopWithDirect:(BOOL)a3 toAnalysisOutput:(void *)a4
{
  if (a3)
  {
    NSLog(&cfstr_ErrorDodirectt.isa, a2);
  }

  self->canceledAnalysis = 0;
  v6 = objc_autoreleasePoolPush();
  v7 = [(AutoLoopStabilizer *)self statsFileOutURL];

  if (v7)
  {
    v8 = [(AutoLoopStabilizer *)self statsFileOutURL];
    v9 = [v8 path];
    [v9 cStringUsingEncoding:4];
  }

  [(AutoLoopStabilizer *)self getNaturalTimeScaleForVideoTrackInAsset];
  memset(v40, 0, sizeof(v40));
  v39 = 0u;
  [(AutoLoopStabilizer *)self determinePreciseTimeRange];
  currentStatusString = self->currentStatusString;
  self->currentStatusString = @"Stabilizing: sequential analyze";

  self->canceledAnalysis = ![(AutoLoopStabilizer *)self updateStabilizerStatus];
  if (self->canceledAnalysis)
  {
    v11 = 0;
    v12 = -8888;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[AutoLoopStabilizer disableGPUStabilization](self, "disableGPUStabilization")}];
    [v13 setObject:v14 forKeyedSubscript:*MEMORY[0x277D1B2D8]];

    v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[AutoLoopStabilizer optimizeProcessingForMemory](self, "optimizeProcessingForMemory")}];
    [v13 setObject:v15 forKeyedSubscript:*MEMORY[0x277D1B2E8]];

    if ((BYTE12(v39) & 1) != 0 && (BYTE4(v40[1]) & 1) != 0 && !*(&v40[1] + 1) && (*(&v40[0] + 1) & 0x8000000000000000) == 0)
    {
      *&lhs.start.value = v39;
      lhs.start.epoch = *&v40[0];
      v16 = [MEMORY[0x277CCAE60] valueWithCMTime:&lhs];
      [v13 setObject:v16 forKeyedSubscript:*MEMORY[0x277D1B300]];

      *&lhs.start.value = *(v40 + 8);
      lhs.start.epoch = *(&v40[1] + 1);
      v17 = [MEMORY[0x277CCAE60] valueWithCMTime:&lhs];
      [v13 setObject:v17 forKeyedSubscript:*MEMORY[0x277D1B2F8]];
    }

    if (self->doLoopClosureCorrection)
    {
      *v35 = v39;
      *&v35[16] = v40[0];
      *&v35[32] = *&v40[1];
      v18 = [(AutoLoopStabilizer *)self naturalTimeScale];
      [(AutoLoopStabilizer *)self minimumFrameDuration];
      [(AutoLoopStabilizer *)self maxAllowedTrimTimeStart];
      [(AutoLoopStabilizer *)self maxAllowedTrimTimeEnd];
      memset(&v48, 0, sizeof(v48));
      *&lhs.start.value = v39;
      lhs.start.epoch = *&v40[0];
      *&rhs.value = *&v35[24];
      rhs.epoch = *(&v40[1] + 1);
      CMTimeAdd(&v48, &lhs.start, &rhs);
      memset(&rhs, 0, sizeof(rhs));
      CMTimeMakeWithSeconds(&rhs, 1.0, v18);
      memset(&v46, 0, sizeof(v46));
      lhs.start = rhs;
      time = v34;
      CMTimeMultiply(&time2, &time, 15);
      CMTimeMaximum(&v46, &lhs.start, &time2);
      *&lhs.start.value = v39;
      lhs.start.epoch = *&v40[0];
      time = v34;
      CMTimeMultiply(&time2, &time, 2);
      CMTimeAdd(&start, &lhs.start, &time2);
      lhs.start = v48;
      time = v34;
      CMTimeMultiply(&time2, &time, 3);
      CMTimeSubtract(&v49, &lhs.start, &time2);
      v37 = 0;
      v38 = 0;
      __p = 0;
      lhs.start = start;
      time2 = v49;
      if (CMTimeCompare(&lhs.start, &time2) < 0)
      {
        time2 = v49;
        time = start;
        CMTimeSubtract(&lhs.start, &time2, &time);
        time2 = v46;
        if ((CMTimeCompare(&lhs.start, &time2) & 0x80000000) == 0)
        {
          time2 = start;
          v42 = v49;
          v41 = start;
          CMTimeSubtract(&time, &v42, &v41);
          CMTimeRangeMake(&lhs, &time2, &time);
          sub_2418D5D00(&__p, &lhs.start.value);
        }
      }

      time2 = *v35;
      time = v33;
      CMTimeAdd(&lhs.start, &time2, &time);
      start = lhs.start;
      time2 = v48;
      time = v32;
      CMTimeSubtract(&lhs.start, &time2, &time);
      v49 = lhs.start;
      epoch = lhs.start.epoch;
      lhs.start = start;
      *&time2.value = *&v49.value;
      time2.epoch = epoch;
      if (CMTimeCompare(&lhs.start, &time2) < 0)
      {
        time2 = v49;
        time = start;
        CMTimeSubtract(&lhs.start, &time2, &time);
        time2 = v46;
        if ((CMTimeCompare(&lhs.start, &time2) & 0x80000000) == 0)
        {
          time2 = start;
          v42 = v49;
          v41 = start;
          CMTimeSubtract(&time, &v42, &v41);
          CMTimeRangeMake(&lhs, &time2, &time);
          sub_2418D5D00(&__p, &lhs.start.value);
        }
      }

      v20 = __p;
      if (__p != v37)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v22 = __p;
        v23 = v37;
        if (__p != v37)
        {
          do
          {
            v24 = *v22;
            v25 = v22[2];
            *&lhs.start.epoch = v22[1];
            *&lhs.duration.timescale = v25;
            *&lhs.start.value = v24;
            v26 = [MEMORY[0x277CCAE60] valueWithCMTimeRange:&lhs];
            [v21 addObject:v26];

            v22 += 3;
          }

          while (v22 != v23);
        }

        [v13 setObject:v21 forKeyedSubscript:*MEMORY[0x277D1B2E0]];

        v20 = __p;
      }

      if (v20)
      {
        v37 = v20;
        operator delete(v20);
      }
    }

    LODWORD(lhs.start.value) = 0;
    v27 = [(AutoLoopStabilizer *)self movieAssetIn];
    v11 = ICAnalyzeInputMotion();

    v12 = 2 * (LODWORD(lhs.start.value) == 0);
  }

  objc_autoreleasePoolPop(v6);
  if (self->canceledAnalysis)
  {
    v28 = -1;
  }

  else
  {
    v28 = v12;
  }

  if ((v28 - 1) > 0xFFFFFFFD)
  {
    ICDestroyResult();
  }

  else
  {
    v29 = ICGetResultStats();
    v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277D1B2F0]];
    [v30 getValue:&self->inputMovieDimensions size:16];
    *a4 = v11;
  }

  self->_analysisResult = v28;
  return v28;
}

- (int)FindAcceptableTripodSegmentForInput:(const void *)a3 frameTimes:(const void *)a4
{
  *&v4 = self->confidenceHighQualityThreshold;
  if ([AutoLoopStabilizer tripodOKWithTrimming:"tripodOKWithTrimming:frameTimes:minConfidence:" frameTimes:v4 minConfidence:?])
  {
    return 1;
  }

  if (self->onlyProcessForHighQualityTripod)
  {
    return -3;
  }

  *&v8 = self->minConfidenceForTripodAccept;
  if (![(AutoLoopStabilizer *)self tripodOKWithTrimming:a3 frameTimes:a4 minConfidence:v8])
  {
    return -3;
  }

  if (self->_lastTripodQuality >= self->minimumHighQualityConfidenceValue)
  {
    return 1;
  }

  return 2;
}

- (int)processStabilizationAnalysis:(void *)a3 forcePassThru:(BOOL)a4 forceSmoothing:(BOOL)a5 forceSequentialTripod:(BOOL)a6
{
  v68 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return 0;
  }

  v6 = a6;
  v7 = a5;
  v10 = self;
  featuresDictionary = self->featuresDictionary;
  self->featuresDictionary = 0;

  v10->_lastTripodQuality = 0.0;
  ICDestroyResult();
  v10->icCorrectionResultRef = 0;
  v57 = v10;
  if (!a4)
  {
    v56 = ICGetResultFramePresentationTimes();
    __p = 0;
    v65 = 0;
    v66 = 0;
    sub_2418D5768(&__p, [v56 count]);
    v55 = __PAIR64__(v7, v6);
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v56;
    v14 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
    if (v14)
    {
      v15 = *v61;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v61 != v15)
          {
            objc_enumerationMutation(obj);
          }

          CMTimeMakeFromDictionary(&v59, *(*(&v60 + 1) + 8 * i));
          v17 = v65;
          if (v65 >= v66)
          {
            v20 = 0xAAAAAAAAAAAAAAABLL * ((v65 - __p) >> 3);
            v21 = v20 + 1;
            if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_2418D3940();
            }

            if (0x5555555555555556 * ((v66 - __p) >> 3) > v21)
            {
              v21 = 0x5555555555555556 * ((v66 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v66 - __p) >> 3) >= 0x555555555555555)
            {
              v22 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v22 = v21;
            }

            if (v22)
            {
              sub_2418D39E8(&__p, v22);
            }

            v23 = 8 * ((v65 - __p) >> 3);
            v24 = *&v59.value;
            *(v23 + 16) = v59.epoch;
            *v23 = v24;
            v19 = 24 * v20 + 24;
            v25 = (24 * v20 - (v65 - __p));
            memcpy((v23 - (v65 - __p)), __p, v65 - __p);
            v26 = __p;
            __p = v25;
            v65 = v19;
            v66 = 0;
            if (v26)
            {
              operator delete(v26);
            }
          }

          else
          {
            v18 = *&v59.value;
            *(v65 + 2) = v59.epoch;
            *v17 = v18;
            v19 = v17 + 24;
          }

          v65 = v19;
        }

        v14 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
      }

      while (v14);
    }

    if (v7)
    {
      v12 = -2;
    }

    else
    {
      v27 = [(AutoLoopStabilizer *)v57 FindAcceptableTripodSegmentForInput:a3 frameTimes:&__p];
      v12 = v27;
      if ((v55 & 1) != 0 || (v27 - 1) <= 1)
      {
        v32 = __p;
        v31 = v65;
        droppedStartFrameCount = v57->droppedStartFrameCount;
        droppedEndFrameCount = v57->droppedEndFrameCount;
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v36 = [MEMORY[0x277CCABB0] numberWithInt:droppedStartFrameCount];
        [v35 setObject:v36 forKeyedSubscript:*MEMORY[0x277D1B308]];

        v37 = [MEMORY[0x277CCABB0] numberWithInt:~droppedEndFrameCount - 0x5555555555555555 * ((v31 - v32) >> 3)];
        [v35 setObject:v37 forKeyedSubscript:*MEMORY[0x277D1B310]];

        v38 = [MEMORY[0x277CCABB0] numberWithInt:{-[AutoLoopStabilizer FindFrameIndexForReferenceTimeInHomographies:](v57, "FindFrameIndexForReferenceTimeInHomographies:", &__p)}];
        [v35 setObject:v38 forKeyedSubscript:*MEMORY[0x277D1B318]];

        LODWORD(v59.value) = 0;
        v57->icCorrectionResultRef = ICCalcTripodCorrections();
        if (ICGetCorrectionResultCropData() && !CGRectIsEmpty(v57->cropRect))
        {
          v39 = MEMORY[0x277CBEB38];
          v40 = [MEMORY[0x277CCABB0] numberWithBool:1];
          v41 = MEMORY[0x277D1B328];
          v42 = [v39 dictionaryWithObject:v40 forKey:*MEMORY[0x277D1B328]];

          v43 = ICGetResultOptionalData();
          v44 = [v43 objectForKeyedSubscript:*v41];
          v45 = v57->featuresDictionary;
          v57->featuresDictionary = v44;
        }

        else
        {
          v12 = 0;
        }

        goto LABEL_38;
      }
    }

    if (!v57->onlyProcessForHighQualityTripod)
    {
      ICGetResultConfidence();
      v29 = v28 == 0.0;
      LODWORD(v59.value) = 0;
      v57->icCorrectionResultRef = ICCalcSmoothingCorrections();
      if (LODWORD(v59.value) || !ICGetCorrectionResultCropData() || ([(AutoLoopStabilizer *)v57 CropRatio:&v57->cropRect], (v30 < v57->cropRatioMinimum) | v29 & ~v7 & 1))
      {
        ICDestroyResult();
        v57->icCorrectionResultRef = 0;
      }

      else
      {
        v48 = MEMORY[0x277CBEB38];
        v49 = [MEMORY[0x277CCABB0] numberWithBool:1];
        v50 = MEMORY[0x277D1B328];
        v51 = [v48 dictionaryWithObject:v49 forKey:*MEMORY[0x277D1B328]];

        v52 = ICGetResultOptionalData();
        v53 = [v52 objectForKeyedSubscript:*v50];
        v54 = v57->featuresDictionary;
        v57->featuresDictionary = v53;

        v12 = 3;
      }
    }

LABEL_38:
    if (__p)
    {
      v65 = __p;
      operator delete(__p);
    }

    v10 = v57;
    if (v57->icCorrectionResultRef)
    {
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  v12 = -2;
LABEL_41:
  if (!v10->onlyProcessForHighQualityTripod)
  {
    LODWORD(__p) = 0;
    v57->icCorrectionResultRef = ICCalcPassThruCorrections();
    ICGetCorrectionResultCropData();
    v12 = 4;
    v10 = v57;
  }

LABEL_43:
  v46 = [(AutoLoopStabilizer *)v10 CropRectValid:&v10->cropRect, v55];
  if (v12 == -3)
  {
    v47 = 1;
  }

  else
  {
    v47 = v46;
  }

  if (v47)
  {
    result = v12;
  }

  else
  {
    result = 0;
  }

  v57->_lastStabilizationResult = result;
  return result;
}

- (int)processStabilizationAnalysisForCinematicL1:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  featuresDictionary = self->featuresDictionary;
  self->featuresDictionary = 0;

  self->_lastTripodQuality = 0.0;
  ICDestroyResult();
  self->icCorrectionResultRef = 0;
  ICGetResultConfidence();
  if (v5 != 0.0 && (self->icCorrectionResultRef = ICCalcCinematicL1Corrections(), ICGetCorrectionResultCropData() && ([(AutoLoopStabilizer *)self CropRatio:&self->cropRect], v6 >= self->cropRatioMinimum)))
  {
    v7 = 5;
  }

  else
  {
    v7 = -2;
  }

  if (!self->icCorrectionResultRef)
  {
    self->icCorrectionResultRef = ICCalcPassThruCorrections();
    ICGetCorrectionResultCropData();
    v7 = 4;
  }

  if ([(AutoLoopStabilizer *)self CropRectValid:&self->cropRect])
  {
    result = v7;
  }

  else
  {
    result = 0;
  }

  self->_lastStabilizationResult = result;
  return result;
}

- (CGRect)cropRect
{
  x = self->cropRect.origin.x;
  y = self->cropRect.origin.y;
  width = self->cropRect.size.width;
  height = self->cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)inputMovieDimensions
{
  width = self->inputMovieDimensions.width;
  height = self->inputMovieDimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setRefFrameTime:(id *)a3
{
  v3 = *&a3->var0;
  self->refFrameTime.epoch = a3->var3;
  *&self->refFrameTime.value = v3;
}

- (void)setTrimStart:(id *)a3
{
  v3 = *&a3->var0;
  self->_trimStart.epoch = a3->var3;
  *&self->_trimStart.value = v3;
}

- (void)setTrimLength:(id *)a3
{
  v3 = *&a3->var0;
  self->_trimLength.epoch = a3->var3;
  *&self->_trimLength.value = v3;
}

- (void)setMinimumFrameDuration:(id *)a3
{
  v3 = *&a3->var0;
  self->_minimumFrameDuration.epoch = a3->var3;
  *&self->_minimumFrameDuration.value = v3;
}

- (void)setMaxAllowedTrimTimeStart:(id *)a3
{
  v3 = *&a3->var0;
  self->_maxAllowedTrimTimeStart.epoch = a3->var3;
  *&self->_maxAllowedTrimTimeStart.value = v3;
}

- (void)setMaxAllowedTrimTimeEnd:(id *)a3
{
  v3 = *&a3->var0;
  self->_maxAllowedTrimTimeEnd.epoch = a3->var3;
  *&self->_maxAllowedTrimTimeEnd.value = v3;
}

- (void)setFirstFrameTimeAfterDrop:(id *)a3
{
  v3 = *&a3->var0;
  self->_firstFrameTimeAfterDrop.epoch = a3->var3;
  *&self->_firstFrameTimeAfterDrop.value = v3;
}

- (void)setLastFrameTimeAfterDrop:(id *)a3
{
  v3 = *&a3->var0;
  self->_lastFrameTimeAfterDrop.epoch = a3->var3;
  *&self->_lastFrameTimeAfterDrop.value = v3;
}

@end