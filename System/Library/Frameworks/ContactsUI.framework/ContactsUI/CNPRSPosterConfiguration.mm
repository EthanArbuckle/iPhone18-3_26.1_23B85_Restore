@interface CNPRSPosterConfiguration
- (CNPRSPosterConfiguration)initWithPosterConfiguration:(id)configuration;
@end

@implementation CNPRSPosterConfiguration

- (CNPRSPosterConfiguration)initWithPosterConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v9.receiver = self;
  v9.super_class = CNPRSPosterConfiguration;
  v6 = [(CNPRSPosterConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedPosterConfiguration, configuration);
  }

  return v7;
}

@end