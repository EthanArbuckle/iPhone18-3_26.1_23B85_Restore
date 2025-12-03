@interface HMClientContext
- (HMClientContext)initWithMetricIdentifier:(id)identifier;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation HMClientContext

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableClientContext allocWithZone:zone];
  metricIdentifier = [(HMClientContext *)self metricIdentifier];
  v6 = [(HMMutableClientContext *)v4 initWithMetricIdentifier:metricIdentifier];

  return v6;
}

- (HMClientContext)initWithMetricIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HMClientContext;
  v5 = [(HMClientContext *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    metricIdentifier = v5->_metricIdentifier;
    v5->_metricIdentifier = v6;
  }

  return v5;
}

@end