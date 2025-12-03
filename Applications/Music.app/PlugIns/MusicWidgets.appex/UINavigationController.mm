@interface UINavigationController
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller;
- (id)removeViewController:(id)controller animated:(BOOL)animated;
@end

@implementation UINavigationController

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  UINavigationController.playActivityFeatureNames(sourceChildViewController:)(controller);

  v7.super.isa = sub_100572D08().super.isa;

  return v7.super.isa;
}

- (id)removeViewController:(id)controller animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  v8 = UINavigationController.removeViewController(_:animated:)(controllerCopy, animated);

  return v8;
}

@end