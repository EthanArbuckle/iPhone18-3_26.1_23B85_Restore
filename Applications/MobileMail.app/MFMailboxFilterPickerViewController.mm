@interface MFMailboxFilterPickerViewController
- (MFMailboxFilterPickerViewController)initWithViewModel:(id)a3 delegate:(id)a4;
- (MFMailboxFilterPickerViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_setupNavigationBar;
- (void)_setupTableView;
- (void)_updateSelectedRows;
- (void)cancelButtonPressed:(id)a3;
- (void)doneButtonPressed:(id)a3;
- (void)mailboxFilterPickerSwitchCell:(id)a3 valueDidChange:(BOOL)a4;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MFMailboxFilterPickerViewController

- (MFMailboxFilterPickerViewController)initWithViewModel:(id)a3 delegate:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = +[NSAssertionHandler currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewController.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"viewModel"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v15 = +[NSAssertionHandler currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"MFMailboxFilterPickerViewController.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = MFMailboxFilterPickerViewController;
  v11 = [(MFMailboxFilterPickerViewController *)&v16 initWithStyle:2];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, v10);
    objc_storeStrong(&v12->_viewModel, a3);
  }

  return v12;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v3 viewDidLoad];
  [(MFMailboxFilterPickerViewController *)self _setupNavigationBar];
  [(MFMailboxFilterPickerViewController *)self _setupTableView];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v5 viewWillAppear:a3];
  v4 = [(MFMailboxFilterPickerViewController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MFMailboxFilterPickerViewController *)self setTableViewObserver:v4];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v4 viewDidAppear:a3];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MFMailboxFilterPickerViewControllerDidShow" object:0];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v5 traitCollectionDidChange:v4];
  [(MFMailboxFilterPickerViewController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)_setupTableView
{
  v3 = [(MFMailboxFilterPickerViewController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"MFMailboxFilterPickerSwitchCell"];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"MFMailboxFilterPickerCheckmarkCell"];
  [v3 setKeyboardDismissMode:1];
  [v3 setEstimatedRowHeight:44.0];
  [v3 setRowHeight:UITableViewAutomaticDimension];
  [v3 setAllowsMultipleSelection:1];
  [(MFMailboxFilterPickerViewController *)self _updateSelectedRows];
}

- (void)_setupNavigationBar
{
  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:@"FILTERS_PICKER_TITLE" value:&stru_100662A88 table:@"Main"];
  [(MFMailboxFilterPickerViewController *)self setTitle:v3];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
  v4 = [(MFMailboxFilterPickerViewController *)self navigationItem];
  [v4 setRightBarButtonItem:v6];
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v5 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v6 = [v5 titleForSection:a4];

  if (MUISolariumFeatureEnabled())
  {
    v7 = v6;
  }

  else
  {
    v7 = [v6 localizedUppercaseString];
  }

  v8 = v7;

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v4 = [v3 numberOfFilterSection];

  return v4;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v6 = [v5 numberOfFiltersForSection:a4];

  return v6;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v9 = [v8 selectionTypeAtIndex:v7];

  if (v9)
  {
    if (v9 == 1)
    {
      v10 = [v6 dequeueReusableCellWithIdentifier:@"MFMailboxFilterPickerSwitchCell" forIndexPath:v7];
      [v10 setDelegate:self];
    }

    else
    {
      v11 = +[NSAssertionHandler currentHandler];
      v12 = [NSString stringWithUTF8String:"[MFMailboxFilterPickerViewController tableView:cellForRowAtIndexPath:]"];
      [v11 handleFailureInFunction:v12 file:@"MFMailboxFilterPickerViewController.m" lineNumber:137 description:@"Unknown selection type"];

      v10 = 0;
    }
  }

  else
  {
    v10 = [v6 dequeueReusableCellWithIdentifier:@"MFMailboxFilterPickerCheckmarkCell" forIndexPath:v7];
  }

  v13 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v14 = [v13 filterAtIndexPath:v7];

  [v10 bindWithMailboxFilter:v14];
  [v10 mf_updateBackgroundColorForPopover:{-[MFMailboxFilterPickerViewController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];

  return v10;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [(MFMailboxFilterPickerViewController *)self viewModel];
  [v5 selectFilterAtIndexPath:v6];
}

- (id)tableView:(id)a3 willDeselectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(MFMailboxFilterPickerViewController *)self viewModel];
  if ([v6 canDeselectRowAtIndexPath:v5])
  {
    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  v6 = a4;
  v5 = [(MFMailboxFilterPickerViewController *)self viewModel];
  [v5 deselectFilterAtIndexPath:v6];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 mf_updateBackgroundColorForPopover:{-[MFMailboxFilterPickerViewController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (void)doneButtonPressed:(id)a3
{
  v4 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v6 = [v4 selectedFilters];

  v5 = [(MFMailboxFilterPickerViewController *)self delegate];
  [v5 mailboxFilterPickerViewController:self didFinishPickingWithSelectedFilters:v6];
}

- (void)cancelButtonPressed:(id)a3
{
  v4 = [(MFMailboxFilterPickerViewController *)self delegate];
  [v4 didDismissMailboxFilterPickerViewController:self];
}

- (void)_updateSelectedRows
{
  v3 = [(MFMailboxFilterPickerViewController *)self tableView];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v5 = [v4 selected];

  v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v6)
  {
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v5);
        }

        [v3 selectRowAtIndexPath:*(*(&v9 + 1) + 8 * v8) animated:0 scrollPosition:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)mailboxFilterPickerSwitchCell:(id)a3 valueDidChange:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(MFMailboxFilterPickerViewController *)self tableView];
  v7 = [v6 indexPathForCell:v9];

  v8 = [(MFMailboxFilterPickerViewController *)self viewModel];
  if (v4)
  {
    [v8 selectFilterAtIndexPath:v7];
  }

  else
  {
    [v8 deselectFilterAtIndexPath:v7];
  }
}

- (MFMailboxFilterPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end