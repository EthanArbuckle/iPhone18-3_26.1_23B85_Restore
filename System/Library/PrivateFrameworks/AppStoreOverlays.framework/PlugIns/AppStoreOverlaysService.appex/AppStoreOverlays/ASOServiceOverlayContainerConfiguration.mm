@interface ASOServiceOverlayContainerConfiguration
- (ASOServiceOverlayContainerConfiguration)initWithPosition:(int64_t)a3 userDismissible:(BOOL)a4 hostIdiom:(int64_t)a5;
@end

@implementation ASOServiceOverlayContainerConfiguration

- (ASOServiceOverlayContainerConfiguration)initWithPosition:(int64_t)a3 userDismissible:(BOOL)a4 hostIdiom:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = ASOServiceOverlayContainerConfiguration;
  result = [(ASOServiceOverlayContainerConfiguration *)&v9 init];
  if (result)
  {
    result->_userDismissible = a4;
    result->_position = a3;
    result->_hostIdiom = a5;
  }

  return result;
}

@end