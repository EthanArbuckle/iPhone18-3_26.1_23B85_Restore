@interface CTEnhancedDataLinkQualityMetric
- (CTEnhancedDataLinkQualityMetric)initWithCoder:(id)coder;
- (CTEnhancedDataLinkQualityMetric)initWithType:(int64_t)type enhancedLinkQuality:(id)quality;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTEnhancedDataLinkQualityMetric

- (CTEnhancedDataLinkQualityMetric)initWithType:(int64_t)type enhancedLinkQuality:(id)quality
{
  v6.receiver = self;
  v6.super_class = CTEnhancedDataLinkQualityMetric;
  result = [(CTEnhancedLinkQualityMetric *)&v6 initWithEnhancedLinkQuality:quality];
  if (result)
  {
    result->_metricType = type;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  enhancedLinkQuality = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  [v3 appendFormat:@", enhancedLinkQuality=%@", enhancedLinkQuality];

  [v3 appendFormat:@", metricType=%s", CTEnhancedLQMIndicationTypeAsString(-[CTEnhancedDataLinkQualityMetric metricType](self, "metricType"))];
  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CTEnhancedDataLinkQualityMetric;
  v4 = [(CTEnhancedLinkQualityMetric *)&v6 copyWithZone:zone];
  [v4 setMetricType:{-[CTEnhancedDataLinkQualityMetric metricType](self, "metricType")}];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CTEnhancedDataLinkQualityMetric;
  coderCopy = coder;
  [(CTEnhancedLinkQualityMetric *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[CTEnhancedDataLinkQualityMetric metricType](self forKey:{"metricType", v5.receiver, v5.super_class), @"metric_type"}];
}

- (CTEnhancedDataLinkQualityMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = CTEnhancedDataLinkQualityMetric;
  v5 = [(CTEnhancedLinkQualityMetric *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_metricType = [coderCopy decodeIntegerForKey:@"metric_type"];
  }

  return v5;
}

@end