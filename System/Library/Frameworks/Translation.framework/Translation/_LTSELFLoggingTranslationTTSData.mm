@interface _LTSELFLoggingTranslationTTSData
- (_LTSELFLoggingTranslationTTSData)initWithCoder:(id)coder;
- (_LTSELFLoggingTranslationTTSData)initWithSourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTSELFLoggingTranslationTTSData

- (_LTSELFLoggingTranslationTTSData)initWithSourceOrTargetLanguage:(int64_t)language isAutoplayTranslation:(BOOL)translation ttsPlaybackSpeed:(int64_t)speed audioChannel:(int64_t)channel
{
  v14.receiver = self;
  v14.super_class = _LTSELFLoggingTranslationTTSData;
  v10 = [(_LTSELFLoggingTranslationTTSData *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_isAutoplayTranslation = translation;
    v10->_audioChannel = channel;
    v10->_playbackSpeed = speed;
    v10->_sourceOrTargetLanguage = language;
    v12 = v10;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  sourceOrTargetLanguage = self->_sourceOrTargetLanguage;
  coderCopy = coder;
  [coderCopy encodeInteger:sourceOrTargetLanguage forKey:@"sourceOrTargetLanguage"];
  [coderCopy encodeBool:self->_isAutoplayTranslation forKey:@"isAutoplayTranslation"];
  [coderCopy encodeInteger:self->_audioChannel forKey:@"audioChannel"];
  [coderCopy encodeInteger:self->_playbackSpeed forKey:@"playbackSpeed"];
}

- (_LTSELFLoggingTranslationTTSData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _LTSELFLoggingTranslationTTSData;
  v5 = [(_LTSELFLoggingTranslationTTSData *)&v8 init];
  if (v5)
  {
    v5->_sourceOrTargetLanguage = [coderCopy decodeIntegerForKey:@"sourceOrTargetLanguage"];
    v5->_isAutoplayTranslation = [coderCopy decodeBoolForKey:@"isAutoplayTranslation"];
    v5->_audioChannel = [coderCopy decodeIntegerForKey:@"audioChannel"];
    v5->_playbackSpeed = [coderCopy decodeIntegerForKey:@"playbackSpeed"];
    v6 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTSELFLoggingTranslationTTSData alloc];
  sourceOrTargetLanguage = [(_LTSELFLoggingTranslationTTSData *)self sourceOrTargetLanguage];
  isAutoplayTranslation = [(_LTSELFLoggingTranslationTTSData *)self isAutoplayTranslation];
  playbackSpeed = [(_LTSELFLoggingTranslationTTSData *)self playbackSpeed];
  audioChannel = [(_LTSELFLoggingTranslationTTSData *)self audioChannel];

  return [(_LTSELFLoggingTranslationTTSData *)v4 initWithSourceOrTargetLanguage:sourceOrTargetLanguage isAutoplayTranslation:isAutoplayTranslation ttsPlaybackSpeed:playbackSpeed audioChannel:audioChannel];
}

@end