@interface AVPlayerVideoOutputConfiguration
- (AVPlayerVideoOutputConfiguration)initWithSourcePlayerItem:(id)a3 dataChannelDescriptions:(id)a4 transform:(CGAffineTransform *)a5 activationTime:(id *)a6;
- (CGAffineTransform)preferredTransform;
- (void)dealloc;
- (void)setActivationTime:(id *)a3;
@end

@implementation AVPlayerVideoOutputConfiguration

- (AVPlayerVideoOutputConfiguration)initWithSourcePlayerItem:(id)a3 dataChannelDescriptions:(id)a4 transform:(CGAffineTransform *)a5 activationTime:(id *)a6
{
  v16.receiver = self;
  v16.super_class = AVPlayerVideoOutputConfiguration;
  v10 = [(AVPlayerVideoOutputConfiguration *)&v16 init];
  v11 = v10;
  if (v10)
  {
    v12 = *&a6->var0;
    *(v10 + 5) = a6->var3;
    *(v10 + 24) = v12;
    *(v10 + 2) = [a4 copy];
    v14 = *&a5->c;
    v13 = *&a5->tx;
    *(v11 + 3) = *&a5->a;
    *(v11 + 4) = v14;
    *(v11 + 5) = v13;
    objc_storeWeak(v11 + 1, a3);
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

- (void)setActivationTime:(id *)a3
{
  v3 = *&a3->var0;
  self->_activationTime.epoch = a3->var3;
  *&self->_activationTime.value = v3;
}

@end