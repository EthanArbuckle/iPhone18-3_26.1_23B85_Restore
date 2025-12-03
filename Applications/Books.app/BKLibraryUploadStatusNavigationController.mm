@interface BKLibraryUploadStatusNavigationController
- (int64_t)preferredStatusBarStyle;
@end

@implementation BKLibraryUploadStatusNavigationController

- (int64_t)preferredStatusBarStyle
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  childViewControllers = [(BKLibraryUploadStatusNavigationController *)self childViewControllers];
  v3 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(childViewControllers);
        }

        preferredStatusBarStyle = [*(*(&v10 + 1) + 8 * v6) preferredStatusBarStyle];
        if (preferredStatusBarStyle)
        {
          v8 = preferredStatusBarStyle;
          goto LABEL_11;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [childViewControllers countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

@end