@interface ARAudioData
- (ARAudioData)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
@end

@implementation ARAudioData

- (ARAudioData)initWithSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v8.receiver = self;
  v8.super_class = ARAudioData;
  v4 = [(ARAudioData *)&v8 init];
  if (v4)
  {
    memset(&v7, 0, sizeof(v7));
    CMSampleBufferGetPresentationTimeStamp(&v7, buffer);
    v6 = v7;
    v4->_timestamp = CMTimeGetSeconds(&v6);
    v4->_sampleBuffer = buffer;
    CFRetain(buffer);
  }

  return v4;
}

- (void)dealloc
{
  sampleBuffer = self->_sampleBuffer;
  if (sampleBuffer)
  {
    CFRelease(sampleBuffer);
  }

  v4.receiver = self;
  v4.super_class = ARAudioData;
  [(ARAudioData *)&v4 dealloc];
}

@end