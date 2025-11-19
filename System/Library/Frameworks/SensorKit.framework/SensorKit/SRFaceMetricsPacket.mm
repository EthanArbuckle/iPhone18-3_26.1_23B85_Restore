@interface SRFaceMetricsPacket
+ (id)packetWithData:(id)a3;
+ (void)initialize;
@end

@implementation SRFaceMetricsPacket

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _MergedGlobals_4 = os_log_create("com.apple.SensorKit", "SRLogFaceMetricsPacket");
  }
}

+ (id)packetWithData:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if ([a3 length] == 2348)
  {
    v4 = SRFaceMetricsPacketV0;
LABEL_13:
    v5 = [a3 bytes];
    v6 = *MEMORY[0x1E69E9840];

    return [(__objc2_class *)v4 packetWithHAFacialMetricsPacket:v5];
  }

  if ([a3 length] == 2352)
  {
    v4 = SRFaceMetricsPacketV1;
    goto LABEL_13;
  }

  if ([a3 length] == 2384)
  {
    v4 = SRFaceMetricsPacketV2;
    goto LABEL_13;
  }

  if ([a3 length] == 368)
  {
    v4 = SRFaceMetricsPacketV3;
    goto LABEL_13;
  }

  if ([a3 length] == 424)
  {
    v4 = SRFaceMetricsPacketV4;
    goto LABEL_13;
  }

  if ([a3 length] == 436)
  {
    v4 = SRFaceMetricsPacketV5;
    goto LABEL_13;
  }

  v8 = _MergedGlobals_4;
  if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
  {
    v10 = 134217984;
    v11 = [a3 length];
    _os_log_fault_impl(&dword_1C914D000, v8, OS_LOG_TYPE_FAULT, "Failed to find initializer to create SRFaceMetricsPacket, data length:%lu", &v10, 0xCu);
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

@end