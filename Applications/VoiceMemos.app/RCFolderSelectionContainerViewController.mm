@interface RCFolderSelectionContainerViewController
- (RCFolderSelectionContainerViewController)initWithCollectionViewController:(id)controller;
@end

@implementation RCFolderSelectionContainerViewController

- (RCFolderSelectionContainerViewController)initWithCollectionViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = RCFolderSelectionContainerViewController;
  v6 = [(RCFolderSelectionContainerViewController *)&v9 initWithRootViewController:controllerCopy];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collectionViewController, controller);
  }

  return v7;
}

@end