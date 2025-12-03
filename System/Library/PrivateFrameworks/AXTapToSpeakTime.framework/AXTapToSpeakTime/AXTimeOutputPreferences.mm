@interface AXTimeOutputPreferences
+ (id)sharedInstance;
- (BOOL)_npsBoolValueForPreferenceKey:(id)key defaultValue:(BOOL)value;
- (BOOL)_voiceOverIsInTripleClick;
- (BOOL)tapToSpeakTimeEnabled;
- (BOOL)voiceOverTapticChimesEnabled;
- (BOOL)voiceOverTapticChimesUnity25Active;
- (BOOL)voiceOverTapticTimeMode;
- (id)_npsValueForPreferenceKey:(id)key expectedClass:(Class)class;
- (id)accessibilityDomainAccessor;
- (id)localizedStringForKey:(id)key;
- (id)localizedStringForTapToSpeakTimeAvailability:(int64_t)availability;
- (id)localizedStringForTapticChimesFrequencyEncoding:(int64_t)encoding;
- (id)localizedStringForTapticChimesSoundType:(int64_t)type;
- (id)localizedStringForTapticTimeEncoding:(int64_t)encoding;
- (id)tapticChimesLocalizedCurrentFrequency;
- (id)tapticChimesLocalizedCurrentSounds;
- (id)tapticChimesLocalizedDescription;
- (id)tapticChimesSoundsOptions;
- (id)tapticTimeLocalizedCurrentMode;
- (id)tapticTimeLocalizedDescription;
- (id)tapticTimeModeLocalizedDescription;
- (id)unity25_localizedStringForKey:(id)key;
- (int64_t)_npsIntegerValueForPreferenceKey:(id)key defaultValue:(int64_t)value;
- (int64_t)_voiceOverTapticChimesUnity25SoundType;
- (int64_t)tapToSpeakTimeAvailability;
- (int64_t)voiceOverTapticChimesFrequencyEncoding;
- (int64_t)voiceOverTapticChimesSoundType;
- (int64_t)voiceOverTapticChimesSoundTypeForCurrentFace;
- (int64_t)voiceOverTapticTimeEncoding;
- (void)_setNPSValue:(id)value preferenceKey:(id)key;
- (void)_setVoiceOverTapticChimesUnity25SoundType:(int64_t)type;
- (void)_syncWithStandardVoiceOverTapticChimesSoundType:(int64_t)type;
- (void)_syncWithUnity25VoiceOverTapticChimesSoundType:(int64_t)type;
- (void)setTapToSpeakTimeAvailability:(int64_t)availability;
- (void)setVoiceOverTapticChimesFrequencyEncoding:(int64_t)encoding;
- (void)setVoiceOverTapticChimesSoundType:(int64_t)type;
- (void)setVoiceOverTapticChimesSoundTypeForCurrentFace:(int64_t)face;
- (void)setVoiceOverTapticTimeEncoding:(int64_t)encoding;
@end

@implementation AXTimeOutputPreferences

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[AXTimeOutputPreferences sharedInstance];
  }

  v3 = sharedInstance_TimeOutputPreferences;

  return v3;
}

id __41__AXTimeOutputPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AXTimeOutputPreferences);
  v1 = sharedInstance_TimeOutputPreferences;
  sharedInstance_TimeOutputPreferences = v0;

  return [MEMORY[0x277CE7E20] sharedInstance];
}

- (id)accessibilityDomainAccessor
{
  v2 = objc_alloc(MEMORY[0x277D2BA58]);
  v3 = [v2 initWithDomain:*MEMORY[0x277D81C18]];

  return v3;
}

- (id)_npsValueForPreferenceKey:(id)key expectedClass:(Class)class
{
  keyCopy = key;
  if (keyCopy)
  {
    accessibilityDomainAccessor = [(AXTimeOutputPreferences *)self accessibilityDomainAccessor];
    synchronize = [accessibilityDomainAccessor synchronize];
    v9 = [accessibilityDomainAccessor objectForKey:keyCopy];
    v10 = v9;
    if (class && v9 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = AXLogTapticTime();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(AXTimeOutputPreferences *)v10 _npsValueForPreferenceKey:class expectedClass:v12];
      }

      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  else
  {
    accessibilityDomainAccessor = AXLogTapticTime();
    if (os_log_type_enabled(accessibilityDomainAccessor, OS_LOG_TYPE_FAULT))
    {
      [AXTimeOutputPreferences _npsValueForPreferenceKey:expectedClass:];
    }

    v11 = 0;
  }

  return v11;
}

