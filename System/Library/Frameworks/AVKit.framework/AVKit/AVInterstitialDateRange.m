@interface AVInterstitialDateRange
- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)timeRange;
- (AVInterstitialDateRange)initWithStart:(id)a3 end:(id)a4;
- (AVInterstitialDateRange)initWithTimeRange:(id *)a3;
- (BOOL)isEqualToInterstitialTimeRange:(id)a3;
- (id)_initWithTimeRange:(id *)a3;
- (id)description;
- (void)_setPlayerInterstitialEvent:(id)a3;
- (void)_updateMappedStartTime;
- (void)setEndDate:(id)a3;
@end

@implementation AVInterstitialDateRange

- (id)description
{
  v9.receiver = self;
  v9.super_class = AVInterstitialDateRange;
  v3 = [(AVInterstitialTimeRange *)&v9 description];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(AVInterstitialDateRange *)self startDate];
  v6 = [(AVInterstitialDateRange *)self endDate];
  v7 = [v4 stringWithFormat:@"[%@...%@] %@", v5, v6, v3];;

  return v7;
}

- (BOOL)isEqualToInterstitialTimeRange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(AVInterstitialDateRange *)self startDate];
    v7 = [v5 startDate];
    if ([v6 isEqualToDate:v7])
    {
      v8 = [(AVInterstitialDateRange *)self endDate];
      v9 = [v5 endDate];
      if ([v8 isEqualToDate:v9])
      {
        v12.receiver = self;
        v12.super_class = AVInterstitialDateRange;
        v10 = [(AVInterstitialTimeRange *)&v12 isEqualToInterstitialTimeRange:v5];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- ($DAC8C9F726BD0D1F2E1B8C1A0D399779)timeRange
{
  p_mappedTimeRange = &self->_mappedTimeRange;
  if ((self->_mappedTimeRange.start.flags & 1) == 0)
  {
    [(AVInterstitialDateRange *)self _updateMappedStartTime];
  }

  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v7.receiver = self;
  v7.super_class = AVInterstitialDateRange;
  result = [($DAC8C9F726BD0D1F2E1B8C1A0D399779 *)&v7 timeRange];
  if ((p_mappedTimeRange->start.flags & 0x1D) == 1)
  {
    *&retstr->var0.var0 = *&p_mappedTimeRange->start.value;
    retstr->var0.var3 = p_mappedTimeRange->start.epoch;
  }

  return result;
}

- (void)_setPlayerInterstitialEvent:(id)a3
{
  v4.receiver = self;
  v4.super_class = AVInterstitialDateRange;
  [(AVInterstitialTimeRange *)&v4 _setPlayerInterstitialEvent:a3];
  [(AVInterstitialDateRange *)self _updateMappedStartTime];
}

- (void)_updateMappedStartTime
{
  v3 = [(AVInterstitialTimeRange *)self playerInterstitialEvent];
  v4 = [v3 primaryItem];

  if ([v4 status] == 1)
  {
    v5 = [v4 currentDate];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [v4 currentEstimatedDate];
    }

    v8 = v7;

    if (v4)
    {
      [v4 currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    Seconds = CMTimeGetSeconds(&time);
    if (v8)
    {
      v10 = Seconds;
      [(NSDate *)self->_startDate timeIntervalSinceReferenceDate];
      v12 = v11;
      [v8 timeIntervalSinceReferenceDate];
      CMTimeMakeWithSeconds(&time, v10 + v12 - v13, 1000);
      self->_mappedTimeRange.start = time;
      v14 = MEMORY[0x1E6960CC0];
      *&self->_mappedTimeRange.duration.value = *MEMORY[0x1E6960CC0];
      self->_mappedTimeRange.duration.epoch = *(v14 + 16);
      if (v4)
      {
        [v4 duration];
        if (v17)
        {
          [v4 duration];
          v15 = (v16 & 0x10) == 0;
        }

        else
        {
          v15 = 1;
        }
      }

      else
      {
        v15 = 1;
      }

      [(AVInterstitialTimeRange *)self _setCollapsedInTimeLine:v15];
    }
  }
}

- (void)setEndDate:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (!self->_endDate)
    {
      v7 = v5;
      [v5 timeIntervalSinceDate:self->_startDate];
      v5 = v7;
      if (v6 > 0.0)
      {
        objc_storeStrong(&self->_endDate, a3);
        [v7 timeIntervalSinceDate:self->_startDate];
        [(AVInterstitialTimeRange *)self _setDurationTimeInterval:?];
        v5 = v7;
      }
    }
  }
}

- (AVInterstitialDateRange)initWithStart:(id)a3 end:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  memset(&v24, 0, sizeof(v24));
  v10 = MEMORY[0x1E6960C68];
  if (v8)
  {
    [v8 timeIntervalSinceDate:v7];
    CMTimeMakeWithSeconds(&start.start, v11, 1000);
    duration = **&MEMORY[0x1E6960CC0];
    p_duration = &duration;
    p_start = &start;
  }

  else
  {
    *&start.start.value = *MEMORY[0x1E6960CC0];
    start.start.epoch = *(MEMORY[0x1E6960CC0] + 16);
    duration = **&MEMORY[0x1E6960C68];
    p_duration = &start;
    p_start = &duration;
  }

  CMTimeRangeMake(&v24, &p_duration->start, &p_start->start);
  v22.receiver = self;
  v22.super_class = AVInterstitialDateRange;
  start = v24;
  v14 = [(AVInterstitialTimeRange *)&v22 _initWithTimeRange:&start];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(v14 + 21, a3);
    objc_storeStrong(v15 + 22, a4);
    duration = **&MEMORY[0x1E6960C70];
    v20 = *v10;
    CMTimeRangeMake(&start, &duration, &v20);
    v16 = *&start.start.value;
    v17 = *&start.duration.timescale;
    *(v15 + 17) = *&start.start.epoch;
    *(v15 + 19) = v17;
    *(v15 + 15) = v16;
    if (v9)
    {
      v18 = [v9 isEqualToDate:v7];
    }

    else
    {
      v18 = 1;
    }

    [v15 _setCollapsedInTimeLine:v18];
  }

  return v15;
}

- (id)_initWithTimeRange:(id *)a3
{
  time1 = a3->var1;
  v7 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &v7) >= 1)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"cannot specify duration of AVInterstitialDateRange except by providing dates"];
  }

  v4 = [MEMORY[0x1E695DF00] distantPast];
  v5 = [(AVInterstitialDateRange *)self initWithStart:v4 end:0];

  return v5;
}

- (AVInterstitialDateRange)initWithTimeRange:(id *)a3
{
  v3 = *&a3->var0.var3;
  v5[0] = *&a3->var0.var0;
  v5[1] = v3;
  v5[2] = *&a3->var1.var1;
  return [(AVInterstitialDateRange *)self _initWithTimeRange:v5];
}

@end