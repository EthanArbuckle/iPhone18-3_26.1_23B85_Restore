@interface UINavigationController
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3;
- (id)removeViewController:(id)a3 animated:(BOOL)a4;
@end

@implementation UINavigationController

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)a3
{
  v5 = a3;
  v6 = self;
  UINavigationController.playActivityFeatureNames(sourceChildViewController:)(a3);

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

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