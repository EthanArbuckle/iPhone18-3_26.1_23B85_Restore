@interface UINavigationController
- (void)setNavigationBarColor;
@end

@implementation UINavigationController

- (void)setNavigationBarColor
{
  if ((+[TSUtilities isSolariumEnabled]& 1) == 0)
  {
    v4 = +[UIColor systemBackgroundColor];
    v3 = [(UINavigationController *)self navigationBar];
    [v3 setBackgroundColor:v4];
  }
}

@end