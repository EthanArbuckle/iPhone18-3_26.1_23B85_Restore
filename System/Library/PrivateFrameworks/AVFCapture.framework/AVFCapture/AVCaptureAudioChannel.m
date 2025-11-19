@interface AVCaptureAudioChannel
- (AVCaptureAudioChannel)initWithConnection:(id)a3;
- (void)dealloc;
@end

@implementation AVCaptureAudioChannel

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVCaptureAudioChannel;
  [(AVCaptureAudioChannel *)&v3 dealloc];
}

- (AVCaptureAudioChannel)initWithConnection:(id)a3
{
  v7.receiver = self;
  v7.super_class = AVCaptureAudioChannel;
  v4 = [(AVCaptureAudioChannel *)&v7 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVCaptureAudioChannelInternal);
    v4->_internal = v5;
    if (v5)
    {
      v5->connection = a3;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

@end