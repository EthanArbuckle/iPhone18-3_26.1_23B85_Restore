@interface RAPTransitDirectionsListViewController
- (BOOL)RAPTransitDirectionsStepsList:(id)a3 shouldShowFlagForStep:(id)a4 listItem:(id)a5;
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

- (BOOL)RAPTransitDirectionsStepsList:(id)a3 shouldShowFlagForStep:(id)a4 listItem:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(RAPTransitDirectionsListViewController *)self instructionDelegate];
  LOBYTE(self) = [v9 viewController:self shouldShowFlagForStep:v8 listItem:v7];

  return self;
}

- (void)_prepareForUpdatedRoute
{
  v29.receiver = self;
  v29.super_class = RAPTransitDirectionsListViewController;
  [(TransitDirectionsListViewController *)&v29 _prepareForUpdatedRoute];
  v3 = [(TransitDirectionsListViewController *)self dataSource];
  v4 = [v3 _transitDirectionsListItems];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
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
        v10 = [v9 footerItems];
        v11 = [v10 count];

        if (v11)
        {
          v12 = [v9 footerItems];
          v13 = [v12 mutableCopy];

          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v14 = [v9 footerItems];
          v15 = [v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
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
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v21 + 1) + 8 * j);
                if ([v19 type] == 13 || objc_msgSend(v19, "type") == 7)
                {
                  [v13 removeObject:v19];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v21 objects:v30 count:16];
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
    v4 = [(TransitDirectionsListViewController *)v2 dataSource];
    [v4 setOptions:0];
    [v4 setRapDelegate:v3];
  }

  return v3;
}

@end