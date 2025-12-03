@interface UIViewController
- (BKRootBarCoordinating)bk_rootBarCoordinator;
- (id)_bk_sceneController;
- (void)_bk_setSceneController:(id)controller;
- (void)bk_presentCollectionWithID:(id)d replaceExistingPresentedCollection:(BOOL)collection;
@end

@implementation UIViewController

- (void)bk_presentCollectionWithID:(id)d replaceExistingPresentedCollection:(BOOL)collection
{
  collectionCopy = collection;
  dCopy = d;
  v37 = dCopy;
  v35 = collectionCopy;
  if ([dCopy isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v7 = BKLibraryBookshelfLibraryFinishedViewConfiguration;
LABEL_7:
    v8 = objc_alloc_init(v7);
    v9 = [BKLibraryBookshelfController setupBookshelfWithConfig:v8];
    v10 = [BCCollection titleForDefaultCollectionID:dCopy];
    [v9 setTitle:v10];
    goto LABEL_8;
  }

  if ([dCopy isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v7 = BKLibraryBookshelfLibraryWantToReadViewConfiguration;
    goto LABEL_7;
  }

  if ([dCopy isEqualToString:kBKCollectionDefaultIDSamples])
  {
    v7 = BKLibraryBookshelfLibrarySamplesViewConfiguration;
    goto LABEL_7;
  }

  v30 = +[BKLibraryManager defaultManager];
  collectionController = [v30 collectionController];
  v32 = +[BKLibraryManager defaultManager];
  uiChildContext = [v32 uiChildContext];
  v8 = [collectionController mutableCollectionWithCollectionID:dCopy inManagedObjectContext:uiChildContext error:0];

  v10 = [[BKLibraryBookshelfLibraryCollectionViewConfiguration alloc] initWithCollection:v8];
  v9 = [BKLibraryBookshelfController setupBookshelfWithConfig:v10];
  localizedTitle = [v8 localizedTitle];
  [v9 setTitle:localizedTitle];

LABEL_8:
  objc_opt_class();
  v11 = [(UIViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKPrimaryScenePresenting];
  v12 = BUDynamicCast();

  rootBarCoordinator = [v12 rootBarCoordinator];
  selectedNavigationController = [rootBarCoordinator selectedNavigationController];

  viewControllers = [selectedNavigationController viewControllers];
  v36 = v12;
  if ([viewControllers count] < 2)
  {
    v17 = 0;
  }

  else
  {
    objc_opt_class();
    lastObject = [viewControllers lastObject];
    v17 = BUDynamicCast();
  }

  objc_opt_class();
  v18 = BUDynamicCast();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = viewControllers;
  v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v39;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v39 != v22)
        {
          objc_enumerationMutation(v19);
        }

        objc_opt_class();
        v24 = BUDynamicCast();
        [v24 dismissReadingListPopover];
      }

      v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v21);
  }

  collectionID = [v17 collectionID];
  collectionID2 = [v18 collectionID];
  v27 = [collectionID isEqualToString:collectionID2];

  if ((v27 & 1) == 0)
  {
    if (v35 && v17)
    {
      v28 = [v19 mutableCopy];
      [v28 removeLastObject];
      [v28 addObject:v9];
      v29 = [v28 copy];
      [selectedNavigationController setViewControllers:v29 animated:1];
    }

    else
    {
      [selectedNavigationController pushViewController:v9 animated:1];
    }
  }
}

- (id)_bk_sceneController
{
  v2 = objc_getAssociatedObject(self, &off_100A09750);
  sceneController = [v2 sceneController];

  return sceneController;
}

- (void)_bk_setSceneController:(id)controller
{
  controllerCopy = controller;
  value = [[_BKSceneControllerWrapper alloc] initWithSceneController:controllerCopy];

  objc_setAssociatedObject(self, &off_100A09750, value, 1);
}

- (BKRootBarCoordinating)bk_rootBarCoordinator
{
  selfCopy = self;
  splitViewController = [(UIViewController *)selfCopy splitViewController];
  if (!splitViewController)
  {
    splitViewController = [(UIViewController *)selfCopy tabBarController];
  }

  v4 = splitViewController;
  bk_rootBarCoordinator = [(UISplitViewController *)splitViewController bk_rootBarCoordinator];

  return bk_rootBarCoordinator;
}

@end