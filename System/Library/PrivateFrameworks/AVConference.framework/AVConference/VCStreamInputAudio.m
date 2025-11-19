@interface VCStreamInputAudio
- (VCStreamInputAudio)initWithStreamInputID:(id)a3 format:(opaqueCMFormatDescription *)a4 delegate:(id)a5 delegateQueue:(id)a6 remoteQueue:(id)a7;
- (void)dealloc;
- (void)registerSampleBufferCallback:(void *)a3 context:(void *)a4;
@end

@implementation VCStreamInputAudio

- (VCStreamInputAudio)initWithStreamInputID:(id)a3 format:(opaqueCMFormatDescription *)a4 delegate:(id)a5 delegateQueue:(id)a6 remoteQueue:(id)a7
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCStreamInputAudio;
  result = [(VCStreamInput *)&v8 initWithStreamInputID:a3 format:a4 delegate:a5 delegateQueue:a6 remoteQueue:a7];
  if (result)
  {
    result->super._receiverQueue = 0;
    result->_sampleBufferDelegateCallback = 0;
    LODWORD(result->_sampleBufferDelegateCallbackContext) = 0;
    result->super._sampleBufferHandler = _VCStreamInputAudio_SampleBufferHandler;
  }

  return result;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_sampleBufferDelegateCallbackContext);
  self->super._receiverQueue = 0;
  self->_sampleBufferDelegateCallback = 0;
  os_unfair_lock_unlock(&self->_sampleBufferDelegateCallbackContext);
  v3.receiver = self;
  v3.super_class = VCStreamInputAudio;
  [(VCStreamInput *)&v3 dealloc];
}

- (void)registerSampleBufferCallback:(void *)a3 context:(void *)a4
{
  os_unfair_lock_lock(&self->_sampleBufferDelegateCallbackContext);
  self->super._receiverQueue = a3;
  self->_sampleBufferDelegateCallback = a4;

  os_unfair_lock_unlock(&self->_sampleBufferDelegateCallbackContext);
}

@end