@interface RAPTableViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (RAPTablePartsDataSource)dataSource;
- (RAPTablePartsDataSource)newDataSource;
- (RAPTableViewController)init;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (void)infoCardThemeChanged;
- (void)returnFromViewController:(id)controller;
- (void)scrollToBottomAnimated;
- (void)scrollToPartAfterPartAnimated:(id)animated;
- (void)segueToViewController:(id)controller;
- (void)segueToViewController:(id)controller afterReturningFromViewController:(id)viewController;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RAPTableViewController

- (void)scrollToPartAfterPartAnimated:(id)animated
{
  animatedCopy = animated;
  if (!animatedCopy || (-[RAPTableViewController dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tableParts], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "indexOfObject:", animatedCopy), v6, v5, v7 == 0x7FFFFFFFFFFFFFFFLL) || (-[RAPTableViewController dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "tableParts"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count") - 1, v9, v8, v7 == v10))
  {
    [(RAPTableViewController *)self scrollToBottomAnimated];
  }

  else
  {
    dataSource = [(RAPTableViewController *)self dataSource];
    tableParts = [dataSource tableParts];
    dataSource2 = [(RAPTableViewController *)self dataSource];
    tableParts2 = [dataSource2 tableParts];
    v15 = [tableParts subarrayWithRange:{v7 + 1, objc_msgSend(tableParts2, "count") - (v7 + 1)}];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      v31 = *v37;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v36 + 1) + 8 * i);
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          sections = [v21 sections];
          v23 = [sections countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v33;
            while (2)
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v33 != v25)
                {
                  objc_enumerationMutation(sections);
                }

                v27 = *(*(&v32 + 1) + 8 * j);
                if ([v27 rowsCount])
                {
                  dataSource3 = [(RAPTableViewController *)self dataSource];
                  v29 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [dataSource3 indexOfSection:v27]);

                  tableView = [(RAPTableViewController *)self tableView];
                  [tableView scrollToRowAtIndexPath:v29 atScrollPosition:2 animated:1];

                  goto LABEL_23;
                }
              }

              v24 = [sections countByEnumeratingWithState:&v32 objects:v40 count:16];
              if (v24)
              {
                continue;
              }

              break;
            }
          }

          v19 = v31;
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v18);
    }

LABEL_23:
  }
}

- (void)scrollToBottomAnimated
{
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  dataSource = [(RAPTableViewController *)self dataSource];
  tableParts = [dataSource tableParts];
  reverseObjectEnumerator = [tableParts reverseObjectEnumerator];

  v6 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        sections = [v10 sections];
        reverseObjectEnumerator2 = [sections reverseObjectEnumerator];

        v13 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          while (2)
          {
            for (j = 0; j != v14; j = j + 1)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(reverseObjectEnumerator2);
              }

              v17 = *(*(&v21 + 1) + 8 * j);
              if ([v17 rowsCount])
              {
                dataSource2 = [(RAPTableViewController *)self dataSource];
                v19 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [dataSource2 indexOfSection:v17]);

                tableView = [(RAPTableViewController *)self tableView];
                [tableView scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:1];

                goto LABEL_18;
              }
            }

            v14 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

LABEL_18:
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    return UITableViewAutomaticDimension;
  }

  dataSource = [(RAPTableViewController *)self dataSource];
  v8 = [dataSource sectionAtIndex:section];

  [v8 footerHeight];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    return UITableViewAutomaticDimension;
  }

  dataSource = [(RAPTableViewController *)self dataSource];
  v8 = [dataSource sectionAtIndex:section];

  [v8 headerHeight];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  dataSource = [(RAPTableViewController *)self dataSource];
  v6 = [dataSource sectionAtIndex:section];
  footerView = [v6 footerView];

  return footerView;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  dataSource = [(RAPTableViewController *)self dataSource];
  v8 = [dataSource sectionAtIndex:section];
  headerView = [v8 headerView];

  if (headerView)
  {
    v10 = headerView;
  }

  else if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v10 = 0;
  }

  else
  {
    dataSource2 = [(RAPTableViewController *)self dataSource];
    v12 = [dataSource2 sectionAtIndex:section];
    headerTitle = [v12 headerTitle];
    v10 = [viewCopy _maps_groupedHeaderViewWithTitle:headerTitle];
  }

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  dataSource = [(RAPTableViewController *)self dataSource];
  v9 = [dataSource sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  [v9 didSelectCellForRowAtIndex:objc_msgSend(pathCopy tableIndexPath:{"row"), pathCopy}];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  pathCopy = path;
  dataSource = [(RAPTableViewController *)self dataSource];
  v7 = [dataSource sectionAtIndex:{objc_msgSend(pathCopy, "section")}];

  LOBYTE(dataSource) = [v7 shouldHighlightCellForRowAtIndex:objc_msgSend(pathCopy tableIndexPath:{"row"), pathCopy}];
  return dataSource;
}

