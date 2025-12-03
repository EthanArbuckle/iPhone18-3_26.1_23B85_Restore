@interface ARWorldTrackingErrorData
- (ARWorldTrackingErrorData)initWithCoder:(id)coder;
- (ARWorldTrackingErrorData)initWithTimestamp:(double)timestamp;
- (BOOL)isEqual:(id)equal;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARWorldTrackingErrorData

- (ARWorldTrackingErrorData)initWithTimestamp:(double)timestamp
{
  v5.receiver = self;
  v5.super_class = ARWorldTrackingErrorData;
  result = [(ARWorldTrackingErrorData *)&v5 init];
  if (result)
  {
    result->_timestamp = timestamp;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeDouble:@"timestamp" forKey:timestamp];
  [coderCopy encodeInteger:self->_errorCode forKey:@"errorCode"];
}

- (ARWorldTrackingErrorData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ARWorldTrackingErrorData;
  v5 = [(ARWorldTrackingErrorData *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v5->_errorCode = [coderCopy decodeIntegerForKey:@"errorCode"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_timestamp, equalCopy[1]) < 2.22044605e-16 && self->_errorCode == *(equalCopy + 2);

  return v5;
}

@end