@interface APSSignDataWithIdentityRequest
- (APSSignDataWithIdentityRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APSSignDataWithIdentityRequest

- (void)encodeWithCoder:(id)a3
{
  data = self->_data;
  v5 = a3;
  [v5 encodeObject:data forKey:@"dataKey"];
  [v5 encodeObject:self->_time forKey:@"timeKey"];
}

- (APSSignDataWithIdentityRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = APSSignDataWithIdentityRequest;
  v5 = [(APSSignDataWithIdentityRequest *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dataKey"];
    data = v5->_data;
    v5->_data = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeKey"];
    time = v5->_time;
    v5->_time = v8;
  }

  return v5;
}

@end