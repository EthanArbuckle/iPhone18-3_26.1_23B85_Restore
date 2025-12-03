@interface AXSDSettingsEvent
- (AXSDSettingsEvent)initWithDictionaryRepresentation:(id)representation;
- (AXSDSettingsEvent)initWithState:(int64_t)state source:(id)source;
- (id)dictionaryRepresentation;
@end

@implementation AXSDSettingsEvent

- (AXSDSettingsEvent)initWithState:(int64_t)state source:(id)source
{
  sourceCopy = source;
  v20.receiver = self;
  v20.super_class = AXSDSettingsEvent;
  v8 = [(AXSDSettingsEvent *)&v20 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    timestamp = v8->_timestamp;
    v8->_timestamp = v9;

    v8->_state = state;
    objc_storeStrong(&v8->_source, source);
    v11 = +[AXSDSettings sharedInstance];
    enabledSoundDetectionTypes = [v11 enabledSoundDetectionTypes];
    enabledSystemSounds = v8->_enabledSystemSounds;
    v8->_enabledSystemSounds = enabledSoundDetectionTypes;

    enabledKShotDetectorIdentifiers = [v11 enabledKShotDetectorIdentifiers];
    enabledCustomSounds = v8->_enabledCustomSounds;
    v8->_enabledCustomSounds = enabledKShotDetectorIdentifiers;

    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    processName = v8->_processName;
    v8->_processName = processName;
  }

  return v8;
}

- (AXSDSettingsEvent)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = AXSDSettingsEvent;
  v5 = [(AXSDSettingsEvent *)&v18 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [representationCopy objectForKeyedSubscript:@"state"];
    v5->_state = [v8 integerValue];

    v9 = [representationCopy objectForKeyedSubscript:@"source"];
    source = v5->_source;
    v5->_source = v9;

    v11 = [representationCopy objectForKeyedSubscript:@"systemSounds"];
    enabledSystemSounds = v5->_enabledSystemSounds;
    v5->_enabledSystemSounds = v11;

    v13 = [representationCopy objectForKeyedSubscript:@"customSounds"];
    enabledCustomSounds = v5->_enabledCustomSounds;
    v5->_enabledCustomSounds = v13;

    v15 = [representationCopy objectForKeyedSubscript:@"processName"];
    processName = v5->_processName;
    v5->_processName = v15;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"timestamp";
  timestamp = [(AXSDSettingsEvent *)self timestamp];
  v13[0] = timestamp;
  v12[1] = @"state";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AXSDSettingsEvent state](self, "state")}];
  v13[1] = v4;
  v12[2] = @"source";
  source = [(AXSDSettingsEvent *)self source];
  v13[2] = source;
  v12[3] = @"systemSounds";
  enabledSystemSounds = [(AXSDSettingsEvent *)self enabledSystemSounds];
  v13[3] = enabledSystemSounds;
  v12[4] = @"customSounds";
  enabledCustomSounds = [(AXSDSettingsEvent *)self enabledCustomSounds];
  v13[4] = enabledCustomSounds;
  v12[5] = @"processName";
  processName = [(AXSDSettingsEvent *)self processName];
  v13[5] = processName;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end