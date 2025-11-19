@interface AVOutputSettingsAssistant
+ (AVOutputSettingsAssistant)outputSettingsAssistantWithPreset:(AVOutputSettingsPreset)presetIdentifier;
+ (NSArray)availableOutputSettingsPresets;
+ (id)baseSettingsProviderForPreset:(id)a3;
+ (id)videoEncoderCapabilities;
+ (id)videoSettingsAdjusterForPreset:(id)a3;
- (AVOutputSettingsAssistant)initWithPreset:(id)a3;
- (NSDictionary)audioSettings;
- (NSDictionary)videoSettings;
- (void)dealloc;
- (void)setSourceAudioFormat:(CMAudioFormatDescriptionRef)sourceAudioFormat;
- (void)setSourceVideoAverageFrameDuration:(CMTime *)sourceVideoAverageFrameDuration;
- (void)setSourceVideoFormat:(CMVideoFormatDescriptionRef)sourceVideoFormat;
- (void)setSourceVideoMinFrameDuration:(CMTime *)sourceVideoMinFrameDuration;
- (void)setVideoEncoderSpecification:(id)a3;
@end

@implementation AVOutputSettingsAssistant

+ (NSArray)availableOutputSettingsPresets
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [a1 _allOutputSettingsPresets];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if ([objc_opt_class() baseSettingsProviderForPreset:v9])
        {
          [(NSArray *)v3 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (AVOutputSettingsAssistant)outputSettingsAssistantWithPreset:(AVOutputSettingsPreset)presetIdentifier
{
  v3 = [[a1 alloc] initWithPreset:presetIdentifier];

  return v3;
}

- (AVOutputSettingsAssistant)initWithPreset:(id)a3
{
  v10.receiver = self;
  v10.super_class = AVOutputSettingsAssistant;
  v4 = [(AVOutputSettingsAssistant *)&v10 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVOutputSettingsAssistantInternal);
    v4->_internal = v5;
    if (v5 && (CFRetain(v5), v4->_internal->baseSettingsProvider = [objc_opt_class() baseSettingsProviderForPreset:a3], v4->_internal->videoSettingsAdjuster = objc_msgSend(objc_opt_class(), "videoSettingsAdjusterForPreset:", a3), v6 = v4->_internal, v6->baseSettingsProvider) && v6->videoSettingsAdjuster)
    {
      CMTimeMake(&v9, 1, 30);
      v6->sourceVideoAverageFrameDuration = v9;
      internal = v4->_internal;
      CMTimeMake(&v9, 1, 30);
      internal[3] = v9;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {

    v4 = self->_internal;
    sourceVideoFormat = v4->sourceVideoFormat;
    if (sourceVideoFormat)
    {
      CFRelease(sourceVideoFormat);
    }

    sourceAudioFormat = v4->sourceAudioFormat;
    if (sourceAudioFormat)
    {
      CFRelease(sourceAudioFormat);
    }

    CFRelease(v4);
  }

  v7.receiver = self;
  v7.super_class = AVOutputSettingsAssistant;
  [(AVOutputSettingsAssistant *)&v7 dealloc];
}

- (NSDictionary)audioSettings
{
  v3 = [(AVOutputSettingsAssistantBaseSettingsProvider *)self->_internal->baseSettingsProvider baseAudioSettings];
  if ([(AVOutputSettingsAssistant *)self sourceAudioFormat])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
    *&v15[0] = 0;
    inSpecifier = 0;
    RichestDecodableFormatAndChannelLayout = FigAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout();
    v5 = *MEMORY[0x1E6958348];
    [-[NSDictionary objectForKey:](v3 objectForKey:{*MEMORY[0x1E6958348]), "doubleValue"}];
    if (v6 > *RichestDecodableFormatAndChannelLayout)
    {
      v6 = *RichestDecodableFormatAndChannelLayout;
    }

    -[NSDictionary setObject:forKey:](v3, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:{v6, *&v15[0]}], v5);
    v9 = *(RichestDecodableFormatAndChannelLayout + 28);
    v10 = *MEMORY[0x1E6958300];
    v11 = [-[NSDictionary objectForKey:](v3 objectForKey:{*MEMORY[0x1E6958300]), "integerValue"}];
    v7 = [MEMORY[0x1E695DEF0] data];
    if (v11 == v9)
    {
      v8 = [-[NSDictionary objectForKey:](v3 objectForKey:{v10), "integerValue"}];
    }

    else
    {
      v8 = *(RichestDecodableFormatAndChannelLayout + 28);
    }
  }

  else
  {
    v15[0] = xmmword_1962574F8;
    v15[1] = unk_196257508;
    v7 = [MEMORY[0x1E695DEF0] dataWithBytes:v15 length:32];
    v8 = 2;
  }

  v12 = *MEMORY[0x1E6958258];
  if (![(NSDictionary *)v3 objectForKey:*MEMORY[0x1E6958258]])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v3];
    [(NSDictionary *)v3 setObject:v7 forKey:v12];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
    [(NSDictionary *)v3 setObject:v13 forKey:*MEMORY[0x1E6958300]];
  }

  return v3;
}

