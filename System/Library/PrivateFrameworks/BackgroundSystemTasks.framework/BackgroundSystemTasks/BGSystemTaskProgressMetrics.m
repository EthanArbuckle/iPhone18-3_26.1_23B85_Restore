@interface BGSystemTaskProgressMetrics
- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)a3 qos:(id)a4 workloadCategory:(unint64_t)a5 expectedMetricValue:(id)a6 itemsCompleted:(id)a7 totalItemCount:(id)a8;
- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)a3 taskName:(id)a4 qos:(id)a5 workloadCategory:(unint64_t)a6 expectedMetricValue:(id)a7 itemsCompleted:(id)a8 totalItemCount:(id)a9;
@end

@implementation BGSystemTaskProgressMetrics

- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)a3 qos:(id)a4 workloadCategory:(unint64_t)a5 expectedMetricValue:(id)a6 itemsCompleted:(id)a7 totalItemCount:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = BGSystemTaskProgressMetrics;
  v17 = [(BGSystemTaskPerformanceMetadata *)&v20 initWithIdentifier:a3 qos:a4 workloadCategory:a5 expectedMetricValue:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_itemsCompleted, a7);
    objc_storeStrong(&v18->_totalItemCount, a8);
  }

  return v18;
}

- (BGSystemTaskProgressMetrics)initWithIdentifier:(id)a3 taskName:(id)a4 qos:(id)a5 workloadCategory:(unint64_t)a6 expectedMetricValue:(id)a7 itemsCompleted:(id)a8 totalItemCount:(id)a9
{
  v16 = a8;
  v17 = a9;
  v21.receiver = self;
  v21.super_class = BGSystemTaskProgressMetrics;
  v18 = [(BGSystemTaskPerformanceMetadata *)&v21 initWithIdentifier:a3 taskName:a4 qos:a5 workloadCategory:a6 expectedMetricValue:a7];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_itemsCompleted, a8);
    objc_storeStrong(&v19->_totalItemCount, a9);
  }

  return v19;
}

@end