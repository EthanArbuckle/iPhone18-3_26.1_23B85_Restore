@interface AVTimeRange
+ (AVTimeRange)timeRangeWithInterstice:(id)interstice;
+ (id)timeRangeZero;
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endCMTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startCMTime;
- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)cmTimeRange;
- (AVInterstitialDateRange)dateBasedInterstice;
- (AVInterstitialTimeRange)interstice;
- (AVTimeRange)initWithAVTimedMetadataGroup:(id)group;
- (AVTimeRange)initWithCMTimeRange:(id *)range;
- (AVTimeRange)initWithStartTime:(double)time duration:(double)duration insertedDuration:(double)insertedDuration;
- (AVTimeRange)initWithUnionOfCMTimeRanges:(id)ranges;
- (BOOL)containsDate:(id)date;
- (BOOL)containsTime:(double)time;
- (BOOL)isCollapsedInTimeLine;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTimeRange:(id)range;
- (BOOL)isExpandedInTimeLine;
- (BOOL)isHidden;
- (BOOL)isSkippable;
- (BOOL)isSkipped;
- (BOOL)isUnmarked;
- (BOOL)requiresLinearPlaybackForTime:(double)time;
- (BOOL)supplementsPrimaryContent;
- (double)deltaTimeFromOutsideTime:(double)time;
- (double)endTime;
- (double)expandedDuration;
- (double)timeForDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dateForTime:(double)time;
- (id)description;
- (id)endDate;
- (id)timeRangeByAddingTimeInterval:(double)interval shiftingDates:(BOOL)dates;
- (id)timeRangeExcludingTimeRange:(id)range;
- (id)timeRangeIntersectingWithTimeRange:(id)range;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)setMapDate:(id)date toTime:(double)time;
- (void)setMapTime:(double)time toDate:(id)date;
@end

@implementation AVTimeRange