- (NSDictionary)videoSettings
{
  v25[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[AVOutputSettingsAssistantBaseSettingsProvider baseVideoSettings](self->_internal->baseSettingsProvider, "baseVideoSettings")}];
  v4 = [(AVOutputSettingsAssistant *)self sourceVideoFormat];
  v5 = v4;
  if (v4)
  {
    Dimensions = CMVideoFormatDescriptionGetDimensions(v4);
    v7 = [-[NSDictionary objectForKey:](v3 objectForKey:{@"AVVideoWidthKey", "integerValue"}];
    v8 = [-[NSDictionary objectForKey:](v3 objectForKey:{@"AVVideoHeightKey", "integerValue"}];
    v9 = v8;
    v10 = SHIDWORD(Dimensions);
    v11 = Dimensions * v8 / SHIDWORD(Dimensions);
    if (v7 * (Dimensions >> 32) < v8 * Dimensions)
    {
      v9 = v10 * v7 / Dimensions;
      v11 = v7;
    }

    v12 = v11 > Dimensions;
    if (v9 > v10)
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = SHIDWORD(Dimensions);
    }

    else
    {
      v13 = v9;
    }

    if (v12)
    {
      v14 = Dimensions;
    }

    else
    {
      v14 = v11;
    }

    -[NSDictionary setObject:forKey:](v3, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v14], @"AVVideoWidthKey");
    -[NSDictionary setObject:forKey:](v3, "setObject:forKey:", [MEMORY[0x1E696AD98] numberWithDouble:v13], @"AVVideoHeightKey");
    if ([-[NSDictionary objectForKey:](v3 objectForKey:{@"AVVideoCodecKey", "isEqualToString:", @"hvc1"}])
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9C0]);
      CFArrayAppendValue(Mutable, v5);
      if (FigExportSettings_GetMaximumBitsPerComponent() <= 9)
      {
        v16 = 0;
      }

      else
      {
        v16 = *MEMORY[0x1E6983F78];
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[NSDictionary objectForKey:](v3, "objectForKey:", @"AVVideoCompressionPropertiesKey"}];
  if (v5)
  {
    [(AVOutputSettingsAssistant *)self sourceVideoAverageFrameDuration];
    v18 = 1.0 / CMTimeGetSeconds(&time);
    *&v18 = v18;
    v19 = [(AVOutputSettingsAssistantVideoSettingsAdjuster *)self->_internal->videoSettingsAdjuster averageBitRateForSourceFormatDescription:v5 andTargetFrameRate:self->_internal->videoEncoderSpecification andEncoderSpecification:v18];
    [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v19), @"AverageBitRate"}];
  }

  [(AVOutputSettingsAssistant *)self sourceVideoMinFrameDuration];
  [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", 1.0 / CMTimeGetSeconds(&time)), @"ExpectedFrameRate"}];
  if ([objc_msgSend(objc_opt_class() "videoEncoderCapabilities")])
  {
    [(AVOutputSettingsAssistant *)self sourceVideoMinFrameDuration];
    CMTimeMake(&v23, 1, 30);
    if (CMTimeCompare(&time, &v23) < 0)
    {
      [v17 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", 30), @"AverageNonDroppableFrameRate"}];
    }
  }

  if (v16)
  {
    [v17 setObject:v16 forKey:@"ProfileLevel"];
  }

  [(NSDictionary *)v3 setObject:v17 forKey:@"AVVideoCompressionPropertiesKey"];
  if (v5)
  {
    v25[0] = v5;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  }

  else
  {
    v20 = 0;
  }

  v21 = [(AVOutputSettingsAssistantVideoSettingsAdjuster *)self->_internal->videoSettingsAdjuster colorSpaceFromSourceFormatDescriptions:v20 andRendererColorSpace:0];
  if (v21)
  {
    [(NSDictionary *)v3 setObject:v21 forKey:@"AVVideoColorPropertiesKey"];
  }

  return v3;
}

- (void)setSourceAudioFormat:(CMAudioFormatDescriptionRef)sourceAudioFormat
{
  internal = self->_internal;
  v4 = internal->sourceAudioFormat;
  internal->sourceAudioFormat = sourceAudioFormat;
  if (sourceAudioFormat)
  {
    CFRetain(sourceAudioFormat);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setSourceVideoFormat:(CMVideoFormatDescriptionRef)sourceVideoFormat
{
  internal = self->_internal;
  v4 = internal->sourceVideoFormat;
  internal->sourceVideoFormat = sourceVideoFormat;
  if (sourceVideoFormat)
  {
    CFRetain(sourceVideoFormat);
  }

  if (v4)
  {

    CFRelease(v4);
  }
}

- (void)setSourceVideoAverageFrameDuration:(CMTime *)sourceVideoAverageFrameDuration
{
  if ((sourceVideoAverageFrameDuration->flags & 0x1D) != 1)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIME_IS_NUMERIC(sourceVideoAverageFrameDuration)";
    goto LABEL_6;
  }

  time1 = *sourceVideoAverageFrameDuration;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2) <= 0)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D940];
    v15 = "CMTIME_COMPARE_INLINE(sourceVideoAverageFrameDuration, >, kCMTimeZero)";
