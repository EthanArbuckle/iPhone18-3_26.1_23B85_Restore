@interface CTSubscriberAlgorithmEAPSIM
- (CTSubscriberAlgorithmEAPSIM)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSubscriberAlgorithmEAPSIM

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rand = [(CTSubscriberAlgorithmEAPSIM *)self rand];
  [coderCopy encodeObject:rand forKey:@"rand"];
}

- (CTSubscriberAlgorithmEAPSIM)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTSubscriberAlgorithmEAPSIM;
  v5 = [(CTSubscriberAlgorithmEAPSIM *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rand"];
    rand = v5->_rand;
    v5->_rand = v6;
  }

  return v5;
}

@end