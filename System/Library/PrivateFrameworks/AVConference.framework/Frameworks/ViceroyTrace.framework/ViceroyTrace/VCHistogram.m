@interface VCHistogram
- (BOOL)addOnlyExactMatchingValue:(unsigned int)a3 increment:(unsigned int)a4;
- (BOOL)merge:(id)a3;
- (VCHistogram)initWithRanges:(const unsigned int *)a3 bucketValues:(id)a4;
- (id)array;
- (id)description;
- (unsigned)bucketValueAtIndex:(unsigned int)a3;
- (void)addValue:(unsigned int)a3 withIncrement:(unsigned int)a4;
- (void)convertHistogramIntoComplementaryPercentage:(id)a3;
- (void)convertHistogramIntoPercentageUsingValuesFrom:(id)a3;
- (void)dealloc;
@end

@implementation VCHistogram

- (VCHistogram)initWithRanges:(const unsigned int *)a3 bucketValues:(id)a4
{
  v14.receiver = self;
  v14.super_class = VCHistogram;
  v6 = [(VCHistogram *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_ranges = a3;
    v6->_buckets = malloc_type_calloc(v6->_bucketCount, 4uLL, 0x100004052888210uLL);
    if (a4)
    {
      v8 = [a4 componentsSeparatedByString:{@", "}];
      v9 = [v8 count];
      bucketCount = v7->_bucketCount;
      if (v9 == bucketCount && bucketCount != 0)
      {
        v12 = 0;
        do
        {
          v7->_buckets[v12] = [objc_msgSend(v8 objectAtIndexedSubscript:{v12), "intValue"}];
          ++v12;
        }

        while (v12 < v7->_bucketCount);
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  buckets = self->_buckets;
  if (buckets)
  {
    free(buckets);
  }

  v4.receiver = self;
  v4.super_class = VCHistogram;
  [(VCHistogram *)&v4 dealloc];
}

- (BOOL)addOnlyExactMatchingValue:(unsigned int)a3 increment:(unsigned int)a4
{
  bucketCount = self->_bucketCount;
  if (bucketCount)
  {
    ranges = self->_ranges;
    if (*ranges == a3)
    {
      v6 = 0;
      LOBYTE(bucketCount) = 1;
LABEL_8:
      self->_buckets[v6] += a4;
    }

    else
    {
      v6 = 0;
      v7 = ranges + 1;
      while (bucketCount - 1 != v6)
      {
        v8 = v7[v6++];
        if (v8 == a3)
        {
          LOBYTE(bucketCount) = v6 < bucketCount;
          goto LABEL_8;
        }
      }

      LOBYTE(bucketCount) = 0;
    }
  }

  return bucketCount;
}

- (void)addValue:(unsigned int)a3 withIncrement:(unsigned int)a4
{
  v4 = self->_bucketCount - 1;
  if (self->_bucketCount == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    while (self->_ranges[v5] < a3)
    {
      if (v4 == ++v5)
      {
        goto LABEL_8;
      }
    }

    LODWORD(v4) = v5;
LABEL_8:
    v4 = v4;
  }

  self->_buckets[v4] += a4;
}

- (unsigned)bucketValueAtIndex:(unsigned int)a3
{
  if (self->_bucketCount - 1 >= a3)
  {
    return self->_buckets[a3];
  }

  else
  {
    return 0;
  }
}

- (BOOL)merge:(id)a3
{
  ranges = self->_ranges;
  v6 = [a3 ranges];
  if (ranges == v6)
  {
    bucketCount = self->_bucketCount;
    v8 = bucketCount - 1;
    if ((bucketCount - 1) >= 0)
    {
      do
      {
        self->_buckets[v8] += [a3 bucketValueAtIndex:v8];
        --v8;
      }

      while (v8 != -1);
    }
  }

  return ranges == v6;
}

- (void)convertHistogramIntoPercentageUsingValuesFrom:(id)a3
{
  bucketCount = self->_bucketCount;
  if (bucketCount == [a3 bucketCount])
  {
    v6 = self->_bucketCount;
    v7 = v6 - 1;
    if ((v6 - 1) >= 0)
    {
      do
      {
        v8 = [a3 bucketValueAtIndex:v7];
        buckets = self->_buckets;
        if (v8)
        {
          v10 = 100 * buckets[v7] / v8;
        }

        else
        {
          v10 = 0;
        }

        buckets[v7] = v10;
      }

      while (v7-- > 0);
    }
  }

  else
  {
    [VCHistogram convertHistogramIntoPercentageUsingValuesFrom:];
  }
}

- (void)convertHistogramIntoComplementaryPercentage:(id)a3
{
  bucketCount = self->_bucketCount;
  if (bucketCount == [a3 bucketCount])
  {
    v6 = self->_bucketCount;
    v7 = v6 - 1;
    if ((v6 - 1) >= 0)
    {
      do
      {
        if ([a3 bucketValueAtIndex:v7])
        {
          self->_buckets[v7] = 100 - self->_buckets[v7];
        }
      }

      while (v7-- > 0);
    }
  }

  else
  {
    [VCHistogram convertHistogramIntoComplementaryPercentage:];
  }
}

- (id)array
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (self->_bucketCount)
  {
    v4 = 0;
    do
    {
      [v3 setObject:objc_msgSend(MEMORY[0x277CCABA8] atIndexedSubscript:{"numberWithUnsignedInt:", self->_buckets[v4]), v4}];
      ++v4;
    }

    while (v4 < self->_bucketCount);
  }

  return v3;
}

- (id)description
{
  if (!self->_bucketCount)
  {
    return &stru_284F80940;
  }

  v3 = 0;
  v4 = &stru_284F80940;
  do
  {
    if (v3)
    {
      v5 = ",";
    }

    else
    {
      v5 = "";
    }

    if (self->_buckets[v3])
    {
      v6 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:?];
    }

    else
    {
      v6 = &stru_284F80940;
    }

    v4 = [(__CFString *)v4 stringByAppendingFormat:@"%s%@", v5, v6];
    ++v3;
  }

  while (v3 < self->_bucketCount);
  return v4;
}

- (void)convertHistogramIntoPercentageUsingValuesFrom:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d The number of buckets are not same in both histograms", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)convertHistogramIntoComplementaryPercentage:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_1(&dword_23D4DF000, v1, v2, " [%s] %s:%d The number of buckets are not same in both histograms", v3, v4, v5, v6, 2u);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end