@interface VCStreamInputAudio
- (VCStreamInputAudio)initWithStreamInputID:(id)d format:(opaqueCMFormatDescription *)format delegate:(id)delegate delegateQueue:(id)queue remoteQueue:(id)remoteQueue;
- (void)dealloc;
- (void)registerSampleBufferCallback:(void *)callback context:(void *)context;
@end

@implementation VCStreamInputAudio

- (VCStreamInputAudio)initWithStreamInputID:(id)d format:(opaqueCMFormatDescription *)format delegate:(id)delegate delegateQueue:(id)queue remoteQueue:(id)remoteQueue
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = VCStreamInputAudio;
  result = [(VCStreamInput *)&v8 initWithStreamInputID:d format:format delegate:delegate delegateQueue:queue remoteQueue:remoteQueue];
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

- (void)registerSampleBufferCallback:(void *)callback context:(void *)context
{
  os_unfair_lock_lock(&self->_sampleBufferDelegateCallbackContext);
  self->super._receiverQueue = callback;
  self->_sampleBufferDelegateCallback = context;

  os_unfair_lock_unlock(&self->_sampleBufferDelegateCallbackContext);
}

@end