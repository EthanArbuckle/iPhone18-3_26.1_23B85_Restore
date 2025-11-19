@interface AXSDSettings(AXSoundDetectionUIAdditions)
- (BOOL)shouldBeListeningForSoundRecognitionCustomSounds;
- (BOOL)shouldBeListeningForSoundRecognitionSystemSounds;
- (id)decodeKShotDetectors:()AXSoundDetectionUIAdditions;
- (id)decodedKShotDetectors;
- (id)detectorForIdentifier:()AXSoundDetectionUIAdditions;
- (id)encodeKShotDetectors:()AXSoundDetectionUIAdditions;
- (id)kShotSoundRecordingsForDetector:()AXSoundDetectionUIAdditions;
- (uint64_t)_shouldActivateVoiceTriggerSupportForSwitchControl;
- (uint64_t)_shouldActiveVoiceTriggerSupportForAssistiveTouch;
- (uint64_t)deleteModelForDetector:()AXSoundDetectionUIAdditions;
- (uint64_t)deleteTrainingFilesForDetector:()AXSoundDetectionUIAdditions;
- (uint64_t)hasCustomHapticForKshotDetector:()AXSoundDetectionUIAdditions;
- (uint64_t)hasCustomToneForKshotDetector:()AXSoundDetectionUIAdditions;
- (uint64_t)shouldBeListeningForSoundActions;
- (void)addKShotDetector:()AXSoundDetectionUIAdditions;
- (void)deleteRecordingLinksForDetector:()AXSoundDetectionUIAdditions;
- (void)disableDetector:()AXSoundDetectionUIAdditions;
- (void)disableKShotDetector:()AXSoundDetectionUIAdditions;
- (void)editKShotDetectorName:()AXSoundDetectionUIAdditions newName:;
- (void)enableDetector:()AXSoundDetectionUIAdditions;
- (void)encodeAndSaveKShotDetectors:()AXSoundDetectionUIAdditions;
- (void)kShotCategoryForDetectionType:()AXSoundDetectionUIAdditions;
- (void)removeAllKShotDetectors;
- (void)removeKShotDetector:()AXSoundDetectionUIAdditions;
- (void)setDetectorIsEnabled:()AXSoundDetectionUIAdditions isEnabled:;
- (void)setKShotDetectorIsEnabled:()AXSoundDetectionUIAdditions isEnabled:;
- (void)setKShotDetectorModelFailed:()AXSoundDetectionUIAdditions modelFailed:;
- (void)updateKShotDetector:()AXSoundDetectionUIAdditions;
@end

@implementation AXSDSettings(AXSoundDetectionUIAdditions)

- (uint64_t)_shouldActivateVoiceTriggerSupportForSwitchControl
{
  dlerror();
  v0 = abort_report_np();
  return [AXSDSettings(AXSoundDetectionUIAdditions) decodeKShotDetectors:v0];
}

- (uint64_t)_shouldActiveVoiceTriggerSupportForAssistiveTouch
{
  if (!_AXSAssistiveTouchEnabled())
  {
    return 0;
  }

  v0 = [getAXSettingsClass() sharedInstance];
  v1 = [v0 assistiveTouchActionsBySoundAction];
  v2 = [v1 count];

  if (v2 && AXDeviceSupportsOnDeviceEyeTracking())
  {
    v3 = [v0 assistiveTouchMouseOnDeviceEyeTrackingEnabled];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (uint64_t)shouldBeListeningForSoundActions
{
  if ([a1 _shouldActivateVoiceTriggerSupportForSwitchControl] & 1) != 0 || (objc_msgSend(a1, "_shouldActivateVoiceTriggerSupportForVoiceOver") & 1) != 0 || (objc_msgSend(a1, "_shouldActivateVoiceTriggerSupportForSystem"))
  {
    return 1;
  }

  return [a1 _shouldActiveVoiceTriggerSupportForAssistiveTouch];
}

- (BOOL)shouldBeListeningForSoundRecognitionSystemSounds
{
  if ([a1 soundDetectionState] != 2)
  {
    return 0;
  }

  v2 = [a1 enabledSoundDetectionTypes];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)shouldBeListeningForSoundRecognitionCustomSounds
{
  if ([a1 soundDetectionState] != 2)
  {
    return 0;
  }

  v2 = [a1 enabledKShotDetectorIdentifiers];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)addKShotDetector:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 decodedKShotDetectors];
  v7 = [v5 mutableCopy];

  v6 = [v4 identifier];
  [v7 setObject:v4 forKey:v6];

  [a1 encodeAndSaveKShotDetectors:v7];
}

