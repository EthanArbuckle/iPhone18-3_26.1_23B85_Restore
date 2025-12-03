@interface VCCaptionsLanguageDetectorResults
+ (id)unarchivedTranscriptionFromData:(id)data error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (VCCaptionsLanguageDetectorResults)initWithCoder:(id)coder;
- (VCCaptionsLanguageDetectorResults)initWithDetectedLanguageCode:(id)code dominantLocale:(id)locale dominantLocaleConfidence:(double)confidence utteranceStartTimestamp:(double)timestamp utteranceDuration:(double)duration;
- (VCCaptionsLanguageDetectorResults)initWithSFLanguageDetectorResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VCCaptionsLanguageDetectorResults

- (VCCaptionsLanguageDetectorResults)initWithDetectedLanguageCode:(id)code dominantLocale:(id)locale dominantLocaleConfidence:(double)confidence utteranceStartTimestamp:(double)timestamp utteranceDuration:(double)duration
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = VCCaptionsLanguageDetectorResults;
  v12 = [(VCCaptionsLanguageDetectorResults *)&v14 init];
  if (v12)
  {
    v12->_detectedLanguageCode = code;
    v12->_dominantLocale = locale;
    v12->_dominantLocaleConfidence = confidence;
    v12->_utteranceStartTimestamp = timestamp;
    v12->_utteranceDuration = duration;
  }

  return v12;
}

