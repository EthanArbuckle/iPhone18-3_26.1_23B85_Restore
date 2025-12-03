@interface SRAcousticSettings
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRAcousticSettings)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRAcousticSettings)initWithCoder:(id)coder;
- (SRAcousticSettings)initWithEnvironmentalSoundMeasurementsEnabled:(BOOL)enabled audioExposureSampleLifetime:(int64_t)lifetime headphoneSafetyAudioLevel:(id)level musicEQSettings:(id)settings accessibilitySettings:(id)accessibilitySettings;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRAcousticSettings

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogAcousticSettings = os_log_create("com.apple.SensorKit", "SRLogAcousticSettings");
  }
}

- (SRAcousticSettings)initWithEnvironmentalSoundMeasurementsEnabled:(BOOL)enabled audioExposureSampleLifetime:(int64_t)lifetime headphoneSafetyAudioLevel:(id)level musicEQSettings:(id)settings accessibilitySettings:(id)accessibilitySettings
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = SRAcousticSettings;
  v12 = [(SRAcousticSettings *)&v19 init];
  if (v12)
  {
    [level doubleValue];
    if (v13 >= 0.0 && v13 <= 100.0)
    {
      v12->_environmentalSoundMeasurementsEnabled = enabled;
      v12->_audioExposureSampleLifetime = lifetime;
      v12->_headphoneSafetyAudioLevel = level;
      v12->_musicEQSettings = settings;
      v12->_accessibilitySettings = accessibilitySettings;
    }

    else
    {
      v15 = SRLogAcousticSettings;
      if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_FAULT))
      {
        [level doubleValue];
        *buf = 138412546;
        v21 = @"accessibilityBackgroundSoundsRelativeVolume";
        v22 = 2048;
        v23 = v18;
        _os_log_fault_impl(&dword_1C914D000, v15, OS_LOG_TYPE_FAULT, "Failed to construct SRAcousticSettings object. %@: %f and is out of range of expected input.", buf, 0x16u);
      }

      v12 = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v12;
}

- (SRAcousticSettings)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v16 = *MEMORY[0x1E69E9840];
  if (![representation length])
  {
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = SRAcousticSettings;
  result = [(SRAcousticSettings *)&v13 init];
  if (result)
  {
    self = result;
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:representation error:&v12];
    if (v8)
    {
      v9 = v8;

      result = v9;
      goto LABEL_8;
    }

    v10 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v12;
      _os_log_error_impl(&dword_1C914D000, v10, OS_LOG_TYPE_ERROR, "Failed to unarchive data because %{public}@", buf, 0xCu);
    }

LABEL_7:

    result = 0;
  }

