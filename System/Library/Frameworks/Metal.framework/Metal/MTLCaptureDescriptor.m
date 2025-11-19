@interface MTLCaptureDescriptor
- (BOOL)isEqual:(id)a3;
- (MTLCaptureDescriptor)init;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation MTLCaptureDescriptor

- (MTLCaptureDescriptor)init
{
  v3.receiver = self;
  v3.super_class = MTLCaptureDescriptor;
  result = [(MTLCaptureDescriptor *)&v3 init];
  if (result)
  {
    result->_destination = 1;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLCaptureDescriptor;
  [(MTLCaptureDescriptor *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(MTLCaptureDescriptor);
  [(MTLCaptureDescriptor *)v4 setCaptureObject:self->_captureObject];
  [(MTLCaptureDescriptor *)v4 setDestination:self->_destination];
  [(MTLCaptureDescriptor *)v4 setOutputURL:self->_outputURL];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v5 = objc_opt_class();
  result = 0;
  if (v5 == objc_opt_class())
  {
    captureObject = self->_captureObject;
    if ((captureObject == *(a3 + 1) || [captureObject isEqual:?]) && self->_destination == *(a3 + 2))
    {
      outputURL = self->_outputURL;
      if (outputURL == *(a3 + 3) || ([(NSURL *)outputURL isEqual:?]& 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

- (unint64_t)hash
{
  v3 = [self->_captureObject hash];
  outputURL = self->_outputURL;
  v5 = self->_destination | v3;
  return v5 | [(NSURL *)outputURL hash];
}

@end