- (void)updateKShotDetector:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 decodedKShotDetectors];
  v7 = [v5 mutableCopy];

  v6 = [v4 identifier];
  [v7 setObject:v4 forKey:v6];

  [a1 encodeAndSaveKShotDetectors:v7];
}

- (void)removeKShotDetector:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 decodedKShotDetectors];
  v7 = [v5 mutableCopy];

  v6 = [v4 identifier];
  [v7 removeObjectForKey:v6];

  [a1 deleteTrainingFilesForDetector:v4];
  [a1 deleteModelForDetector:v4];

  [a1 encodeAndSaveKShotDetectors:v7];
}

- (void)removeAllKShotDetectors
{
  v2 = [MEMORY[0x277CBEAC0] dictionary];
  v3 = [a1 encodeKShotDetectors:v2];

  [a1 setKShotDetectors:v3];
}

- (id)decodedKShotDetectors
{
  v2 = [a1 kShotDetectors];
  v3 = [a1 decodeKShotDetectors:v2];

  return v3;
}

- (void)enableDetector:()AXSoundDetectionUIAdditions
{
  v5 = a3;
  if ([v5 isCustom])
  {
    [a1 setKShotDetectorIsEnabled:v5 isEnabled:1];
  }

  else
  {
    v4 = [v5 identifier];

    [a1 addSoundDetectionType:v4];
    v5 = v4;
  }
}

- (void)disableDetector:()AXSoundDetectionUIAdditions
{
  v5 = a3;
  if ([v5 isCustom])
  {
    [a1 setKShotDetectorIsEnabled:v5 isEnabled:1];
  }

  else
  {
    v4 = [v5 identifier];

    [a1 addSoundDetectionType:v4];
    v5 = v4;
  }
}

- (void)setDetectorIsEnabled:()AXSoundDetectionUIAdditions isEnabled:
{
  v7 = a3;
  if ([v7 isCustom])
  {
    [a1 setKShotDetectorIsEnabled:v7 isEnabled:a4];
  }

  else
  {
    v6 = [v7 identifier];
    if (a4)
    {
      [a1 addSoundDetectionType:v6];
    }

    else
    {
      [a1 removeSoundDetectionType:v6];
    }
  }
}

- (void)setKShotDetectorIsEnabled:()AXSoundDetectionUIAdditions isEnabled:
{
  v6 = a3;
  v7 = [a1 enabledKShotDetectorIdentifiers];
  v9 = [v7 mutableCopy];

  v8 = [v6 identifier];

  if (a4)
  {
    [v9 addObject:v8];
  }

  else
  {
    [v9 removeObject:v8];
  }

  [a1 setEnabledKShotDetectorIdentifiers:v9];
}

- (void)setKShotDetectorModelFailed:()AXSoundDetectionUIAdditions modelFailed:
{
  v6 = a3;
  v7 = [a1 decodedKShotDetectors];
  v10 = [v7 mutableCopy];

  v8 = [v6 identifier];

  v9 = [v10 objectForKey:v8];
  [v9 setModelFailed:a4];

  [a1 encodeAndSaveKShotDetectors:v10];
}

- (void)editKShotDetectorName:()AXSoundDetectionUIAdditions newName:
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 decodedKShotDetectors];
  v11 = [v8 mutableCopy];

  v9 = [v7 identifier];

  v10 = [v11 objectForKey:v9];
  [v10 setName:v6];

  [a1 encodeAndSaveKShotDetectors:v11];
}

