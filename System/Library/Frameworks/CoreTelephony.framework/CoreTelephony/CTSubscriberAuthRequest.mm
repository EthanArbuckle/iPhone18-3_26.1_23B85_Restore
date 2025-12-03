@interface CTSubscriberAuthRequest
- (CTSubscriberAuthRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSubscriberAuthRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  algorithm = [(CTSubscriberAuthRequest *)self algorithm];
  [coderCopy encodeObject:algorithm forKey:@"algorithm"];
}

- (CTSubscriberAuthRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTSubscriberAuthRequest;
  v5 = [(CTSubscriberAuthRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"algorithm"];
    algorithm = v5->_algorithm;
    v5->_algorithm = v6;
  }

  return v5;
}

@end