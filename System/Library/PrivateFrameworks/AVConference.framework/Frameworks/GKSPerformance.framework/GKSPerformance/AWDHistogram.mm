@interface AWDHistogram
- (AWDHistogram)initWithBuckets:(unsigned int *)buckets size:(unsigned int)size;
- (AWDHistogram)initWithFloatBuckets:(float *)buckets size:(unsigned int)size;
- (id)array;
- (id)newArray;
- (void)addFloatValue:(float)value;
- (void)addValue:(unsigned int)value withIncrements:(unsigned int)increments;
- (void)dealloc;
- (void)print;
- (void)reduceFrequencyByFactor:(unsigned int)factor;
@end

@implementation AWDHistogram

- (AWDHistogram)initWithBuckets:(unsigned int *)buckets size:(unsigned int)size
{
  v9.receiver = self;
  v9.super_class = AWDHistogram;
  v6 = [(AWDHistogram *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->buckets = buckets;
    v6->histogram = malloc_type_calloc(size, 4uLL, 0x100004052888210uLL);
    v7->size = size;
  }

  return v7;
}

- (AWDHistogram)initWithFloatBuckets:(float *)buckets size:(unsigned int)size
{
  v9.receiver = self;
  v9.super_class = AWDHistogram;
  v6 = [(AWDHistogram *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->floatBuckets = buckets;
    v6->histogram = malloc_type_calloc(size, 4uLL, 0x100004052888210uLL);
    v7->size = size;
  }

  return v7;
}

- (void)dealloc
{
  histogram = self->histogram;
  if (histogram)
  {
    free(histogram);
  }

  v4.receiver = self;
  v4.super_class = AWDHistogram;
  [(AWDHistogram *)&v4 dealloc];
}

- (void)addValue:(unsigned int)value withIncrements:(unsigned int)increments
{
  size = self->size;
  v5 = (size - 1) & ((size - 1) >> 31);
  while (--size >= 1)
  {
    if (self->buckets[size & 0x7FFFFFFF] < value)
    {
      v5 = size;
      break;
    }
  }

  self->histogram[v5] += increments;
}

- (void)addFloatValue:(float)value
{
  size = self->size;
  v4 = (size - 1) & ((size - 1) >> 31);
  while (--size >= 1)
  {
    if (self->floatBuckets[size & 0x7FFFFFFF] < value)
    {
      v4 = size;
      break;
    }
  }

  ++self->histogram[v4];
}

- (void)reduceFrequencyByFactor:(unsigned int)factor
{
  if (factor && self->size)
  {
    v3 = 0;
    histogram = self->histogram;
    do
    {
      histogram[v3++] /= factor;
    }

    while (v3 < self->size);
  }
}

- (void)print
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB60]);
  v5 = objc_alloc_init(MEMORY[0x277CCAB60]);
  if (self->size)
  {
    v4 = 0;
    do
    {
      [v3 appendFormat:@"%d, ", self->buckets[v4]];
      [v5 appendFormat:@"%d, ", self->histogram[v4++]];
    }

    while (v4 < self->size);
  }

  NSLog(&cfstr_Buckets.isa, v3);
  NSLog(&cfstr_Histogram.isa, v5);
}

- (id)newArray
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->size)
  {
    v4 = 0;
    do
    {
      v5 = [objc_alloc(MEMORY[0x277CCABA8]) initWithUnsignedInt:self->histogram[v4]];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < self->size);
  }

  return v3;
}

- (id)array
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->size)
  {
    v4 = 0;
    do
    {
      [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] atIndexedSubscript:{"numberWithUnsignedInt:", self->histogram[v4]), v4}];
      ++v4;
    }

    while (v4 < self->size);
  }

  return v3;
}

@end