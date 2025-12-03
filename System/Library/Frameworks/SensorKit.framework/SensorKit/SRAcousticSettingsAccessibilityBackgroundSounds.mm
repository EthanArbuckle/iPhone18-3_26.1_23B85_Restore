@interface SRAcousticSettingsAccessibilityBackgroundSounds
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (SRAcousticSettingsAccessibilityBackgroundSounds)initWithBackgroundSoundsEnabled:(BOOL)enabled soundName:(int64_t)name relativeVolume:(double)volume playWithMediaEnabled:(BOOL)mediaEnabled relativeVolumeWithMedia:(double)media stopOnLockEnabled:(BOOL)lockEnabled;
- (SRAcousticSettingsAccessibilityBackgroundSounds)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp;
- (SRAcousticSettingsAccessibilityBackgroundSounds)initWithCoder:(id)coder;
- (id)binarySampleRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRAcousticSettingsAccessibilityBackgroundSounds

- (SRAcousticSettingsAccessibilityBackgroundSounds)initWithBackgroundSoundsEnabled:(BOOL)enabled soundName:(int64_t)name relativeVolume:(double)volume playWithMediaEnabled:(BOOL)mediaEnabled relativeVolumeWithMedia:(double)media stopOnLockEnabled:(BOOL)lockEnabled
{
  v25 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = SRAcousticSettingsAccessibilityBackgroundSounds;
  v14 = [(SRAcousticSettingsAccessibilityBackgroundSounds *)&v20 init];
  v15 = v14;
  if (v14)
  {
    if (volume < 0.0 || volume > 100.0)
    {
      v17 = SRLogAcousticSettings;
      if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v22 = @"accessibilityBackgroundSoundsRelativeVolume";
        v23 = 2048;
        mediaCopy = volume;
LABEL_15:
        _os_log_fault_impl(&dword_1C914D000, v17, OS_LOG_TYPE_FAULT, "Failed to construct SRAcousticSettingsAccessibilityBackgroundSounds object. %@: %f and is out of range of expected input.", buf, 0x16u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    if (media < 0.0 || media > 100.0)
    {
      v17 = SRLogAcousticSettings;
      if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v22 = @"accessibilityBackgroundSoundsRelativeVolumeWithMedia";
        v23 = 2048;
        mediaCopy = media;
        goto LABEL_15;
      }

LABEL_12:

      v15 = 0;
      goto LABEL_13;
    }

    v14->_enabled = enabled;
    v14->_soundName = name;
    v14->_playWithMediaEnabled = mediaEnabled;
    v14->_relativeVolume = volume;
    v14->_relativeVolumeWithMedia = media;
    v14->_stopOnLockEnabled = lockEnabled;
  }

LABEL_13:
  v18 = *MEMORY[0x1E69E9840];
  return v15;
}

- (SRAcousticSettingsAccessibilityBackgroundSounds)initWithBinarySampleRepresentation:(id)representation metadata:(id)metadata timestamp:(double)timestamp
{
  v16 = *MEMORY[0x1E69E9840];
  if (![representation length])
  {
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = SRAcousticSettingsAccessibilityBackgroundSounds;
  result = [(SRAcousticSettingsAccessibilityBackgroundSounds *)&v13 init];
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

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  enabled = self->_enabled;
  if (enabled != [equal isEnabled])
  {
    return 0;
  }

  soundName = self->_soundName;
  if (soundName != [equal soundName])
  {
    return 0;
  }

  relativeVolume = self->_relativeVolume;
  [equal relativeVolume];
  if (relativeVolume != v8)
  {
    return 0;
  }

  playWithMediaEnabled = self->_playWithMediaEnabled;
  if (playWithMediaEnabled != [equal isPlayWithMediaEnabled])
  {
    return 0;
  }

  relativeVolumeWithMedia = self->_relativeVolumeWithMedia;
  [equal relativeVolumeWithMedia];
  if (relativeVolumeWithMedia != v11)
  {
    return 0;
  }

  stopOnLockEnabled = self->_stopOnLockEnabled;
  return stopOnLockEnabled == [equal isStopOnLockEnabled];
}

- (unint64_t)hash
{
  v3 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_enabled), "hash"}];
  v4 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{self->_soundName), "hash"}] ^ v3;
  v5 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_relativeVolume), "hash"}];
  v6 = v4 ^ v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_playWithMediaEnabled), "hash"}];
  v7 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithDouble:{self->_relativeVolumeWithMedia), "hash"}];
  return v6 ^ v7 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{self->_stopOnLockEnabled), "hash"}];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  isEnabled = [(SRAcousticSettingsAccessibilityBackgroundSounds *)self isEnabled];
  if (self)
  {
    v7 = [(SRAcousticSettingsAccessibilityBackgroundSounds *)self soundName]- 2;
    if (v7 > 0xE)
    {
      v8 = @"Balanced Noise";
    }

    else
    {
      v8 = off_1E8330188[v7];
    }
  }

  else
  {
    v8 = 0;
  }

  soundName = [(SRAcousticSettingsAccessibilityBackgroundSounds *)self soundName];
  [(SRAcousticSettingsAccessibilityBackgroundSounds *)self relativeVolume];
  v11 = v10;
  isPlayWithMediaEnabled = [(SRAcousticSettingsAccessibilityBackgroundSounds *)self isPlayWithMediaEnabled];
  [(SRAcousticSettingsAccessibilityBackgroundSounds *)self relativeVolumeWithMedia];
  return [v3 stringWithFormat:@"%@ (%p) {Accessibility Background Sounds Settings backgroundSoundsIsEnabled: %d, soundName: %@ (%ld), relativeVolume: %f, playWithMediaIsEnabled: %d, relativeVolumeWithMedia: %f, stopOnLockIsEnabled: %d}", v5, self, isEnabled, v8, soundName, v11, isPlayWithMediaEnabled, v13, -[SRAcousticSettingsAccessibilityBackgroundSounds isStopOnLockEnabled](self, "isStopOnLockEnabled")];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeBool:-[SRAcousticSettingsAccessibilityBackgroundSounds isEnabled](self forKey:{"isEnabled"), @"accessibilityBackgroundSoundsEnabled"}];
  [coder encodeInteger:-[SRAcousticSettingsAccessibilityBackgroundSounds soundName](self forKey:{"soundName"), @"accessibilityBackgroundSoundsName"}];
  [(SRAcousticSettingsAccessibilityBackgroundSounds *)self relativeVolume];
  [coder encodeDouble:@"accessibilityBackgroundSoundsRelativeVolume" forKey:?];
  [coder encodeBool:-[SRAcousticSettingsAccessibilityBackgroundSounds isPlayWithMediaEnabled](self forKey:{"isPlayWithMediaEnabled"), @"accessibilityBackgroundSoundsPlayWithMediaEnabled"}];
  [(SRAcousticSettingsAccessibilityBackgroundSounds *)self relativeVolumeWithMedia];
  [coder encodeDouble:@"accessibilityBackgroundSoundsRelativeVolumeWithMedia" forKey:?];
  isStopOnLockEnabled = [(SRAcousticSettingsAccessibilityBackgroundSounds *)self isStopOnLockEnabled];

  [coder encodeBool:isStopOnLockEnabled forKey:@"accessibilityBackgroundSoundsStopOnLockEnabled"];
}

