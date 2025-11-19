@interface UIViewController
- (BKRootBarCoordinating)bk_rootBarCoordinator;
- (id)_bk_sceneController;
- (void)_bk_setSceneController:(id)a3;
- (void)bk_presentCollectionWithID:(id)a3 replaceExistingPresentedCollection:(BOOL)a4;
@end

@implementation UIViewController

- (void)bk_presentCollectionWithID:(id)a3 replaceExistingPresentedCollection:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v37 = v6;
  v35 = v4;
  if ([v6 isEqualToString:kBKCollectionDefaultIDFinished])
  {
    v7 = BKLibraryBookshelfLibraryFinishedViewConfiguration;
LABEL_7:
    v8 = objc_alloc_init(v7);
    v9 = [BKLibraryBookshelfController setupBookshelfWithConfig:v8];
    v10 = [BCCollection titleForDefaultCollectionID:v6];
    [v9 setTitle:v10];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:kBKCollectionDefaultIDWantToRead])
  {
    v7 = BKLibraryBookshelfLibraryWantToReadViewConfiguration;
    goto LABEL_7;
  }

  if ([v6 isEqualToString:kBKCollectionDefaultIDSamples])
  {
    v7 = BKLibraryBookshelfLibrarySamplesViewConfiguration;
    goto LABEL_7;
  }

  v30 = +[BKLibraryManager defaultManager];
  v31 = [v30 collectionController];
  v32 = +[BKLibraryManager defaultManager];
  v33 = [v32 uiChildContext];
  v8 = [v31 mutableCollectionWithCollectionID:v6 inManagedObjectContext:v33 error:0];

  v10 = [[BKLibraryBookshelfLibraryCollectionViewConfiguration alloc] initWithCollection:v8];
  v9 = [BKLibraryBookshelfController setupBookshelfWithConfig:v10];
  v34 = [v8 localizedTitle];
  [v9 setTitle:v34];

LABEL_8:
  objc_opt_class();
  v11 = [(UIViewController *)self im_ancestorFlowControllerConformingToProtocol:&OBJC_PROTOCOL___BKPrimaryScenePresenting];
  v12 = BUDynamicCast();

  v13 = [v12 rootBarCoordinator];
  v14 = [v13 selectedNavigationController];

  v15 = [v14 viewControllers];
  v36 = v12;
  if ([v15 count] < 2)
  {
    v17 = 0;
  }

  else
  {
    objc_opt_class();
    v16 = [v15 lastObject];
    v17 = BUDynamicCast();
  }

  objc_opt_class();
  v18 = BUDynamicCast();
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v19 = v15;
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

  v25 = [v17 collectionID];
  v26 = [v18 collectionID];
  v27 = [v25 isEqualToString:v26];

  if ((v27 & 1) == 0)
  {
    if (v35 && v17)
    {
      v28 = [v19 mutableCopy];
      [v28 removeLastObject];
      [v28 addObject:v9];
      v29 = [v28 copy];
      [v14 setViewControllers:v29 animated:1];
    }

    else
    {
      [v14 pushViewController:v9 animated:1];
    }
  }
}

- (id)_bk_sceneController
{
  v2 = objc_getAssociatedObject(self, &off_100A09750);
  v3 = [v2 sceneController];

  return v3;
}

- (void)_bk_setSceneController:(id)a3
{
  v4 = a3;
  value = [[_BKSceneControllerWrapper alloc] initWithSceneController:v4];

  objc_setAssociatedObject(self, &off_100A09750, value, 1);
}

- (BKRootBarCoordinating)bk_rootBarCoordinator
{
  v2 = self;
  v3 = [(UIViewController *)v2 splitViewController];
  if (!v3)
  {
    v3 = [(UIViewController *)v2 tabBarController];
  }

  v4 = v3;
  v5 = [(UISplitViewController *)v3 bk_rootBarCoordinator];

  return v5;
}

@end