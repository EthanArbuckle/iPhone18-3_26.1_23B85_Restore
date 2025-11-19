@interface VCReportingDeltaDistribution
- (void)accumulate:(id)a3;
- (void)updateReport:(id)a3 withStreamGroup:(id)a4;
- (void)updateWithPayload:(id)a3;
@end

@implementation VCReportingDeltaDistribution

- (void)updateWithPayload:(id)a3
{
  if (a3)
  {
    v16.receiver = self;
    v16.super_class = VCReportingDeltaDistribution;
    [(VCReportingDistribution *)&v16 updateWithPayload:?];
    [objc_msgSend(a3 objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_ReportingAbsoluteSum", "doubleValue"}];
    v6 = v5;
    [objc_msgSend(a3 objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDistributionKey_ReportingSum", "doubleValue"}];
    v8 = v7;
    [objc_msgSend(a3 objectForKeyedSubscript:{-[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDistributionKey_ReportingCount", "doubleValue"}];
    if (v9 != 0.0)
    {
      self->_absoluteSum = v6 + self->_absoluteSum;
      v10 = v8 / v9;
      v11 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_ReportingAbsoluteMin"];
      absoluteMin = v10;
      if (v11)
      {
        [objc_msgSend(a3 objectForKeyedSubscript:{v11, v10), "doubleValue"}];
      }

      if (fabs(self->_absoluteMin) < fabs(absoluteMin))
      {
        absoluteMin = self->_absoluteMin;
      }

      self->_absoluteMin = absoluteMin;
      v13 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_ReportingAbsoluteMax"];
      if (v13)
      {
        [objc_msgSend(a3 objectForKeyedSubscript:{v13), "doubleValue"}];
        v10 = v14;
      }

      absoluteMax = self->_absoluteMax;
      if (fabs(absoluteMax) <= fabs(v10))
      {
        absoluteMax = v10;
      }

      self->_absoluteMax = absoluteMax;
    }
  }

  else
  {
    [VCReportingDeltaDistribution updateWithPayload:?];
  }
}

- (void)accumulate:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = VCReportingDeltaDistribution;
    [(VCReportingDistribution *)&v12 accumulate:a3];
    [a3 absoluteSum];
    self->_absoluteSum = v5 + self->_absoluteSum;
    v6 = fabs(self->_absoluteMax);
    [a3 absoluteMax];
    if (v6 <= fabs(v7))
    {
      [a3 absoluteMax];
    }

    else
    {
      absoluteMax = self->_absoluteMax;
    }

    self->_absoluteMax = absoluteMax;
    v9 = fabs(self->_absoluteMin);
    [a3 absoluteMin];
    if (v9 >= fabs(v10))
    {
      [a3 absoluteMin];
    }

    else
    {
      absoluteMin = self->_absoluteMin;
    }

    self->_absoluteMin = absoluteMin;
  }
}

- (void)updateReport:(id)a3 withStreamGroup:(id)a4
{
  if (a3)
  {
    [(VCReportingDistribution *)self count];
    if (v7 != 0.0)
    {
      v17.receiver = self;
      v17.super_class = VCReportingDeltaDistribution;
      [(VCReportingDistribution *)&v17 updateReport:a3 withStreamGroup:a4];
      absoluteSum = self->_absoluteSum;
      [(VCReportingDistribution *)self count];
      v10 = v9;
      v11 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage"];
      if (a4 && v11)
      {
        v12 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage", a4];
      }

      else
      {
        v12 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteAverage"];
      }

      if (v12)
      {
        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", absoluteSum / v10), v12}];
      }

      v13 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin"];
      if (a4 && v13)
      {
        v14 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin", a4];
      }

      else
      {
        v14 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMin"];
      }

      if (v14)
      {
        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_absoluteMin), v14}];
      }

      v15 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax"];
      if (a4 && v15)
      {
        v16 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", -[NSDictionary objectForKeyedSubscript:](-[VCReportingDistribution keys](self, "keys"), "objectForKeyedSubscript:", @"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax", a4];
      }

      else
      {
        v16 = [(NSDictionary *)[(VCReportingDistribution *)self keys] objectForKeyedSubscript:@"VCReportingDeltaDistributionKey_AggregatedAbsoluteMax"];
      }

      if (v16)
      {
        [a3 setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithDouble:", self->_absoluteMax), v16}];
      }
    }
  }
}

- (void)initWithSignedHistogramType:reportingKeys:.cold.1()
{
  v18 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    v1 = VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v11 = 136315650;
    v12 = v1;
    OUTLINED_FUNCTION_0();
    v13 = 34;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v0 = [0 performSelector:sel_logPrefix];
  }

  else
  {
    v0 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v8 = VRTraceErrorLogLevelToCSTR(3u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v11 = 136316162;
      v12 = v8;
      OUTLINED_FUNCTION_0();
      v13 = 34;
      v14 = 2112;
      v15 = v0;
      v16 = 2048;
      v17 = 0;
      v2 = &dword_23D4DF000;
      v5 = " [%s] %s:%d %@(%p) Failed to initialize VCReportingDistribution";
      v6 = &v11;
      v3 = v9;
      v4 = OS_LOG_TYPE_ERROR;
      v7 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateWithPayload:(void *)a1 .cold.1(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    v3 = VRTraceErrorLogLevelToCSTR(3u);
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = 136315650;
    v14 = v3;
    OUTLINED_FUNCTION_0();
    v15 = 45;
    OUTLINED_FUNCTION_1();
LABEL_12:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 performSelector:sel_logPrefix];
  }

  else
  {
    v2 = &stru_284F80940;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v10 = VRTraceErrorLogLevelToCSTR(3u);
    v11 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v13 = 136316162;
      v14 = v10;
      OUTLINED_FUNCTION_0();
      v15 = 45;
      v16 = 2112;
      v17 = v2;
      v18 = 2048;
      v19 = a1;
      v4 = &dword_23D4DF000;
      v7 = " [%s] %s:%d %@(%p) Received nil payload";
      v8 = &v13;
      v5 = v11;
      v6 = OS_LOG_TYPE_ERROR;
      v9 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
}

@end