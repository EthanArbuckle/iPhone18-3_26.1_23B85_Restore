@interface UINavigationController
- (BOOL)navigateTo:(id)to from:(id)from animated:(BOOL)animated;
- (id)drop:(id)drop animated:(BOOL)animated;
- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller;
- (id)removeViewController:(id)controller animated:(BOOL)animated;
@end

@implementation UINavigationController

- (BOOL)navigateTo:(id)to from:(id)from animated:(BOOL)animated
{
  toCopy = to;
  fromCopy = from;
  selfCopy = self;
  sub_10016F180(toCopy, from, animated);

  return 1;
}

- (id)drop:(id)drop animated:(BOOL)animated
{
  dropCopy = drop;
  selfCopy = self;
  v7 = sub_10016F47C(dropCopy);

  return v7;
}

- (id)playActivityFeatureNamesWithSourceChildViewController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  UINavigationController.playActivityFeatureNames(sourceChildViewController:)(controller);

  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

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