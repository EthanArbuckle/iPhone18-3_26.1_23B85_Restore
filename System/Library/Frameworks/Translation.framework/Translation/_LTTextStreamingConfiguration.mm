@interface _LTTextStreamingConfiguration
- (_LTTextStreamingConfiguration)init;
- (_LTTextStreamingConfiguration)initWithCoder:(id)coder;
- (_LTTextStreamingConfiguration)initWithMinTimeBetweenTranslations:(double)translations maxTimeBetweenTranslations:(double)betweenTranslations userIdleTime:(double)time maxPartialTranslationAttempts:(int64_t)attempts minNumberOfCharactersForTranslation:(int64_t)translation;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)updateMinTimeBetweenTranslations:(double)translations maxTimeBetweenTranslations:(double)betweenTranslations userIdleTime:(double)time;
@end

@implementation _LTTextStreamingConfiguration

- (_LTTextStreamingConfiguration)init
{
  v6.receiver = self;
  v6.super_class = _LTTextStreamingConfiguration;
  v2 = [(_LTTextStreamingConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_23AB4CF70;
    *(v2 + 3) = 0x3FE0000000000000;
    *(v2 + 2) = xmmword_23AB4CF80;
    v4 = v2;
  }

  return v3;
}

- (_LTTextStreamingConfiguration)initWithMinTimeBetweenTranslations:(double)translations maxTimeBetweenTranslations:(double)betweenTranslations userIdleTime:(double)time maxPartialTranslationAttempts:(int64_t)attempts minNumberOfCharactersForTranslation:(int64_t)translation
{
  v16.receiver = self;
  v16.super_class = _LTTextStreamingConfiguration;
  v12 = [(_LTTextStreamingConfiguration *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_minTimeBetweenTranslations = translations;
    v12->_maxTimeBetweenTranslations = betweenTranslations;
    v12->_userIdleTime = time;
    v12->_maxPartialTranslationAttempts = attempts;
    v12->_minNumberOfCharactersForTranslation = translation;
    v14 = v12;
  }

  return v13;
}

- (void)updateMinTimeBetweenTranslations:(double)translations maxTimeBetweenTranslations:(double)betweenTranslations userIdleTime:(double)time
{
  self->_minTimeBetweenTranslations = translations;
  self->_maxTimeBetweenTranslations = betweenTranslations;
  self->_userIdleTime = time;
}

- (_LTTextStreamingConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = _LTTextStreamingConfiguration;
  v5 = [(_LTTextStreamingConfiguration *)&v11 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"minTimeBetweenTranslations"];
    v5->_minTimeBetweenTranslations = v6;
    [coderCopy decodeDoubleForKey:@"maxTimeBetweenTranslations"];
    v5->_maxTimeBetweenTranslations = v7;
    [coderCopy decodeDoubleForKey:@"userIdleTime"];
    v5->_userIdleTime = v8;
    v5->_maxPartialTranslationAttempts = [coderCopy decodeIntegerForKey:@"maxPartialTranslationAttempts"];
    v5->_minNumberOfCharactersForTranslation = [coderCopy decodeIntegerForKey:@"minNumberOfCharactersForTranslation"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minTimeBetweenTranslations = self->_minTimeBetweenTranslations;
  coderCopy = coder;
  [coderCopy encodeDouble:@"minTimeBetweenTranslations" forKey:minTimeBetweenTranslations];
  [coderCopy encodeDouble:@"maxTimeBetweenTranslations" forKey:self->_maxTimeBetweenTranslations];
  [coderCopy encodeDouble:@"userIdleTime" forKey:self->_userIdleTime];
  [coderCopy encodeInteger:self->_maxPartialTranslationAttempts forKey:@"maxPartialTranslationAttempts"];
  [coderCopy encodeInteger:self->_minNumberOfCharactersForTranslation forKey:@"minNumberOfCharactersForTranslation"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTTextStreamingConfiguration alloc];
  minTimeBetweenTranslations = self->_minTimeBetweenTranslations;
  maxTimeBetweenTranslations = self->_maxTimeBetweenTranslations;
  userIdleTime = self->_userIdleTime;
  maxPartialTranslationAttempts = self->_maxPartialTranslationAttempts;
  minNumberOfCharactersForTranslation = self->_minNumberOfCharactersForTranslation;

  return [(_LTTextStreamingConfiguration *)v4 initWithMinTimeBetweenTranslations:maxPartialTranslationAttempts maxTimeBetweenTranslations:minNumberOfCharactersForTranslation userIdleTime:minTimeBetweenTranslations maxPartialTranslationAttempts:maxTimeBetweenTranslations minNumberOfCharactersForTranslation:userIdleTime];
}

@end