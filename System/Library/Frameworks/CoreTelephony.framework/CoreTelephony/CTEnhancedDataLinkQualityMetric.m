@interface CTEnhancedDataLinkQualityMetric
- (CTEnhancedDataLinkQualityMetric)initWithCoder:(id)a3;
- (CTEnhancedDataLinkQualityMetric)initWithType:(int64_t)a3 enhancedLinkQuality:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTEnhancedDataLinkQualityMetric

- (CTEnhancedDataLinkQualityMetric)initWithType:(int64_t)a3 enhancedLinkQuality:(id)a4
{
  v6.receiver = self;
  v6.super_class = CTEnhancedDataLinkQualityMetric;
  result = [(CTEnhancedLinkQualityMetric *)&v6 initWithEnhancedLinkQuality:a4];
  if (result)
  {
    result->_metricType = a3;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  [v3 appendFormat:@", enhancedLinkQuality=%@", v4];

  [v3 appendFormat:@", metricType=%s", CTEnhancedLQMIndicationTypeAsString(-[CTEnhancedDataLinkQualityMetric metricType](self, "metricType"))];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CTEnhancedDataLinkQualityMetric;
  v4 = [(CTEnhancedLinkQualityMetric *)&v6 copyWithZone:a3];
  [v4 setMetricType:{-[CTEnhancedDataLinkQualityMetric metricType](self, "metricType")}];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CTEnhancedDataLinkQualityMetric;
  v4 = a3;
  [(CTEnhancedLinkQualityMetric *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[CTEnhancedDataLinkQualityMetric metricType](self forKey:{"metricType", v5.receiver, v5.super_class), @"metric_type"}];
}

- (CTEnhancedDataLinkQualityMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = CTEnhancedDataLinkQualityMetric;
  v5 = [(CTEnhancedLinkQualityMetric *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_metricType = [v4 decodeIntegerForKey:@"metric_type"];
  }

  return v5;
}

@end