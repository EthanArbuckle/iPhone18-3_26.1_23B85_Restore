@interface ASVMemoryLimits
+ (unint64_t)currentMemoryFootprint;
+ (unint64_t)processMemory;
+ (unint64_t)viewerMemoryAvailableForTexturesOnThisDevice;
@end

@implementation ASVMemoryLimits

+ (unint64_t)processMemory
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = [v2 processIdentifier];

  v4 = memorystatus_control();
  if (v4)
  {
    v5 = v4;
    v6 = AssetViewerLogHandleForCategory(1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v9 = v3;
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_241215000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Failed to get memory limit info for pid %d. Errorno: %d, Limits will appear as 0MB and not fatal.\n", buf, 0xEu);
    }
  }

  return 0;
}

+ (unint64_t)viewerMemoryAvailableForTexturesOnThisDevice
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [a1 processMemory];
  v3 = AssetViewerLogHandleForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = v2;
    _os_log_impl(&dword_241215000, v3, OS_LOG_TYPE_DEFAULT, "processMemory for textures is %lu", &v5, 0xCu);
  }

  if (v2 < 0x1F5)
  {
    return 52428800;
  }

  if (v2 < 0x2BD)
  {
    return 157286400;
  }

  if (v2 >= 0x465)
  {
    return +[ASVMemoryLimits viewerMemoryAvailableForTexturesOnHighMemoryDevices];
  }

  return 503316480;
}

+ (unint64_t)currentMemoryFootprint
{
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *task_info_out = 0u;
  v6 = 0u;
  task_info_outCnt = 93;
  v2 = task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt);
  if (!v2)
  {
    return (vcvts_n_f32_u64(v14, 0xAuLL) * 0.00097656);
  }

  NSLog(&cfstr_FiledToGetMemo.isa, v2);
  return 0;
}

@end