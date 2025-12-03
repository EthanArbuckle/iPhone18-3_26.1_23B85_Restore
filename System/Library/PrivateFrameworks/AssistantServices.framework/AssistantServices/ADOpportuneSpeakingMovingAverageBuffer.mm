@interface ADOpportuneSpeakingMovingAverageBuffer
- (ADOpportuneSpeakingMovingAverageBuffer)initWithSize:(int)size;
- (void)add:(unsigned __int8)add;
@end

@implementation ADOpportuneSpeakingMovingAverageBuffer

- (void)add:(unsigned __int8)add
{
  if (self->_ringFull)
  {
    ring = self->_ring;
    size = self->_size;
    v5 = self->_cursor % size;
    LOBYTE(v3) = ring[v5];
    self->_movingAverage = self->_movingAverage - (v3 / size);
    ring[v5] = add;
    v7 = self->_size;
    LODWORD(ring) = self->_cursor;
    self->_movingAverage = self->_movingAverage + (add / v7);
  }

  else
  {
    self->_ring[self->_cursor % self->_size] = add;
    ring = self->_cursor;
    if ((ring & 0x80000000) != 0)
    {
      v12 = 0.0;
    }

    else
    {
      v8 = 0;
      v9 = self->_ring;
      v10 = ring + 1;
      do
      {
        v11 = *v9++;
        v8 += v11;
        --v10;
      }

      while (v10);
      v12 = v8;
    }

    self->_movingAverage = v12 / (ring + 1.0);
    v7 = self->_size;
  }

  self->_cursor = ring + 1;
  if ((ring + 1) % v7 <= ring)
  {
    self->_ringFull = 1;
  }
}

- (ADOpportuneSpeakingMovingAverageBuffer)initWithSize:(int)size
{
  v8.receiver = self;
  v8.super_class = ADOpportuneSpeakingMovingAverageBuffer;
  v4 = [(ADOpportuneSpeakingMovingAverageBuffer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_size = size;
    v4->_cursor = 0;
    v4->_ring = malloc_type_calloc(size, 1uLL, 0x6129C0E0uLL);
    v5->_ringFull = 0;
    v5->_movingAverage = 0.0;
    v6 = v5;
  }

  return v5;
}

@end