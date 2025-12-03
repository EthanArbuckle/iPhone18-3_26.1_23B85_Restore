@interface ControlCenterTrainingView
- (CGSize)intrinsicContentSize;
- (id)makeCAPackage;
@end

@implementation ControlCenterTrainingView

- (id)makeCAPackage
{
  v2 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:[(ControlCenterTrainingView *)self semanticContentAttribute]];
  v3 = &stru_100108EB8;
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

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 URLForResource:v8 withExtension:@"ca"];
  v11 = [CAPackage packageWithContentsOfURL:v10 type:kCAPackageTypeCAMLBundle options:0 error:0];

  return v11;
}

- (CGSize)intrinsicContentSize
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  v4 = dbl_1000D5210[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v5 = dbl_1000D5220[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  result.height = v5;
  result.width = v4;
  return result;
}

@end