@interface UIViewController
- (id)ch_rootViewController;
@end

@implementation UIViewController

- (id)ch_rootViewController
{
  parentViewController = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ch_rootViewController = parentViewController;
  }

  else
  {
    ch_rootViewController = [parentViewController ch_rootViewController];
  }

  v4 = ch_rootViewController;

  return v4;
}

@end