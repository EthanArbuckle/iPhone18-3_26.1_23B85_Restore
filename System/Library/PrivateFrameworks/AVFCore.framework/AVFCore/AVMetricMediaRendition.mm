@interface AVMetricMediaRendition
- (AVMetricMediaRendition)initWithCoder:(id)a3;
- (AVMetricMediaRendition)initWithStableID:(id)a3 URL:(id)a4;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVMetricMediaRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricMediaRendition;
  [(AVMetricMediaRendition *)&v3 dealloc];
}

- (AVMetricMediaRendition)initWithStableID:(id)a3 URL:(id)a4
{
  self->_stableID = a3;
  self->_url = a4;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  [a3 encodeObject:self->_stableID forKey:@"stableID"];
  url = self->_url;

  [a3 encodeObject:url forKey:@"renditionURL"];
}

- (AVMetricMediaRendition)initWithCoder:(id)a3
{
  self->_stableID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"stableID"];
  self->_url = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"renditionURL"];
  return self;
}

@end