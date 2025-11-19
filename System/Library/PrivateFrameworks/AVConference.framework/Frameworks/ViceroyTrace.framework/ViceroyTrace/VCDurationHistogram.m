@interface VCDurationHistogram
- (BOOL)isPaused;
- (unint64_t)totalDuration;
- (void)switchBucket:(unsigned int)a3 currentTime:(double)a4;
- (void)updateWithTime:(double)a3;
@end

@implementation VCDurationHistogram

- (BOOL)isPaused
{
  if (self->_previousSwitchTime == 0.0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(&self->super.super._bucketCount + 4);
  }

  return v2 & 1;
}

- (void)switchBucket:(unsigned int)a3 currentTime:(double)a4
{
  [(VCDurationHistogram *)self updateWithTime:?];
  *&self->_isFinalized = a3;
  self->_previousSwitchTime = a4;
}

- (void)updateWithTime:(double)a3
{
  if (![(VCDurationHistogram *)self isPaused])
  {
    v5 = ((a3 - self->_previousSwitchTime) * 1000.0);
    v6 = *&self->_isFinalized;

    [(VCHistogram *)self addOnlyExactMatchingValue:v6 increment:v5];
  }
}

- (unint64_t)totalDuration
{
  bucketCount = self->super.super._bucketCount;
  if (!bucketCount)
  {
    return 0;
  }

  result = 0;
  buckets = self->super.super._buckets;
  do
  {
    v6 = *buckets++;
    result += v6;
    --bucketCount;
  }

  while (bucketCount);
  return result;
}

@end