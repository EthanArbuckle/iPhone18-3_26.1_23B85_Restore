@interface VCHistogram2D
- (VCHistogram2D)initWithRanges:(const unsigned int *)a3 bucketValues:(id)a4;
- (id)description;
- (void)addValue:(unsigned int)a3 withArray:(id)a4;
- (void)dealloc;
- (void)reset;
@end

@implementation VCHistogram2D

- (VCHistogram2D)initWithRanges:(const unsigned int *)a3 bucketValues:(id)a4
{
  v8.receiver = self;
  v8.super_class = VCHistogram2D;
  v4 = [(VCHistogram *)&v8 initWithRanges:a3 bucketValues:a4];
  v5 = v4;
  if (v4)
  {
    v4->_buckets2D = malloc_type_calloc([(VCHistogram *)v4 bucketCount], 8uLL, 0x10040436913F5uLL);
    if ([(VCHistogram *)v5 bucketCount])
    {
      v6 = 0;
      do
      {
        v5->_buckets2D[v6++] = malloc_type_calloc([(VCHistogram *)v5 bucketCount], 4uLL, 0x100004052888210uLL);
      }

      while (v6 < [(VCHistogram *)v5 bucketCount]);
    }
  }

  return v5;
}

- (void)dealloc
{
  if (self->_buckets2D)
  {
    if ([(VCHistogram *)self bucketCount])
    {
      v3 = 0;
      do
      {
        free(self->_buckets2D[v3++]);
      }

      while (v3 < [(VCHistogram *)self bucketCount]);
    }

    free(self->_buckets2D);
  }

  v4.receiver = self;
  v4.super_class = VCHistogram2D;
  [(VCHistogram *)&v4 dealloc];
}

- (void)reset
{
  if ([(VCHistogram *)self bucketCount])
  {
    v3 = 0;
    do
    {
      bzero(self->_buckets2D[v3++], 4 * [(VCHistogram *)self bucketCount]);
    }

    while (v3 < [(VCHistogram *)self bucketCount]);
  }

  v4.receiver = self;
  v4.super_class = VCHistogram2D;
  [(VCHistogram *)&v4 reset];
}

- (id)description
{
  v3 = [(VCHistogram *)self bucketCount];
  v4 = v3 - 1;
  if (v3 == 1)
  {
    return &stru_284F80940;
  }

  LODWORD(v5) = v3;
  v6 = &stru_284F80940;
  while (1)
  {
    v5 = (v5 - 1);
    if ([(VCHistogram *)self bucketCount])
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v8 += self->_buckets2D[v4][v7++];
      }

      while (v7 < [(VCHistogram *)self bucketCount]);
      if (v8)
      {
        break;
      }
    }

    if (!--v4)
    {
      return v6;
    }
  }

  v9 = 0;
  v6 = &stru_284F80940;
  v17 = v5;
  do
  {
    if ([(VCHistogram *)self bucketCount])
    {
      v10 = 0;
      v11 = 0;
      do
      {
        if (self->_buckets2D[v9][v10])
        {
          v11 = v10;
        }

        ++v10;
      }

      while (v10 < [(VCHistogram *)self bucketCount]);
    }

    else
    {
      v11 = 0;
    }

    v12 = 0;
    do
    {
      if (v12)
      {
        v13 = ",";
      }

      else
      {
        v13 = "";
      }

      if (self->_buckets2D[v9][v12])
      {
        v14 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
      }

      else
      {
        v14 = &stru_284F80940;
      }

      v15 = [(__CFString *)v6 stringByAppendingFormat:@"%s%@", v13, v14];
      v6 = v15;
      ++v12;
    }

    while (v12 <= v11);
    v6 = [(__CFString *)v15 stringByAppendingFormat:@"\n"];
    ++v9;
  }

  while (v9 != v17);
  return v6;
}

- (void)addValue:(unsigned int)a3 withArray:(id)a4
{
  if ([(VCHistogram *)self bucketCount]== 1)
  {
    LODWORD(v7) = 0;
  }

  else
  {
    v7 = 0;
    do
    {
      if ([(VCHistogram *)self ranges][4 * v7] >= a3)
      {
        break;
      }

      ++v7;
    }

    while (v7 < [(VCHistogram *)self bucketCount]- 1);
  }

  v8 = [(VCHistogram *)self bucketCount];
  if ([a4 count])
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v10 > [(VCHistogram *)self ranges][4 * v11])
      {
        ++v11;
      }

      if (v7 < v8 && v11 < v8)
      {
        v12 = [objc_msgSend(a4 objectAtIndex:{v9), "integerValue"}];
        v13 = self->_buckets2D[v7];
        v13[v11] += v12;
      }

      v9 = ++v10;
    }

    while ([a4 count] > v10);
  }
}

@end