- (id)decodeKShotDetectors:()AXSoundDetectionUIAdditions
{
  v21[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEA90] data];

  if (v4 == v3)
  {
    v15 = [MEMORY[0x277CBEAC0] dictionary];
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v21[2] = objc_opt_class();
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:3];
    v7 = [v5 initWithArray:v6];

    v8 = objc_alloc(MEMORY[0x277CBEB98]);
    v20 = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    v10 = [v8 initWithArray:v9];

    v19 = 0;
    v11 = [MEMORY[0x277CCAAC8] unarchivedDictionaryWithKeysOfClasses:v7 objectsOfClasses:v10 fromData:v3 error:&v19];
    v12 = v19;
    v13 = v12;
    if (v11)
    {
      v14 = v11;
    }

    else
    {
      if (v12)
      {
        v16 = AXLogUltron();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [AXSDSettings(AXSoundDetectionUIAdditions) decodeKShotDetectors:];
        }
      }

      v14 = [MEMORY[0x277CBEAC0] dictionary];
    }

    v15 = v14;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)encodeKShotDetectors:()AXSoundDetectionUIAdditions
{
  v7 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v7];
  v4 = v7;
  if (v4)
  {
    v5 = AXLogUltron();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [AXSDSettings(AXSoundDetectionUIAdditions) encodeKShotDetectors:];
    }
  }

  return v3;
}

- (void)encodeAndSaveKShotDetectors:()AXSoundDetectionUIAdditions
{
  v2 = [a1 encodeKShotDetectors:?];
  [a1 setKShotDetectors:v2];
}

- (id)kShotSoundRecordingsForDetector:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 kShotSoundRecordings];
  v6 = [v4 identifier];

  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] array];
  }

  v9 = v8;

  return v9;
}

- (void)kShotCategoryForDetectionType:()AXSoundDetectionUIAdditions
{
  v3 = a3;
  if ([v3 isEqualToString:*MEMORY[0x277CE6F00]] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE6F10]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE6F08]) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CE6F48]))
  {
    v4 = MEMORY[0x277CE6EA8];
  }

  else
  {
    v8 = [v3 isEqualToString:*MEMORY[0x277CE6F50]];
    v4 = MEMORY[0x277CE6E98];
    if ((v8 & 1) == 0 && ![v3 isEqualToString:*MEMORY[0x277CE6F88]])
    {
      v4 = MEMORY[0x277CE6EB0];
    }
  }

  v5 = *v4;
  v6 = v5;

  return v5;
}

- (id)detectorForIdentifier:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 decodedKShotDetectors];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (uint64_t)hasCustomToneForKshotDetector:()AXSoundDetectionUIAdditions
{
  v3 = [a3 identifier];
  if (v3)
  {
    v4 = [MEMORY[0x277D71F78] sharedToneManager];
    v5 = [v4 defaultToneIdentifierForAlertType:29 topic:v3];

    v6 = [MEMORY[0x277D71F78] sharedToneManager];
    v7 = [v6 currentToneIdentifierForAlertType:29 topic:v3];

    v8 = [v7 lowercaseString];
    v9 = [v5 lowercaseString];
    v10 = [v8 isEqualToString:v9] ^ 1;
  }

  else
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXSDSettings(AXSoundDetectionUIAdditions) hasCustomToneForKshotDetector:];
    }

    v10 = 0;
  }

  return v10;
}

- (uint64_t)hasCustomHapticForKshotDetector:()AXSoundDetectionUIAdditions
{
  v3 = [a3 identifier];
  if (v3)
  {
    v4 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v5 = [v4 defaultVibrationIdentifierForAlertType:29 topic:v3];

    v6 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v7 = [v6 currentVibrationIdentifierForAlertType:29 topic:v3];

    v8 = [v7 lowercaseString];
    v9 = [v5 lowercaseString];
    v10 = [v8 isEqualToString:v9] ^ 1;
  }

  else
  {
    v11 = AXLogUltron();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [AXSDSettings(AXSoundDetectionUIAdditions) hasCustomHapticForKshotDetector:];
    }

    v10 = 0;
  }

  return v10;
}

