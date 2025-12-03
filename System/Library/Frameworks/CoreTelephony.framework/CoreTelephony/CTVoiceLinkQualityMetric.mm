@interface CTVoiceLinkQualityMetric
- (CTVoiceLinkQualityMetric)initWithCoder:(id)coder;
- (CTVoiceLinkQualityMetric)initWithLinkQuality:(id)quality;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTVoiceLinkQualityMetric

- (CTVoiceLinkQualityMetric)initWithLinkQuality:(id)quality
{
  qualityCopy = quality;
  v9.receiver = self;
  v9.super_class = CTVoiceLinkQualityMetric;
  v6 = [(CTVoiceLinkQualityMetric *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_linkQuality, quality);
  }

  return v7;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  linkQuality = [(CTVoiceLinkQualityMetric *)self linkQuality];
  [v3 appendFormat:@", linkQuality=%@", linkQuality];

  [v3 appendString:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  linkQuality = [(CTVoiceLinkQualityMetric *)self linkQuality];
  v6 = [linkQuality copy];
  [v4 setLinkQuality:v6];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  linkQuality = [(CTVoiceLinkQualityMetric *)self linkQuality];
  [coderCopy encodeObject:linkQuality forKey:@"link_quality"];
}

- (CTVoiceLinkQualityMetric)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTVoiceLinkQualityMetric;
  v5 = [(CTVoiceLinkQualityMetric *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"link_quality"];
    linkQuality = v5->_linkQuality;
    v5->_linkQuality = v6;
  }

  return v5;
}

@end