@interface AVCaptureSynchronizedSampleBufferData
- (id)_initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 sampleBufferWasDropped:(BOOL)a4;
- (void)dealloc;
@end

@implementation AVCaptureSynchronizedSampleBufferData

- (id)_initWithSampleBuffer:(opaqueCMSampleBuffer *)a3 sampleBufferWasDropped:(BOOL)a4
{
  if (!a3)
  {
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

    if (AVCaptureShouldThrowForAPIViolations())
    {
      objc_exception_throw(v14);
    }

    NSLog(&cfstr_SuppressingExc.isa, v14);
    return 0;
  }

  v5 = a4;
  memset(&v18, 0, sizeof(v18));
  CMSampleBufferGetPresentationTimeStamp(&v18, a3);
  v17.receiver = self;
  v17.super_class = AVCaptureSynchronizedSampleBufferData;
  v16 = v18;
  v7 = [(AVCaptureSynchronizedData *)&v17 _initWithTimestamp:&v16];
  if (!v7)
  {
    return v7;
  }

  v8 = objc_alloc_init(AVCaptureSynchronizedSampleBufferDataInternal);
  v7[2] = v8;
  if (!v8)
  {

    return 0;
  }

  *(v7[2] + 8) = CFRetain(a3);
  *(v7[2] + 16) = v5;
  if (v5)
  {
    *(v7[2] + 24) = [AVCaptureOutput dataDroppedReasonFromSampleBuffer:a3];
  }

  v9 = *MEMORY[0x1E69914F8];
  *(v7[2] + 32) = [CMGetAttachment(a3 *MEMORY[0x1E69914F8]];
  CMRemoveAttachment(a3, v9);
  v10 = *MEMORY[0x1E6991500];
  *(v7[2] + 33) = [CMGetAttachment(a3 *MEMORY[0x1E6991500]];
  CMRemoveAttachment(a3, v10);
  v11 = *MEMORY[0x1E6991130];
  v12 = CMGetAttachment(a3, *MEMORY[0x1E6991130], 0);
  if (v12)
  {
    v13 = [v12 intValue];
  }

  else
  {
    v13 = -1;
  }

  *(v7[2] + 36) = v13;
  CMRemoveAttachment(a3, v11);
  return v7;
}

- (void)dealloc
{
  internal = self->_internal;
  if (internal)
  {
    sampleBuffer = internal->sampleBuffer;
    if (sampleBuffer)
    {
      CFRelease(sampleBuffer);
      internal = self->_internal;
    }
  }

  v5.receiver = self;
  v5.super_class = AVCaptureSynchronizedSampleBufferData;
  [(AVCaptureSynchronizedData *)&v5 dealloc];
}

@end