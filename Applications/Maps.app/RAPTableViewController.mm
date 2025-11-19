@interface RAPTableViewController
- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4;
- (RAPTablePartsDataSource)dataSource;
- (RAPTablePartsDataSource)newDataSource;
- (RAPTableViewController)init;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)infoCardThemeChanged;
- (void)returnFromViewController:(id)a3;
- (void)scrollToBottomAnimated;
- (void)scrollToPartAfterPartAnimated:(id)a3;
- (void)segueToViewController:(id)a3;
- (void)segueToViewController:(id)a3 afterReturningFromViewController:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation RAPTableViewController

- (void)scrollToPartAfterPartAnimated:(id)a3
{
  v4 = a3;
  if (!v4 || (-[RAPTableViewController dataSource](self, "dataSource"), v5 = objc_claimAutoreleasedReturnValue(), [v5 tableParts], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "indexOfObject:", v4), v6, v5, v7 == 0x7FFFFFFFFFFFFFFFLL) || (-[RAPTableViewController dataSource](self, "dataSource"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "tableParts"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count") - 1, v9, v8, v7 == v10))
  {
    [(RAPTableViewController *)self scrollToBottomAnimated];
  }

  else
  {
    v11 = [(RAPTableViewController *)self dataSource];
    v12 = [v11 tableParts];
    v13 = [(RAPTableViewController *)self dataSource];
    v14 = [v13 tableParts];
    v15 = [v12 subarrayWithRange:{v7 + 1, objc_msgSend(v14, "count") - (v7 + 1)}];

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
          v22 = [v21 sections];
          v23 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v32 + 1) + 8 * j);
                if ([v27 rowsCount])
                {
                  v28 = [(RAPTableViewController *)self dataSource];
                  v29 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v28 indexOfSection:v27]);

                  v30 = [(RAPTableViewController *)self tableView];
                  [v30 scrollToRowAtIndexPath:v29 atScrollPosition:2 animated:1];

                  goto LABEL_23;
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v32 objects:v40 count:16];
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
  v3 = [(RAPTableViewController *)self dataSource];
  v4 = [v3 tableParts];
  v5 = [v4 reverseObjectEnumerator];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v11 = [v10 sections];
        v12 = [v11 reverseObjectEnumerator];

        v13 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v21 + 1) + 8 * j);
              if ([v17 rowsCount])
              {
                v18 = [(RAPTableViewController *)self dataSource];
                v19 = +[NSIndexPath indexPathForRow:inSection:](NSIndexPath, "indexPathForRow:inSection:", 0, [v18 indexOfSection:v17]);

                v20 = [(RAPTableViewController *)self tableView];
                [v20 scrollToRowAtIndexPath:v19 atScrollPosition:2 animated:1];

                goto LABEL_18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

LABEL_18:
}

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    return UITableViewAutomaticDimension;
  }

  v7 = [(RAPTableViewController *)self dataSource];
  v8 = [v7 sectionAtIndex:a4];

  [v8 footerHeight];
  v10 = v9;

  return v10;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    return UITableViewAutomaticDimension;
  }

  v7 = [(RAPTableViewController *)self dataSource];
  v8 = [v7 sectionAtIndex:a4];

  [v8 headerHeight];
  v10 = v9;

  return v10;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = [(RAPTableViewController *)self dataSource];
  v6 = [v5 sectionAtIndex:a4];
  v7 = [v6 footerView];

  return v7;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = [(RAPTableViewController *)self dataSource];
  v8 = [v7 sectionAtIndex:a4];
  v9 = [v8 headerView];

  if (v9)
  {
    v10 = v9;
  }

  else if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v10 = 0;
  }

  else
  {
    v11 = [(RAPTableViewController *)self dataSource];
    v12 = [v11 sectionAtIndex:a4];
    v13 = [v12 headerTitle];
    v10 = [v6 _maps_groupedHeaderViewWithTitle:v13];
  }

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RAPTableViewController *)self dataSource];
  v9 = [v8 sectionAtIndex:{objc_msgSend(v6, "section")}];

  [v9 didSelectCellForRowAtIndex:objc_msgSend(v6 tableIndexPath:{"row"), v6}];
  [v7 deselectRowAtIndexPath:v6 animated:1];
}

