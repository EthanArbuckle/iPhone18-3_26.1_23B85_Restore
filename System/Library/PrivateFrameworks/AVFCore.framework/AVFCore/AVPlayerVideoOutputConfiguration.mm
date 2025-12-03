@interface AVPlayerVideoOutputConfiguration
- (AVPlayerVideoOutputConfiguration)initWithSourcePlayerItem:(id)item dataChannelDescriptions:(id)descriptions transform:(CGAffineTransform *)transform activationTime:(id *)time;
- (CGAffineTransform)preferredTransform;
- (void)dealloc;
- (void)setActivationTime:(id *)time;
@end

@implementation AVPlayerVideoOutputConfiguration

- (AVPlayerVideoOutputConfiguration)initWithSourcePlayerItem:(id)item dataChannelDescriptions:(id)descriptions transform:(CGAffineTransform *)transform activationTime:(id *)time
{
  v16.receiver = self;
  v16.super_class = AVPlayerVideoOutputConfiguration;
  v10 = [(AVPlayerVideoOutputConfiguration *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&time->var0;
    *(v10 + 5) = time->var3;
    *(v10 + 24) = v12;
    *(v10 + 2) = [descriptions copy];
    v14 = *&transform->c;
    v13 = *&transform->tx;
    *(v11 + 3) = *&transform->a;
    *(v11 + 4) = v14;
    *(v11 + 5) = v13;
    objc_storeWeak(v11 + 1, item);
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVPlayerVideoOutputConfiguration;
  [(AVPlayerVideoOutputConfiguration *)&v3 dealloc];
}

- (CGAffineTransform)preferredTransform
{
  v3 = *&self[1].c;
  *&retstr->a = *&self[1].a;
  *&retstr->c = v3;
  *&retstr->tx = *&self[1].tx;
  return self;
}

- (void)setActivationTime:(id *)time
{
  v3 = *&time->var0;
  self->_activationTime.epoch = time->var3;
  *&self->_activationTime.value = v3;
}

@end