@interface AVTimeRange
+ (AVTimeRange)timeRangeWithInterstice:(id)a3;
+ (id)timeRangeZero;
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endCMTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startCMTime;
- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)cmTimeRange;
- (AVInterstitialDateRange)dateBasedInterstice;
- (AVInterstitialTimeRange)interstice;
- (AVTimeRange)initWithAVTimedMetadataGroup:(id)a3;
- (AVTimeRange)initWithCMTimeRange:(id *)a3;
- (AVTimeRange)initWithStartTime:(double)a3 duration:(double)a4 insertedDuration:(double)a5;
- (AVTimeRange)initWithUnionOfCMTimeRanges:(id)a3;
- (BOOL)containsDate:(id)a3;
- (BOOL)containsTime:(double)a3;
- (BOOL)isCollapsedInTimeLine;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTimeRange:(id)a3;
- (BOOL)isExpandedInTimeLine;
- (BOOL)isHidden;
- (BOOL)isSkippable;
- (BOOL)isSkipped;
- (BOOL)isUnmarked;
- (BOOL)requiresLinearPlaybackForTime:(double)a3;
- (BOOL)supplementsPrimaryContent;
- (double)deltaTimeFromOutsideTime:(double)a3;
- (double)endTime;
- (double)expandedDuration;
- (double)timeForDate:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dateForTime:(double)a3;
- (id)description;
- (id)endDate;
- (id)timeRangeByAddingTimeInterval:(double)a3 shiftingDates:(BOOL)a4;
- (id)timeRangeExcludingTimeRange:(id)a3;
- (id)timeRangeIntersectingWithTimeRange:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
- (void)setMapDate:(id)a3 toTime:(double)a4;
- (void)setMapTime:(double)a3 toDate:(id)a4;
@end

@implementation AVTimeRange

