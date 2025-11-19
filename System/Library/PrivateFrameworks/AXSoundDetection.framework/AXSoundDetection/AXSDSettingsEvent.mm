@interface AXSDSettingsEvent
- (AXSDSettingsEvent)initWithDictionaryRepresentation:(id)a3;
- (AXSDSettingsEvent)initWithState:(int64_t)a3 source:(id)a4;
- (id)dictionaryRepresentation;
@end

@implementation AXSDSettingsEvent

- (AXSDSettingsEvent)initWithState:(int64_t)a3 source:(id)a4
{
  v7 = a4;
  v20.receiver = self;
  v20.super_class = AXSDSettingsEvent;
  v8 = [(AXSDSettingsEvent *)&v20 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEAA8] now];
    timestamp = v8->_timestamp;
    v8->_timestamp = v9;

    v8->_state = a3;
    objc_storeStrong(&v8->_source, a4);
    v11 = +[AXSDSettings sharedInstance];
    v12 = [v11 enabledSoundDetectionTypes];
    enabledSystemSounds = v8->_enabledSystemSounds;
    v8->_enabledSystemSounds = v12;

    v14 = [v11 enabledKShotDetectorIdentifiers];
    enabledCustomSounds = v8->_enabledCustomSounds;
    v8->_enabledCustomSounds = v14;

    v16 = [MEMORY[0x277CCAC38] processInfo];
    v17 = [v16 processName];
    processName = v8->_processName;
    v8->_processName = v17;
  }

  return v8;
}

- (AXSDSettingsEvent)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AXSDSettingsEvent;
  v5 = [(AXSDSettingsEvent *)&v18 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = [v4 objectForKeyedSubscript:@"state"];
    v5->_state = [v8 integerValue];

    v9 = [v4 objectForKeyedSubscript:@"source"];
    source = v5->_source;
    v5->_source = v9;

    v11 = [v4 objectForKeyedSubscript:@"systemSounds"];
    enabledSystemSounds = v5->_enabledSystemSounds;
    v5->_enabledSystemSounds = v11;

    v13 = [v4 objectForKeyedSubscript:@"customSounds"];
    enabledCustomSounds = v5->_enabledCustomSounds;
    v5->_enabledCustomSounds = v13;

    v15 = [v4 objectForKeyedSubscript:@"processName"];
    processName = v5->_processName;
    v5->_processName = v15;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v13[6] = *MEMORY[0x277D85DE8];
  v12[0] = @"timestamp";
  v3 = [(AXSDSettingsEvent *)self timestamp];
  v13[0] = v3;
  v12[1] = @"state";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[AXSDSettingsEvent state](self, "state")}];
  v13[1] = v4;
  v12[2] = @"source";
  v5 = [(AXSDSettingsEvent *)self source];
  v13[2] = v5;
  v12[3] = @"systemSounds";
  v6 = [(AXSDSettingsEvent *)self enabledSystemSounds];
  v13[3] = v6;
  v12[4] = @"customSounds";
  v7 = [(AXSDSettingsEvent *)self enabledCustomSounds];
  v13[4] = v7;
  v12[5] = @"processName";
  v8 = [(AXSDSettingsEvent *)self processName];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end