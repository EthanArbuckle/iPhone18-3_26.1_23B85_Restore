@interface AXSDSettings
+ (id)sharedInstance;
+ (id)stringForSoundDetectionState:(int64_t)state;
- (BOOL)hasCustomHapticForDetector:(id)detector;
- (BOOL)hasCustomToneForDetector:(id)detector;
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
- (id)preferenceKeyForSelector:(SEL)selector;
- (id)sortedSupportedSoundDetectionTypes;
- (id)soundAlertTopicForSoundDetectionType:(id)type;
- (int64_t)soundDetectionState;
- (void)_setSoundDetectionState:(int64_t)state;
- (void)addSnoozeDateToSnoozeDictionary:(id)dictionary forKey:(id)key;
- (void)addSoundDetectionType:(id)type;
- (void)logMessage:(id)message;
- (void)pipeFile:(id)file;
- (void)registerSettingsEvent:(id)event;
- (void)removeAllSoundDetectionTypes;
- (void)removeSoundDetectionType:(id)type;
- (void)retrainModelWithIdentifier:(id)identifier;
- (void)setLatestSettingsEvents:(id)events;
- (void)setSoundDetectionKShotListeningState:(int64_t)state;
- (void)setSoundDetectionState:(int64_t)state;
- (void)setSoundDetectionState:(int64_t)state source:(id)source;
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

- (id)preferenceKeyForSelector:(SEL)selector
{
  if (preferenceKeyForSelector__onceToken != -1)
  {
    [AXSDSettings preferenceKeyForSelector:];
  }

  v5 = preferenceKeyForSelector__SelectorMap;
  v6 = NSStringFromSelector(selector);
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = AXSDSettings;
    v8 = [(HCSettings *)&v11 preferenceKeyForSelector:selector];
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

- (void)_setSoundDetectionState:(int64_t)state
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [(HCSettings *)self setValue:v4 forPreferenceKey:@"AXSEnabledSoundDetectionState"];
}

- (NSArray)enabledSoundDetectionTypes
{
  v3 = objc_opt_class();
  array = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSEnabledSoundDetectionTypes" withClass:v3 andDefaultValue:array];

  return v5;
}

- (NSMutableDictionary)soundDetectionSnoozeDictionary
{
  v3 = objc_opt_class();
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionSnoozeDictionary" withClass:v3 andDefaultValue:dictionary];

  return v5;
}

- (NSArray)supportedSoundDetectionTypes
{
  v3 = objc_opt_class();
  array = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionSupportedTypes" withClass:v3 andDefaultValue:array];

  return v5;
}

- (NSData)kShotDetectors
{
  v3 = objc_opt_class();
  data = [MEMORY[0x277CBEA90] data];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionKShotDetectors" withClass:v3 andDefaultValue:data];

  return v5;
}

- (NSMutableDictionary)kShotSoundRecordings
{
  v3 = objc_opt_class();
  dictionary = [MEMORY[0x277CBEAC0] dictionary];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionKShotRecordings" withClass:v3 andDefaultValue:dictionary];

  return v5;
}

- (NSArray)enabledKShotDetectorIdentifiers
{
  v3 = objc_opt_class();
  array = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionKShotEnabledDetectorIdentifiers" withClass:v3 andDefaultValue:array];

  return v5;
}

- (void)setSoundDetectionKShotListeningState:(int64_t)state
{
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  [(HCSettings *)self setValue:v4 forPreferenceKey:@"AXSSoundDetectionKShotListeningStateIdentifier"];
}

- (NSString)pipedInFile
{
  v3 = objc_opt_class();
  string = [MEMORY[0x277CCACA8] string];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionPipedInFile" withClass:v3 andDefaultValue:string];

  return v5;
}

- (NSString)retrainModelIdentifier
{
  v3 = objc_opt_class();
  string = [MEMORY[0x277CCACA8] string];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionRetrainModelIdentifier" withClass:v3 andDefaultValue:string];

  return v5;
}

- (NSArray)latestSettingsEventsDictionaries
{
  v3 = objc_opt_class();
  array = [MEMORY[0x277CBEA60] array];
  v5 = [(HCSettings *)self objectValueForKey:@"AXSSoundDetectionLatestSettingsEvents" withClass:v3 andDefaultValue:array];

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

- (void)setSoundDetectionState:(int64_t)state
{
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [AXSDSettings setSoundDetectionState:v5];
  }

  [(AXSDSettings *)self setSoundDetectionState:state source:@"Unknown"];
}

