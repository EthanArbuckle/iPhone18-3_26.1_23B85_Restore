@interface AVMediaSecondaryPlaybackControlConfiguration
- (AVMediaSecondaryPlaybackControlConfiguration)initWithType:(unint64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSkipInterval:(id *)interval;
@end

@implementation AVMediaSecondaryPlaybackControlConfiguration

- (void)setSkipInterval:(id *)interval
{
  v3 = *&interval->var0;
  self->_skipInterval.epoch = interval->var3;
  *&self->_skipInterval.value = v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVMediaSecondaryPlaybackControlConfiguration);
  [(AVMediaSecondaryPlaybackControlConfiguration *)v4 setType:[(AVMediaSecondaryPlaybackControlConfiguration *)self type]];
  [(AVMediaSecondaryPlaybackControlConfiguration *)v4 setEnabled:[(AVMediaSecondaryPlaybackControlConfiguration *)self isEnabled]];
  [(AVMediaSecondaryPlaybackControlConfiguration *)self skipInterval];
  [(AVMediaSecondaryPlaybackControlConfiguration *)v4 setSkipInterval:v6];
  return v4;
}

- (AVMediaSecondaryPlaybackControlConfiguration)initWithType:(unint64_t)type
{
  v8.receiver = self;
  v8.super_class = AVMediaSecondaryPlaybackControlConfiguration;
  v4 = [(AVMediaSecondaryPlaybackControlConfiguration *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v4->_enabled = 1;
    CMTimeMakeWithSeconds(&v7, 10.0, 600);
    v5->_skipInterval = v7;
  }

  return v5;
}

@end