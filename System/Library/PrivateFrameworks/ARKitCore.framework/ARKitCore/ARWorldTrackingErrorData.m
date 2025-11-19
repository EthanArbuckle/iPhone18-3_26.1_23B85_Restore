@interface ARWorldTrackingErrorData
- (ARWorldTrackingErrorData)initWithCoder:(id)a3;
- (ARWorldTrackingErrorData)initWithTimestamp:(double)a3;
- (BOOL)isEqual:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARWorldTrackingErrorData

- (ARWorldTrackingErrorData)initWithTimestamp:(double)a3
{
  v5.receiver = self;
  v5.super_class = ARWorldTrackingErrorData;
  result = [(ARWorldTrackingErrorData *)&v5 init];
  if (result)
  {
    result->_timestamp = a3;
  }

  return result;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeDouble:@"timestamp" forKey:timestamp];
  [v5 encodeInteger:self->_errorCode forKey:@"errorCode"];
}

- (ARWorldTrackingErrorData)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ARWorldTrackingErrorData;
  v5 = [(ARWorldTrackingErrorData *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v5->_errorCode = [v4 decodeIntegerForKey:@"errorCode"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && vabdd_f64(self->_timestamp, v4[1]) < 2.22044605e-16 && self->_errorCode == *(v4 + 2);

  return v5;
}

@end