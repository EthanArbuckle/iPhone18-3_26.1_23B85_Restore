@interface AVMetricMediaRendition
- (AVMetricMediaRendition)initWithCoder:(id)coder;
- (AVMetricMediaRendition)initWithStableID:(id)d URL:(id)l;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVMetricMediaRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVMetricMediaRendition;
  [(AVMetricMediaRendition *)&v3 dealloc];
}

- (AVMetricMediaRendition)initWithStableID:(id)d URL:(id)l
{
  self->_stableID = d;
  self->_url = l;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"supports only keyed archivers", v6, v7, v8, v9, v10, v13), 0}];
    objc_exception_throw(v12);
  }

  [coder encodeObject:self->_stableID forKey:@"stableID"];
  url = self->_url;

  [coder encodeObject:url forKey:@"renditionURL"];
}

- (AVMetricMediaRendition)initWithCoder:(id)coder
{
  self->_stableID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"stableID"];
  self->_url = [coder decodeObjectOfClass:objc_opt_class() forKey:@"renditionURL"];
  return self;
}

@end