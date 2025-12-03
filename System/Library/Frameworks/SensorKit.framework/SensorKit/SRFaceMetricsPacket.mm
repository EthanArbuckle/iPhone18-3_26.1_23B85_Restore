@interface SRFaceMetricsPacket
+ (id)packetWithData:(id)data;
+ (void)initialize;
@end

@implementation SRFaceMetricsPacket

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _MergedGlobals_4 = os_log_create("com.apple.SensorKit", "SRLogFaceMetricsPacket");
  }
}

+ (id)packetWithData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  if ([data length] == 2348)
  {
    v4 = SRFaceMetricsPacketV0;
LABEL_13:
    bytes = [data bytes];
    v6 = *MEMORY[0x1E69E9840];

    return [(__objc2_class *)v4 packetWithHAFacialMetricsPacket:bytes];
  }

  if ([data length] == 2352)
  {
    v4 = SRFaceMetricsPacketV1;
    goto LABEL_13;
  }

  if ([data length] == 2384)
  {
    v4 = SRFaceMetricsPacketV2;
    goto LABEL_13;
  }

  if ([data length] == 368)
  {
    v4 = SRFaceMetricsPacketV3;
    goto LABEL_13;
  }

  if ([data length] == 424)
  {
    v4 = SRFaceMetricsPacketV4;
    goto LABEL_13;
  }

  if ([data length] == 436)
  {
    v4 = SRFaceMetricsPacketV5;
    goto LABEL_13;
  }

  v8 = _MergedGlobals_4;
  if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
  {
    v10 = 134217984;
    v11 = [data length];
    _os_log_fault_impl(&dword_1C914D000, v8, OS_LOG_TYPE_FAULT, "Failed to find initializer to create SRFaceMetricsPacket, data length:%lu", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

@end