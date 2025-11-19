@interface ServiceSKUIGiftViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
@end

@implementation ServiceSKUIGiftViewController

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end