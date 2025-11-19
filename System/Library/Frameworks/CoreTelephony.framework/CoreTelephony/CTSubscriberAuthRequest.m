@interface CTSubscriberAuthRequest
- (CTSubscriberAuthRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSubscriberAuthRequest

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTSubscriberAuthRequest *)self algorithm];
  [v5 encodeObject:v4 forKey:@"algorithm"];
}

- (CTSubscriberAuthRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTSubscriberAuthRequest;
  v5 = [(CTSubscriberAuthRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
    algorithm = v5->_algorithm;
    v5->_algorithm = v6;
  }

  return v5;
}

@end