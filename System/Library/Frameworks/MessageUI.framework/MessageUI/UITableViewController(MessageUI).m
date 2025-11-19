@interface UITableViewController(MessageUI)
- (id)mf_updatePreferredContentSizeBasedOnTableView;
- (uint64_t)mf_supportsPopoverPresentation;
- (void)mf_updateTableViewBackgroundColorForPopover;
@end

@implementation UITableViewController(MessageUI)

- (id)mf_updatePreferredContentSizeBasedOnTableView
{
  objc_initWeak(&location, val);
  v2 = [val tableView];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__UITableViewController_MessageUI__mf_updatePreferredContentSizeBasedOnTableView__block_invoke;
  v6[3] = &unk_1E8070AA8;
  objc_copyWeak(&v8, &location);
  v7 = v2;
  v3 = v2;
  v4 = [v3 ef_observeKeyPath:@"contentSize" options:1 autoCancelToken:1 usingBlock:v6];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  return v4;
}

- (uint64_t)mf_supportsPopoverPresentation
{
  v4 = [a1 view];
  v5 = [v4 window];
  if (!v5)
  {
    v6 = [a1 presentingViewController];
    v7 = [v6 view];
    v5 = [v7 window];

    if (v5)
    {
      goto LABEL_4;
    }

    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:a1 file:@"UITableViewController+MessageUI.m" lineNumber:31 description:@"view must have a window"];
    v5 = 0;
  }

LABEL_4:
  v8 = [v5 traitCollection];
  v9 = [v8 mf_supportsPopoverPresentation];

  return v9;
}

- (void)mf_updateTableViewBackgroundColorForPopover
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [a1 mf_supportsPopoverPresentation];
  if (v2 && !MFSolariumFeatureEnabled())
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    v4 = 1;
  }

  v5 = [a1 tableView];
  [v5 setBackgroundColor:v3];

  if (v4)
  {
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [a1 tableView];
  v7 = [v6 visibleCells];

  v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v7);
        }

        [*(*(&v11 + 1) + 8 * v10++) mf_updateBackgroundColorForPopover:v2];
      }

      while (v8 != v10);
      v8 = [v7 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end