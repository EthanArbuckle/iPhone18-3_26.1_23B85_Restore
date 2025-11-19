@interface AXSDSettings
+ (id)sharedInstance;
+ (id)stringForSoundDetectionState:(int64_t)a3;
- (BOOL)hasCustomHapticForDetector:(id)a3;
- (BOOL)hasCustomToneForDetector:(id)a3;
- (BOOL)hasValidCustomDetector;
- (NSArray)enabledKShotDetectorIdentifiers;
- (NSArray)enabledSoundDetectionTypes;
- (NSArray)latestSettingsEvents;
- (NSArray)latestSettingsEventsDictionaries;
- (NSArray)supportedSoundDetectionTypes;
- (NSData)kShotDetectors;
- (NSMutableDictionary)kShotSoundRecordings;
- (NSMutableDictionary)soundDetectionSnoozeDictionary;
- (NSString)pipedInFile;
- (NSString)retrainModelIdentifier;
- (id)keysMonitoredForUpdates;
- (id)preferenceKeyForSelector:(SEL)a3;
- (id)sortedSupportedSoundDetectionTypes;
- (id)soundAlertTopicForSoundDetectionType:(id)a3;
- (int64_t)soundDetectionState;
- (void)_setSoundDetectionState:(int64_t)a3;
- (void)addSnoozeDateToSnoozeDictionary:(id)a3 forKey:(id)a4;
- (void)addSoundDetectionType:(id)a3;
- (void)logMessage:(id)a3;
- (void)pipeFile:(id)a3;
- (void)registerSettingsEvent:(id)a3;
- (void)removeAllSoundDetectionTypes;
- (void)removeSoundDetectionType:(id)a3;
- (void)retrainModelWithIdentifier:(id)a3;
- (void)setLatestSettingsEvents:(id)a3;
- (void)setSoundDetectionKShotListeningState:(int64_t)a3;
- (void)setSoundDetectionState:(int64_t)a3;
- (void)setSoundDetectionState:(int64_t)a3 source:(id)a4;
@end

@implementation AXSDSettings

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXSDSettings sharedInstance];
  }

  v3 = sharedInstance_Settings;

  return v3;
}

uint64_t __30__AXSDSettings_sharedInstance__block_invoke()
{
  sharedInstance_Settings = objc_alloc_init(AXSDSettings);

  return MEMORY[0x2821F96F8]();
}

- (id)preferenceKeyForSelector:(SEL)a3
{
  if (preferenceKeyForSelector__onceToken != -1)
  {
    [AXSDSettings preferenceKeyForSelector:];
  }

  v5 = preferenceKeyForSelector__SelectorMap;
  v6 = NSStringFromSelector(a3);
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = AXSDSettings;
    v8 = [(HCSettings *)&v11 preferenceKeyForSelector:a3];
  }

  v9 = v8;

  return v9;
}

void __41__AXSDSettings_preferenceKeyForSelector___block_invoke()
{
  v14 = objc_alloc(MEMORY[0x277CBEAC0]);
  v19 = NSStringFromSelector(sel_ultronIsRunning);
  v13 = NSStringFromSelector(sel_ultronSupportEnabled);
  v18 = NSStringFromSelector(sel_soundDetectionState);
  v17 = NSStringFromSelector(sel_enabledSoundDetectionTypes);
  v16 = NSStringFromSelector(sel_soundDetectionSnoozeDictionary);
  v15 = NSStringFromSelector(sel_supportedSoundDetectionTypes);
  v12 = NSStringFromSelector(sel_kShotDetectors);
  v11 = NSStringFromSelector(sel_kShotSoundRecordings);
  v0 = NSStringFromSelector(sel_enabledKShotDetectorIdentifiers);
  v1 = NSStringFromSelector(sel_soundDetectionKShotListeningState);
  v10 = NSStringFromSelector(sel_kShotShouldSaveCurrentSound);
  v2 = NSStringFromSelector(sel_isActivelyTrainingAKShotModel);
  v3 = NSStringFromSelector(sel_micDisabled);
  v4 = NSStringFromSelector(sel_pipedInFile);
  v5 = NSStringFromSelector(sel_retrainModelIdentifier);
  v6 = NSStringFromSelector(sel_forceMedinaSupport);
  v7 = NSStringFromSelector(sel_latestSettingsEventsDictionaries);
  v8 = [v14 initWithObjectsAndKeys:{@"AXSUltronV2RunningStatus", v19, @"AXSUltronV2Enabled", v13, @"AXSEnabledSoundDetectionState", v18, @"AXSEnabledSoundDetectionTypes", v17, @"AXSSoundDetectionSnoozeDictionary", v16, @"AXSSoundDetectionSupportedTypes", v15, @"AXSSoundDetectionKShotDetectors", v12, @"AXSSoundDetectionKShotRecordings", v11, @"AXSSoundDetectionKShotEnabledDetectorIdentifiers", v0, @"AXSSoundDetectionKShotListeningStateIdentifier", v1, @"AXSSoundDetectionKShotShouldSaveCurrentSoundIdentifier", v10, @"AXSSoundDetectionKShotisActivelyTrainingAKShotModelIdentifier", v2, @"AXSSoundDetectionMicDisabled", v3, @"AXSSoundDetectionPipedInFile", v4, @"AXSSoundDetectionRetrainModelIdentifier", v5, @"AXSSoundDetectionMedinaSupportForced", v6, @"AXSSoundDetectionLatestSettingsEvents", v7, 0}];
  v9 = preferenceKeyForSelector__SelectorMap;
  preferenceKeyForSelector__SelectorMap = v8;
}

