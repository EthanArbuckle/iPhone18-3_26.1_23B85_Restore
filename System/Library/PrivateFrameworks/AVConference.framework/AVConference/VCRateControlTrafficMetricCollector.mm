@interface VCRateControlTrafficMetricCollector
- (VCRateControlTrafficMetricCollector)initWithMediaController:(void *)controller statisticsCollector:(id)collector;
- (void)calculateTrafficMetrics;
- (void)dealloc;
- (void)startVCRateControlTrafficMetricCollector;
- (void)stopVCRateControlTrafficMetricCollector;
@end

@implementation VCRateControlTrafficMetricCollector

- (VCRateControlTrafficMetricCollector)initWithMediaController:(void *)controller statisticsCollector:(id)collector
{
  v34 = *MEMORY[0x1E69E9840];
  if (!controller)
  {
    [VCRateControlTrafficMetricCollector initWithMediaController:buf statisticsCollector:?];
LABEL_20:
    v9 = *buf;
    goto LABEL_8;
  }

  if (!collector)
  {
    [VCRateControlTrafficMetricCollector initWithMediaController:buf statisticsCollector:?];
    goto LABEL_20;
  }

  v20.receiver = self;
  v20.super_class = VCRateControlTrafficMetricCollector;
  v6 = [(VCRateControlTrafficMetricCollector *)&v20 init];
  if (!v6)
  {
    v9 = 0;
LABEL_8:

    return 0;
  }

  v7 = v6;
  v6->_mediaController = controller;
  v7->_statisticsCollector = collector;
  v7->_isStopped = 1;
  if (objc_opt_class() == v7)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v10 = VRTraceErrorLogLevelToCSTR();
      v11 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        mediaController = v7->_mediaController;
        *buf = 136316162;
        *&buf[4] = v10;
        v22 = 2080;
        v23 = "[VCRateControlTrafficMetricCollector initWithMediaController:statisticsCollector:]";
        v24 = 1024;
        v25 = 30;
        v26 = 2048;
        v27 = v7;
        v28 = 2048;
        v29 = mediaController;
        v13 = " [%s] %s:%d Traffic Metric Collector=%p created with mediaController=%p";
        v14 = v11;
        v15 = 48;
LABEL_16:
        _os_log_impl(&dword_1DB56E000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v8 = [(VCRateControlTrafficMetricCollector *)v7 performSelector:sel_logPrefix];
    }

    else
    {
      v8 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v16 = VRTraceErrorLogLevelToCSTR();
      v17 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        v18 = v7->_mediaController;
        *buf = 136316674;
        *&buf[4] = v16;
        v22 = 2080;
        v23 = "[VCRateControlTrafficMetricCollector initWithMediaController:statisticsCollector:]";
        v24 = 1024;
        v25 = 30;
        v26 = 2112;
        v27 = v8;
        v28 = 2048;
        v29 = v7;
        v30 = 2048;
        v31 = v7;
        v32 = 2048;
        v33 = v18;
        v13 = " [%s] %s:%d %@(%p) Traffic Metric Collector=%p created with mediaController=%p";
        v14 = v17;
        v15 = 68;
        goto LABEL_16;
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  v22 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v4 = VRTraceErrorLogLevelToCSTR();
      v5 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v13 = v4;
        v14 = 2080;
        v15 = "[VCRateControlTrafficMetricCollector dealloc]";
        v16 = 1024;
        v17 = 41;
        v6 = " [%s] %s:%d VCRateControlTrafficMetricCollector dealloc";
        v7 = v5;
        v8 = 28;
LABEL_11:
        _os_log_impl(&dword_1DB56E000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
      }
    }
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v3 = [(VCRateControlTrafficMetricCollector *)self performSelector:sel_logPrefix];
    }

    else
    {
      v3 = &stru_1F570E008;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v9 = VRTraceErrorLogLevelToCSTR();
      v10 = *MEMORY[0x1E6986650];
      if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v13 = v9;
        v14 = 2080;
        v15 = "[VCRateControlTrafficMetricCollector dealloc]";
        v16 = 1024;
        v17 = 41;
        v18 = 2112;
        v19 = v3;
        v20 = 2048;
        selfCopy = self;
        v6 = " [%s] %s:%d %@(%p) VCRateControlTrafficMetricCollector dealloc";
        v7 = v10;
        v8 = 48;
        goto LABEL_11;
      }
    }
  }

  v11.receiver = self;
  v11.super_class = VCRateControlTrafficMetricCollector;
  [(VCRateControlTrafficMetricCollector *)&v11 dealloc];
}

