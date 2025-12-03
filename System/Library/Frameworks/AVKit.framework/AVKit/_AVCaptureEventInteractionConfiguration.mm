@interface _AVCaptureEventInteractionConfiguration
- (_AVCaptureEventInteractionConfiguration)init;
- (unsigned)_systemSoundIDForCurrentCaptureType;
- (unsigned)_systemSoundIDForDelaySound;
- (void)setCaptureDelayDuration:(double)duration;
- (void)setCaptureDelaySoundURL:(id)l;
- (void)setCurrentCaptureType:(int64_t)type;
- (void)setCustomSoundURL:(id)l forType:(int64_t)type;
@end

@implementation _AVCaptureEventInteractionConfiguration

- (unsigned)_systemSoundIDForDelaySound
{
  result = 1261;
  outSystemSoundID = 1261;
  captureDelaySoundURL = self->_captureDelaySoundURL;
  if (captureDelaySoundURL)
  {
    if (AudioServicesCreateSystemSoundID(captureDelaySoundURL, &outSystemSoundID))
    {
      v5 = _AVLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_18B49C000, v5, OS_LOG_TYPE_DEFAULT, "[_AVCaptureEventInteractionConfiguration] getCaptureDelaySoundID - wasn't able to create a system sound ID. Using the default tone.", v6, 2u);
      }

      return 1261;
    }

    else
    {
      return outSystemSoundID;
    }
  }

  return result;
}

- (unsigned)_systemSoundIDForCurrentCaptureType
{
  captureSounds = self->_captureSounds;
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_currentCaptureType];
  v4 = [(NSMutableDictionary *)captureSounds objectForKeyedSubscript:v3];

  LODWORD(v3) = [v4 unsignedIntValue];
  return v3;
}

- (void)setCustomSoundURL:(id)l forType:(int64_t)type
{
  if (l)
  {
    outSystemSoundID = 0;
    if (AudioServicesCreateSystemSoundID(l, &outSystemSoundID))
    {
      v6 = _AVLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18B49C000, v6, OS_LOG_TYPE_DEFAULT, "[_AVCaptureEventInteractionConfiguration] setCustomSound - cannot create a system sound ID from the given customSoundURL. Using the default tone.", buf, 2u);
      }

      outSystemSoundID = 1117;
    }

    captureSounds = self->_captureSounds;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [(NSMutableDictionary *)captureSounds setObject:v15 forKey:v16];
  }

  else
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "[_AVCaptureEventInteractionConfiguration] setCustomSound - resetting capture sound for the specified type to default.", v17, 2u);
    }

    v9 = self->_captureSounds;
    defaultSoundsByCaptureType = self->_defaultSoundsByCaptureType;
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v11 = [(NSDictionary *)defaultSoundsByCaptureType objectForKeyedSubscript:v10];
    v12 = v11;
    if (!v11)
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1117];
    }

    v13 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    [(NSMutableDictionary *)v9 setObject:v12 forKey:v13];

    if (!v11)
    {
    }
  }
}

- (void)setCaptureDelayDuration:(double)duration
{
  if (self->_captureDelayDuration != duration)
  {
    self->_captureDelayDuration = duration;
  }
}

- (void)setCaptureDelaySoundURL:(id)l
{
  lCopy = l;
  captureDelaySoundURL = self->_captureDelaySoundURL;
  p_captureDelaySoundURL = &self->_captureDelaySoundURL;
  if (captureDelaySoundURL != lCopy)
  {
    v8 = lCopy;
    objc_storeStrong(p_captureDelaySoundURL, l);
    lCopy = v8;
  }
}

- (void)setCurrentCaptureType:(int64_t)type
{
  if (self->_currentCaptureType != type)
  {
    self->_currentCaptureType = type;
  }
}

- (_AVCaptureEventInteractionConfiguration)init
{
  v13[4] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = _AVCaptureEventInteractionConfiguration;
  v2 = [(_AVCaptureEventInteractionConfiguration *)&v11 init];
  v3 = v2;
  if (v2)
  {
    captureDelaySoundURL = v2->_captureDelaySoundURL;
    v2->_currentCaptureType = 0;
    v2->_captureDelaySoundURL = 0;

    v3->_captureDelayDuration = 0.0;
    v12[0] = &unk_1EFF12908;
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1117];
    v13[0] = v5;
    v13[1] = &unk_1EFF12938;
    v12[1] = &unk_1EFF12920;
    v12[2] = &unk_1EFF12950;
    v12[3] = &unk_1EFF12980;
    v13[2] = &unk_1EFF12968;
    v13[3] = &unk_1EFF12998;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];
    defaultSoundsByCaptureType = v3->_defaultSoundsByCaptureType;
    v3->_defaultSoundsByCaptureType = v6;

    v8 = [(NSDictionary *)v3->_defaultSoundsByCaptureType mutableCopy];
    captureSounds = v3->_captureSounds;
    v3->_captureSounds = v8;
  }

  return v3;
}

@end