@interface VCReportingBiDirectionalHistogram
- (id)description;
- (void)addValue:(unsigned int)a3 withDelta:(int64_t)a4;
- (void)convertHistogramIntoPercentageUsingValuesFrom:(id)a3;
- (void)dealloc;
@end

@implementation VCReportingBiDirectionalHistogram

- (void)dealloc
{
  signedBuckets = self->_signedBuckets;
  if (signedBuckets)
  {
    free(signedBuckets);
  }

  v4.receiver = self;
  v4.super_class = VCReportingBiDirectionalHistogram;
  [(VCHistogram *)&v4 dealloc];
}

- (void)addValue:(unsigned int)a3 withDelta:(int64_t)a4
{
  v4 = self->super._bucketCount - 1;
  if (self->super._bucketCount == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    while (self->super._ranges[v5] < a3)
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

  self->_signedBuckets[v4] += a4;
}

- (id)description
{
  if (!self->super._bucketCount)
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

    if (self->_signedBuckets[v3])
    {
      v6 = [MEMORY[0x277CCABA8] numberWithLongLong:?];
    }

    else
    {
      v6 = &stru_284F80940;
    }

    v4 = [(__CFString *)v4 stringByAppendingFormat:@"%s%@", v5, v6];
    ++v3;
  }

  while (v3 < self->super._bucketCount);
  return v4;
}

- (void)convertHistogramIntoPercentageUsingValuesFrom:(id)a3
{
  bucketCount = self->super._bucketCount;
  if (bucketCount == [a3 bucketCount])
  {
    v6 = self->super._bucketCount;
    v7 = v6 - 1;
    if ((v6 - 1) >= 0)
    {
      do
      {
        v8 = [a3 bucketValueAtIndex:v7];
        signedBuckets = self->_signedBuckets;
        if (v8)
        {
          v10 = 100 * signedBuckets[v7] / v8;
        }

        else
        {
          v10 = 0;
        }

        signedBuckets[v7] = v10;
      }

      while (v7-- > 0);
    }
  }

  else
  {
    [VCReportingBiDirectionalHistogram convertHistogramIntoPercentageUsingValuesFrom:];
  }
}

- (void)convertHistogramIntoPercentageUsingValuesFrom:.cold.1()
{
  v9 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v0 = VRTraceErrorLogLevelToCSTR(3u);
    v1 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315650;
      v4 = v0;
      v5 = 2080;
      v6 = "[VCReportingBiDirectionalHistogram convertHistogramIntoPercentageUsingValuesFrom:]";
      v7 = 1024;
      v8 = 599;
      _os_log_error_impl(&dword_23D4DF000, v1, OS_LOG_TYPE_ERROR, " [%s] %s:%d The number of buckets are not same in both histograms", &v3, 0x1Cu);
    }
  }

  v2 = *MEMORY[0x277D85DE8];
}

@end