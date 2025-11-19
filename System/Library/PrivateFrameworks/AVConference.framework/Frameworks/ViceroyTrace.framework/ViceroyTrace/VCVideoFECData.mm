@interface VCVideoFECData
- (VCVideoFECData)init;
- (void)accumulate:(id)a3;
- (void)dealloc;
- (void)init;
- (void)updateReport:(id)a3 withStreamGroup:(id)a4;
- (void)updateWithPayload:(id)a3;
- (void)updateWithPayload:(id)a3 blockFecLevels:(unsigned int)a4;
@end

@implementation VCVideoFECData

- (VCVideoFECData)init
{
  v5.receiver = self;
  v5.super_class = VCVideoFECData;
  v2 = [(VCVideoFECData *)&v5 init];
  if (!v2)
  {
    [VCVideoFECData init];
LABEL_6:

    return 0;
  }

  v3 = [[VCReportingHistogram alloc] initWithType:58 bucketValues:0];
  v2->_videoTxFecLevel = v3;
  if (!v3)
  {
    [(VCVideoFECData *)v2 init];
    goto LABEL_6;
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCVideoFECData;
  [(VCVideoFECData *)&v3 dealloc];
}

- (void)updateWithPayload:(id)a3 blockFecLevels:(unsigned int)a4
{
  if (a4)
  {
    v6 = 0;
    do
    {
      if ((a4 >> v6))
      {
        [(VCHistogram *)self->_videoTxFecLevel addValue:v6];
      }

      v6 = (v6 + 1);
    }

    while (v6 != 6);
  }
}

- (void)updateWithPayload:(id)a3
{
  v5 = [a3 objectForKeyedSubscript:@"VFEC"];
  if (v5)
  {
    -[VCHistogram addValue:](self->_videoTxFecLevel, "addValue:", [v5 intValue]);
  }

  v6 = [a3 objectForKeyedSubscript:@"AFECL"];
  if (v6)
  {
    v7 = [v6 intValue];

    [(VCVideoFECData *)self updateWithPayload:a3 blockFecLevels:v7];
  }
}

- (void)accumulate:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    videoTxFecLevel = self->_videoTxFecLevel;
    v6 = *(a3 + 1);

    [(VCHistogram *)videoTxFecLevel merge:v6];
  }
}

- (void)updateReport:(id)a3 withStreamGroup:(id)a4
{
  v6 = @"AFECL";
  if (!a4 || (v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AFECL", a4]) != 0)
  {
    v7 = [(VCHistogram *)self->_videoTxFecLevel description];

    [a3 setObject:v7 forKeyedSubscript:v6];
  }
}

- (void)init
{
  v7 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_1();
      _os_log_error_impl(v1, v2, v3, v4, v5, v6);
    }
  }

  v0 = *MEMORY[0x277D85DE8];
}

@end