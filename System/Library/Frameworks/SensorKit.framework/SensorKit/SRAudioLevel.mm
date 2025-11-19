@interface SRAudioLevel
- (BOOL)isEqual:(id)a3;
- (CMTimeRange)timeRange;
- (SRAudioLevel)init;
- (SRAudioLevel)initWithCoder:(id)a3;
- (SRAudioLevel)initWithTimeRange:(id *)a3 loudness:(double)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRAudioLevel

- (SRAudioLevel)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRAudioLevel)initWithTimeRange:(id *)a3 loudness:(double)a4
{
  v9.receiver = self;
  v9.super_class = SRAudioLevel;
  result = [(SRAudioLevel *)&v9 init];
  if (result)
  {
    v7 = *&a3->var0.var0;
    v8 = *&a3->var1.var1;
    *&result->_timeRange.start.epoch = *&a3->var0.var3;
    *&result->_timeRange.duration.timescale = v8;
    *&result->_timeRange.start.value = v7;
    result->_loudness = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v18 = v6;
    v19 = v5;
    v20 = v3;
    v21 = v4;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    LOBYTE(v10) = 0;
    if (self && (isKindOfClass & 1) != 0)
    {
      v11 = MEMORY[0x1E696B098];
      [(SRAudioLevel *)self timeRange];
      v12 = [v11 valueWithCMTimeRange:v17];
      v13 = MEMORY[0x1E696B098];
      if (a3)
      {
        [a3 timeRange];
      }

      else
      {
        memset(v17, 0, sizeof(v17));
      }

      v10 = [v12 isEqual:{objc_msgSend(v13, "valueWithCMTimeRange:", v17)}];
      if (v10)
      {
        loudness = self->_loudness;
        [a3 loudness];
        LOBYTE(v10) = loudness == v15;
      }
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696B098];
  if (self)
  {
    [(SRAudioLevel *)self timeRange];
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = [objc_msgSend(v3 valueWithCMTimeRange:{v6), "hash"}];
  return [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_loudness), "hash"}] ^ v4;
}

- (id)description
{
  v3 = *MEMORY[0x1E695E480];
  v4 = *&self->_timeRange.start.epoch;
  *&range.start.value = *&self->_timeRange.start.value;
  *&range.start.epoch = v4;
  *&range.duration.timescale = *&self->_timeRange.duration.timescale;
  v5 = CMTimeRangeCopyDescription(v3, &range);
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = [v6 stringWithFormat:@"%@ (%p): timeRange: %@, loudness: %f", NSStringFromClass(v7), self, v5, *&self->_loudness];
  CFRelease(v5);
  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = MEMORY[0x1E696B098];
  if (self)
  {
    [(SRAudioLevel *)self timeRange];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  [a3 encodeObject:objc_msgSend(v6 forKey:{"valueWithCMTimeRange:", v7), @"timeRange"}];
  [a3 encodeDouble:@"loudness" forKey:self->_loudness];
}

- (SRAudioLevel)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"timeRange"];
  [a3 decodeDoubleForKey:@"loudness"];
  v8 = v7;
  if (v6)
  {
    [v6 CMTimeRangeValue];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  return [(SRAudioLevel *)self initWithTimeRange:v10 loudness:v8];
}

- (CMTimeRange)timeRange
{
  v3 = *&self->duration.timescale;
  *&retstr->start.value = *&self->start.epoch;
  *&retstr->start.epoch = v3;
  *&retstr->duration.timescale = *&self[1].start.value;
  return self;
}

@end