- (SRAcousticSettingsAccessibilityBackgroundSounds)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeBoolForKey:@"accessibilityBackgroundSoundsEnabled"];
  v7 = [coder decodeIntegerForKey:@"accessibilityBackgroundSoundsName"];
  [coder decodeDoubleForKey:@"accessibilityBackgroundSoundsRelativeVolume"];
  v9 = v8;
  v10 = [coder decodeBoolForKey:@"accessibilityBackgroundSoundsPlayWithMediaEnabled"];
  [coder decodeDoubleForKey:@"accessibilityBackgroundSoundsRelativeVolumeWithMedia"];
  v12 = v11;
  v13 = [coder decodeBoolForKey:@"accessibilityBackgroundSoundsStopOnLockEnabled"];
  if ((v7 - 17) > 0xFFFFFFFFFFFFFFEFLL)
  {
    v17 = v13;

    v18 = [SRAcousticSettingsAccessibilityBackgroundSounds alloc];
    v19 = *MEMORY[0x1E69E9840];

    return [(SRAcousticSettingsAccessibilityBackgroundSounds *)v18 initWithBackgroundSoundsEnabled:v6 soundName:v7 relativeVolume:v10 playWithMediaEnabled:v17 relativeVolumeWithMedia:v9 stopOnLockEnabled:v12];
  }

  else
  {
    v14 = SRLogAcousticSettings;
    if (os_log_type_enabled(SRLogAcousticSettings, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v21 = @"accessibilityBackgroundSoundsName";
      v22 = 2048;
      v23 = v7;
      _os_log_error_impl(&dword_1C914D000, v14, OS_LOG_TYPE_ERROR, "Failed to decode the object. %@: %ld", buf, 0x16u);
    }

    v15 = *MEMORY[0x1E69E9840];
    return 0;
  }
}

@end