- (void)setSoundDetectionState:(int64_t)state source:(id)source
{
  sourceCopy = source;
  [(AXSDSettings *)self _setSoundDetectionState:state];
  v7 = [[AXSDSettingsEvent alloc] initWithState:state source:sourceCopy];

  [(AXSDSettings *)self registerSettingsEvent:v7];
}

- (void)addSoundDetectionType:(id)type
{
  v4 = MEMORY[0x277CBEB58];
  typeCopy = type;
  enabledSoundDetectionTypes = [(AXSDSettings *)self enabledSoundDetectionTypes];
  v7 = [enabledSoundDetectionTypes mutableCopy];
  v9 = [v4 setWithArray:v7];

  [v9 addObject:typeCopy];
  allObjects = [v9 allObjects];
  [(AXSDSettings *)self setEnabledSoundDetectionTypes:allObjects];
}

- (void)removeSoundDetectionType:(id)type
{
  v4 = MEMORY[0x277CBEB58];
  typeCopy = type;
  enabledSoundDetectionTypes = [(AXSDSettings *)self enabledSoundDetectionTypes];
  v7 = [enabledSoundDetectionTypes mutableCopy];
  v9 = [v4 setWithArray:v7];

  [v9 removeObject:typeCopy];
  allObjects = [v9 allObjects];
  [(AXSDSettings *)self setEnabledSoundDetectionTypes:allObjects];
}

- (void)removeAllSoundDetectionTypes
{
  array = [MEMORY[0x277CBEA60] array];
  [(AXSDSettings *)self setEnabledSoundDetectionTypes:array];
}

- (void)addSnoozeDateToSnoozeDictionary:(id)dictionary forKey:(id)key
{
  dictionaryCopy = dictionary;
  keyCopy = key;
  soundDetectionSnoozeDictionary = [(AXSDSettings *)self soundDetectionSnoozeDictionary];
  v8 = [soundDetectionSnoozeDictionary mutableCopy];

  v9 = [v8 objectForKey:keyCopy];
  if (v9)
  {
    v10 = [dictionaryCopy laterDate:v9];

    v11 = v10;
  }

  else
  {
    v11 = dictionaryCopy;
  }

  v13 = v11;
  [v8 setObject:v11 forKey:keyCopy];
  [(AXSDSettings *)self setSoundDetectionSnoozeDictionary:v8];
}

- (id)soundAlertTopicForSoundDetectionType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeApplianceBeeps] & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", AXSDSoundDetectionTypeApplianceBuzzes) & 1) != 0 || (objc_msgSend(typeCopy, "isEqualToString:", AXSDSoundDetectionTypeApplianceBellDings))
  {
    v4 = MEMORY[0x277D71FF0];
LABEL_5:
    v5 = *v4;
    goto LABEL_6;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeDistressedBaby])
  {
    v4 = MEMORY[0x277D71FF8];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeCarHorns])
  {
    v4 = MEMORY[0x277D72000];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeCatMeows])
  {
    v4 = MEMORY[0x277D72008];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeCough])
  {
    v4 = MEMORY[0x277D72010];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeDogBarks])
  {
    v4 = MEMORY[0x277D72018];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeDoorbells])
  {
    v4 = MEMORY[0x277D72020];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeDoorKnocks])
  {
    v4 = MEMORY[0x277D72028];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeFireAlarms])
  {
    v4 = MEMORY[0x277D72030];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypePersonShouting])
  {
    v4 = MEMORY[0x277D72038];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeSirenAlarms])
  {
    v4 = MEMORY[0x277D72040];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeSmokeAlarms])
  {
    v4 = MEMORY[0x277D72048];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeWaterRunning])
  {
    v4 = MEMORY[0x277D72050];
    goto LABEL_5;
  }

  if ([typeCopy isEqualToString:AXSDSoundDetectionTypeGlassBreaking])
  {
    v5 = @"TLAlertTopicSoundRecognitionGlassBreaking";
  }

  else if ([typeCopy isEqualToString:AXSDSoundDetectionTypeKettle])
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
  enabledKShotDetectorIdentifiers = [(AXSDSettings *)self enabledKShotDetectorIdentifiers];
  v3 = [enabledKShotDetectorIdentifiers count] != 0;

  return v3;
}

