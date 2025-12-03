@interface AVAudioIONodePlayState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AVAudioIONodePlayState

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    playState = self->_playState;
    if (playState == [v5 playState])
    {
      ioMode = self->_ioMode;
      v8 = ioMode == [v5 ioMode];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(AVAudioIONodePlayState);
  [(AVAudioIONodePlayState *)v4 setPlayState:self->_playState];
  [(AVAudioIONodePlayState *)v4 setIoMode:self->_ioMode];
  return v4;
}

@end