- (void)returnFromViewController:(id)controller
{
  controllerCopy = controller;
  if ([(RAPTableViewController *)self usesNavigationControllerPushForSegue])
  {
    navigationController = [(RAPTableViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v6 = [viewControllers indexOfObject:controllerCopy];

    if (v6)
    {
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = controllerCopy;
        if ([v7 conformsToProtocol:&OBJC_PROTOCOL___RAPInstrumentableTarget])
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;

        if ([v9 analyticTarget])
        {
          v10 = +[MKMapService sharedService];
          [v10 captureUserAction:10111 onTarget:objc_msgSend(v9 eventValue:{"analyticTarget"), 0}];
        }

        navigationController2 = [(RAPTableViewController *)self navigationController];
        viewControllers2 = [navigationController2 viewControllers];
        v13 = [viewControllers2 mutableCopy];

        [v13 trimToLength:v6];
        navigationController3 = [(RAPTableViewController *)self navigationController];
        [navigationController3 setViewControllers:v13 animated:1];
      }
    }
  }
}

- (void)segueToViewController:(id)controller afterReturningFromViewController:(id)viewController
{
  controllerCopy = controller;
  if ([(RAPTableViewController *)self usesNavigationControllerPushForSegue])
  {
    navigationController = [(RAPTableViewController *)self navigationController];
    viewControllers = [navigationController viewControllers];
    v7 = [viewControllers mutableCopy];

    if ([v7 count])
    {
      [v7 insertObject:controllerCopy atIndex:{objc_msgSend(v7, "count") - 1}];
      navigationController2 = [(RAPTableViewController *)self navigationController];
      [navigationController2 setViewControllers:v7 animated:0];

      navigationController3 = [(RAPTableViewController *)self navigationController];
      v10 = [navigationController3 popToViewController:controllerCopy animated:1];
    }

    else
    {
      navigationController3 = [(RAPTableViewController *)self navigationController];
      [navigationController3 pushViewController:controllerCopy animated:1];
    }
  }
}

- (void)segueToViewController:(id)controller
{
  controllerCopy = controller;
  if ([(RAPTableViewController *)self usesNavigationControllerPushForSegue])
  {
    navigationController = [(RAPTableViewController *)self navigationController];
    [navigationController pushViewController:controllerCopy animated:1];
  }
}

- (RAPTablePartsDataSource)newDataSource
{
  v3 = [RAPTablePartsDataSource alloc];

  return [(RAPTablePartsDataSource *)v3 initWithPresentingViewController:self];
}

- (RAPTablePartsDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    newDataSource = [(RAPTableViewController *)self newDataSource];
    v5 = self->_dataSource;
    self->_dataSource = newDataSource;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = RAPTableViewController;
  [(RAPTableViewController *)&v13 viewDidLayoutSubviews];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  dataSource = [(RAPTableViewController *)self dataSource];
  tableParts = [dataSource tableParts];

  v5 = [tableParts countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(tableParts);
        }

        [*(*(&v9 + 1) + 8 * v8) presentingViewControllerViewDidLayoutSubviews];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [tableParts countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)infoCardThemeChanged
{
  v7.receiver = self;
  v7.super_class = RAPTableViewController;
  [(RAPTableViewController *)&v7 infoCardThemeChanged];
  tableView = [(RAPTableViewController *)self tableView];
  theme = [tableView theme];
  controlBackgroundColor = [theme controlBackgroundColor];
  tableView2 = [(RAPTableViewController *)self tableView];
  [tableView2 setBackgroundColor:controlBackgroundColor];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = RAPTableViewController;
  [(RAPTableViewController *)&v10 viewDidLoad];
  tableView = [(RAPTableViewController *)self tableView];
  [tableView setAccessibilityIdentifier:@"RAPTableView"];

  tableView2 = [(RAPTableViewController *)self tableView];
  [tableView2 setRowHeight:UITableViewAutomaticDimension];

  tableView3 = [(RAPTableViewController *)self tableView];
  dataSource = [(RAPTableViewController *)self dataSource];
  [dataSource setTableView:tableView3];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
  navigationItem = [(RAPTableViewController *)self navigationItem];
  [navigationItem setBackButtonTitle:v8];
}

- (RAPTableViewController)init
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    rAPTableViewController = [(RAPTableViewController *)&v7 initWithStyle:2, v6.receiver, v6.super_class, self, RAPTableViewController];
  }

  else
  {
    rAPTableViewController = [(RAPTableViewController *)&v6 initWithStyle:1, self, RAPTableViewController, v7.receiver, v7.super_class];
  }

  v4 = rAPTableViewController;

  return v4;
}

@end