+ (id)stringForSoundDetectionState:(int64_t)state
{
  v3 = @"Off";
  if (state == 2)
  {
    v3 = @"Running";
  }

  if (state == 1)
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
  supportedSoundDetectionTypes = [(AXSDSettings *)self supportedSoundDetectionTypes];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__AXSDSettings_sortedSupportedSoundDetectionTypes__block_invoke;
  v6[3] = &unk_278BDC400;
  v6[4] = self;
  v4 = [supportedSoundDetectionTypes sortedArrayUsingComparator:v6];

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

- (BOOL)hasCustomToneForDetector:(id)detector
{
  v3 = [(AXSDSettings *)self soundAlertTopicForSoundDetectionType:detector];
  if (v3)
  {
    mEMORY[0x277D71F78] = [MEMORY[0x277D71F78] sharedToneManager];
    v5 = [mEMORY[0x277D71F78] defaultToneIdentifierForAlertType:29 topic:v3];

    mEMORY[0x277D71F78]2 = [MEMORY[0x277D71F78] sharedToneManager];
    v7 = [mEMORY[0x277D71F78]2 currentToneIdentifierForAlertType:29 topic:v3];

    lowercaseString = [v7 lowercaseString];
    lowercaseString2 = [v5 lowercaseString];
    v10 = [lowercaseString isEqualToString:lowercaseString2] ^ 1;
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

- (BOOL)hasCustomHapticForDetector:(id)detector
{
  v3 = [(AXSDSettings *)self soundAlertTopicForSoundDetectionType:detector];
  if (v3)
  {
    mEMORY[0x277D71F88] = [MEMORY[0x277D71F88] sharedVibrationManager];
    v5 = [mEMORY[0x277D71F88] defaultVibrationIdentifierForAlertType:29 topic:v3];

    mEMORY[0x277D71F88]2 = [MEMORY[0x277D71F88] sharedVibrationManager];
    v7 = [mEMORY[0x277D71F88]2 currentVibrationIdentifierForAlertType:29 topic:v3];

    lowercaseString = [v7 lowercaseString];
    lowercaseString2 = [v5 lowercaseString];
    v10 = [lowercaseString isEqualToString:lowercaseString2] ^ 1;
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

- (void)pipeFile:(id)file
{
  v13 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  absoluteString = [fileCopy absoluteString];
  [(AXSDSettings *)self setPipedInFile:absoluteString];

  v6 = AXLogUltron();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    pipedInFile = [(AXSDSettings *)self pipedInFile];
    v9 = 138412546;
    v10 = fileCopy;
    v11 = 2112;
    v12 = pipedInFile;
    _os_log_impl(&dword_23D624000, v6, OS_LOG_TYPE_INFO, "Setting pipe file to %@ -> %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)retrainModelWithIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(AXSDSettings *)self setRetrainModelIdentifier:identifierCopy];
  v5 = AXLogUltron();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    retrainModelIdentifier = [(AXSDSettings *)self retrainModelIdentifier];
    v8 = 138412546;
    v9 = identifierCopy;
    v10 = 2112;
    v11 = retrainModelIdentifier;
    _os_log_impl(&dword_23D624000, v5, OS_LOG_TYPE_INFO, "Setting model to retrain to %@ -> %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (NSArray)latestSettingsEvents
{
  latestSettingsEventsDictionaries = [(AXSDSettings *)self latestSettingsEventsDictionaries];
  v3 = [latestSettingsEventsDictionaries ax_mappedArrayUsingBlock:&__block_literal_global_119];

  return v3;
}

AXSDSettingsEvent *__36__AXSDSettings_latestSettingsEvents__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[AXSDSettingsEvent alloc] initWithDictionaryRepresentation:v2];

  return v3;
}

- (void)setLatestSettingsEvents:(id)events
{
  v4 = [events ax_mappedArrayUsingBlock:&__block_literal_global_122];
  [(AXSDSettings *)self setLatestSettingsEventsDictionaries:v4];
}

- (void)registerSettingsEvent:(id)event
{
  eventCopy = event;
  latestSettingsEvents = [(AXSDSettings *)self latestSettingsEvents];
  v7 = [latestSettingsEvents mutableCopy];

  [v7 addObject:eventCopy];
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

- (void)logMessage:(id)message
{
  messageCopy = message;
  v4 = AXLogUltron();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [(AXSDSettings *)messageCopy logMessage:v4];
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