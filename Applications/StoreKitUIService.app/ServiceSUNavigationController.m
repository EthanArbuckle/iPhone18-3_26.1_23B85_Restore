@interface ServiceSUNavigationController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
@end

@implementation ServiceSUNavigationController

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end