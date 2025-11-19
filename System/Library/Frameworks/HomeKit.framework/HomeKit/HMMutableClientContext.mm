@interface HMMutableClientContext
+ (id)clientContextWithMetricIdentifier:(id)a3;
- (HMMutableClientContext)initWithMetricIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMMutableClientContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableClientContext allocWithZone:a3];
  v5 = [(HMClientContext *)self metricIdentifier];
  v6 = [(HMMutableClientContext *)v4 initWithMetricIdentifier:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMClientContext alloc];
  v5 = [(HMClientContext *)self metricIdentifier];
  v6 = [(HMClientContext *)v4 initWithMetricIdentifier:v5];

  return v6;
}

- (HMMutableClientContext)initWithMetricIdentifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = HMMutableClientContext;
  return [(HMClientContext *)&v4 initWithMetricIdentifier:a3];
}

+ (id)clientContextWithMetricIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HMMutableClientContext alloc] initWithMetricIdentifier:v3];

  return v4;
}

@end