- (VCCaptionsLanguageDetectorResults)initWithSFLanguageDetectorResult:(id)result
{
  v14 = *MEMORY[0x1E69E9840];
  detectedLanguageCode = [result detectedLanguageCode];
  v6 = [objc_msgSend(objc_msgSend(result "alternatives")];
  [objc_msgSend(objc_msgSend(result "alternatives")];
  v8 = v7;
  if (result)
  {
    [result range];
    time = v12;
    Seconds = CMTimeGetSeconds(&time);
    [result range];
  }

  else
  {
    memset(&time, 0, sizeof(time));
    Seconds = CMTimeGetSeconds(&time);
    memset(v11, 0, sizeof(v11));
  }

  time = *&v11[1];
  return [(VCCaptionsLanguageDetectorResults *)self initWithDetectedLanguageCode:detectedLanguageCode dominantLocale:v6 dominantLocaleConfidence:v8 utteranceStartTimestamp:Seconds utteranceDuration:CMTimeGetSeconds(&time)];
}

+ (id)unarchivedTranscriptionFromData:(id)data error:(id *)error
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = MEMORY[0x1E696ACD0];

  return [v12 _strictlyUnarchivedObjectOfClasses:v11 fromData:data error:error];
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = VCCaptionsLanguageDetectorResults;
  [(VCCaptionsLanguageDetectorResults *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  detectedLanguageCode = self->_detectedLanguageCode;
  dominantLocale = self->_dominantLocale;
  dominantLocaleConfidence = self->_dominantLocaleConfidence;
  utteranceStartTimestamp = self->_utteranceStartTimestamp;
  utteranceDuration = self->_utteranceDuration;

  return [v4 initWithDetectedLanguageCode:detectedLanguageCode dominantLocale:dominantLocale dominantLocaleConfidence:dominantLocaleConfidence utteranceStartTimestamp:utteranceStartTimestamp utteranceDuration:utteranceDuration];
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_detectedLanguageCode forKey:@"detectedLanguageCode"];
  [coder encodeObject:-[NSLocale localeIdentifier](self->_dominantLocale forKey:{"localeIdentifier"), @"localeIdentifier"}];
  [coder encodeDouble:@"dominantLocaleConfidence" forKey:self->_dominantLocaleConfidence];
  [coder encodeDouble:@"utteranceStartTimestamp" forKey:self->_utteranceStartTimestamp];
  utteranceDuration = self->_utteranceDuration;

  [coder encodeDouble:@"utteranceDuration" forKey:utteranceDuration];
}

- (VCCaptionsLanguageDetectorResults)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = VCCaptionsLanguageDetectorResults;
  v4 = [(VCCaptionsLanguageDetectorResults *)&v11 init];
  if (v4)
  {
    if ([coder containsValueForKey:@"detectedLanguageCode"])
    {
      v4->_detectedLanguageCode = [objc_msgSend(coder decodeObjectForKey:{@"detectedLanguageCode", "copy"}];
      if ([coder containsValueForKey:@"localeIdentifier"])
      {
        v5 = [coder decodeObjectForKey:@"localeIdentifier"];
        v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:v5];
        if (v6)
        {
          v4->_dominantLocale = v6;
          if ([coder containsValueForKey:@"dominantLocaleConfidence"])
          {
            [coder decodeDoubleForKey:@"dominantLocaleConfidence"];
            v4->_dominantLocaleConfidence = v7;
            if ([coder containsValueForKey:@"utteranceStartTimestamp"])
            {
              [coder decodeDoubleForKey:@"utteranceStartTimestamp"];
              v4->_utteranceStartTimestamp = v8;
              if ([coder containsValueForKey:@"utteranceDuration"])
              {
                [coder decodeDoubleForKey:@"utteranceDuration"];
                v4->_utteranceDuration = v9;
                return v4;
              }

              [VCCaptionsLanguageDetectorResults initWithCoder:];
            }

            else
            {
              [VCCaptionsLanguageDetectorResults initWithCoder:];
            }
          }

          else
          {
            [VCCaptionsLanguageDetectorResults initWithCoder:];
          }
        }

        else
        {
          [VCCaptionsLanguageDetectorResults initWithCoder:];
        }
      }

      else
      {
        [VCCaptionsLanguageDetectorResults initWithCoder:];
      }
    }

    else
    {
      [VCCaptionsLanguageDetectorResults initWithCoder:];
    }

    return 0;
  }

  return v4;
}

- (id)description
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = VCCaptionsLanguageDetectorResults;
  v4 = [(VCCaptionsLanguageDetectorResults *)&v9 description];
  detectedLanguageCode = self->_detectedLanguageCode;
  if (detectedLanguageCode)
  {
    uTF8String = [[(NSString *)detectedLanguageCode description] UTF8String];
  }

  else
  {
    uTF8String = "<nil>";
  }

  if ([(NSLocale *)self->_dominantLocale localeIdentifier])
  {
    uTF8String2 = [[(NSString *)[(NSLocale *)self->_dominantLocale localeIdentifier] description] UTF8String];
  }

  else
  {
    uTF8String2 = "<nil>";
  }

  return [v3 stringWithFormat:@"{ %@ detectedLanguageCode=%s, dominantLocale=%s, dominantLocaleConfidence=%f, utteranceStartTimestamp=%f, utteranceDuration=%f }", v4, uTF8String, uTF8String2, *&self->_dominantLocaleConfidence, *&self->_utteranceStartTimestamp, *&self->_utteranceDuration];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [objc_msgSend(equal "detectedLanguageCode")];
      if (v5)
      {
        v5 = [objc_msgSend(objc_msgSend(equal "dominantLocale")];
        if (v5)
        {
          [equal dominantLocaleConfidence];
          v7 = v6;
          [(VCCaptionsLanguageDetectorResults *)self utteranceStartTimestamp];
          v5 = VCMathUtils_DoubleEqualWithAccuracy(v7, v8, 0.0000625);
          if (v5)
          {
            [equal utteranceStartTimestamp];
            v10 = v9;
            [(VCCaptionsLanguageDetectorResults *)self utteranceStartTimestamp];
            v5 = VCMathUtils_DoubleEqualWithAccuracy(v10, v11, 0.0000625);
            if (v5)
            {
              [equal utteranceDuration];
              v13 = v12;
              [(VCCaptionsLanguageDetectorResults *)self utteranceDuration];

              LOBYTE(v5) = VCMathUtils_DoubleEqualWithAccuracy(v13, v14, 0.0000625);
            }
          }
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (void)initWithCoder:.cold.1()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode language detected code", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.2()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode dominant locale", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.3()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode dominant locale confidence", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.4()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode utterance start timestamp", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.5()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to decode utterance duration", v2, v3, v4, v5, v6);
    }
  }
}

- (void)initWithCoder:.cold.6()
{
  if (VRTraceGetErrorLogLevelForModule() >= 3)
  {
    VRTraceErrorLogLevelToCSTR();
    if (OUTLINED_FUNCTION_34())
    {
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_17(&dword_1DB56E000, v0, v1, " [%s] %s:%d Failed to allocated locale from localeIdentifier", v2, v3, v4, v5, v6);
    }
  }
}

@end