- (void)_setSoundDetectionState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:@"AXSEnabledSoundDetectionState"];
}

- (NSArray)enabledSoundDetectionTypes
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSEnabledSoundDetectionTypes" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSMutableDictionary)soundDetectionSnoozeDictionary
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionary];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionSnoozeDictionary" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSArray)supportedSoundDetectionTypes
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionSupportedTypes" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSData)kShotDetectors
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA90] data];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionKShotDetectors" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSMutableDictionary)kShotSoundRecordings
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEAC0] dictionary];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionKShotRecordings" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSArray)enabledKShotDetectorIdentifiers
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionKShotEnabledDetectorIdentifiers" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (void)setSoundDetectionKShotListeningState:(int64_t)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(HCSettings *)self setValue:v4 forPreferenceKey:@"AXSSoundDetectionKShotListeningStateIdentifier"];
}

- (NSString)pipedInFile
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CCACA8] string];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionPipedInFile" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSString)retrainModelIdentifier
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CCACA8] string];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionRetrainModelIdentifier" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (NSArray)latestSettingsEventsDictionaries
{
  v3 = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionLatestSettingsEvents" withClass:v3 andDefaultValue:v4];

  return v5;
}

- (int64_t)soundDetectionState
{
  if (_AXSClarityBoardEnabled())
  {
    return 0;
  }

  return [(AXSDSettings *)self _soundDetectionState];
}

- (void)setSoundDetectionState:(int64_t)a3
{
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [AXSDSettings setSoundDetectionState:v5];
  }

  [(AXSDSettings *)self setSoundDetectionState:a3 source:@"Unknown"];
}

- (void)setSoundDetectionState:(int64_t)a3 source:(id)a4
{
  v6 = a4;
  [(AXSDSettings *)self _setSoundDetectionState:a3];
  v7 = [[AXSDSettingsEvent alloc] initWithState:a3 source:v6];

  [(AXSDSettings *)self registerSettingsEvent:v7];
}

- (void)addSoundDetectionType:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [(AXSDSettings *)self enabledSoundDetectionTypes];
  v7 = [v6 mutableCopy];
  v9 = [v4 setWithArray:v7];

  [v9 addObject:v5];
  v8 = [v9 allObjects];
  [(AXSDSettings *)self setEnabledSoundDetectionTypes:v8];
}

- (void)removeSoundDetectionType:(id)a3
{
  v4 = MEMORY[0x277CBEB58];
  v5 = a3;
  v6 = [(AXSDSettings *)self enabledSoundDetectionTypes];
  v7 = [v6 mutableCopy];
  v9 = [v4 setWithArray:v7];

  [v9 removeObject:v5];
  v8 = [v9 allObjects];
  [(AXSDSettings *)self setEnabledSoundDetectionTypes:v8];
}

- (void)removeAllSoundDetectionTypes
{
  v3 = [MEMORY[0x277CBEA60] array];
  [(AXSDSettings *)self setEnabledSoundDetectionTypes:v3];
}

- (void)addSnoozeDateToSnoozeDictionary:(id)a3 forKey:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = [(AXSDSettings *)self soundDetectionSnoozeDictionary];
  v8 = [v7 mutableCopy];

  v9 = [v8 objectForKey:v6];
  if (v9)
  {
    v10 = [v12 laterDate:v9];

    v11 = v10;
  }

  else
  {
    v11 = v12;
  }

  v13 = v11;
  [v8 setObject:v11 forKey:v6];
  [(AXSDSettings *)self setSoundDetectionSnoozeDictionary:v8];
}

