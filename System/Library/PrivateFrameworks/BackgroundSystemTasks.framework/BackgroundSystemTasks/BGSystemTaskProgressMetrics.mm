@interface BGSystemTaskProgressMetrics
- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)identifier qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value itemsCompleted:(id)completed totalItemCount:(id)count;
- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)identifier taskName:(id)name qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value itemsCompleted:(id)completed totalItemCount:(id)count;
@end

@implementation BGSystemTaskProgressMetrics

- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)identifier qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value itemsCompleted:(id)completed totalItemCount:(id)count
{
  completedCopy = completed;
  countCopy = count;
  v20.receiver = self;
  v20.super_class = BGSystemTaskProgressMetrics;
  v17 = [(BGSystemTaskPerformanceMetadata *)&v20 initWithIdentifier:identifier qos:qos workloadCategory:category expectedMetricValue:value];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_itemsCompleted, completed);
    objc_storeStrong(&v18->_totalItemCount, count);
  }

  return v18;
}

- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)identifier taskName:(id)name qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value itemsCompleted:(id)completed totalItemCount:(id)count
{
  completedCopy = completed;
  countCopy = count;
  v21.receiver = self;
  v21.super_class = BGSystemTaskProgressMetrics;
  v18 = [(BGSystemTaskPerformanceMetadata *)&v21 initWithIdentifier:identifier taskName:name qos:qos workloadCategory:category expectedMetricValue:value];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_itemsCompleted, completed);
    objc_storeStrong(&v19->_totalItemCount, count);
  }

  return v19;
}

@end