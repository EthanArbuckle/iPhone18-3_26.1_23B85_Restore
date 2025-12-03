@interface EKUIManagedNavigationController
- (BOOL)canBeDirectlyManaged;
- (BOOL)wantsManagement;
@end

@implementation EKUIManagedNavigationController

- (BOOL)wantsManagement
{
  EKWeakLinkClass();
  topViewController = [(EKUIManagedNavigationController *)self topViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  topViewController2 = [(EKUIManagedNavigationController *)self topViewController];
  v7 = [topViewController2 conformsToProtocol:&unk_1F4F40CD0];

  if (!v7)
  {
    return 0;
  }

  topViewController3 = [(EKUIManagedNavigationController *)self topViewController];
  wantsManagement = [topViewController3 wantsManagement];

  return wantsManagement;
}

- (BOOL)canBeDirectlyManaged
{
  if ([(EKUIManagedNavigationController *)self forceCanBeDirectlyManagedToNo])
  {
    return 0;
  }

  topViewController = [(EKUIManagedNavigationController *)self topViewController];
  if ([topViewController conformsToProtocol:&unk_1F4F40CD0])
  {
    topViewController2 = [(EKUIManagedNavigationController *)self topViewController];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return 1;
    }

    topViewController = [(EKUIManagedNavigationController *)self topViewController];
    canBeDirectlyManaged = [topViewController canBeDirectlyManaged];
  }

  else
  {
    canBeDirectlyManaged = 1;
  }

  return canBeDirectlyManaged;
}

@end