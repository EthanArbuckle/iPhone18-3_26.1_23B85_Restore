@interface AVAssetTrack(AVAdditions)
- (CMTime)_avkit_findTimeForFrameUsingFrameRateSteppedByFrameCount:()AVAdditions fromFrameAtTime:;
- (__n128)_avkit_timeForFrameUsingSampleCursorSteppedByFrameCount:()AVAdditions fromFrameAtTime:;
- (uint64_t)_avkit_frameRateIsValid:()AVAdditions;
- (void)avkit_timeForFrameSteppedByFrameCount:()AVAdditions fromFrameAtTime:;
@end

@implementation AVAssetTrack(AVAdditions)

- (uint64_t)_avkit_frameRateIsValid:()AVAdditions
{
  v1 = self < 0.0;
  if (self > 0.0)
  {
    v1 = 1;
  }

  v3 = self != 1.1755e-38 && self != 3.4028e38;
  return v3 & v1;
}

- (CMTime)_avkit_findTimeForFrameUsingFrameRateSteppedByFrameCount:()AVAdditions fromFrameAtTime:
{
  *&a4->value = *a3;
  a4->epoch = *(a3 + 16);
  if (a2)
  {
    v7 = result;
    [(CMTime *)result nominalFrameRate];
    v9 = v8;
    if (([(CMTime *)v7 _avkit_frameRateIsValid:?]& 1) == 0)
    {
      memset(&rhs, 0, sizeof(rhs));
      [(CMTime *)v7 minFrameDuration];
      v13 = rhs;
      v10 = 1.0 / CMTimeGetSeconds(&v13);
      v9 = v10;
    }

    *&v10 = v9;
    v11 = [(CMTime *)v7 _avkit_frameRateIsValid:v10];
    v12 = 1.0 / v9;
    if (!v11)
    {
      v12 = 0.1;
    }

    CMTimeMakeWithSeconds(&rhs, v12 * a2, 6000);
    v13 = *a3;
    return CMTimeAdd(a4, &v13, &rhs);
  }

  return result;
}

- (__n128)_avkit_timeForFrameUsingSampleCursorSteppedByFrameCount:()AVAdditions fromFrameAtTime:
{
  v1 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *self = *MEMORY[0x1E6960C70];
  *(self + 16) = *(v1 + 16);
  return result;
}

- (void)avkit_timeForFrameSteppedByFrameCount:()AVAdditions fromFrameAtTime:
{
  v8 = MEMORY[0x1E6960C70];
  *a4 = *MEMORY[0x1E6960C70];
  *(a4 + 16) = *(v8 + 16);
  mediaType = [self mediaType];
  v10 = [mediaType isEqualToString:*MEMORY[0x1E6987608]];

  if ((v10 & 1) == 0)
  {
    v11 = _AVLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(time1.value) = 0;
      v12 = "Invalid track type for frame stepping.";
      goto LABEL_13;
    }

LABEL_8:

    return;
  }

  if ((a3->flags & 0x1D) != 1)
  {
    time1 = *a3;
    v13 = **&MEMORY[0x1E6960CC0];
    if (CMTimeCompare(&time1, &v13) < 0)
    {
      v11 = _AVLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(time1.value) = 0;
        v12 = "Invalid input base frame time.";
LABEL_13:
        _os_log_error_impl(&dword_18B49C000, v11, OS_LOG_TYPE_ERROR, v12, &time1, 2u);
        goto LABEL_8;
      }

      goto LABEL_8;
    }
  }

  *a4 = *&a3->value;
  *(a4 + 16) = a3->epoch;
  if (a2)
  {
    time1 = *a3;
    [self _avkit_timeForFrameUsingSampleCursorSteppedByFrameCount:a2 fromFrameAtTime:&time1];
    if ((*(a4 + 12) & 1) == 0)
    {
      v13 = *a3;
      [self _avkit_findTimeForFrameUsingFrameRateSteppedByFrameCount:a2 fromFrameAtTime:&v13];
      *a4 = time1;
    }
  }
}

@end