- (BOOL)tableView:(id)a3 shouldHighlightRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(RAPTableViewController *)self dataSource];
  v7 = [v6 sectionAtIndex:{objc_msgSend(v5, "section")}];

  LOBYTE(v6) = [v7 shouldHighlightCellForRowAtIndex:objc_msgSend(v5 tableIndexPath:{"row"), v5}];
  return v6;
}

- (void)returnFromViewController:(id)a3
{
  v15 = a3;
  if ([(RAPTableViewController *)self usesNavigationControllerPushForSegue])
  {
    v4 = [(RAPTableViewController *)self navigationController];
    v5 = [v4 viewControllers];
    v6 = [v5 indexOfObject:v15];

    if (v6)
    {
      if (v6 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v7 = v15;
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

        v11 = [(RAPTableViewController *)self navigationController];
        v12 = [v11 viewControllers];
        v13 = [v12 mutableCopy];

        [v13 trimToLength:v6];
        v14 = [(RAPTableViewController *)self navigationController];
        [v14 setViewControllers:v13 animated:1];
      }
    }
  }
}

- (void)segueToViewController:(id)a3 afterReturningFromViewController:(id)a4
{
  v11 = a3;
  if ([(RAPTableViewController *)self usesNavigationControllerPushForSegue])
  {
    v5 = [(RAPTableViewController *)self navigationController];
    v6 = [v5 viewControllers];
    v7 = [v6 mutableCopy];

    if ([v7 count])
    {
      [v7 insertObject:v11 atIndex:{objc_msgSend(v7, "count") - 1}];
      v8 = [(RAPTableViewController *)self navigationController];
      [v8 setViewControllers:v7 animated:0];

      v9 = [(RAPTableViewController *)self navigationController];
      v10 = [v9 popToViewController:v11 animated:1];
    }

    else
    {
      v9 = [(RAPTableViewController *)self navigationController];
      [v9 pushViewController:v11 animated:1];
    }
  }
}

- (void)segueToViewController:(id)a3
{
  v5 = a3;
  if ([(RAPTableViewController *)self usesNavigationControllerPushForSegue])
  {
    v4 = [(RAPTableViewController *)self navigationController];
    [v4 pushViewController:v5 animated:1];
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
    v4 = [(RAPTableViewController *)self newDataSource];
    v5 = self->_dataSource;
    self->_dataSource = v4;

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
  v3 = [(RAPTableViewController *)self dataSource];
  v4 = [v3 tableParts];

  v5 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) presentingViewControllerViewDidLayoutSubviews];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)infoCardThemeChanged
{
  v7.receiver = self;
  v7.super_class = RAPTableViewController;
  [(RAPTableViewController *)&v7 infoCardThemeChanged];
  v3 = [(RAPTableViewController *)self tableView];
  v4 = [v3 theme];
  v5 = [v4 controlBackgroundColor];
  v6 = [(RAPTableViewController *)self tableView];
  [v6 setBackgroundColor:v5];
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = RAPTableViewController;
  [(RAPTableViewController *)&v10 viewDidLoad];
  v3 = [(RAPTableViewController *)self tableView];
  [v3 setAccessibilityIdentifier:@"RAPTableView"];

  v4 = [(RAPTableViewController *)self tableView];
  [v4 setRowHeight:UITableViewAutomaticDimension];

  v5 = [(RAPTableViewController *)self tableView];
  v6 = [(RAPTableViewController *)self dataSource];
  [v6 setTableView:v5];

  v7 = +[NSBundle mainBundle];
  v8 = [v7 localizedStringForKey:@"Back" value:@"localized string not found" table:0];
  v9 = [(RAPTableViewController *)self navigationItem];
  [v9 setBackButtonTitle:v8];
}

- (RAPTableViewController)init
{
  if (MapsFeature_IsEnabled_MoreReportTypes())
  {
    v3 = [(RAPTableViewController *)&v7 initWithStyle:2, v6.receiver, v6.super_class, self, RAPTableViewController];
  }

  else
  {
    v3 = [(RAPTableViewController *)&v6 initWithStyle:1, self, RAPTableViewController, v7.receiver, v7.super_class];
  }

  v4 = v3;

  return v4;
}

@end