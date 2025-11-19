@interface SoundDetectionSendNotificationForCustomDetector
@end

@implementation SoundDetectionSendNotificationForCustomDetector

void ___SoundDetectionSendNotificationForCustomDetector_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = AXLogUltron();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      ___SoundDetectionSendNotificationForCustomDetector_block_invoke_cold_1();
    }
  }
}

void ___SoundDetectionSendNotificationForCustomDetector_block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_23D62D000, v0, v1, "Unable to send notification: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end