@interface GKShuffledDistribution
- (GKShuffledDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue;
- (GKShuffledDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue delta:(int64_t)delta;
- (int64_t)nextInt;
- (void)dealloc;
- (void)setUniformDistance:(float)distance;
@end

@implementation GKShuffledDistribution

- (void)setUniformDistance:(float)distance
{
  self->_uniformDistance = fminf(fmaxf(distance, 0.0), 1.0);
  highestValue = [(GKRandomDistribution *)self highestValue];
  self->_delta = (self->_uniformDistance * (highestValue - [(GKRandomDistribution *)self lowestValue]+ 1));
}

- (GKShuffledDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue
{
  v9.receiver = self;
  v9.super_class = GKShuffledDistribution;
  result = [GKRandomDistribution initWithRandomSource:sel_initWithRandomSource_lowestValue_highestValue_ lowestValue:source highestValue:?];
  if (result)
  {
    result->_uniformDistance = 1.0;
    v8 = (highestValue - value + 1);
    result->_delta = v8;
    result->_lastInt = value - v8;
    result->_nextIntsCapacity = 0;
    result->_nextInts = 0;
  }

  return result;
}

- (GKShuffledDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue delta:(int64_t)delta
{
  v10.receiver = self;
  v10.super_class = GKShuffledDistribution;
  result = [GKRandomDistribution initWithRandomSource:sel_initWithRandomSource_lowestValue_highestValue_ lowestValue:source highestValue:?];
  if (result)
  {
    result->_delta = delta;
    result->_uniformDistance = delta / (highestValue - value + 1);
    result->_lastInt = value - delta;
    result->_nextIntsCapacity = 0;
    result->_nextInts = 0;
  }

  return result;
}

- (void)dealloc
{
  nextInts = self->_nextInts;
  if (nextInts)
  {
    free(nextInts);
  }

  v4.receiver = self;
  v4.super_class = GKShuffledDistribution;
  [(GKShuffledDistribution *)&v4 dealloc];
}

- (int64_t)nextInt
{
  if (self->_uniformDistance >= 0.95)
  {
    nextIntsCount = self->_nextIntsCount;
    if (nextIntsCount)
    {
      nextInts = self->_nextInts;
LABEL_18:
      self->_nextIntsCount = nextIntsCount - 1;
      result = nextInts[nextIntsCount - 1];
      goto LABEL_19;
    }

    nextIntsCount = self->_nextIntsCapacity;
    if (nextIntsCount)
    {
      if (nextIntsCount > 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      highestValue = [(GKRandomDistribution *)self highestValue];
      v13 = highestValue - [(GKRandomDistribution *)self lowestValue]+ 1;
      self->_nextIntsCapacity = v13;
      v14 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
      self->_nextInts = v14;
      bzero(v14, self->_nextIntsCapacity);
      nextIntsCount = self->_nextIntsCapacity;
      if (nextIntsCount > 0)
      {
LABEL_10:
        v7 = 0;
        do
        {
          v9 = v7 + 1;
          v10 = [(GKRandom *)self->super._source nextIntWithUpperBound:v7 + 1];
          v11 = v10;
          if (v7 != v10)
          {
            self->_nextInts[v7] = self->_nextInts[v10];
          }

          lowestValue = [(GKRandomDistribution *)self lowestValue];
          nextInts = self->_nextInts;
          nextInts[v11] = lowestValue + v7;
          nextIntsCount = self->_nextIntsCapacity;
          ++v7;
        }

        while (v9 < nextIntsCount);
        goto LABEL_16;
      }
    }

    nextInts = self->_nextInts;
LABEL_16:
    v15 = &nextInts[nextIntsCount];
    if (*(v15 - 1) == self->_lastInt)
    {
      *(v15 - 1) = *nextInts;
      *nextInts = self->_lastInt;
      nextIntsCount = self->_nextIntsCapacity;
    }

    goto LABEL_18;
  }

  do
  {
    v16.receiver = self;
    v16.super_class = GKShuffledDistribution;
    result = [(GKRandomDistribution *)&v16 nextInt];
    v4 = self->_lastInt - result;
    if (v4 < 0)
    {
      v4 = result - self->_lastInt;
    }
  }

  while (v4 < self->_delta);
LABEL_19:
  self->_lastInt = result;
  return result;
}

@end