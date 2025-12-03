@interface VCSignedHistogram
- (BOOL)merge:(id)merge;
- (void)addValue:(unsigned int)value withIncrement:(unsigned int)increment;
@end

@implementation VCSignedHistogram

- (void)addValue:(unsigned int)value withIncrement:(unsigned int)increment
{
  v4 = self->super._bucketCount - 1;
  if (self->super._bucketCount == 1)
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    while (self->_signedRanges[v5] < value)
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

  self->super._buckets[v4] += increment;
}

- (BOOL)merge:(id)merge
{
  signedRanges = self->_signedRanges;
  if (signedRanges != [merge signedRanges])
  {
    return 0;
  }

  v7.receiver = self;
  v7.super_class = VCSignedHistogram;
  return [(VCHistogram *)&v7 merge:merge];
}

- (void)initWithType:(void *)a1 bucketValues:(int)a2 .cold.1(void *a1, int a2)
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
    OUTLINED_FUNCTION_1_2();
    v18 = v7;
    LODWORD(v19) = a2;
    v8 = " [%s] %s:%d Failed to find bucket ranges for histogramType=%d";
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
      OUTLINED_FUNCTION_1_2();
      v18 = 2112;
      v19 = v4;
      v20 = 2048;
      v21 = a1;
      v22 = v14;
      v23 = a2;
      v8 = " [%s] %s:%d %@(%p) Failed to find bucket ranges for histogramType=%d";
      v9 = v12;
      v10 = 54;
      goto LABEL_12;
    }
  }

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)initWithType:bucketValues:.cold.2()
{
  v15 = *MEMORY[0x277D85DE8];
  if (!objc_opt_class())
  {
    if (VRTraceGetErrorLogLevelForModule("") < 3)
    {
      goto LABEL_10;
    }

    v1 = VRTraceErrorLogLevelToCSTR(3u);
    v2 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v9 = 136315650;
    v10 = v1;
    OUTLINED_FUNCTION_0_1();
    v3 = " [%s] %s:%d Failed to initialize VCSignedHistogram";
    v4 = v2;
    v5 = 28;
LABEL_12:
    _os_log_error_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_ERROR, v3, &v9, v5);
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
    v6 = VRTraceErrorLogLevelToCSTR(3u);
    v7 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v9 = 136316162;
      v10 = v6;
      OUTLINED_FUNCTION_0_1();
      v11 = 2112;
      v12 = v0;
      v13 = 2048;
      v14 = 0;
      v3 = " [%s] %s:%d %@(%p) Failed to initialize VCSignedHistogram";
      v4 = v7;
      v5 = 48;
      goto LABEL_12;
    }
  }

LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
}

@end