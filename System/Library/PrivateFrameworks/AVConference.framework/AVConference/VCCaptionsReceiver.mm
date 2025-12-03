@interface VCCaptionsReceiver
- (VCCaptionsReceiver)initWithDelegate:(id)delegate;
- (void)dealloc;
@end

@implementation VCCaptionsReceiver

- (VCCaptionsReceiver)initWithDelegate:(id)delegate
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = VCCaptionsReceiver;
  v4 = [(VCCaptionsReceiver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_delegate, delegate);
    VCCaptionsDecoder_Create(&v5->_captionsDecoder);
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  VCCaptionsDecoder_Destroy(&self->_captionsDecoder);
  [(VCCaptionsReceiver *)self setCurrentTranscription:0];
  objc_storeWeak(&self->_delegate, 0);
  v3.receiver = self;
  v3.super_class = VCCaptionsReceiver;
  [(VCCaptionsReceiver *)&v3 dealloc];
}

@end