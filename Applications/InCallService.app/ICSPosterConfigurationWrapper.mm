@interface ICSPosterConfigurationWrapper
- (PRSPosterConfiguration)configuration;
- (PRUISPosterTitleStyleAttributes)titleStyleAttributes;
- (void)setTitleStyleAttributes:(id)attributes;
@end

@implementation ICSPosterConfigurationWrapper

- (PRSPosterConfiguration)configuration
{
  v2 = sub_100164430();

  return v2;
}

- (PRUISPosterTitleStyleAttributes)titleStyleAttributes
{
  v2 = sub_100164494();

  return v2;
}

- (void)setTitleStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_100164520(attributes);
}

@end