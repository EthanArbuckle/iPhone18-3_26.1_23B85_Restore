@interface CNPRSPosterConfiguration
- (CNPRSPosterConfiguration)initWithPosterConfiguration:(id)a3;
@end

@implementation CNPRSPosterConfiguration

- (CNPRSPosterConfiguration)initWithPosterConfiguration:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CNPRSPosterConfiguration;
  v6 = [(CNPRSPosterConfiguration *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedPosterConfiguration, a3);
  }

  return v7;
}

@end