@interface AWDHistogram
- (AWDHistogram)initWithBuckets:(unsigned int *)a3 size:(unsigned int)a4;
- (AWDHistogram)initWithFloatBuckets:(float *)a3 size:(unsigned int)a4;
- (id)array;
- (id)newArray;
- (void)addFloatValue:(float)a3;
- (void)addValue:(unsigned int)a3 withIncrements:(unsigned int)a4;
- (void)dealloc;
- (void)print;
- (void)reduceFrequencyByFactor:(unsigned int)a3;
@end

@implementation AWDHistogram

- (AWDHistogram)initWithBuckets:(unsigned int *)a3 size:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = AWDHistogram;
  v6 = [(AWDHistogram *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->buckets = a3;
    v6->histogram = malloc_type_calloc(a4, 4uLL, 0x100004052888210uLL);
    v7->size = a4;
  }

  return v7;
}

- (AWDHistogram)initWithFloatBuckets:(float *)a3 size:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = AWDHistogram;
  v6 = [(AWDHistogram *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->floatBuckets = a3;
    v6->histogram = malloc_type_calloc(a4, 4uLL, 0x100004052888210uLL);
    v7->size = a4;
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

- (void)addValue:(unsigned int)a3 withIncrements:(unsigned int)a4
{
  size = self->size;
  v5 = (size - 1) & ((size - 1) >> 31);
  while (--size >= 1)
  {
    if (self->buckets[size & 0x7FFFFFFF] < a3)
    {
      v5 = size;
      break;
    }
  }

  self->histogram[v5] += a4;
}

- (void)addFloatValue:(float)a3
{
  size = self->size;
  v4 = (size - 1) & ((size - 1) >> 31);
  while (--size >= 1)
  {
    if (self->floatBuckets[size & 0x7FFFFFFF] < a3)
    {
      v4 = size;
      break;
    }
  }

  ++self->histogram[v4];
}

- (void)reduceFrequencyByFactor:(unsigned int)a3
{
  if (a3 && self->size)
  {
    v3 = 0;
    histogram = self->histogram;
    do
    {
      histogram[v3++] /= a3;
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