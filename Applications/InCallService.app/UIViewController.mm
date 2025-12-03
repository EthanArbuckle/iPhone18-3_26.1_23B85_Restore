@interface UIViewController
- (BOOL)isChildOf:(id)of;
@end

@implementation UIViewController

- (BOOL)isChildOf:(id)of
{
  ofCopy = of;
  parentViewController = [(UIViewController *)self parentViewController];
  v6 = parentViewController;
  if (parentViewController)
  {
    if (parentViewController == ofCopy)
    {
      v7 = 1;
    }

    else
    {
      v7 = [parentViewController isChildOf:ofCopy];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end