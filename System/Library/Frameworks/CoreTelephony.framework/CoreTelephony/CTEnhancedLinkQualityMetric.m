@interface CTEnhancedLinkQualityMetric
- (CTEnhancedLinkQualityMetric)initWithCoder:(id)a3;
- (CTEnhancedLinkQualityMetric)initWithEnhancedLinkQuality:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTEnhancedLinkQualityMetric

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  [v3 appendFormat:@", enhancedLinkQuality=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (CTEnhancedLinkQualityMetric)initWithEnhancedLinkQuality:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CTEnhancedLinkQualityMetric;
  v6 = [(CTEnhancedLinkQualityMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enhancedLinkQuality, a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  v6 = [v5 copy];
  [v4 setEnhancedLinkQuality:v6];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  [v4 encodeObject:v5 forKey:@"link_quality"];
}

- (CTEnhancedLinkQualityMetric)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTEnhancedLinkQualityMetric;
  v5 = [(CTEnhancedLinkQualityMetric *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"link_quality"];
    enhancedLinkQuality = v5->_enhancedLinkQuality;
    v5->_enhancedLinkQuality = v6;
  }

  return v5;
}

@end