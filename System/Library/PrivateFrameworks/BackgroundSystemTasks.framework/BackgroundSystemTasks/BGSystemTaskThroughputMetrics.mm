@interface BGSystemTaskThroughputMetrics
- (BGSystemTaskThroughputMetrics)initWithIdentifier:(id)identifier qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value;
- (void)addItemCount:(unint64_t)count;
@end

@implementation BGSystemTaskThroughputMetrics

- (BGSystemTaskThroughputMetrics)initWithIdentifier:(id)identifier qos:(id)qos workloadCategory:(unint64_t)category expectedMetricValue:(id)value
{
  v10.receiver = self;
  v10.super_class = BGSystemTaskThroughputMetrics;
  v6 = [(BGSystemTaskPerformanceMetadata *)&v10 initWithIdentifier:identifier qos:qos workloadCategory:category expectedMetricValue:value];
  if (v6)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    reportingUUID = v6->_reportingUUID;
    v6->_reportingUUID = uUID;
  }

  return v6;
}

- (void)addItemCount:(unint64_t)count
{
  v4 = [(BGSystemTaskThroughputMetrics *)self itemCount]+ count;

  [(BGSystemTaskThroughputMetrics *)self setItemCount:v4];
}

@end