- (void)deleteRecordingLinksForDetector:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 kShotSoundRecordings];
  v8 = [v5 mutableCopy];

  v6 = [MEMORY[0x277CBEA60] array];
  v7 = [v4 identifier];

  [v8 setObject:v6 forKey:v7];
  [a1 setKShotSoundRecordings:v8];
}

- (uint64_t)deleteTrainingFilesForDetector:()AXSoundDetectionUIAdditions
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/var/mobile/Library/Accessibility/SoundDetectionKShot/TrainingFiles"];
  v6 = [v4 identifier];
  v7 = [v5 URLByAppendingPathComponent:v6];

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v21 = 0;
    v11 = [v8 removeItemAtURL:v7 error:&v21];
    v12 = v21;
    v13 = v12;
    if (v11)
    {
      [a1 deleteRecordingLinksForDetector:v4];
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v4 name];
        *buf = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "Deleted training files at path: %@ for detector: %@", buf, 0x16u);
      }

      v16 = 1;
    }

    else
    {
      if (!v12)
      {
        v16 = 1;
        goto LABEL_13;
      }

      v18 = AXLogUltron();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXSDSettings(AXSoundDetectionUIAdditions) deleteTrainingFilesForDetector:v4];
      }

      v16 = 0;
    }
  }

  else
  {
    v13 = AXLogUltron();
    v16 = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [v4 name];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "No need to delete training files for detector: %@, since the directory does not exist", buf, 0xCu);
    }
  }

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)disableKShotDetector:()AXSoundDetectionUIAdditions
{
  v4 = a3;
  v5 = [a1 enabledKShotDetectorIdentifiers];
  v6 = [v5 mutableCopy];

  [v6 removeObject:v4];
  [a1 setEnabledKShotDetectorIdentifiers:v6];
}

- (uint64_t)deleteModelForDetector:()AXSoundDetectionUIAdditions
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*MEMORY[0x277CE6ED0]];
  v5 = [v3 identifier];
  v6 = [v5 stringByAppendingString:@".mlmodel"];

  v7 = [v4 URLByAppendingPathComponent:v6];
  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [v7 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v21 = 0;
    v11 = [v8 removeItemAtURL:v7 error:&v21];
    v12 = v21;
    v13 = v12;
    if (v11)
    {
      v14 = AXLogUltron();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [v3 name];
        *buf = 138412546;
        v23 = v4;
        v24 = 2112;
        v25 = v15;
        _os_log_impl(&dword_23D62D000, v14, OS_LOG_TYPE_INFO, "Deleted model at path: %@ for detector: %@", buf, 0x16u);
      }

      v16 = 1;
    }

    else
    {
      if (!v12)
      {
        v16 = 1;
        goto LABEL_13;
      }

      v18 = AXLogUltron();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [AXSDSettings(AXSoundDetectionUIAdditions) deleteModelForDetector:v3];
      }

      v16 = 0;
    }
  }

  else
  {
    v13 = AXLogUltron();
    v16 = 1;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v17 = [v3 name];
      *buf = 138412290;
      v23 = v17;
      _os_log_impl(&dword_23D62D000, v13, OS_LOG_TYPE_INFO, "No need to delete model for detector: %@, since the model does not exist", buf, 0xCu);
    }
  }

LABEL_13:
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)decodeKShotDetectors:()AXSoundDetectionUIAdditions .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)encodeKShotDetectors:()AXSoundDetectionUIAdditions .cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)deleteTrainingFilesForDetector:()AXSoundDetectionUIAdditions .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "Error deleting training directory for detector: %@ error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)deleteModelForDetector:()AXSoundDetectionUIAdditions .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_3(&dword_23D62D000, v2, v3, "Error deleting model for detector: %@ error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end