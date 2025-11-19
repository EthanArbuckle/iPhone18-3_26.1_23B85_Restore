@interface _LTTextStreamingConfiguration
- (_LTTextStreamingConfiguration)init;
- (_LTTextStreamingConfiguration)initWithCoder:(id)a3;
- (_LTTextStreamingConfiguration)initWithMinTimeBetweenTranslations:(double)a3 maxTimeBetweenTranslations:(double)a4 userIdleTime:(double)a5 maxPartialTranslationAttempts:(int64_t)a6 minNumberOfCharactersForTranslation:(int64_t)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)updateMinTimeBetweenTranslations:(double)a3 maxTimeBetweenTranslations:(double)a4 userIdleTime:(double)a5;
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

- (_LTTextStreamingConfiguration)initWithMinTimeBetweenTranslations:(double)a3 maxTimeBetweenTranslations:(double)a4 userIdleTime:(double)a5 maxPartialTranslationAttempts:(int64_t)a6 minNumberOfCharactersForTranslation:(int64_t)a7
{
  v16.receiver = self;
  v16.super_class = _LTTextStreamingConfiguration;
  v12 = [(_LTTextStreamingConfiguration *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_minTimeBetweenTranslations = a3;
    v12->_maxTimeBetweenTranslations = a4;
    v12->_userIdleTime = a5;
    v12->_maxPartialTranslationAttempts = a6;
    v12->_minNumberOfCharactersForTranslation = a7;
    v14 = v12;
  }

  return v13;
}

- (void)updateMinTimeBetweenTranslations:(double)a3 maxTimeBetweenTranslations:(double)a4 userIdleTime:(double)a5
{
  self->_minTimeBetweenTranslations = a3;
  self->_maxTimeBetweenTranslations = a4;
  self->_userIdleTime = a5;
}

- (_LTTextStreamingConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _LTTextStreamingConfiguration;
  v5 = [(_LTTextStreamingConfiguration *)&v11 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"minTimeBetweenTranslations"];
    v5->_minTimeBetweenTranslations = v6;
    [v4 decodeDoubleForKey:@"maxTimeBetweenTranslations"];
    v5->_maxTimeBetweenTranslations = v7;
    [v4 decodeDoubleForKey:@"userIdleTime"];
    v5->_userIdleTime = v8;
    v5->_maxPartialTranslationAttempts = [v4 decodeIntegerForKey:@"maxPartialTranslationAttempts"];
    v5->_minNumberOfCharactersForTranslation = [v4 decodeIntegerForKey:@"minNumberOfCharactersForTranslation"];
    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minTimeBetweenTranslations = self->_minTimeBetweenTranslations;
  v5 = a3;
  [v5 encodeDouble:@"minTimeBetweenTranslations" forKey:minTimeBetweenTranslations];
  [v5 encodeDouble:@"maxTimeBetweenTranslations" forKey:self->_maxTimeBetweenTranslations];
  [v5 encodeDouble:@"userIdleTime" forKey:self->_userIdleTime];
  [v5 encodeInteger:self->_maxPartialTranslationAttempts forKey:@"maxPartialTranslationAttempts"];
  [v5 encodeInteger:self->_minNumberOfCharactersForTranslation forKey:@"minNumberOfCharactersForTranslation"];
}

- (id)copyWithZone:(_NSZone *)a3
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