@interface VCVideoFECData
- (VCVideoFECData)init;
- (void)accumulate:(id)accumulate;
- (void)dealloc;
- (void)init;
- (void)updateReport:(id)report withStreamGroup:(id)group;
- (void)updateWithPayload:(id)payload;
- (void)updateWithPayload:(id)payload blockFecLevels:(unsigned int)levels;
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

- (void)updateWithPayload:(id)payload blockFecLevels:(unsigned int)levels
{
  if (levels)
  {
    v6 = 0;
    do
    {
      if ((levels >> v6))
      {
        [(VCHistogram *)self->_videoTxFecLevel addValue:v6];
      }

      v6 = (v6 + 1);
    }

    while (v6 != 6);
  }
}

- (void)updateWithPayload:(id)payload
{
  v5 = [payload objectForKeyedSubscript:@"VFEC"];
  if (v5)
  {
    -[VCHistogram addValue:](self->_videoTxFecLevel, "addValue:", [v5 intValue]);
  }

  v6 = [payload objectForKeyedSubscript:@"AFECL"];
  if (v6)
  {
    intValue = [v6 intValue];

    [(VCVideoFECData *)self updateWithPayload:payload blockFecLevels:intValue];
  }
}

- (void)accumulate:(id)accumulate
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    videoTxFecLevel = self->_videoTxFecLevel;
    v6 = *(accumulate + 1);

    [(VCHistogram *)videoTxFecLevel merge:v6];
  }
}

- (void)updateReport:(id)report withStreamGroup:(id)group
{
  v6 = @"AFECL";
  if (!group || (v6 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@_%@", @"AFECL", group]) != 0)
  {
    v7 = [(VCHistogram *)self->_videoTxFecLevel description];

    [report setObject:v7 forKeyedSubscript:v6];
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