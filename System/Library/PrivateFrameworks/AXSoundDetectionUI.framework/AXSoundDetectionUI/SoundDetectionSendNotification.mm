@interface SoundDetectionSendNotification
@end

@implementation SoundDetectionSendNotification

id ___SoundDetectionSendNotification_block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"NotifiedDetector";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

void ___SoundDetectionSendNotification_block_invoke_188(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = AXLogUltron();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      ___SoundDetectionSendNotificationForCustomDetector_block_invoke_cold_1();
    }
  }

  else
  {
    v5 = BiomeLibrary();
    v6 = [v5 Accessibility];
    v7 = [v6 SoundDetection];
    v4 = [v7 source];

    v8 = objc_alloc(MEMORY[0x277CF0F80]);
    v9 = [MEMORY[0x277CBEAA8] now];
    v10 = *(a1 + 32);
    v11 = bmTypeForSoundDetectionType();
    v12 = [v8 initWithAbsoluteTimestamp:v9 soundDetectionType:v11 name:0];

    [v4 sendEvent:v12];
  }
}

@end