- (BOOL)requiresLinearPlaybackForTime:(double)time
{
  selfCopy = self;
  interstice = [(AVTimeRange *)self interstice];
  playerInterstitialEvent = [interstice playerInterstitialEvent];
  v7 = playerInterstitialEvent;
  if (playerInterstitialEvent)
  {
    selfCopy = (([playerInterstitialEvent restrictions] >> 2) & 1);
  }

  else if (interstice && [selfCopy containsTime:time])
  {
    [selfCopy startTime];
    v9 = v8;
    [interstice linearPlaybackRequirementDuration];
    LOBYTE(selfCopy) = v9 + v10 > time;
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
}

- (BOOL)supplementsPrimaryContent
{
  interstice = [(AVTimeRange *)self interstice];
  supplementsPrimaryContent = [interstice supplementsPrimaryContent];

  return supplementsPrimaryContent;
}

- (BOOL)isUnmarked
{
  interstice = [(AVTimeRange *)self interstice];
  if (interstice)
  {
    interstice2 = [(AVTimeRange *)self interstice];
    isUnmarked = [interstice2 isUnmarked];
  }

  else
  {
    isUnmarked = 0;
  }

  return isUnmarked;
}

- (BOOL)isExpandedInTimeLine
{
  interstice = [(AVTimeRange *)self interstice];
  if (interstice)
  {
    interstice2 = [(AVTimeRange *)self interstice];
    if (([interstice2 isCollapsedInTimeLine] & 1) != 0 || (-[AVTimeRange duration](self, "duration"), v5 != 0.0))
    {
      v7 = 0;
    }

    else
    {
      [interstice playingDuration];
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
  interstice = [(AVTimeRange *)self interstice];
  v3 = interstice;
  v4 = 0.0;
  if (interstice && ([interstice isCollapsedInTimeLine] & 1) == 0)
  {
    [v3 playingDuration];
    v4 = v5;
  }

  return v4;
}

- (BOOL)isCollapsedInTimeLine
{
  interstice = [(AVTimeRange *)self interstice];
  if (interstice)
  {
    interstice2 = [(AVTimeRange *)self interstice];
    isCollapsedInTimeLine = [interstice2 isCollapsedInTimeLine];
  }

  else
  {
    isCollapsedInTimeLine = 0;
  }

  return isCollapsedInTimeLine;
}

- (BOOL)isSkipped
{
  interstice = [(AVTimeRange *)self interstice];
  if (interstice)
  {
    interstice2 = [(AVTimeRange *)self interstice];
    isSkipped = [interstice2 isSkipped];
  }

  else
  {
    isSkipped = 0;
  }

  return isSkipped;
}

- (BOOL)isSkippable
{
  interstice = [(AVTimeRange *)self interstice];
  playerInterstitialEvent = [interstice playerInterstitialEvent];

  if (playerInterstitialEvent)
  {
    [playerInterstitialEvent skipControlTimeRange];
    if (v9 & 1) != 0 && ([playerInterstitialEvent skipControlTimeRange], (v8) && (objc_msgSend(playerInterstitialEvent, "skipControlTimeRange"), !v7))
    {
      [playerInterstitialEvent skipControlTimeRange];
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
  interstice = [(AVTimeRange *)self interstice];
  if (interstice)
  {
    interstice2 = [(AVTimeRange *)self interstice];
    isHidden = [interstice2 isHidden];
  }

  else
  {
    isHidden = 0;
  }

  return isHidden;
}

- (AVInterstitialDateRange)dateBasedInterstice
{
  interstice = [(AVTimeRange *)self interstice];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = interstice;
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return [(AVTimeRange *)selfCopy interstice];
}

+ (AVTimeRange)timeRangeWithInterstice:(id)interstice
{
  intersticeCopy = interstice;
  v4 = [[AVTimeRangeForInterstitial alloc] initWithInterstice:intersticeCopy];

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

  startDate = [(AVTimeRange *)self startDate];
  if (startDate)
  {
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setDateStyle:0];
    [v12 setTimeStyle:2];
    [(AVTimeRange *)self duration];
    v13 = [startDate dateByAddingTimeInterval:?];
    v14 = [v12 stringFromDate:startDate];
    v15 = [v12 stringFromDate:v13];
    v16 = [v7 stringByAppendingFormat:@" (-> [%@...%@])", v14, v15];
  }

  else
  {
    v16 = v7;
  }

  return v16;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(AVTimeRange *)self startTime];
  v6 = v5;
  [compareCopy startTime];
  if (vabdd_f64(v6, v7) <= 0.0000001)
  {
    [(AVTimeRange *)self duration];
    v12 = v11;
    [compareCopy duration];
    if (vabdd_f64(v12, v13) <= 0.0000001)
    {
      v15 = 0;
      goto LABEL_9;
    }

    [(AVTimeRange *)self duration];
    v9 = v14;
    [compareCopy duration];
  }

  else
  {
    [(AVTimeRange *)self startTime];
    v9 = v8;
    [compareCopy startTime];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AVTimeRange *)self isEqualToTimeRange:equalCopy];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVTimeRange;
    v5 = [(AVTimeRange *)&v8 isEqual:equalCopy];
  }

  v6 = v5;

  return v6;
}

- (BOOL)isEqualToTimeRange:(id)range
{
  rangeCopy = range;
  if (!rangeCopy)
  {
    goto LABEL_9;
  }

  startDate = [(AVTimeRange *)self startDate];
  if (startDate)
  {
    startDate2 = [rangeCopy startDate];
    v7 = startDate2 == 0;
  }

  else
  {
    v7 = 1;
  }

  [(AVTimeRange *)self startTime];
  v9 = v8;
  [rangeCopy startTime];
  if (vabdd_f64(v9, v10) < 0.0000001 && (-[AVTimeRange duration](self, "duration"), v12 = v11, [rangeCopy duration], vabdd_f64(v12, v13) < 0.0000001))
  {
    [(AVTimeRange *)self insertedDuration];
    v15 = v14;
    [rangeCopy insertedDuration];
    v17 = vabdd_f64(v15, v16);
    v18 = v17 < 0.0000001;
    if (v17 < 0.0000001 && !v7)
    {
      startDate3 = [(AVTimeRange *)self startDate];
      startDate4 = [rangeCopy startDate];
      v18 = [startDate3 isEqualToDate:startDate4];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [AVTimeRange allocWithZone:zone];
  [(AVTimeRange *)self startTime];
  v6 = v5;
  [(AVTimeRange *)self duration];
  v8 = v7;
  [(AVTimeRange *)self insertedDuration];

  return [(AVTimeRange *)v4 initWithStartTime:v6 duration:v8 insertedDuration:v9];
}

- (id)timeRangeByAddingTimeInterval:(double)interval shiftingDates:(BOOL)dates
{
  datesCopy = dates;
  v7 = [AVTimeRange alloc];
  [(AVTimeRange *)self startTime];
  v9 = v8 + interval;
  [(AVTimeRange *)self duration];
  selfCopy = [(AVTimeRange *)v7 initWithStartTime:v9 duration:v10];
  v12 = selfCopy;
  if (datesCopy)
  {
    selfCopy = self;
  }

  [(AVTimeRange *)selfCopy startTime];
  v14 = v13;
  startDate = [(AVTimeRange *)self startDate];
  [(AVTimeRange *)v12 setMapTime:startDate toDate:v14];

  return v12;
}

- (id)timeRangeExcludingTimeRange:(id)range
{
  rangeCopy = range;
  [rangeCopy startTime];
  v6 = v5;
  [(AVTimeRange *)self endTime];
  if (v6 >= v7 || ([rangeCopy endTime], v9 = v8, -[AVTimeRange startTime](self, "startTime"), v9 <= v10))
  {
    selfCopy = self;
  }

  else
  {
    [(AVTimeRange *)self startTime];
    v12 = v11;
    [rangeCopy startTime];
    v14 = v13;
    [(AVTimeRange *)self startTime];
    v16 = v15;
    if (v12 > v14)
    {
      [rangeCopy endTime];
      if (v16 < v17)
      {
        v16 = v17;
      }
    }

    [(AVTimeRange *)self endTime];
    v19 = v18;
    [rangeCopy endTime];
    v21 = v20;
    [(AVTimeRange *)self endTime];
    v23 = v22;
    if (v19 < v21)
    {
      [rangeCopy startTime];
      if (v23 >= v24)
      {
        v23 = v24;
      }
    }

    if (v23 <= v16)
    {
      selfCopy = +[AVTimeRange timeRangeZero];
    }

    else
    {
      selfCopy = [[AVTimeRange alloc] initWithStartTime:v16 endTime:v23];
    }
  }

  v26 = selfCopy;

  return v26;
}

- (id)timeRangeIntersectingWithTimeRange:(id)range
{
  rangeCopy = range;
  if (rangeCopy)
  {
    [(AVTimeRange *)self startTime];
    v6 = v5;
    [rangeCopy startTime];
    if (v6 < v7)
    {
      v6 = v7;
    }

    [(AVTimeRange *)self endTime];
    v9 = v8;
    [rangeCopy endTime];
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
      startDate = [(AVTimeRange *)self startDate];

      if (startDate)
      {
        [(AVTimeRange *)self startTime];
        v14 = v13;
        startDate2 = [(AVTimeRange *)self startDate];
        [(AVTimeRange *)v11 setMapTime:startDate2 toDate:v14];
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (double)deltaTimeFromOutsideTime:(double)time
{
  [(AVTimeRange *)self startTime];
  v6 = time - v5;
  [(AVTimeRange *)self endTime];
  result = time - v7;
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

- (BOOL)containsDate:(id)date
{
  dateCopy = date;
  startDate = [(AVTimeRange *)self startDate];

  if (startDate && (-[AVTimeRange startDate](self, "startDate"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 compare:dateCopy], v6, (v7 + 1) <= 1))
  {
    endDate = [(AVTimeRange *)self endDate];
    v9 = [dateCopy compare:endDate] == -1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsTime:(double)time
{
  [(AVTimeRange *)self startTime];
  if (v5 > time)
  {
    return 0;
  }

  [(AVTimeRange *)self endTime];
  return v7 > time;
}

- (id)endDate
{
  startDate = [(AVTimeRange *)self startDate];
  [(AVTimeRange *)self duration];
  v4 = [startDate dateByAddingTimeInterval:?];

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

- (double)timeForDate:(id)date
{
  dateCopy = date;
  startDate = [(AVTimeRange *)self startDate];
  if (startDate)
  {
    [dateCopy timeIntervalSinceDate:startDate];
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

- (id)dateForTime:(double)time
{
  startDate = [(AVTimeRange *)self startDate];
  [(AVTimeRange *)self startTime];
  v7 = [startDate dateByAddingTimeInterval:time - v6];

  return v7;
}

- (void)setMapDate:(id)date toTime:(double)time
{
  dateCopy = date;
  startDate = [(AVTimeRange *)self startDate];
  if (!startDate)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "setMapDate:toTime: expects startDate to be valid. Did the caller want setMapTime:toDate: instead?", buf, 2u);
    }
  }

  [dateCopy timeIntervalSinceDate:startDate];
  v10 = v9 + time;
  [(AVTimeRange *)self willChangeValueForKey:@"startTime"];
  self->_startTime = v10;
  [(AVTimeRange *)self didChangeValueForKey:@"startTime"];
}

- (void)setMapTime:(double)time toDate:(id)date
{
  dateCopy = date;
  [(AVTimeRange *)self startTime];
  time = [dateCopy dateByAddingTimeInterval:v7 - time];

  [(AVTimeRange *)self setStartDate:time];
}

- (AVTimeRange)initWithUnionOfCMTimeRanges:(id)ranges
{
  v40 = *MEMORY[0x1E69E9840];
  rangesCopy = ranges;
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
  obj = rangesCopy;
  v9 = [rangesCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
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

- (AVTimeRange)initWithAVTimedMetadataGroup:(id)group
{
  if (group)
  {
    [group timeRange];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  return [(AVTimeRange *)self initWithCMTimeRange:v5];
}

- (AVTimeRange)initWithCMTimeRange:(id *)range
{
  Seconds = 0.0;
  if (range->var0.var2 & 1) != 0 && (var2 = range->var1.var2, (var2) && !range->var1.var3 && (range->var0.var2 & 0x1D) == 1 && (range->var1.var0 & 0x8000000000000000) == 0)
  {
    if ((range->var1.var2 & 0x1D) == 1 || (v7 = 0.0, (var2 & 0x10) != 0))
    {
      var0 = range->var0;
      Seconds = CMTimeGetSeconds(&var0);
      var0 = range->var1;
      v7 = CMTimeGetSeconds(&var0);
    }
  }

  else
  {
    v7 = 0.0;
  }

  return [(AVTimeRange *)self initWithStartTime:Seconds duration:v7];
}

- (AVTimeRange)initWithStartTime:(double)time duration:(double)duration insertedDuration:(double)insertedDuration
{
  v9.receiver = self;
  v9.super_class = AVTimeRange;
  result = [(AVTimeRange *)&v9 init];
  if (result)
  {
    result->_startTime = time;
    result->_duration = duration;
    result->_insertedDuration = insertedDuration;
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

  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___AVTimeRange;
  objc_msgSendSuper2(&v5, sel_initialize);
}

@end