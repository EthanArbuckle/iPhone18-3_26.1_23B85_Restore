@interface ServiceSUAccountViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)storePage:(id)page finishedWithSuccess:(BOOL)success;
@end

@implementation ServiceSUAccountViewController

- (void)storePage:(id)page finishedWithSuccess:(BOOL)success
{
  if (!success)
  {
    [(ServiceSUAccountViewController *)self dismissAnimated:1];
  }
}

- (ServiceAccountPageEmbeddedParent)embeddedParent
{
  WeakRetained = objc_loadWeakRetained(&self->_embeddedParent);

  return WeakRetained;
}

@end