@interface ServiceSKUIRedeemViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
@end

@implementation ServiceSKUIRedeemViewController

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end