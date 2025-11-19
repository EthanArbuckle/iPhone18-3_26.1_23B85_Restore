@interface MPAdTimeRange
- (BOOL)isEqual:(id)a3;
- (CMTimeRange)timeRange;
- (MPAdTimeRange)initWithTimeRange:(CMTimeRange *)timeRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)setTimeRange:(CMTimeRange *)timeRange;
@end

@implementation MPAdTimeRange

- (void)setTimeRange:(CMTimeRange *)timeRange
{
  v3 = *&timeRange->start.value;
  v4 = *&timeRange->start.epoch;
  *&self->_timeRange.duration.timescale = *&timeRange->duration.timescale;
  *&self->_timeRange.start.epoch = v4;
  *&self->_timeRange.start.value = v3;
}

- (CMTimeRange)timeRange
{
  v3 = *&self->duration.value;
  *&retstr->start.value = *&self->start.timescale;
  *&retstr->start.epoch = v3;
  *&retstr->duration.timescale = *&self->duration.epoch;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x1E695E480];
  [(MPAdTimeRange *)self timeRange];
  v7 = CMTimeRangeCopyDescription(v6, &range);
  v8 = [v3 stringWithFormat:@"<%@ %p: %@=%@>", v5, self, @"timeRange", v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MPAdTimeRange);
  [(MPAdTimeRange *)self timeRange];
  v5 = v8;
  v6 = v9;
  *&v4->_timeRange.duration.timescale = v10;
  *&v4->_timeRange.start.epoch = v6;
  *&v4->_timeRange.start.value = v5;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  [(MPAdTimeRange *)self timeRange];
  if (v4)
  {
    [v4 timeRange];
  }

  else
  {
    memset(&v7, 0, sizeof(v7));
  }

  v5 = CMTimeRangeEqual(&range1, &v7) != 0;

  return v5;
}

- (MPAdTimeRange)initWithTimeRange:(CMTimeRange *)timeRange
{
  v7.receiver = self;
  v7.super_class = MPAdTimeRange;
  result = [(MPAdTimeRange *)&v7 init];
  if (result)
  {
    v5 = *&timeRange->start.value;
    v6 = *&timeRange->start.epoch;
    *&result->_timeRange.duration.timescale = *&timeRange->duration.timescale;
    *&result->_timeRange.start.epoch = v6;
    *&result->_timeRange.start.value = v5;
  }

  return result;
}

@end