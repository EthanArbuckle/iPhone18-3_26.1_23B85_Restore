@interface AVMediaSecondaryPlaybackControlConfiguration
- (AVMediaSecondaryPlaybackControlConfiguration)initWithType:(unint64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setSkipInterval:(id *)a3;
@end

@implementation AVMediaSecondaryPlaybackControlConfiguration

- (void)setSkipInterval:(id *)a3
{
  v3 = *&a3->var0;
  self->_skipInterval.epoch = a3->var3;
  *&self->_skipInterval.value = v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVMediaSecondaryPlaybackControlConfiguration);
  [(AVMediaSecondaryPlaybackControlConfiguration *)v4 setType:[(AVMediaSecondaryPlaybackControlConfiguration *)self type]];
  [(AVMediaSecondaryPlaybackControlConfiguration *)v4 setEnabled:[(AVMediaSecondaryPlaybackControlConfiguration *)self isEnabled]];
  [(AVMediaSecondaryPlaybackControlConfiguration *)self skipInterval];
  [(AVMediaSecondaryPlaybackControlConfiguration *)v4 setSkipInterval:v6];
  return v4;
}

- (AVMediaSecondaryPlaybackControlConfiguration)initWithType:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = AVMediaSecondaryPlaybackControlConfiguration;
  v4 = [(AVMediaSecondaryPlaybackControlConfiguration *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v4->_enabled = 1;
    CMTimeMakeWithSeconds(&v7, 10.0, 600);
    v5->_skipInterval = v7;
  }

  return v5;
}

@end