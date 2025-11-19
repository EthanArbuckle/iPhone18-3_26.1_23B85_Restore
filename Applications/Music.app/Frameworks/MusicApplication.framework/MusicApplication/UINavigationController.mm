@interface UINavigationController
- (BOOL)navigateTo:(id)a3 from:(id)a4 animated:(BOOL)a5;
- (id)drop:(id)a3 animated:(BOOL)a4;
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3;
- (id)removeViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation UINavigationController

- (BOOL)navigateTo:(id)a3 from:(id)a4 animated:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_72A60(v8, a4, a5);

  return 1;
}

- (id)drop:(id)a3 animated:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_72D20(v5);

  return v7;
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  UINavigationController.playActivityFeatureNames(sourceChildViewController:)(a3);

  v7.super.isa = sub_AB9740().super.isa;

  return v7.super.isa;
}

- (id)removeViewController:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = UINavigationController.removeViewController(_:animated:)(v6, a4);

  return v8;
}

@end