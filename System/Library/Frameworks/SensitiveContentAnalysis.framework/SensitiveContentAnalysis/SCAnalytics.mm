@interface SCAnalytics
- (SCAnalytics)init;
- (void)collectImageEventWith:(id)with error:(id)error;
- (void)collectVideoEventWith:(id)with error:(id)error;
@end

@implementation SCAnalytics

- (void)collectImageEventWith:(id)with error:(id)error
{
  withCopy = with;
  selfCopy = self;
  errorCopy = error;
  sub_1AEABADFC(with, error);
}

- (void)collectVideoEventWith:(id)with error:(id)error
{
  withCopy = with;
  selfCopy = self;
  errorCopy = error;
  sub_1AEABB164(with, error);
}

- (SCAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Analytics();
  return [(SCAnalytics *)&v3 init];
}

@end