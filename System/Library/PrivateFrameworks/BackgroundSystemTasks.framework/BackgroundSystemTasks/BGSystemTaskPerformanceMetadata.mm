@interface BGSystemTaskPerformanceMetadata
- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)identifier qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value;
- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)identifier taskName:(id)name qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value;
@end

@implementation BGSystemTaskPerformanceMetadata

- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)identifier qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value
{
  identifierCopy = identifier;
  qosCopy = qos;
  valueCopy = value;
  v17.receiver = self;
  v17.super_class = BGSystemTaskPerformanceMetadata;
  v14 = [(BGSystemTaskPerformanceMetadata *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_performanceMetricIdentifier, identifier);
    objc_storeStrong(&v15->_qos, qos);
    v15->_category = category;
    objc_storeStrong(&v15->_expectedMetricValue, value);
  }

  return v15;
}

- (BGSystemTaskPerformanceMetadata)initWithIdentifier:(id)identifier taskName:(id)name qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value
{
  nameCopy = name;
  v14 = [(BGSystemTaskPerformanceMetadata *)self initWithIdentifier:identifier qos:qos workloadCategory:category expectedMetricValue:value];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_taskName, name);
  }

  return v15;
}

@end