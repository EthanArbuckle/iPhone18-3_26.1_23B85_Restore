@interface BGSystemTaskPerformanceMetadata
- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)a3 qos:(id)a4 workloadCategory:(unint64_t)a5 expectedMetricValue:(id)a6;
- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)a3 taskName:(id)a4 qos:(id)a5 workloadCategory:(unint64_t)a6 expectedMetricValue:(id)a7;
@end

@implementation BGSystemTaskPerformanceMetadata

- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)a3 qos:(id)a4 workloadCategory:(unint64_t)a5 expectedMetricValue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BGSystemTaskPerformanceMetadata;
  v14 = [(BGSystemTaskPerformanceMetadata *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_performanceMetricIdentifier, a3);
    objc_storeStrong(&v15->_qos, a4);
    v15->_category = a5;
    objc_storeStrong(&v15->_expectedMetricValue, a6);
  }

  return v15;
}

- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)a3 taskName:(id)a4 qos:(id)a5 workloadCategory:(unint64_t)a6 expectedMetricValue:(id)a7
{
  v13 = a4;
  v14 = [(BGSystemTaskPerformanceMetadata *)self initWithIdentifier:a3 qos:a5 workloadCategory:a6 expectedMetricValue:a7];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_taskName, a4);
  }

  return v15;
}

@end