LABEL_6:
    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v3, v4, v5, v6, v7, v15), 0}];
    objc_exception_throw(v16);
  }

  internal = self->_internal;
  v12 = *&sourceVideoAverageFrameDuration->value;
  internal->sourceVideoAverageFrameDuration.epoch = sourceVideoAverageFrameDuration->epoch;
  *&internal->sourceVideoAverageFrameDuration.value = v12;
}

- (void)setSourceVideoMinFrameDuration:(CMTime *)sourceVideoMinFrameDuration
{
  if ([objc_opt_class() validatesSourceVideoMinFrameDuration])
  {
    if ((sourceVideoMinFrameDuration->flags & 0x1D) == 1)
    {
      time1 = *sourceVideoMinFrameDuration;
      time2 = **&MEMORY[0x1E6960CC0];
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        goto LABEL_4;
      }

      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v15 = "CMTIME_COMPARE_INLINE(sourceVideoMinFrameDuration, >, kCMTimeZero)";
    }

    else
    {
      v13 = MEMORY[0x1E695DF30];
      v14 = *MEMORY[0x1E695D940];
      v15 = "CMTIME_IS_NUMERIC(sourceVideoMinFrameDuration)";
    }

    v16 = [v13 exceptionWithName:v14 reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"invalid parameter not satisfying: %s", v6, v7, v8, v9, v10, v15), 0}];
    objc_exception_throw(v16);
  }

LABEL_4:
  internal = self->_internal;
  v12 = *&sourceVideoMinFrameDuration->value;
  internal->sourceVideoMinFrameDuration.epoch = sourceVideoMinFrameDuration->epoch;
  *&internal->sourceVideoMinFrameDuration.value = v12;
}

- (void)setVideoEncoderSpecification:(id)a3
{
  v5 = *MEMORY[0x1E6984270];
  if (a3 && [a3 objectForKeyedSubscript:*MEMORY[0x1E6984270]])
  {
    internal = self->_internal;
    p_internal = &self->_internal;
    videoEncoderSpecification = internal->videoEncoderSpecification;
    if (videoEncoderSpecification == a3)
    {
      return;
    }

    v9 = [a3 copy];
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:a3];
    [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v5];
    v11 = self->_internal;
    p_internal = &self->_internal;

    v9 = v10;
  }

  (*p_internal)->videoEncoderSpecification = v9;
}

+ (id)baseSettingsProviderForPreset:(id)a3
{
  v3 = [[AVExportSettingsOutputSettingsAssistantBaseSettings alloc] initWithOutputSettingsPreset:a3];

  return v3;
}

+ (id)videoSettingsAdjusterForPreset:(id)a3
{
  v3 = [[AVExportSettingsOutputSettingsAssistantVideoSettingsAdjuster alloc] initWithOutputSettingsPreset:a3];

  return v3;
}

+ (id)videoEncoderCapabilities
{
  v2 = objc_alloc_init(AVIOKitOutputSettingsAssistantVideoEncoderCapabilities);

  return v2;
}

@end