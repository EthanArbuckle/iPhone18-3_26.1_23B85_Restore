@interface _LTSELFLoggingTranslationTTSData
- (_LTSELFLoggingTranslationTTSData)initWithCoder:(id)a3;
- (_LTSELFLoggingTranslationTTSData)initWithSourceOrTargetLanguage:(int64_t)a3 isAutoplayTranslation:(BOOL)a4 ttsPlaybackSpeed:(int64_t)a5 audioChannel:(int64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _LTSELFLoggingTranslationTTSData

- (_LTSELFLoggingTranslationTTSData)initWithSourceOrTargetLanguage:(int64_t)a3 isAutoplayTranslation:(BOOL)a4 ttsPlaybackSpeed:(int64_t)a5 audioChannel:(int64_t)a6
{
  v14.receiver = self;
  v14.super_class = _LTSELFLoggingTranslationTTSData;
  v10 = [(_LTSELFLoggingTranslationTTSData *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_isAutoplayTranslation = a4;
    v10->_audioChannel = a6;
    v10->_playbackSpeed = a5;
    v10->_sourceOrTargetLanguage = a3;
    v12 = v10;
  }

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  sourceOrTargetLanguage = self->_sourceOrTargetLanguage;
  v5 = a3;
  [v5 encodeInteger:sourceOrTargetLanguage forKey:@"sourceOrTargetLanguage"];
  [v5 encodeBool:self->_isAutoplayTranslation forKey:@"isAutoplayTranslation"];
  [v5 encodeInteger:self->_audioChannel forKey:@"audioChannel"];
  [v5 encodeInteger:self->_playbackSpeed forKey:@"playbackSpeed"];
}

- (_LTSELFLoggingTranslationTTSData)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _LTSELFLoggingTranslationTTSData;
  v5 = [(_LTSELFLoggingTranslationTTSData *)&v8 init];
  if (v5)
  {
    v5->_sourceOrTargetLanguage = [v4 decodeIntegerForKey:@"sourceOrTargetLanguage"];
    v5->_isAutoplayTranslation = [v4 decodeBoolForKey:@"isAutoplayTranslation"];
    v5->_audioChannel = [v4 decodeIntegerForKey:@"audioChannel"];
    v5->_playbackSpeed = [v4 decodeIntegerForKey:@"playbackSpeed"];
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_LTSELFLoggingTranslationTTSData alloc];
  v5 = [(_LTSELFLoggingTranslationTTSData *)self sourceOrTargetLanguage];
  v6 = [(_LTSELFLoggingTranslationTTSData *)self isAutoplayTranslation];
  v7 = [(_LTSELFLoggingTranslationTTSData *)self playbackSpeed];
  v8 = [(_LTSELFLoggingTranslationTTSData *)self audioChannel];

  return [(_LTSELFLoggingTranslationTTSData *)v4 initWithSourceOrTargetLanguage:v5 isAutoplayTranslation:v6 ttsPlaybackSpeed:v7 audioChannel:v8];
}

@end