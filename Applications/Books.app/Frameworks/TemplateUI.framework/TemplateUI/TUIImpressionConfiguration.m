@interface TUIImpressionConfiguration
- (TUIImpressionConfiguration)init;
@end

@implementation TUIImpressionConfiguration

- (TUIImpressionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = TUIImpressionConfiguration;
  result = [(TUIImpressionConfiguration *)&v3 init];
  if (result)
  {
    *&result->_minUpdateInterval = xmmword_24C520;
  }

  return result;
}

@end