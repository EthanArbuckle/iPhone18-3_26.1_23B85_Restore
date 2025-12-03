@interface ASOServiceOverlayContainerConfiguration
- (ASOServiceOverlayContainerConfiguration)initWithPosition:(int64_t)position userDismissible:(BOOL)dismissible hostIdiom:(int64_t)idiom;
@end

@implementation ASOServiceOverlayContainerConfiguration

- (ASOServiceOverlayContainerConfiguration)initWithPosition:(int64_t)position userDismissible:(BOOL)dismissible hostIdiom:(int64_t)idiom
{
  v9.receiver = self;
  v9.super_class = ASOServiceOverlayContainerConfiguration;
  result = [(ASOServiceOverlayContainerConfiguration *)&v9 init];
  if (result)
  {
    result->_userDismissible = dismissible;
    result->_position = position;
    result->_hostIdiom = idiom;
  }

  return result;
}

@end