- (void)_setNPSValue:(id)value preferenceKey:(id)key
{
  v19[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  if (keyCopy)
  {
    accessibilityDomainAccessor = [(AXTimeOutputPreferences *)self accessibilityDomainAccessor];
    v9 = accessibilityDomainAccessor;
    if (accessibilityDomainAccessor)
    {
      domain = [accessibilityDomainAccessor domain];
      v11 = [domain length];

      if (v11)
      {
        [v9 setObject:valueCopy forKey:keyCopy];
        synchronize = [v9 synchronize];
        v13 = objc_opt_new();
        domain2 = [v9 domain];
        v15 = MEMORY[0x277CBEB98];
        v19[0] = keyCopy;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
        v17 = [v15 setWithArray:v16];
        [v13 synchronizeNanoDomain:domain2 keys:v17];
      }

      else
      {
        v13 = AXLogTapticTime();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [AXTimeOutputPreferences _setNPSValue:preferenceKey:];
        }
      }
    }

    else
    {
      v13 = AXLogTapticTime();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [AXTimeOutputPreferences _setNPSValue:preferenceKey:];
      }
    }
  }

  else
  {
    v9 = AXLogTapticTime();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [AXTimeOutputPreferences _npsValueForPreferenceKey:expectedClass:];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_npsBoolValueForPreferenceKey:(id)key defaultValue:(BOOL)value
{
  v5 = [(AXTimeOutputPreferences *)self _npsValueForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 BOOLValue];
  }

  return value;
}

- (int64_t)_npsIntegerValueForPreferenceKey:(id)key defaultValue:(int64_t)value
{
  v5 = [(AXTimeOutputPreferences *)self _npsValueForPreferenceKey:key];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [v5 integerValue];
  }

  return value;
}

- (BOOL)_voiceOverIsInTripleClick
{
  v2 = [(AXTimeOutputPreferences *)self _npsValueForPreferenceKey:@"TripleClickOptions" expectedClass:objc_opt_class()];
  if (v2)
  {
    v3 = _AXSTripleClickContainsOption() != 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)tapToSpeakTimeEnabled
{
  selfCopy = self;
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_tapToSpeakTimeEnabled];
  LOBYTE(selfCopy) = [(AXTimeOutputPreferences *)selfCopy _npsBoolValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6850]];

  return selfCopy;
}

- (int64_t)tapToSpeakTimeAvailability
{
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_tapToSpeakTimeAvailability];
  v4 = [(AXTimeOutputPreferences *)self _npsIntegerValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6848]];

  return v4;
}

- (void)setTapToSpeakTimeAvailability:(int64_t)availability
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:availability];
  v4 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_tapToSpeakTimeAvailability];
  [(AXTimeOutputPreferences *)self _setNPSValue:v5 preferenceKey:v4];
}

- (BOOL)voiceOverTapticTimeMode
{
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticTimeMode];
  if (![(AXTimeOutputPreferences *)self _voiceOverIsEnabled]|| ([(AXTimeOutputPreferences *)self _npsValueForPreferenceKey:v3], v4 = objc_claimAutoreleasedReturnValue(), v5 = *MEMORY[0x277CE6868], v4, v4))
  {
    v5 = [(AXTimeOutputPreferences *)self _npsBoolValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6860]];
  }

  return v5 & 1;
}

- (int64_t)voiceOverTapticTimeEncoding
{
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticTimeEncoding];
  v4 = [(AXTimeOutputPreferences *)self _npsIntegerValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6888]];

  return v4;
}

- (void)setVoiceOverTapticTimeEncoding:(int64_t)encoding
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:encoding];
  v4 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticTimeEncoding];
  [(AXTimeOutputPreferences *)self _setNPSValue:v5 preferenceKey:v4];
}

