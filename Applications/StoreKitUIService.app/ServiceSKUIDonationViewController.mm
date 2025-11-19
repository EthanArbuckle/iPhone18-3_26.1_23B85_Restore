@interface ServiceSKUIDonationViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
@end

@implementation ServiceSKUIDonationViewController

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end