- (void)stopVCRateControlTrafficMetricCollector
{
  v26 = *MEMORY[0x1E69E9840];
  if (self->_isStopped)
  {
    if (objc_opt_class() != self)
    {
      if (objc_opt_respondsToSelector())
      {
        v3 = [(VCRateControlTrafficMetricCollector *)self performSelector:sel_logPrefix];
      }

      else
      {
        v3 = &stru_1F570E008;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 6)
      {
        v13 = VRTraceErrorLogLevelToCSTR();
        v14 = *MEMORY[0x1E6986650];
        if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
        {
          v16 = 136316162;
          v17 = v13;
          v18 = 2080;
          v19 = "[VCRateControlTrafficMetricCollector stopVCRateControlTrafficMetricCollector]";
          v20 = 1024;
          v21 = 49;
          v22 = 2112;
          v23 = v3;
          v24 = 2048;
          selfCopy2 = self;
          v9 = " [%s] %s:%d %@(%p) VCRateControlTrafficMetricCollector already stopped";
LABEL_26:
          v11 = v14;
          v12 = 48;
          goto LABEL_27;
        }
      }

      return;
    }

    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return;
    }

    v7 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 136315650;
    v17 = v7;
    v18 = 2080;
    v19 = "[VCRateControlTrafficMetricCollector stopVCRateControlTrafficMetricCollector]";
    v20 = 1024;
    v21 = 49;
    v9 = " [%s] %s:%d VCRateControlTrafficMetricCollector already stopped";
LABEL_17:
    v11 = v8;
    v12 = 28;
LABEL_27:
    _os_log_impl(&dword_1DB56E000, v11, OS_LOG_TYPE_DEFAULT, v9, &v16, v12);
    return;
  }

  trafficMetricSource = self->_trafficMetricSource;
  if (trafficMetricSource)
  {
    dispatch_source_cancel(trafficMetricSource);
    v5 = self->_trafficMetricSource;
    if (v5)
    {
      dispatch_release(v5);
      self->_trafficMetricSource = 0;
    }
  }

  self->_trafficMetrics.bytesInFlights = 0;
  self->_trafficMetrics.senderTxBitrate = 0;
  self->_trafficMetrics.receiverTxBitrate = 0;
  self->_isStopped = 1;
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 6)
    {
      return;
    }

    v10 = VRTraceErrorLogLevelToCSTR();
    v8 = *MEMORY[0x1E6986650];
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 136315650;
    v17 = v10;
    v18 = 2080;
    v19 = "[VCRateControlTrafficMetricCollector stopVCRateControlTrafficMetricCollector]";
    v20 = 1024;
    v21 = 58;
    v9 = " [%s] %s:%d VCRateControlTrafficMetricCollector stopped";
    goto LABEL_17;
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [(VCRateControlTrafficMetricCollector *)self performSelector:sel_logPrefix];
  }

  else
  {
    v6 = &stru_1F570E008;
  }

  if (VRTraceGetErrorLogLevelForModule() >= 6)
  {
    v15 = VRTraceErrorLogLevelToCSTR();
    v14 = *MEMORY[0x1E6986650];
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136316162;
      v17 = v15;
      v18 = 2080;
      v19 = "[VCRateControlTrafficMetricCollector stopVCRateControlTrafficMetricCollector]";
      v20 = 1024;
      v21 = 58;
      v22 = 2112;
      v23 = v6;
      v24 = 2048;
      selfCopy2 = self;
      v9 = " [%s] %s:%d %@(%p) VCRateControlTrafficMetricCollector stopped";
      goto LABEL_26;
    }
  }
}

- (void)startVCRateControlTrafficMetricCollector
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)calculateTrafficMetrics
{
  if (objc_opt_class() == self)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      return;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2_0();
LABEL_11:
    _os_log_error_impl(v2, v3, v4, v5, v6, v7);
    return;
  }

  if (objc_opt_respondsToSelector())
  {
    [self performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_40())
    {
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_24();
      v7 = 48;
      goto LABEL_11;
    }
  }
}

- (void)initWithMediaController:(void *)a1 statisticsCollector:(void *)a2 .cold.1(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = a1;
}

- (void)initWithMediaController:(void *)a1 statisticsCollector:(void *)a2 .cold.2(void *a1, void *a2)
{
  if (objc_opt_class() == a1)
  {
    if (VRTraceGetErrorLogLevelForModule() < 3)
    {
      goto LABEL_9;
    }

    VRTraceErrorLogLevelToCSTR();
    if (!OUTLINED_FUNCTION_40())
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_24();
    v9 = 28;
LABEL_11:
    _os_log_error_impl(v4, v5, v6, v7, v8, v9);
    goto LABEL_9;
  }

  if (objc_opt_respondsToSelector())
  {
    [a1 performSelector:sel_logPrefix];
  }

  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (os_log_type_enabled(*MEMORY[0x1E6986650], OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5_4();
      OUTLINED_FUNCTION_8_4();
      goto LABEL_11;
    }
  }

LABEL_9:
  *a2 = a1;
}

@end