@interface ServiceSUAccountViewController
- (ServiceAccountPageEmbeddedParent)embeddedParent;
- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4;
@end

@implementation ServiceSUAccountViewController

- (void)storePage:(id)a3 finishedWithSuccess:(BOOL)a4
{
  if (!a4)
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