@interface ICSPosterConfigurationWrapper
- (PRSPosterConfiguration)configuration;
- (PRUISPosterTitleStyleAttributes)titleStyleAttributes;
- (void)setTitleStyleAttributes:(id)a3;
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

- (void)setTitleStyleAttributes:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100164520(a3);
}

@end