LABEL_8:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)binarySampleRepresentation
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v8];
  v3 = v8;
  if (v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v8 == 0;
  }

  if (!v4)
  {
    v5 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v3;
      _os_log_error_impl(&dword_1C914D000, v5, OS_LOG_TYPE_ERROR, "Failed to archive data because %{public}@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)dealloc
{
  self->_headphoneSafetyAudioLevel = 0;

  self->_musicEQSettings = 0;
  self->_accessibilitySettings = 0;
  v3.receiver = self;
  v3.super_class = SRAcousticSettings;
  [(SRAcousticSettings *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (environmentalSoundMeasurementsEnabled = self->_environmentalSoundMeasurementsEnabled, environmentalSoundMeasurementsEnabled == [equal isEnvironmentalSoundMeasurementsEnabled]) && (audioExposureSampleLifetime = self->_audioExposureSampleLifetime, audioExposureSampleLifetime == objc_msgSend(equal, "audioExposureSampleLifetime")) && (-[NSNumber doubleValue](self->_headphoneSafetyAudioLevel, "doubleValue"), v8 = v7, objc_msgSend(objc_msgSend(equal, "headphoneSafetyAudioLevel"), "doubleValue"), vabdd_f64(v8, v9) < 0.00000011920929))
    {
      v10 = -[SRAcousticSettingsMusicEQ isEqual:](self->_musicEQSettings, "isEqual:", [equal musicEQSettings]);
      if (v10)
      {
        accessibilitySettings = self->_accessibilitySettings;
        accessibilitySettings = [equal accessibilitySettings];

        LOBYTE(v10) = [(SRAcousticSettingsAccessibility *)accessibilitySettings isEqual:accessibilitySettings];
      }
    }

    else
    {
      LOBYTE(v10) = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_environmentalSoundMeasurementsEnabled), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_audioExposureSampleLifetime), "hash"}] ^ v3;
  v5 = [(NSNumber *)self->_headphoneSafetyAudioLevel hash];
  v6 = v5 ^ [(SRAcousticSettingsMusicEQ *)self->_musicEQSettings hash];
  return v4 ^ v6 ^ [(SRAcousticSettingsAccessibility *)self->_accessibilitySettings hash];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {Acoustic Settings environmentalSoundMeasurementsIsEnabled: %d, audioExposureSampleLifetime: %ld, headphoneSafetyAudioLevel: %@, MusicEQSettings: %@, AccessibilitySettings: %@}", NSStringFromClass(v4), self, -[SRAcousticSettings isEnvironmentalSoundMeasurementsEnabled](self, "isEnvironmentalSoundMeasurementsEnabled"), -[SRAcousticSettings audioExposureSampleLifetime](self, "audioExposureSampleLifetime"), -[SRAcousticSettings headphoneSafetyAudioLevel](self, "headphoneSafetyAudioLevel"), -[SRAcousticSettings musicEQSettings](self, "musicEQSettings"), -[SRAcousticSettings accessibilitySettings](self, "accessibilitySettings")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeBool:-[SRAcousticSettings isEnvironmentalSoundMeasurementsEnabled](self forKey:{"isEnvironmentalSoundMeasurementsEnabled"), @"environmentalSoundMeasurementsEnabled"}];
  [coder encodeInteger:-[SRAcousticSettings audioExposureSampleLifetime](self forKey:{"audioExposureSampleLifetime"), @"audioExposureSampleLifetime"}];
  [coder encodeObject:-[SRAcousticSettings headphoneSafetyAudioLevel](self forKey:{"headphoneSafetyAudioLevel"), @"headphoneSafetyAudioLevel"}];
  [coder encodeObject:-[SRAcousticSettings musicEQSettings](self forKey:{"musicEQSettings"), @"SRAcousticSettingsMusicEQ"}];
  accessibilitySettings = [(SRAcousticSettings *)self accessibilitySettings];

  [coder encodeObject:accessibilitySettings forKey:@"SRAcousticSettingsAccessibility"];
}

- (SRAcousticSettings)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeBoolForKey:@"environmentalSoundMeasurementsEnabled"];
  v7 = [coder decodeIntegerForKey:@"audioExposureSampleLifetime"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"headphoneSafetyAudioLevel"];
  v9 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"SRAcousticSettingsMusicEQ"];
  v10 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"SRAcousticSettingsAccessibility"];
  if (!v9)
  {
    v16 = SRLogAcousticSettings;
    if (!os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v22 = 0;
    v13 = "Failed to decode the object musicEQSettings: %@";
LABEL_16:
    v14 = v16;
    v15 = 12;
    goto LABEL_17;
  }

  v11 = v10;
  if (!v10)
  {
    v16 = SRLogAcousticSettings;
    if (!os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    *buf = 138412290;
    v22 = 0;
    v13 = "Failed to decode the object. accessibilitySettings: %@";
    goto LABEL_16;
  }

  if ((v7 - 3) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v22 = @"audioExposureSampleLifetime";
      v23 = 2048;
      v24 = v7;
      v13 = "Failed to decode the object. %@: %ld";
      v14 = v12;
      v15 = 22;
LABEL_17:
      _os_log_error_impl(&dword_1C914D000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
    }

LABEL_11:
    v17 = *MEMORY[0x1E69E9840];
    return 0;
  }

  v19 = [SRAcousticSettings alloc];
  v20 = *MEMORY[0x1E69E9840];

  return [(SRAcousticSettings *)v19 initWithEnvironmentalSoundMeasurementsEnabled:v6 audioExposureSampleLifetime:v7 headphoneSafetyAudioLevel:v8 musicEQSettings:v9 accessibilitySettings:v11];
}

@end