- (BOOL)requiresLinearPlaybackForTime:(double)a3
{
  v4 = self;
  v5 = [(AVTimeRange *)self interstice];
  v6 = [v5 playerInterstitialEvent];
  v7 = v6;
  if (v6)
  {
    v4 = (([v6 restrictions] >> 2) & 1);
  }

  else if (v5 && [v4 containsTime:a3])
  {
    [v4 startTime];
    v9 = v8;
    [v5 linearPlaybackRequirementDuration];
    LOBYTE(v4) = v9 + v10 > a3;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)supplementsPrimaryContent
{
  v2 = [(AVTimeRange *)self interstice];
  v3 = [v2 supplementsPrimaryContent];

  return v3;
}

- (BOOL)isUnmarked
{
  v3 = [(AVTimeRange *)self interstice];
  if (v3)
  {
    v4 = [(AVTimeRange *)self interstice];
    v5 = [v4 isUnmarked];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isExpandedInTimeLine
{
  v3 = [(AVTimeRange *)self interstice];
  if (v3)
  {
    v4 = [(AVTimeRange *)self interstice];
    if (([v4 isCollapsedInTimeLine] & 1) != 0 || (-[AVTimeRange duration](self, "duration"), v5 != 0.0))
    {
      v7 = 0;
    }

    else
    {
      [v3 playingDuration];
      v7 = v6 > 0.0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (double)expandedDuration
{
  v2 = [(AVTimeRange *)self interstice];
  v3 = v2;
  v4 = 0.0;
  if (v2 && ([v2 isCollapsedInTimeLine] & 1) == 0)
  {
    [v3 playingDuration];
    v4 = v5;
  }

  return v4;
}

- (BOOL)isCollapsedInTimeLine
{
  v3 = [(AVTimeRange *)self interstice];
  if (v3)
  {
    v4 = [(AVTimeRange *)self interstice];
    v5 = [v4 isCollapsedInTimeLine];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSkipped
{
  v3 = [(AVTimeRange *)self interstice];
  if (v3)
  {
    v4 = [(AVTimeRange *)self interstice];
    v5 = [v4 isSkipped];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isSkippable
{
  v2 = [(AVTimeRange *)self interstice];
  v3 = [v2 playerInterstitialEvent];

  if (v3)
  {
    [v3 skipControlTimeRange];
    if (v9 & 1) != 0 && ([v3 skipControlTimeRange], (v8) && (objc_msgSend(v3, "skipControlTimeRange"), !v7))
    {
      [v3 skipControlTimeRange];
      v4 = v6 >= 0;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isHidden
{
  v3 = [(AVTimeRange *)self interstice];
  if (v3)
  {
    v4 = [(AVTimeRange *)self interstice];
    v5 = [v4 isHidden];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (AVInterstitialDateRange)dateBasedInterstice
{
  v2 = [(AVTimeRange *)self interstice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (AVInterstitialTimeRange)interstice
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return [(AVTimeRange *)v3 interstice];
}

+ (AVTimeRange)timeRangeWithInterstice:(id)a3
{
  v3 = a3;
  v4 = [[AVTimeRangeForInterstitial alloc] initWithInterstice:v3];

  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E6988158]);
  [v3 setStyle:1];
  [v3 setFormatTemplate:60.0];
  v4 = MEMORY[0x1E696AEC0];
  [(AVTimeRange *)self startTime];
  v5 = [v3 stringFromSeconds:?];
  [(AVTimeRange *)self endTime];
  v6 = [v3 stringFromSeconds:?];
  v7 = [v4 stringWithFormat:@"[%@...%@]", v5, v6];

  [(AVTimeRange *)self insertedDuration];
  if (v8 != 0.0)
  {
    [(AVTimeRange *)self insertedDuration];
    v9 = [v3 stringFromSeconds:?];
    v10 = [v7 stringByAppendingFormat:@" <<%@>>", v9];

    v7 = v10;
  }

  v11 = [(AVTimeRange *)self startDate];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setDateStyle:0];
    [v12 setTimeStyle:2];
    [(AVTimeRange *)self duration];
    v13 = [v11 dateByAddingTimeInterval:?];
    v14 = [v12 stringFromDate:v11];
    v15 = [v12 stringFromDate:v13];
    v16 = [v7 stringByAppendingFormat:@" (-> [%@...%@])", v14, v15];
  }

  else
  {
    v16 = v7;
  }

  return v16;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(AVTimeRange *)self startTime];
  v6 = v5;
  [v4 startTime];
  if (vabdd_f64(v6, v7) <= 0.0000001)
  {
    [(AVTimeRange *)self duration];
    v12 = v11;
    [v4 duration];
    if (vabdd_f64(v12, v13) <= 0.0000001)
    {
      v15 = 0;
      goto LABEL_9;
    }

    [(AVTimeRange *)self duration];
    v9 = v14;
    [v4 duration];
  }

  else
  {
    [(AVTimeRange *)self startTime];
    v9 = v8;
    [v4 startTime];
  }

  if (v9 >= v10)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

LABEL_9:

  return v15;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AVTimeRange *)self isEqualToTimeRange:v4];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVTimeRange;
    v5 = [(AVTimeRange *)&v8 isEqual:v4];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToTimeRange:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [(AVTimeRange *)self startDate];
  if (v5)
  {
    v6 = [v4 startDate];
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  [(AVTimeRange *)self startTime];
  v9 = v8;
  [v4 startTime];
  if (vabdd_f64(v9, v10) < 0.0000001 && (-[AVTimeRange duration](self, "duration"), v12 = v11, [v4 duration], vabdd_f64(v12, v13) < 0.0000001))
  {
    [(AVTimeRange *)self insertedDuration];
    v15 = v14;
    [v4 insertedDuration];
    v17 = vabdd_f64(v15, v16);
    v18 = v17 < 0.0000001;
    if (v17 < 0.0000001 && !v7)
    {
      v19 = [(AVTimeRange *)self startDate];
      v20 = [v4 startDate];
      v18 = [v19 isEqualToDate:v20];
    }
  }

  else
  {
LABEL_9:
    v18 = 0;
  }

  return v18;
}

- (unint64_t)hash
{
  [(AVTimeRange *)self startTime];
  v4 = vcvtd_n_u64_f64(v3, 0x10uLL);
  [(AVTimeRange *)self duration];
  v6 = vcvtd_n_u64_f64(v5, 2uLL) ^ v4;
  [(AVTimeRange *)self insertedDuration];
  return v6 ^ vcvtd_n_u64_f64(v7, 0x14uLL);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [AVTimeRange allocWithZone:a3];
  [(AVTimeRange *)self startTime];
  v6 = v5;
  [(AVTimeRange *)self duration];
  v8 = v7;
  [(AVTimeRange *)self insertedDuration];

  return [(AVTimeRange *)v4 initWithStartTime:v6 duration:v8 insertedDuration:v9];
}

- (id)timeRangeByAddingTimeInterval:(double)a3 shiftingDates:(BOOL)a4
{
  v4 = a4;
  v7 = [AVTimeRange alloc];
  [(AVTimeRange *)self startTime];
  v9 = v8 + a3;
  [(AVTimeRange *)self duration];
  v11 = [(AVTimeRange *)v7 initWithStartTime:v9 duration:v10];
  v12 = v11;
  if (v4)
  {
    v11 = self;
  }

  [(AVTimeRange *)v11 startTime];
  v14 = v13;
  v15 = [(AVTimeRange *)self startDate];
  [(AVTimeRange *)v12 setMapTime:v15 toDate:v14];

  return v12;
}

- (id)timeRangeExcludingTimeRange:(id)a3
{
  v4 = a3;
  [v4 startTime];
  v6 = v5;
  [(AVTimeRange *)self endTime];
  if (v6 >= v7 || ([v4 endTime], v9 = v8, -[AVTimeRange startTime](self, "startTime"), v9 <= v10))
  {
    v25 = self;
  }

  else
  {
    [(AVTimeRange *)self startTime];
    v12 = v11;
    [v4 startTime];
    v14 = v13;
    [(AVTimeRange *)self startTime];
    v16 = v15;
    if (v12 > v14)
    {
      [v4 endTime];
      if (v16 < v17)
      {
        v16 = v17;
      }
    }

    [(AVTimeRange *)self endTime];
    v19 = v18;
    [v4 endTime];
    v21 = v20;
    [(AVTimeRange *)self endTime];
    v23 = v22;
    if (v19 < v21)
    {
      [v4 startTime];
      if (v23 >= v24)
      {
        v23 = v24;
      }
    }

    if (v23 <= v16)
    {
      v25 = +[AVTimeRange timeRangeZero];
    }

    else
    {
      v25 = [[AVTimeRange alloc] initWithStartTime:v16 endTime:v23];
    }
  }

  v26 = v25;

  return v26;
}

- (id)timeRangeIntersectingWithTimeRange:(id)a3
{
  v4 = a3;
  if (v4)
  {
    [(AVTimeRange *)self startTime];
    v6 = v5;
    [v4 startTime];
    if (v6 < v7)
    {
      v6 = v7;
    }

    [(AVTimeRange *)self endTime];
    v9 = v8;
    [v4 endTime];
    if (v9 >= v10)
    {
      v9 = v10;
    }

    if (v9 <= v6)
    {
      v11 = +[AVTimeRange timeRangeZero];
    }

    else
    {
      v11 = [[AVTimeRange alloc] initWithStartTime:v6 endTime:v9];
      v12 = [(AVTimeRange *)self startDate];

      if (v12)
      {
        [(AVTimeRange *)self startTime];
        v14 = v13;
        v15 = [(AVTimeRange *)self startDate];
        [(AVTimeRange *)v11 setMapTime:v15 toDate:v14];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)deltaTimeFromOutsideTime:(double)a3
{
  [(AVTimeRange *)self startTime];
  v6 = a3 - v5;
  [(AVTimeRange *)self endTime];
  result = a3 - v7;
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (v6 < 0.0)
  {
    return v6;
  }

  return result;
}

- (BOOL)containsDate:(id)a3
{
  v4 = a3;
  v5 = [(AVTimeRange *)self startDate];

  if (v5 && (-[AVTimeRange startDate](self, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 compare:v4], v6, (v7 + 1) <= 1))
  {
    v8 = [(AVTimeRange *)self endDate];
    v9 = [v4 compare:v8] == -1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsTime:(double)a3
{
  [(AVTimeRange *)self startTime];
  if (v5 > a3)
  {
    return 0;
  }

  [(AVTimeRange *)self endTime];
  return v7 > a3;
}

- (id)endDate
{
  v3 = [(AVTimeRange *)self startDate];
  [(AVTimeRange *)self duration];
  v4 = [v3 dateByAddingTimeInterval:?];

  return v4;
}

- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)cmTimeRange
{
  [(AVTimeRange *)self startCMTime];
  [(AVTimeRange *)self endCMTime];
  return CMTimeRangeFromTimeToTime(retstr, &start, &v6);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endCMTime
{
  result = [(AVTimeRange *)self endTime];
  if (fabs(v6) == INFINITY || (result = [(AVTimeRange *)self duration], fabs(v7) == INFINITY))
  {
    v9 = MEMORY[0x1E6960C68];
    *&retstr->var0 = *MEMORY[0x1E6960C68];
    retstr->var3 = *(v9 + 16);
  }

  else
  {
    [(AVTimeRange *)self duration];
    [(AVTimeRange *)self endTime];

    return CMTimeMakeWithSeconds(retstr, v8, 10000);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startCMTime
{
  [(AVTimeRange *)self startTime];

  return CMTimeMakeWithSeconds(retstr, v4, 10000);
}

- (double)endTime
{
  [(AVTimeRange *)self startTime];
  v4 = v3;
  [(AVTimeRange *)self duration];
  return v4 + v5;
}

- (double)timeForDate:(id)a3
{
  v4 = a3;
  v5 = [(AVTimeRange *)self startDate];
  if (v5)
  {
    [v4 timeIntervalSinceDate:v5];
    v7 = v6;
    [(AVTimeRange *)self startTime];
    v9 = v7 + v8;
  }

  else
  {
    v9 = NAN;
  }

  return v9;
}

- (id)dateForTime:(double)a3
{
  v5 = [(AVTimeRange *)self startDate];
  [(AVTimeRange *)self startTime];
  v7 = [v5 dateByAddingTimeInterval:a3 - v6];

  return v7;
}

- (void)setMapDate:(id)a3 toTime:(double)a4
{
  v6 = a3;
  v7 = [(AVTimeRange *)self startDate];
  if (!v7)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "setMapDate:toTime: expects startDate to be valid. Did the caller want setMapTime:toDate: instead?", buf, 2u);
    }
  }

  [v6 timeIntervalSinceDate:v7];
  v10 = v9 + a4;
  [(AVTimeRange *)self willChangeValueForKey:@"startTime"];
  self->_startTime = v10;
  [(AVTimeRange *)self didChangeValueForKey:@"startTime"];
}

- (void)setMapTime:(double)a3 toDate:(id)a4
{
  v6 = a4;
  [(AVTimeRange *)self startTime];
  v8 = [v6 dateByAddingTimeInterval:v7 - a3];

  [(AVTimeRange *)self setStartDate:v8];
}

- (AVTimeRange)initWithUnionOfCMTimeRanges:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  value = *MEMORY[0x1E6960C98];
  flags = *(MEMORY[0x1E6960C98] + 12);
  timescale = *(MEMORY[0x1E6960C98] + 8);
  epoch = *(MEMORY[0x1E6960C98] + 16);
  v5 = *(MEMORY[0x1E6960C98] + 24);
  *&v7 = *(MEMORY[0x1E6960C98] + 32);
  v28 = v7;
  v8 = *(MEMORY[0x1E6960C98] + 40);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v9 = [v3 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      v12 = 0;
      v25 = v10;
      do
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          memset(&buf, 0, sizeof(buf));
          if (v13)
          {
            [v13 CMTimeRangeValue];
          }

          *(&v14 + 1) = *(&v28 + 1);
          if ((flags & 1) == 0 || (BYTE4(v28) & 1) == 0 || v8 || v5 < 0)
          {
            value = buf.start.value;
            flags = buf.start.flags;
            timescale = buf.start.timescale;
            v5 = buf.duration.value;
            epoch = buf.start.epoch;
            *&v14 = *&buf.duration.timescale;
            v28 = v14;
            v8 = buf.duration.epoch;
          }

          else
          {
            range.start.value = value;
            range.start.timescale = timescale;
            range.start.flags = flags;
            range.start.epoch = epoch;
            range.duration.value = v5;
            *&range.duration.timescale = v28;
            range.duration.epoch = 0;
            otherRange = buf;
            CMTimeRangeGetUnion(&v31, &range, &otherRange);
            value = v31.start.value;
            flags = v31.start.flags;
            timescale = v31.start.timescale;
            epoch = v31.start.epoch;
            v5 = v31.duration.value;
            *&v18 = *&v31.duration.timescale;
            v28 = v18;
            v8 = v31.duration.epoch;
          }
        }

        else
        {
          v15 = _AVLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = objc_opt_class();
            NSStringFromClass(v16);
            v17 = v26 = v8;
            LODWORD(buf.start.value) = 136315650;
            *(&buf.start.value + 4) = "[AVTimeRange initWithUnionOfCMTimeRanges:]";
            LOWORD(buf.start.flags) = 2114;
            *(&buf.start.flags + 2) = v17;
            HIWORD(buf.start.epoch) = 2048;
            buf.duration.value = v13;
            _os_log_impl(&dword_18B49C000, v15, OS_LOG_TYPE_DEFAULT, "%s There's a loadedTimeRange that doesn't respond to -CMTimeRangeValue (<%{public}@ %p>)", &buf, 0x20u);

            v10 = v25;
            v8 = v26;
          }
        }

        ++v12;
      }

      while (v10 != v12);
      v19 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      v10 = v19;
    }

    while (v19);
  }

  v20 = v28;
  if ((flags & 1) == 0 || (BYTE4(v28) & 1) == 0 || v8 || v5 < 0)
  {
    value = *MEMORY[0x1E6960CA8];
    flags = *(MEMORY[0x1E6960CA8] + 12);
    timescale = *(MEMORY[0x1E6960CA8] + 8);
    epoch = *(MEMORY[0x1E6960CA8] + 16);
    v5 = *(MEMORY[0x1E6960CA8] + 24);
    v20 = *(MEMORY[0x1E6960CA8] + 32);
    v21 = *(MEMORY[0x1E6960CA8] + 40);
  }

  else
  {
    v21 = 0;
  }

  buf.start.value = value;
  buf.start.timescale = timescale;
  buf.start.flags = flags;
  buf.start.epoch = epoch;
  buf.duration.value = v5;
  *&buf.duration.timescale = v20;
  buf.duration.epoch = v21;
  v22 = [(AVTimeRange *)self initWithCMTimeRange:&buf];

  return v22;
}

- (AVTimeRange)initWithAVTimedMetadataGroup:(id)a3
{
  if (a3)
  {
    [a3 timeRange];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  return [(AVTimeRange *)self initWithCMTimeRange:v5];
}

- (AVTimeRange)initWithCMTimeRange:(id *)a3
{
  Seconds = 0.0;
  if (a3->var0.var2 & 1) != 0 && (var2 = a3->var1.var2, (var2) && !a3->var1.var3 && (a3->var0.var2 & 0x1D) == 1 && (a3->var1.var0 & 0x8000000000000000) == 0)
  {
    if ((a3->var1.var2 & 0x1D) == 1 || (v7 = 0.0, (var2 & 0x10) != 0))
    {
      var0 = a3->var0;
      Seconds = CMTimeGetSeconds(&var0);
      var0 = a3->var1;
      v7 = CMTimeGetSeconds(&var0);
    }
  }

  else
  {
    v7 = 0.0;
  }

  return [(AVTimeRange *)self initWithStartTime:Seconds duration:v7];
}

- (AVTimeRange)initWithStartTime:(double)a3 duration:(double)a4 insertedDuration:(double)a5
{
  v9.receiver = self;
  v9.super_class = AVTimeRange;
  result = [(AVTimeRange *)&v9 init];
  if (result)
  {
    result->_startTime = a3;
    result->_duration = a4;
    result->_insertedDuration = a5;
  }

  return result;
}

+ (id)timeRangeZero
{
  if (timeRangeZero_onceToken != -1)
  {
    dispatch_once(&timeRangeZero_onceToken, &__block_literal_global_31383);
  }

  v3 = timeRangeZero_timeRangeZero;

  return v3;
}

uint64_t __28__AVTimeRange_timeRangeZero__block_invoke()
{
  v0 = [[AVTimeRange alloc] initWithStartTime:0.0 duration:0.0];
  v1 = timeRangeZero_timeRangeZero;
  timeRangeZero_timeRangeZero = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == objc_opt_class())
  {
    v4 = +[AVKitGlobalSettings shared];
    IsPrerollSupportEnabled = [v4 isIntegratedTimelineEnabled];
  }

  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___AVTimeRange;
  objc_msgSendSuper2(&v5, sel_initialize);
}

@end