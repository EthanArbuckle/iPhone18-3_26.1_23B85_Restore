@interface AXSDSoundDetectionGatherFilesAndGenerateRadarForNotificationAt
@end

@implementation AXSDSoundDetectionGatherFilesAndGenerateRadarForNotificationAt

void ___AXSDSoundDetectionGatherFilesAndGenerateRadarForNotificationAt_block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v36 = *(a1 + 32);
  buf[0] = 1;
  v1 = [MEMORY[0x277CCAA00] defaultManager];
  if (([v1 fileExistsAtPath:@"/var/mobile/Library/Accessibility/DataCollection/SoundFiles" isDirectory:buf] & 1) == 0)
  {
    v2 = AXLogUltron();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      ___AXSDSoundDetectionGatherFilesAndGenerateRadarForNotificationAt_block_invoke_cold_1(v2);
    }

    [v1 createDirectoryAtPath:@"/var/mobile/Library/Accessibility/DataCollection/SoundFiles" withIntermediateDirectories:1 attributes:0 error:0];
  }

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [v3 enumeratorAtPath:@"/var/mobile/Library/Accessibility/DataCollection/SoundFiles"];

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [v4 nextObject];
  if (v5)
  {
    v6 = v5;
    do
    {
      v7 = [@"/var/mobile/Library/Accessibility/DataCollection/SoundFiles" stringByAppendingPathComponent:v6];
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v38 = 0;
      v9 = [v8 attributesOfItemAtPath:v7 error:&v38];
      v10 = v38;
      v11 = [v9 fileCreationDate];

      if (v10)
      {
        v12 = AXLogUltron();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v41 = v7;
          v42 = 2112;
          v43 = v10;
          _os_log_error_impl(&dword_23D624000, v12, OS_LOG_TYPE_ERROR, "filesNearestDate: failed to find creation date for file %@. Skipping. error: %@", buf, 0x16u);
        }
      }

      else
      {
        [v11 timeIntervalSinceDate:v36];
        if (fabs(v13) < 15.0)
        {
          [v35 addObject:v7];
        }
      }

      v14 = [v4 nextObject];

      v6 = v14;
    }

    while (v14);
  }

  v32 = objc_opt_new();
  [v32 setScheme:@"tap-to-radar"];
  [v32 setHost:@"new"];
  v15 = MEMORY[0x277CCAD18];
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"AX Sound Recognition False Positive: %@", *(a1 + 40)];
  v37 = [v15 queryItemWithName:@"Title" value:v16];

  v34 = [MEMORY[0x277CCAD18] queryItemWithName:@"Description" value:@"[Add any details about where you were or what you were doing when the false positive occured. Thanks!]"];
  v31 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Performance"];
  v17 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
  v18 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Accessibility Sound Detection"];
  v19 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"1074027"];
  v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:@"All"];
  v21 = MEMORY[0x277CCAD18];
  v22 = [v35 componentsJoinedByString:{@", "}];
  v23 = [v21 queryItemWithName:@"Attachments" value:v22];

  v24 = [MEMORY[0x277CCAD18] queryItemWithName:@"AutoDiagnostics" value:@"0"];
  v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"DeviceClasses" value:{@"iPhone, iPad"}];
  v39[0] = v37;
  v39[1] = v34;
  v39[2] = v17;
  v39[3] = v31;
  v39[4] = v18;
  v39[5] = v19;
  v39[6] = v20;
  v39[7] = v23;
  v26 = v20;
  v39[8] = v24;
  v39[9] = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:10];
  [v32 setQueryItems:v27];

  v28 = [v32 URL];
  v29 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v29 openURL:v28 withOptions:0];

  v30 = *MEMORY[0x277D85DE8];
}

@end