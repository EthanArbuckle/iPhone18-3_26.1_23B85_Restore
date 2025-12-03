@interface UINavigationController
- (void)setNavigationBarColor;
@end

@implementation UINavigationController

- (void)setNavigationBarColor
{
  if ((+[TSUtilities isSolariumEnabled]& 1) == 0)
  {
    v4 = +[UIColor systemBackgroundColor];
    navigationBar = [(UINavigationController *)self navigationBar];
    [navigationBar setBackgroundColor:v4];
  }
}

@end