@interface ControlCenterTrainingView
- (CGSize)intrinsicContentSize;
- (id)makeCAPackage;
@end

@implementation ControlCenterTrainingView

- (CGSize)intrinsicContentSize
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  v4 = dbl_100170F00[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v5 = dbl_100170F10[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)makeCAPackage
{
  v2 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(ControlCenterTrainingView *)self semanticContentAttribute]];
  v3 = &stru_100195CA8;
  if (v2 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v3 = @"-RTL";
  }

  v4 = v3;
  v5 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v5 userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v7 = "ipad";
  }

  else
  {
    v7 = "iphone";
  }

  v8 = [NSString stringWithFormat:@"ControlCenter-PressToExpand%@~%s", v4, v7];

  v9 = +[UIDevice currentDevice];
  userInterfaceIdiom2 = [v9 userInterfaceIdiom];

  if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) != 1)
  {
    v11 = [NSString stringWithFormat:@"%@-D73", v8];

    v8 = v11;
  }

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 URLForResource:v8 withExtension:@"ca"];
  v14 = [CAPackage packageWithContentsOfURL:v13 type:kCAPackageTypeCAMLBundle options:0 error:0];

  return v14;
}

@end