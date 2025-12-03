@interface VCDurationHistogram
- (BOOL)isPaused;
- (unint64_t)totalDuration;
- (void)switchBucket:(unsigned int)bucket currentTime:(double)time;
- (void)updateWithTime:(double)time;
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

- (void)switchBucket:(unsigned int)bucket currentTime:(double)time
{
  [(VCDurationHistogram *)self updateWithTime:?];
  *&self->_isFinalized = bucket;
  self->_previousSwitchTime = time;
}

- (void)updateWithTime:(double)time
{
  if (![(VCDurationHistogram *)self isPaused])
  {
    v5 = ((time - self->_previousSwitchTime) * 1000.0);
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