- (id)soundAlertTopicForSoundDetectionType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:AXSDSoundDetectionTypeApplianceBeeps] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXSDSoundDetectionTypeApplianceBuzzes) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", AXSDSoundDetectionTypeApplianceBellDings))
  {
    v4 = MEMORY[0x277D71FF0];
LABEL_5:
    v5 = *v4;
    goto LABEL_6;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDistressedBaby])
  {
    v4 = MEMORY[0x277D71FF8];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeCarHorns])
  {
    v4 = MEMORY[0x277D72000];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeCatMeows])
  {
    v4 = MEMORY[0x277D72008];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeCough])
  {
    v4 = MEMORY[0x277D72010];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDogBarks])
  {
    v4 = MEMORY[0x277D72018];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDoorbells])
  {
    v4 = MEMORY[0x277D72020];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeDoorKnocks])
  {
    v4 = MEMORY[0x277D72028];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeFireAlarms])
  {
    v4 = MEMORY[0x277D72030];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypePersonShouting])
  {
    v4 = MEMORY[0x277D72038];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeSirenAlarms])
  {
    v4 = MEMORY[0x277D72040];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeSmokeAlarms])
  {
    v4 = MEMORY[0x277D72048];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeWaterRunning])
  {
    v4 = MEMORY[0x277D72050];
    goto LABEL_5;
  }

  if ([v3 isEqualToString:AXSDSoundDetectionTypeGlassBreaking])
  {
    v5 = @"TLAlertTopicSoundRecognitionGlassBreaking";
  }

  else if ([v3 isEqualToString:AXSDSoundDetectionTypeKettle])
  {
    v5 = @"TLAlertTopicSoundRecognitionKettle";
  }

  else
  {
    v5 = 0;
  }

LABEL_6:

  return v5;
}

- (BOOL)hasValidCustomDetector
{
  v2 = [(AXSDSettings *)self enabledKShotDetectorIdentifiers];
  v3 = [v2 count] != 0;

  return v3;
}

+ (id)stringForSoundDetectionState:(int64_t)a3
{
  v3 = @"Off";
  if (a3 == 2)
  {
    v3 = @"Running";
  }

  if (a3 == 1)
  {
    return @"Available";
  }

  else
  {
    return v3;
  }
}

- (id)sortedSupportedSoundDetectionTypes
{
  v3 = [(AXSDSettings *)self supportedSoundDetectionTypes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__AXSDSettings_sortedSupportedSoundDetectionTypes__block_invoke;
  v6[3] = &unk_278BDC400;
  v6[4] = self;
  v4 = [v3 sortedArrayUsingComparator:v6];

  return v4;
}

uint64_t __50__AXSDSettings_sortedSupportedSoundDetectionTypes__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 localizedNameForSoundDetectionType:a2];
  v8 = [*(a1 + 32) localizedNameForSoundDetectionType:v6];

  v9 = [v7 localizedCompare:v8];
  return v9;
}

- (BOOL)hasCustomToneForDetector:(id)a3
{
  v3 = [(AXSDSettings *)self soundAlertTopicForSoundDetectionType:a3];
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
      [AXSDSettings hasCustomToneForDetector:v11];
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)hasCustomHapticForDetector:(id)a3
{
  v3 = [(AXSDSettings *)self soundAlertTopicForSoundDetectionType:a3];
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
      [AXSDSettings hasCustomHapticForDetector:v11];
    }

    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)pipeFile:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 absoluteString];
  [(AXSDSettings *)self setPipedInFile:v5];

  v6 = AXLogUltron();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(AXSDSettings *)self pipedInFile];
    v9 = 138412546;
    v10 = v4;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_23D624000, v6, OS_LOG_TYPE_INFO, "Setting pipe file to %@ -> %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrainModelWithIdentifier:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(AXSDSettings *)self setRetrainModelIdentifier:v4];
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = [(AXSDSettings *)self retrainModelIdentifier];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_23D624000, v5, OS_LOG_TYPE_INFO, "Setting model to retrain to %@ -> %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSArray)latestSettingsEvents
{
  v2 = [(AXSDSettings *)self latestSettingsEventsDictionaries];
  v3 = [v2 ax_mappedArrayUsingBlock:&__block_literal_global_119];

  return v3;
}

AXSDSettingsEvent *__36__AXSDSettings_latestSettingsEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AXSDSettingsEvent alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (void)setLatestSettingsEvents:(id)a3
{
  v4 = [a3 ax_mappedArrayUsingBlock:&__block_literal_global_122];
  [(AXSDSettings *)self setLatestSettingsEventsDictionaries:v4];
}

- (void)registerSettingsEvent:(id)a3
{
  v4 = a3;
  v5 = [(AXSDSettings *)self latestSettingsEvents];
  v7 = [v5 mutableCopy];

  [v7 addObject:v4];
  v6 = [v7 count];
  if (v6 >= 0x15)
  {
    [v7 removeObjectsInRange:{0, v6 - 20}];
  }

  [(AXSDSettings *)self setLatestSettingsEvents:v7];
}

- (id)keysMonitoredForUpdates
{
  if (keysMonitoredForUpdates_onceToken != -1)
  {
    [AXSDSettings keysMonitoredForUpdates];
  }

  v3 = keysMonitoredForUpdates_KeysMonitoredForUpdates;

  return v3;
}

uint64_t __39__AXSDSettings_keysMonitoredForUpdates__block_invoke()
{
  keysMonitoredForUpdates_KeysMonitoredForUpdates = [MEMORY[0x277CBEB98] setWithObjects:{@"AXSEnabledSoundDetectionState", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)logMessage:(id)a3
{
  v3 = a3;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDSettings *)v3 logMessage:v4];
  }
}

- (void)logMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_23D624000, a2, OS_LOG_TYPE_DEBUG, "%@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end