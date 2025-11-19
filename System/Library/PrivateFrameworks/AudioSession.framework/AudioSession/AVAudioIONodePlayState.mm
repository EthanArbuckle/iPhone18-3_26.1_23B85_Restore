@interface AVAudioIONodePlayState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AVAudioIONodePlayState

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(AVAudioIONodePlayState);
  [(AVAudioIONodePlayState *)v4 setPlayState:self->_playState];
  [(AVAudioIONodePlayState *)v4 setIoMode:self->_ioMode];
  return v4;
}

@end