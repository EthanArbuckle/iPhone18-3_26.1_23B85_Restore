@interface UIViewController
- (id)ch_rootViewController;
@end

@implementation UIViewController

- (id)ch_rootViewController
{
  v2 = [(UIViewController *)self parentViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = [v2 ch_rootViewController];
  }

  v4 = v3;

  return v4;
}

@end