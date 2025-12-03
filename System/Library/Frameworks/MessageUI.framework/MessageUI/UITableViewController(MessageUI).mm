@interface UITableViewController(MessageUI)
- (id)mf_updatePreferredContentSizeBasedOnTableView;
- (uint64_t)mf_supportsPopoverPresentation;
- (void)mf_updateTableViewBackgroundColorForPopover;
@end

@implementation UITableViewController(MessageUI)

- (id)mf_updatePreferredContentSizeBasedOnTableView
{
  objc_initWeak(&location, val);
  tableView = [val tableView];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__UITableViewController_MessageUI__mf_updatePreferredContentSizeBasedOnTableView__block_invoke;
  v6[3] = &unk_1E8070AA8;
  objc_copyWeak(&v8, &location);
  v7 = tableView;
  v3 = tableView;
  v4 = [v3 ef_observeKeyPath:@"contentSize" options:1 autoCancelToken:1 usingBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v4;
}

- (uint64_t)mf_supportsPopoverPresentation
{
  view = [self view];
  window = [view window];
  if (!window)
  {
    presentingViewController = [self presentingViewController];
    view2 = [presentingViewController view];
    window = [view2 window];

    if (window)
    {
      goto LABEL_4;
    }

    view = [MEMORY[0x1E696AAA8] currentHandler];
    [view handleFailureInMethod:a2 object:self file:@"UITableViewController+MessageUI.m" lineNumber:31 description:@"view must have a window"];
    window = 0;
  }

LABEL_4:
  traitCollection = [window traitCollection];
  mf_supportsPopoverPresentation = [traitCollection mf_supportsPopoverPresentation];

  return mf_supportsPopoverPresentation;
}

- (void)mf_updateTableViewBackgroundColorForPopover
{
  v16 = *MEMORY[0x1E69E9840];
  mf_supportsPopoverPresentation = [self mf_supportsPopoverPresentation];
  if (mf_supportsPopoverPresentation && !MFSolariumFeatureEnabled())
  {
    v4 = 0;
    systemGroupedBackgroundColor = 0;
  }

  else
  {
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v4 = 1;
  }

  tableView = [self tableView];
  [tableView setBackgroundColor:systemGroupedBackgroundColor];

  if (v4)
  {
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  tableView2 = [self tableView];
  visibleCells = [tableView2 visibleCells];

  v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v8)
  {
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(visibleCells);
        }

        [*(*(&v11 + 1) + 8 * v10++) mf_updateBackgroundColorForPopover:mf_supportsPopoverPresentation];
      }

      while (v8 != v10);
      v8 = [visibleCells countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end