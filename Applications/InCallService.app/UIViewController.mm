@interface UIViewController
- (BOOL)isChildOf:(id)a3;
@end

@implementation UIViewController

- (BOOL)isChildOf:(id)a3
{
  v4 = a3;
  v5 = [(UIViewController *)self parentViewController];
  v6 = v5;
  if (v5)
  {
    if (v5 == v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = [v5 isChildOf:v4];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end