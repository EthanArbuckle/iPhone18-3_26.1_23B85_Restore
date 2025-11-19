@interface CTSubscriberAlgorithmEAPAKA
- (CTSubscriberAlgorithmEAPAKA)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSubscriberAlgorithmEAPAKA

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(CTSubscriberAlgorithmEAPAKA *)self rand];
  [v6 encodeObject:v4 forKey:@"rand"];

  v5 = [(CTSubscriberAlgorithmEAPAKA *)self autn];
  [v6 encodeObject:v5 forKey:@"autn"];
}

- (CTSubscriberAlgorithmEAPAKA)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTSubscriberAlgorithmEAPAKA;
  v5 = [(CTSubscriberAlgorithmEAPAKA *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rand"];
    rand = v5->_rand;
    v5->_rand = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autn"];
    autn = v5->_autn;
    v5->_autn = v8;
  }

  return v5;
}

@end