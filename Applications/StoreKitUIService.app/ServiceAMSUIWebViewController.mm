@interface ServiceAMSUIWebViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
@end

@implementation ServiceAMSUIWebViewController

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end