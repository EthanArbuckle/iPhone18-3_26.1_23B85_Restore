@interface AXTapticChimeAsset
+ (id)_assetPathForChimeSoundType:(int64_t)a3 fileName:(id)a4;
+ (id)hourAssetForType:(int64_t)a3 hour:(unint64_t)a4;
+ (id)quarterHourAssetForType:(int64_t)a3 minute:(unint64_t)a4;
- (NSArray)hapticAtomEntries;
- (id)_initWithChimeSoundType:(int64_t)a3 audioFilePath:(id)a4 hapticsFilePath:(id)a5;
- (id)description;
- (unsigned)createSystemSoundIDForStartTime:(double)a3;
@end

@implementation AXTapticChimeAsset

+ (id)_assetPathForChimeSoundType:(int64_t)a3 fileName:(id)a4
{
  v6 = a4;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__AXTapticChimeAsset__assetPathForChimeSoundType_fileName___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (_assetPathForChimeSoundType_fileName__onceToken != -1)
    {
      dispatch_once(&_assetPathForChimeSoundType_fileName__onceToken, block);
    }

    if ((a3 - 1) > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = [*off_278BDFF80[a3 - 1] stringByAppendingPathComponent:off_278BDFF98[a3 - 1]];
    }

    v8 = [v7 stringByAppendingPathComponent:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __59__AXTapticChimeAsset__assetPathForChimeSoundType_fileName___block_invoke(uint64_t a1)
{
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v1 = [v7 bundlePath];
  v2 = [v1 stringByAppendingPathComponent:@"ChimeAssets"];
  v3 = _assetPathForChimeSoundType_fileName__baseChimeAssetsDirectory;
  _assetPathForChimeSoundType_fileName__baseChimeAssetsDirectory = v2;

  v4 = [v7 bundlePath];
  v5 = [v4 stringByAppendingPathComponent:@"ChimeAssets-unity25"];
  v6 = _assetPathForChimeSoundType_fileName__baseChimeAssetsDirectoryUnity25;
  _assetPathForChimeSoundType_fileName__baseChimeAssetsDirectoryUnity25 = v5;
}

+ (id)hourAssetForType:(int64_t)a3 hour:(unint64_t)a4
{
  if (a3 == 3)
  {
    v10 = a4 % 0xC;
    if (a4 % 0xC)
    {
      v10 = v10;
    }

    else
    {
      v10 = 12;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"UnityHC%02d.caf", v10];
    [MEMORY[0x277CCACA8] stringWithFormat:@"UnityHC.plist", v18];
    goto LABEL_17;
  }

  if (a3 == 2)
  {
    if (a4 % 0xC)
    {
      v9 = a4 % 0xC;
    }

    else
    {
      v9 = 12;
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Bird%02d.caf", v9];
    [MEMORY[0x277CCACA8] stringWithFormat:@"Bird%02d.plist", v9];
    v7 = LABEL_17:;
    goto LABEL_18;
  }

  if (a3 == 1)
  {
    v7 = @"Bell.plist";
  }

  else
  {
    v7 = 0;
  }

  if (a3 == 1)
  {
    v8 = @"Bell.caf";
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  v11 = [a1 _assetPathForChimeSoundType:a3 fileName:v8];
  v12 = [a1 _assetPathForChimeSoundType:a3 fileName:v7];
  v13 = v12;
  if (v11)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = AXLogTapticTime();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(AXTapticChimeAsset *)a3 hourAssetForType:a4 hour:v15];
    }

    v16 = 0;
  }

  else
  {
    v16 = [[AXTapticChimeAsset alloc] _initWithChimeSoundType:a3 audioFilePath:v11 hapticsFilePath:v12];
  }

  return v16;
}

+ (id)quarterHourAssetForType:(int64_t)a3 minute:(unint64_t)a4
{
  v6 = a3 - 1;
  if ((a3 - 1) > 2)
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v7 = off_278BDFFB0[v6];
    v8 = off_278BDFFC8[v6];
  }

  v9 = [a1 _assetPathForChimeSoundType:a3 fileName:v8];
  v10 = [a1 _assetPathForChimeSoundType:a3 fileName:v7];
  v11 = v10;
  if (v9 && v10)
  {
    v12 = [[AXTapticChimeAsset alloc] _initWithChimeSoundType:a3 audioFilePath:v9 hapticsFilePath:v10];
  }

  else
  {
    v13 = AXLogTapticTime();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [AXTapticChimeAsset quarterHourAssetForType:a3 minute:v13];
    }

    v12 = 0;
  }

  return v12;
}