- (BOOL)voiceOverTapticChimesEnabled
{
  selfCopy = self;
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesEnabled];
  LOBYTE(selfCopy) = [(AXTimeOutputPreferences *)selfCopy _npsBoolValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6858]];

  return selfCopy;
}

- (int64_t)voiceOverTapticChimesFrequencyEncoding
{
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesFrequencyEncoding];
  v4 = [(AXTimeOutputPreferences *)self _npsIntegerValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6870]];

  return v4;
}

- (void)setVoiceOverTapticChimesFrequencyEncoding:(int64_t)encoding
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:encoding];
  v4 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesFrequencyEncoding];
  [(AXTimeOutputPreferences *)self _setNPSValue:v5 preferenceKey:v4];
}

- (int64_t)voiceOverTapticChimesSoundType
{
  if ([(AXTimeOutputPreferences *)self voiceOverTapticChimesUnity25Active])
  {

    return [(AXTimeOutputPreferences *)self _voiceOverTapticChimesUnity25SoundType];
  }

  else
  {
    v4 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesSoundType];
    v5 = [(AXTimeOutputPreferences *)self _npsIntegerValueForPreferenceKey:v4 defaultValue:*MEMORY[0x277CE6878]];

    return v5;
  }
}

- (void)setVoiceOverTapticChimesSoundType:(int64_t)type
{
  if ([(AXTimeOutputPreferences *)self voiceOverTapticChimesUnity25Active])
  {

    [(AXTimeOutputPreferences *)self _setVoiceOverTapticChimesUnity25SoundType:type];
  }

  else
  {
    v5 = [MEMORY[0x277CCABB0] numberWithInteger:type];
    v6 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesSoundType];
    [(AXTimeOutputPreferences *)self _setNPSValue:v5 preferenceKey:v6];

    [(AXTimeOutputPreferences *)self _syncWithUnity25VoiceOverTapticChimesSoundType:type];
  }
}

- (int64_t)voiceOverTapticChimesSoundTypeForCurrentFace
{
  if ([(AXTimeOutputPreferences *)self voiceOverTapticChimesUnity25Active])
  {

    return [(AXTimeOutputPreferences *)self _voiceOverTapticChimesUnity25SoundType];
  }

  else
  {

    return [(AXTimeOutputPreferences *)self voiceOverTapticChimesSoundType];
  }
}

- (void)setVoiceOverTapticChimesSoundTypeForCurrentFace:(int64_t)face
{
  if ([(AXTimeOutputPreferences *)self voiceOverTapticChimesUnity25Active])
  {

    [(AXTimeOutputPreferences *)self _setVoiceOverTapticChimesUnity25SoundType:face];
  }

  else
  {

    [(AXTimeOutputPreferences *)self setVoiceOverTapticChimesSoundType:face];
  }
}

- (BOOL)voiceOverTapticChimesUnity25Active
{
  selfCopy = self;
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesUnity25Active];
  LOBYTE(selfCopy) = [(AXTimeOutputPreferences *)selfCopy _npsBoolValueForPreferenceKey:v3 defaultValue:0];

  return selfCopy;
}

- (int64_t)_voiceOverTapticChimesUnity25SoundType
{
  v3 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesUnity25SoundType];
  v4 = [(AXTimeOutputPreferences *)self _npsIntegerValueForPreferenceKey:v3 defaultValue:*MEMORY[0x277CE6880]];

  return v4;
}

- (void)_setVoiceOverTapticChimesUnity25SoundType:(int64_t)type
{
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v6 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesUnity25SoundType];
  [(AXTimeOutputPreferences *)self _setNPSValue:v5 preferenceKey:v6];

  [(AXTimeOutputPreferences *)self _syncWithStandardVoiceOverTapticChimesSoundType:type];
}

- (void)_syncWithStandardVoiceOverTapticChimesSoundType:(int64_t)type
{
  if (type != 3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v5 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesSoundType];
    [(AXTimeOutputPreferences *)self _setNPSValue:v6 preferenceKey:v5];
  }
}

