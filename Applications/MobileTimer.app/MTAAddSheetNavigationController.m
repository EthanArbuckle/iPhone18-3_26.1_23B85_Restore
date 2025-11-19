@interface MTAAddSheetNavigationController
- (unint64_t)supportedInterfaceOrientations;
- (void)pushViewController:(id)a3 animated:(BOOL)a4;
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

- (void)pushViewController:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v8.receiver = self;
  v8.super_class = MTAAddSheetNavigationController;
  v6 = a3;
  [(MTAAddSheetNavigationController *)&v8 pushViewController:v6 animated:v4];
  v7 = [UITraitCollection traitCollectionWithUserInterfaceStyle:2, v8.receiver, v8.super_class];
  [(MTAAddSheetNavigationController *)self setOverrideTraitCollection:v7 forChildViewController:v6];
}

@end