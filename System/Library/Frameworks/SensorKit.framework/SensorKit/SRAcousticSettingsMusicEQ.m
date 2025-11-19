@interface SRAcousticSettingsMusicEQ
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (SRAcousticSettingsMusicEQ)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5;
- (SRAcousticSettingsMusicEQ)initWithCoder:(id)a3;
- (SRAcousticSettingsMusicEQ)initWithSoundCheckEnabled:(BOOL)a3 lateNightModeEnabled:(BOOL)a4;
- (id)binarySampleRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRAcousticSettingsMusicEQ

- (SRAcousticSettingsMusicEQ)initWithSoundCheckEnabled:(BOOL)a3 lateNightModeEnabled:(BOOL)a4
{
  v7.receiver = self;
  v7.super_class = SRAcousticSettingsMusicEQ;
  result = [(SRAcousticSettingsMusicEQ *)&v7 init];
  if (result)
  {
    result->_soundCheckEnabled = a3;
    result->_lateNightModeEnabled = a4;
  }

  return result;
}

- (SRAcousticSettingsMusicEQ)initWithBinarySampleRepresentation:(id)a3 metadata:(id)a4 timestamp:(double)a5
{
  v16 = *MEMORY[0x1E69E9840];
  if (![a3 length])
  {
    goto LABEL_7;
  }

  v13.receiver = self;
  v13.super_class = SRAcousticSettingsMusicEQ;
  result = [(SRAcousticSettingsMusicEQ *)&v13 init];
  if (result)
  {
    self = result;
    v12 = 0;
    v8 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:a3 error:&v12];
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

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  soundCheckEnabled = self->_soundCheckEnabled;
  if (soundCheckEnabled != [a3 isSoundCheckEnabled])
  {
    return 0;
  }

  lateNightModeEnabled = self->_lateNightModeEnabled;
  return lateNightModeEnabled == [a3 isLateNightModeEnabled];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"%@ (%p) {Music EQ Settings soundCheckEnabled: %d, lateNightModeEnabled: %d}", NSStringFromClass(v4), self, -[SRAcousticSettingsMusicEQ isSoundCheckEnabled](self, "isSoundCheckEnabled"), -[SRAcousticSettingsMusicEQ isLateNightModeEnabled](self, "isLateNightModeEnabled")];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeBool:-[SRAcousticSettingsMusicEQ isSoundCheckEnabled](self forKey:{"isSoundCheckEnabled"), @"soundCheckEnabled"}];
  v6 = [(SRAcousticSettingsMusicEQ *)self isLateNightModeEnabled];

  [a3 encodeBool:v6 forKey:@"lateNightModeEnabled"];
}

- (SRAcousticSettingsMusicEQ)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeBoolForKey:@"soundCheckEnabled"];
  v7 = [a3 decodeBoolForKey:@"lateNightModeEnabled"];

  v8 = [SRAcousticSettingsMusicEQ alloc];

  return [(SRAcousticSettingsMusicEQ *)v8 initWithSoundCheckEnabled:v6 lateNightModeEnabled:v7];
}

@end