- (void)_syncWithUnity25VoiceOverTapticChimesSoundType:(int64_t)type
{
  if (type != 3)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    v5 = [(AXBaseSettings *)self preferenceKeyForSelector:sel_voiceOverTapticChimesUnity25SoundType];
    [(AXTimeOutputPreferences *)self _setNPSValue:v6 preferenceKey:v5];
  }
}

- (id)tapticChimesSoundsOptions
{
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:&unk_284FB5540];
  if ([(AXTimeOutputPreferences *)self voiceOverTapticChimesUnity25Active])
  {
    [v3 addObject:&unk_284FB5510];
  }

  return v3;
}

- (id)localizedStringForKey:(id)key
{
  v3 = localizedStringForKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    [AXTimeOutputPreferences localizedStringForKey:];
  }

  v5 = [localizedStringForKey___Bundle localizedStringForKey:keyCopy value:0 table:@"Localizable"];

  return v5;
}

uint64_t __49__AXTimeOutputPreferences_localizedStringForKey___block_invoke()
{
  localizedStringForKey___Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (id)unity25_localizedStringForKey:(id)key
{
  v3 = unity25_localizedStringForKey__onceToken;
  keyCopy = key;
  if (v3 != -1)
  {
    [AXTimeOutputPreferences unity25_localizedStringForKey:];
  }

  v5 = [unity25_localizedStringForKey___Bundle localizedStringForKey:keyCopy value:0 table:@"Localizable-unity25"];

  return v5;
}

uint64_t __57__AXTimeOutputPreferences_unity25_localizedStringForKey___block_invoke()
{
  unity25_localizedStringForKey___Bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

- (id)tapticChimesLocalizedDescription
{
  v3 = +[AXTimeOutputPreferences sharedInstance];
  voiceOverTapticChimesFrequencyEncoding = [v3 voiceOverTapticChimesFrequencyEncoding];

  if ((voiceOverTapticChimesFrequencyEncoding - 1) <= 3)
  {
    v5 = [(AXTimeOutputPreferences *)self localizedStringForKey:off_278BDFD20[voiceOverTapticChimesFrequencyEncoding - 1]];
  }

  return v5;
}

- (id)tapticChimesLocalizedCurrentFrequency
{
  v3 = +[AXTimeOutputPreferences sharedInstance];
  v4 = -[AXTimeOutputPreferences localizedStringForTapticChimesFrequencyEncoding:](self, "localizedStringForTapticChimesFrequencyEncoding:", [v3 voiceOverTapticChimesFrequencyEncoding]);

  return v4;
}

- (id)tapticChimesLocalizedCurrentSounds
{
  v3 = +[AXTimeOutputPreferences sharedInstance];
  v4 = -[AXTimeOutputPreferences localizedStringForTapticChimesSoundType:](self, "localizedStringForTapticChimesSoundType:", [v3 voiceOverTapticChimesSoundType]);

  return v4;
}

- (id)localizedStringForTapticChimesFrequencyEncoding:(int64_t)encoding
{
  if ((encoding - 1) <= 3)
  {
    a2 = [(AXTimeOutputPreferences *)self localizedStringForKey:off_278BDFD40[encoding - 1], v3];
  }

  return a2;
}

- (id)localizedStringForTapticChimesSoundType:(int64_t)type
{
  if (type == 3)
  {
    v4 = [(AXTimeOutputPreferences *)self unity25_localizedStringForKey:@"TAPTIC_CHIMES_SOUND_UNITY25_LABEL"];
  }

  else
  {
    if (type == 2)
    {
      v3 = @"TAPTIC_CHIMES_SOUND_BIRDS_LABEL";
    }

    else
    {
      if (type != 1)
      {
        goto LABEL_9;
      }

      v3 = @"TAPTIC_CHIMES_SOUND_BELLS_LABEL";
    }

    v4 = [(AXTimeOutputPreferences *)self localizedStringForKey:v3];
  }

  a2 = v4;
LABEL_9:

  return a2;
}

- (id)localizedStringForTapToSpeakTimeAvailability:(int64_t)availability
{
  if (availability == 1)
  {
    v5 = @"TAP_TO_SPEAK_RESPECT_MUTE_LABEL";
  }

  else
  {
    if (availability != 2)
    {
      goto LABEL_6;
    }

    v5 = @"TAP_TO_SPEAK_ALWAYS_LABEL";
  }

  a2 = [(AXTimeOutputPreferences *)self localizedStringForKey:v5, v3];
LABEL_6:

  return a2;
}

- (id)tapticTimeLocalizedDescription
{
  v3 = +[AXTimeOutputPreferences sharedInstance];
  tapticTimeIsAvailable = [v3 tapticTimeIsAvailable];

  if ((tapticTimeIsAvailable & 1) == 0)
  {
    v14 = @"TAPTIC_TIME_UNAVAILABLE_DESCRIPTION";
LABEL_12:
    v13 = [(AXTimeOutputPreferences *)self localizedStringForKey:v14];
    goto LABEL_13;
  }

  v5 = +[AXTimeOutputPreferences sharedInstance];
  voiceOverTapticTimeMode = [v5 voiceOverTapticTimeMode];

  if ((voiceOverTapticTimeMode & 1) == 0)
  {
    v14 = @"TAPTIC_TIME_DISABLED_DESCRIPTION";
    goto LABEL_12;
  }

  array = [MEMORY[0x277CBEB18] array];
  v8 = +[AXTimeOutputPreferences sharedInstance];
  tapToSpeakTimeEnabled = [v8 tapToSpeakTimeEnabled];

  if (tapToSpeakTimeEnabled)
  {
    v10 = @"TAPTIC_TIME_MUTE_DESCRIPTION";
  }

  else
  {
    v10 = @"TAPTIC_TIME_ALWAYS_DESCRIPTION";
  }

  v11 = [(AXTimeOutputPreferences *)self localizedStringForKey:v10];
  [array addObject:v11];

  if ([(AXTimeOutputPreferences *)self _voiceOverIsEnabled]|| [(AXTimeOutputPreferences *)self _voiceOverIsInTripleClick])
  {
    v12 = [(AXTimeOutputPreferences *)self localizedStringForKey:@"TAPTIC_TIME_VOICEOVER_DESCRIPTION"];
    [array addObject:v12];
  }

  v13 = [array componentsJoinedByString:@"\n\n"];

LABEL_13:

  return v13;
}

- (id)tapticTimeLocalizedCurrentMode
{
  v3 = +[AXTimeOutputPreferences sharedInstance];
  if ([v3 tapticTimeIsAvailable])
  {
    v4 = +[AXTimeOutputPreferences sharedInstance];
    voiceOverTapticTimeMode = [v4 voiceOverTapticTimeMode];

    if (voiceOverTapticTimeMode)
    {
      v6 = +[AXTimeOutputPreferences sharedInstance];
      v7 = -[AXTimeOutputPreferences localizedStringForTapticTimeEncoding:](self, "localizedStringForTapticTimeEncoding:", [v6 voiceOverTapticTimeEncoding]);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = [(AXTimeOutputPreferences *)self localizedStringForKey:@"TAPTIC_TIME_DISABLED"];
LABEL_6:

  return v7;
}

- (id)tapticTimeModeLocalizedDescription
{
  v3 = +[AXTimeOutputPreferences sharedInstance];
  voiceOverTapticTimeEncoding = [v3 voiceOverTapticTimeEncoding];

  if ((voiceOverTapticTimeEncoding - 1) <= 2)
  {
    v5 = [(AXTimeOutputPreferences *)self localizedStringForKey:off_278BDFD60[voiceOverTapticTimeEncoding - 1]];
  }

  return v5;
}

- (id)localizedStringForTapticTimeEncoding:(int64_t)encoding
{
  if ((encoding - 1) <= 2)
  {
    a2 = [(AXTimeOutputPreferences *)self localizedStringForKey:off_278BDFD78[encoding - 1], v3];
  }

  return a2;
}

- (void)_npsValueForPreferenceKey:(NSObject *)a3 expectedClass:.cold.1(uint64_t a1, Class aClass, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromClass(aClass);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_fault_impl(&dword_23D6AA000, a3, OS_LOG_TYPE_FAULT, "unexpected object type! is=%@, expected=%@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end