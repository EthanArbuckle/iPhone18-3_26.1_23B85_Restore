@interface CTEnhancedLinkQualityMetric
- (CTEnhancedLinkQualityMetric)initWithCoder:(id)coder;
- (CTEnhancedLinkQualityMetric)initWithEnhancedLinkQuality:(id)quality;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTEnhancedLinkQualityMetric

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  enhancedLinkQuality = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  [v3 appendFormat:@", enhancedLinkQuality=%@", enhancedLinkQuality];

  [v3 appendString:@">"];

  return v3;
}

- (CTEnhancedLinkQualityMetric)initWithEnhancedLinkQuality:(id)quality
{
  qualityCopy = quality;
  v9.receiver = self;
  v9.super_class = CTEnhancedLinkQualityMetric;
  v6 = [(CTEnhancedLinkQualityMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_enhancedLinkQuality, quality);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  enhancedLinkQuality = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  v6 = [enhancedLinkQuality copy];
  [v4 setEnhancedLinkQuality:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  enhancedLinkQuality = [(CTEnhancedLinkQualityMetric *)self enhancedLinkQuality];
  [coderCopy encodeObject:enhancedLinkQuality forKey:@"link_quality"];
}

- (CTEnhancedLinkQualityMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTEnhancedLinkQualityMetric;
  v5 = [(CTEnhancedLinkQualityMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link_quality"];
    enhancedLinkQuality = v5->_enhancedLinkQuality;
    v5->_enhancedLinkQuality = v6;
  }

  return v5;
}

@end