- (id)_initWithChimeSoundType:(int64_t)a3 audioFilePath:(id)a4 hapticsFilePath:(id)a5
{
  v8 = a4;
  v9 = a5;
  v20.receiver = self;
  v20.super_class = AXTapticChimeAsset;
  v10 = [(AXTapticChimeAsset *)&v20 init];
  AXSVoiceOverTapticChimesVolumeForSoundType();
  v10->_volume = v11;
  objc_storeStrong(&v10->_audioFilePath, a4);
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v9];
  hapticDictionary = v10->_hapticDictionary;
  v10->_hapticDictionary = v12;

  if (!v10->_hapticDictionary)
  {
    v14 = AXLogTapticTime();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [AXTapticChimeAsset _initWithChimeSoundType:v9 audioFilePath:v14 hapticsFilePath:?];
    }
  }

  v10->_prePlayTimeInterval = 0.0;
  v15 = [(AXTapticChimeAsset *)v10 hapticAtomEntries];
  v16 = [v15 lastObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = [v16 objectForKey:@"StartTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v17 doubleValue];
      v10->_prePlayTimeInterval = v18;
    }
  }

  return v10;
}

- (NSArray)hapticAtomEntries
{
  v2 = [(AXTapticChimeAsset *)self hapticDictionary];
  v3 = [v2 objectForKeyedSubscript:@"Atoms"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)createSystemSoundIDForStartTime:(double)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(AXTapticChimeAsset *)self hapticAtomEntries];
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(*(&v22 + 1) + 8 * i)];
        v12 = [v11 objectForKeyedSubscript:@"StartTime"];
        v13 = MEMORY[0x277CCABB0];
        [v12 doubleValue];
        v15 = [v13 numberWithDouble:v14 + a3];
        [v11 setObject:v15 forKeyedSubscript:@"StartTime"];

        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v8);
  }

  v16 = MEMORY[0x277CBEB38];
  v17 = [(AXTapticChimeAsset *)self hapticDictionary];
  v18 = [v16 dictionaryWithDictionary:v17];

  [v18 setObject:v5 forKeyedSubscript:@"Atoms"];
  v30 = *MEMORY[0x277CBA630];
  v31 = v18;
  [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  AudioServicesCreateSystemSoundIDWithOptions();
  v19 = AXLogTapticTime();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v27 = 0;
    v28 = 2112;
    v29 = v18;
    _os_log_impl(&dword_23D6AA000, v19, OS_LOG_TYPE_INFO, "created system sound id: %u, with haptic dictionary: %@", buf, 0x12u);
  }

  v20 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AXTapticChimeAsset *)self audioFilePath];
  [(AXTapticChimeAsset *)self volume];
  v8 = v7;
  [(AXTapticChimeAsset *)self prePlayTimeInterval];
  v10 = v9;
  v11 = [(AXTapticChimeAsset *)self hapticDictionary];
  v12 = [v3 stringWithFormat:@"<%@: %p audioFilePath = %@, volume = %f, prePlayTimeInterval = %f hapticDictionary = %@>", v5, self, v6, *&v8, v10, v11];;

  return v12;
}

+ (void)hourAssetForType:(os_log_t)log hour:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a2;
  _os_log_fault_impl(&dword_23D6AA000, log, OS_LOG_TYPE_FAULT, "failed to find asset for sound type: %li, hour: %lu", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)quarterHourAssetForType:(uint64_t)a1 minute:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_fault_impl(&dword_23D6AA000, a2, OS_LOG_TYPE_FAULT, "failed to find quarter hour asset for sound type: %li", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_initWithChimeSoundType:(uint64_t)a1 audioFilePath:(NSObject *)a2 hapticsFilePath:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_23D6AA000, a2, OS_LOG_TYPE_FAULT, "empty haptic dictionary at path: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end