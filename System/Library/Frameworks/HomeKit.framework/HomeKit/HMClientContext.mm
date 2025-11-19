@interface HMClientContext
- (HMClientContext)initWithMetricIdentifier:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation HMClientContext

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableClientContext allocWithZone:a3];
  v5 = [(HMClientContext *)self metricIdentifier];
  v6 = [(HMMutableClientContext *)v4 initWithMetricIdentifier:v5];

  return v6;
}

- (HMClientContext)initWithMetricIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMClientContext;
  v5 = [(HMClientContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    metricIdentifier = v5->_metricIdentifier;
    v5->_metricIdentifier = v6;
  }

  return v5;
}

@end