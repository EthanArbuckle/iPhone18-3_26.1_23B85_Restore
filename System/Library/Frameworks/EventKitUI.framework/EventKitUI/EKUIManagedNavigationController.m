@interface EKUIManagedNavigationController
- (BOOL)canBeDirectlyManaged;
- (BOOL)wantsManagement;
@end

@implementation EKUIManagedNavigationController

- (BOOL)wantsManagement
{
  EKWeakLinkClass();
  v3 = [(EKUIManagedNavigationController *)self topViewController];
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    return 1;
  }

  v6 = [(EKUIManagedNavigationController *)self topViewController];
  v7 = [v6 conformsToProtocol:&unk_1F4F40CD0];

  if (!v7)
  {
    return 0;
  }

  v8 = [(EKUIManagedNavigationController *)self topViewController];
  v9 = [v8 wantsManagement];

  return v9;
}

- (BOOL)canBeDirectlyManaged
{
  if ([(EKUIManagedNavigationController *)self forceCanBeDirectlyManagedToNo])
  {
    return 0;
  }

  v4 = [(EKUIManagedNavigationController *)self topViewController];
  if ([v4 conformsToProtocol:&unk_1F4F40CD0])
  {
    v5 = [(EKUIManagedNavigationController *)self topViewController];
    v6 = objc_opt_respondsToSelector();

    if ((v6 & 1) == 0)
    {
      return 1;
    }

    v4 = [(EKUIManagedNavigationController *)self topViewController];
    v3 = [v4 canBeDirectlyManaged];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

@end