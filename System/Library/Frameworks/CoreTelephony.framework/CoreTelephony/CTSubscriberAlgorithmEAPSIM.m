@interface CTSubscriberAlgorithmEAPSIM
- (CTSubscriberAlgorithmEAPSIM)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTSubscriberAlgorithmEAPSIM

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTSubscriberAlgorithmEAPSIM *)self rand];
  [v5 encodeObject:v4 forKey:@"rand"];
}

- (CTSubscriberAlgorithmEAPSIM)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTSubscriberAlgorithmEAPSIM;
  v5 = [(CTSubscriberAlgorithmEAPSIM *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rand"];
    rand = v5->_rand;
    v5->_rand = v6;
  }

  return v5;
}

@end