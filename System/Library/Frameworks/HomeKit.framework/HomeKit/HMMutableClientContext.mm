@interface HMMutableClientContext
+ (id)clientContextWithMetricIdentifier:(id)identifier;
- (HMMutableClientContext)initWithMetricIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMMutableClientContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableClientContext allocWithZone:zone];
  metricIdentifier = [(HMClientContext *)self metricIdentifier];
  v6 = [(HMMutableClientContext *)v4 initWithMetricIdentifier:metricIdentifier];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMClientContext alloc];
  metricIdentifier = [(HMClientContext *)self metricIdentifier];
  v6 = [(HMClientContext *)v4 initWithMetricIdentifier:metricIdentifier];

  return v6;
}

- (HMMutableClientContext)initWithMetricIdentifier:(id)identifier
{
  v4.receiver = self;
  v4.super_class = HMMutableClientContext;
  return [(HMClientContext *)&v4 initWithMetricIdentifier:identifier];
}

+ (id)clientContextWithMetricIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HMMutableClientContext alloc] initWithMetricIdentifier:identifierCopy];

  return v4;
}

@end