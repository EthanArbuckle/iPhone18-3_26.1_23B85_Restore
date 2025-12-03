@interface MTAAddSheetNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)pushViewController:(id)controller animated:(BOOL)animated;
@end

@implementation MTAAddSheetNavigationController

- (unint64_t)supportedInterfaceOrientations
{
  if (MTUIIsPadIdiom())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (void)pushViewController:(id)controller animated:(BOOL)animated
{
  animatedCopy = animated;
  v8.receiver = self;
  v8.super_class = MTAAddSheetNavigationController;
  controllerCopy = controller;
  [(MTAAddSheetNavigationController *)&v8 pushViewController:controllerCopy animated:animatedCopy];
  v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2, v8.receiver, v8.super_class];
  [(MTAAddSheetNavigationController *)self setOverrideTraitCollection:v7 forChildViewController:controllerCopy];
}

@end