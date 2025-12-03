@interface COSRemoteUIBuddyController
- (COSBuddyControllerDelegate)delegate;
- (COSRemoteUIBuddyController)initWithRUIViewController:(id)controller;
- (NSString)description;
@end

@implementation COSRemoteUIBuddyController

- (COSRemoteUIBuddyController)initWithRUIViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = COSRemoteUIBuddyController;
  v6 = [(COSRemoteUIBuddyController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ruiViewController, controller);
  }

  return v7;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%p %@ (viewController %@)>", self, v4, self->_ruiViewController];

  return v5;
}

- (COSBuddyControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end