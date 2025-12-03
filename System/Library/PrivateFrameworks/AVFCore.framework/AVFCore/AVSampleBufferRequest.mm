@interface AVSampleBufferRequest
+ (AVSampleBufferRequest)sampleBufferRequestWithStartCursor:(id)cursor;
- (AVSampleBufferRequest)initWithStartCursor:(AVSampleCursor *)startCursor;
- (void)dealloc;
- (void)setLimitCursor:(AVSampleCursor *)limitCursor;
- (void)setOverrideTime:(CMTime *)overrideTime;
@end

@implementation AVSampleBufferRequest

+ (AVSampleBufferRequest)sampleBufferRequestWithStartCursor:(id)cursor
{
  v3 = [objc_alloc(objc_opt_class()) initWithStartCursor:cursor];

  return v3;
}

- (AVSampleBufferRequest)initWithStartCursor:(AVSampleCursor *)startCursor
{
  v9.receiver = self;
  v9.super_class = AVSampleBufferRequest;
  v4 = [(AVSampleBufferRequest *)&v9 init];
  if (v4)
  {
    v5 = objc_alloc_init(AVSampleBufferRequestInternal);
    v4->_request = v5;
    CFRetain(v5);
    if (startCursor && v4->_request)
    {
      v4->_request->startCursor = startCursor;
      request = v4->_request;
      v7 = MEMORY[0x1E6960C70];
      request->overrideTime.epoch = *(MEMORY[0x1E6960C70] + 16);
      *&request->overrideTime.value = *v7;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  request = self->_request;
  if (request)
  {

    CFRelease(self->_request);
  }

  v4.receiver = self;
  v4.super_class = AVSampleBufferRequest;
  [(AVSampleBufferRequest *)&v4 dealloc];
}

- (void)setLimitCursor:(AVSampleCursor *)limitCursor
{
  v5 = limitCursor;

  self->_request->limitCursor = limitCursor;
}

- (void)setOverrideTime:(CMTime *)overrideTime
{
  request = self->_request;
  v4 = *&overrideTime->value;
  request->overrideTime.epoch = overrideTime->epoch;
  *&request->overrideTime.value = v4;
}

@end