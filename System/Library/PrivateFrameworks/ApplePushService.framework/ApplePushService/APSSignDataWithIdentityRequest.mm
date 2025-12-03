@interface APSSignDataWithIdentityRequest
- (APSSignDataWithIdentityRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APSSignDataWithIdentityRequest

- (void)encodeWithCoder:(id)coder
{
  data = self->_data;
  coderCopy = coder;
  [coderCopy encodeObject:data forKey:@"dataKey"];
  [coderCopy encodeObject:self->_time forKey:@"timeKey"];
}

- (APSSignDataWithIdentityRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = APSSignDataWithIdentityRequest;
  v5 = [(APSSignDataWithIdentityRequest *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataKey"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeKey"];
    time = v5->_time;
    v5->_time = v8;
  }

  return v5;
}

@end