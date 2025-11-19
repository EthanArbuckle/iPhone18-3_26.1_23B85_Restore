@interface SCAnalytics
- (SCAnalytics)init;
- (void)collectImageEventWith:(id)a3 error:(id)a4;
- (void)collectVideoEventWith:(id)a3 error:(id)a4;
@end

@implementation SCAnalytics

- (void)collectImageEventWith:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_1AEABADFC(a3, a4);
}

- (void)collectVideoEventWith:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_1AEABB164(a3, a4);
}

- (SCAnalytics)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Analytics();
  return [(SCAnalytics *)&v3 init];
}

@end