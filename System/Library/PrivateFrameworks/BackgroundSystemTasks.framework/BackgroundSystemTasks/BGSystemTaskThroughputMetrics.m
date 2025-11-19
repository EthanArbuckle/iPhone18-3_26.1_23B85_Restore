@interface BGSystemTaskThroughputMetrics
- (BGSystemTaskThroughputMetrics)initWithIdentifier:(id)a3 qos:(id)a4 workloadCategory:(unint64_t)a5 expectedMetricValue:(id)a6;
- (void)addItemCount:(unint64_t)a3;
@end

@implementation BGSystemTaskThroughputMetrics

- (BGSystemTaskThroughputMetrics)initWithIdentifier:(id)a3 qos:(id)a4 workloadCategory:(unint64_t)a5 expectedMetricValue:(id)a6
{
  v10.receiver = self;
  v10.super_class = BGSystemTaskThroughputMetrics;
  v6 = [(BGSystemTaskPerformanceMetadata *)&v10 initWithIdentifier:a3 qos:a4 workloadCategory:a5 expectedMetricValue:a6];
  if (v6)
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    reportingUUID = v6->_reportingUUID;
    v6->_reportingUUID = v7;
  }

  return v6;
}

- (void)addItemCount:(unint64_t)a3
{
  v4 = [(BGSystemTaskThroughputMetrics *)self itemCount]+ a3;

  [(BGSystemTaskThroughputMetrics *)self setItemCount:v4];
}

@end