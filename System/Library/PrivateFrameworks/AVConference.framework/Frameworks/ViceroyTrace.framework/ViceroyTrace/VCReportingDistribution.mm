@interface VCReportingDistribution
- (void)accumulate:(id)accumulate;
- (void)dealloc;
- (void)updateReport:(id)report withStreamGroup:(id)group;
- (void)updateWithPayload:(id)payload;
@end

@implementation VCReportingDistribution

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCReportingDistribution;
  [(VCReportingDistribution *)&v3 dealloc];
}

- (void)updateWithPayload:(id)payload
{
  if (payload)
  {
    [objc_msgSend(payload objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](self->_keys, "objectForKeyedSubscript:", @"VCReportingDistributionKey_ReportingSum", "doubleValue"}];
    v13 = v5;
    v6 = [objc_msgSend(payload objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](self->_keys, "objectForKeyedSubscript:", @"VCReportingDistributionKey_ReportingCount", "intValue"}];
    if (v6)
    {
      v7.f64[0] = v13;
      v7.f64[1] = v6;
      *&self->_sum = vaddq_f64(v7, *&self->_sum);
      v8 = v13 / v6;
      [(VCHistogram *)self->_histogram addValue:v8 withIncrement:self->_histogramIncrementFactor * v6];
      v9 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_ReportingMin"];
      v10 = v8;
      if (v9)
      {
        [objc_msgSend(payload objectForKeyedSubscript:{v9, v8), "doubleValue"}];
      }

      self->_min = fmin(self->_min, v10);
      v11 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_ReportingMax"];
      if (v11)
      {
        [objc_msgSend(payload objectForKeyedSubscript:{v11), "doubleValue"}];
        v8 = v12;
      }

      self->_max = fmax(self->_max, v8);
    }
  }

  else
  {
    [VCReportingDistribution updateWithPayload:?];
  }
}

- (void)accumulate:(id)accumulate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (accumulate)
    {
      [accumulate sum];
      self->_sum = v5 + self->_sum;
      [accumulate count];
      min = self->_min;
      self->_count = v7 + self->_count;
      [accumulate min];
      self->_min = fmin(min, v8);
      max = self->_max;
      [accumulate max];
      self->_max = fmax(max, v10);
      histogram = self->_histogram;
      histogram = [accumulate histogram];

      [(VCHistogram *)histogram merge:histogram];
    }

    else
    {
      [VCReportingDistribution accumulate:?];
    }
  }
}

- (void)updateReport:(id)report withStreamGroup:(id)group
{
  if (report)
  {
    count = self->_count;
    if (count != 0.0)
    {
      sum = self->_sum;
      v9 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedAverage"];
      if (group && v9)
      {
        group = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](self->_keys, "objectForKeyedSubscript:", @"VCReportingDistributionKey_AggregatedAverage", group];
      }

      else
      {
        group = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedAverage"];
      }

      if (group)
      {
        [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", sum / count), group}];
      }

      v11 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedMin"];
      if (group && v11)
      {
        group2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](self->_keys, "objectForKeyedSubscript:", @"VCReportingDistributionKey_AggregatedMin", group];
      }

      else
      {
        group2 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedMin"];
      }

      if (group2)
      {
        [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_min), group2}];
      }

      v13 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedMax"];
      if (group && v13)
      {
        group3 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](self->_keys, "objectForKeyedSubscript:", @"VCReportingDistributionKey_AggregatedMax", group];
      }

      else
      {
        group3 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedMax"];
      }

      if (group3)
      {
        [report setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_max), group3}];
      }

      v15 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedHistogram"];
      if (group && v15)
      {
        group4 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](self->_keys, "objectForKeyedSubscript:", @"VCReportingDistributionKey_AggregatedHistogram", group];
      }

      else
      {
        group4 = [(NSDictionary *)self->_keys objectForKeyedSubscript:@"VCReportingDistributionKey_AggregatedHistogram"];
      }

      v17 = group4;
      if (group4)
      {
        v18 = [(VCHistogram *)self->_histogram description];

        [report setObject:v18 forKeyedSubscript:v17];
      }
    }
  }

  else
  {
    [VCReportingDistribution updateReport:? withStreamGroup:?];
  }
}

- (void)initWithKeys:(void *)a1 histogramClass:(int)a2 histogramType:.cold.1(void *a1, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    v5 = VRTraceErrorLogLevelToCSTR(3u);
    v6 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v15 = 136315906;
    v16 = v5;
    v17 = 2080;
    OUTLINED_FUNCTION_6_6();
    v18 = v7;
    LODWORD(v19) = a2;
    v8 = " [%s] %s:%d Failed to initialize histogram for type=%d";
    v9 = v6;
    v10 = 34;
LABEL_12:
    _os_log_error_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_ERROR, v8, &v15, v10);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v4 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v4 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v11 = VRTraceErrorLogLevelToCSTR(3u);
    v12 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v15 = 136316418;
      v16 = v11;
      v17 = 2080;
      OUTLINED_FUNCTION_6_6();
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = a1;
      v22 = v14;
      v23 = a2;
      v8 = " [%s] %s:%d %@(%p) Failed to initialize histogram for type=%d";
      v9 = v12;
      v10 = 54;
      goto LABEL_12;
    }
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)initWithKeys:(uint64_t)a1 histogramClass:histogramType:.cold.2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)initWithKeys:histogramClass:histogramType:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithHistogramType:reportingKeys:histogramIncrementFactor:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)initWithSignedHistogramType:reportingKeys:histogramIncrementFactor:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_14_0())
    {
      OUTLINED_FUNCTION_3_3();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

- (void)updateWithPayload:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)accumulate:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

- (void)updateReport:(uint64_t)a1 withStreamGroup:.cold.1(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR(3u);
    if (!OUTLINED_FUNCTION_14_0())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
LABEL_11:
    _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    goto LABEL_9;
  }

  if (OUTLINED_FUNCTION_63())
  {
    OUTLINED_FUNCTION_64();
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (OUTLINED_FUNCTION_18())
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_4_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  v7 = *MEMORY[0x277D85DE8];
}

@end