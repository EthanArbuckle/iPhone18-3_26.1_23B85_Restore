@interface RAPTransitDirectionsListViewController
- (BOOL)RAPTransitDirectionsStepsList:(id)list shouldShowFlagForStep:(id)step listItem:(id)item;
- (RAPDirectionsStepsTableViewControllerDelegate)instructionDelegate;
- (RAPTransitDirectionsListViewController)init;
- (void)_prepareForUpdatedRoute;
@end

@implementation RAPTransitDirectionsListViewController

- (RAPDirectionsStepsTableViewControllerDelegate)instructionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_instructionDelegate);

  return WeakRetained;
}

- (BOOL)RAPTransitDirectionsStepsList:(id)list shouldShowFlagForStep:(id)step listItem:(id)item
{
  itemCopy = item;
  stepCopy = step;
  instructionDelegate = [(RAPTransitDirectionsListViewController *)self instructionDelegate];
  LOBYTE(self) = [instructionDelegate viewController:self shouldShowFlagForStep:stepCopy listItem:itemCopy];

  return self;
}

- (void)_prepareForUpdatedRoute
{
  v29.receiver = self;
  v29.super_class = RAPTransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v29 _prepareForUpdatedRoute];
  dataSource = [(TransitDirectionsListViewController *)self dataSource];
  _transitDirectionsListItems = [dataSource _transitDirectionsListItems];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = _transitDirectionsListItems;
  v5 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        footerItems = [v9 footerItems];
        v11 = [footerItems count];

        if (v11)
        {
          footerItems2 = [v9 footerItems];
          v13 = [footerItems2 mutableCopy];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          footerItems3 = [v9 footerItems];
          v15 = [footerItems3 countByEnumeratingWithState:&v21 objects:v30 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v22;
            do
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v22 != v17)
                {
                  objc_enumerationMutation(footerItems3);
                }

                v19 = *(*(&v21 + 1) + 8 * j);
                if ([v19 type] == 13 || objc_msgSend(v19, "type") == 7)
                {
                  [v13 removeObject:v19];
                }
              }

              v16 = [footerItems3 countByEnumeratingWithState:&v21 objects:v30 count:16];
            }

            while (v16);
          }

          [v9 setFooterItems:v13];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v6);
  }
}

- (RAPTransitDirectionsListViewController)init
{
  v6.receiver = self;
  v6.super_class = RAPTransitDirectionsListViewController;
  v2 = [(TransitDirectionsListViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    dataSource = [(TransitDirectionsListViewController *)v2 dataSource];
    [dataSource setOptions:0];
    [dataSource setRapDelegate:v3];
  }

  return v3;
}

@end