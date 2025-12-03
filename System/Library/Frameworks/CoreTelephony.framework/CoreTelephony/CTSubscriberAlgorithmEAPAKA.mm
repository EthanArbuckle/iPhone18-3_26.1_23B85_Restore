@interface CTSubscriberAlgorithmEAPAKA
- (CTSubscriberAlgorithmEAPAKA)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTSubscriberAlgorithmEAPAKA

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  rand = [(CTSubscriberAlgorithmEAPAKA *)self rand];
  [coderCopy encodeObject:rand forKey:@"rand"];

  autn = [(CTSubscriberAlgorithmEAPAKA *)self autn];
  [coderCopy encodeObject:autn forKey:@"autn"];
}

- (CTSubscriberAlgorithmEAPAKA)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTSubscriberAlgorithmEAPAKA;
  v5 = [(CTSubscriberAlgorithmEAPAKA *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rand"];
    rand = v5->_rand;
    v5->_rand = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autn"];
    autn = v5->_autn;
    v5->_autn = v8;
  }

  return v5;
}

@end