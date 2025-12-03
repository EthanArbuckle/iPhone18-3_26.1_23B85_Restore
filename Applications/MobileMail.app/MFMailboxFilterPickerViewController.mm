@interface MFMailboxFilterPickerViewController
- (MFMailboxFilterPickerViewController)initWithViewModel:(id)model delegate:(id)delegate;
- (MFMailboxFilterPickerViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_setupNavigationBar;
- (void)_setupTableView;
- (void)_updateSelectedRows;
- (void)cancelButtonPressed:(id)pressed;
- (void)doneButtonPressed:(id)pressed;
- (void)mailboxFilterPickerSwitchCell:(id)cell valueDidChange:(BOOL)change;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MFMailboxFilterPickerViewController

- (MFMailboxFilterPickerViewController)initWithViewModel:(id)model delegate:(id)delegate
{
  modelCopy = model;
  delegateCopy = delegate;
  v10 = delegateCopy;
  if (modelCopy)
  {
    if (delegateCopy)
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
    objc_storeStrong(&v12->_viewModel, model);
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v5 viewWillAppear:appear];
  mf_updatePreferredContentSizeBasedOnTableView = [(MFMailboxFilterPickerViewController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MFMailboxFilterPickerViewController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v4 viewDidAppear:appear];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"MFMailboxFilterPickerViewControllerDidShow" object:0];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MFMailboxFilterPickerViewController;
  [(MFMailboxFilterPickerViewController *)&v5 traitCollectionDidChange:changeCopy];
  [(MFMailboxFilterPickerViewController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)_setupTableView
{
  tableView = [(MFMailboxFilterPickerViewController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"MFMailboxFilterPickerSwitchCell"];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"MFMailboxFilterPickerCheckmarkCell"];
  [tableView setKeyboardDismissMode:1];
  [tableView setEstimatedRowHeight:44.0];
  [tableView setRowHeight:UITableViewAutomaticDimension];
  [tableView setAllowsMultipleSelection:1];
  [(MFMailboxFilterPickerViewController *)self _updateSelectedRows];
}

- (void)_setupNavigationBar
{
  v5 = +[NSBundle mainBundle];
  v3 = [v5 localizedStringForKey:@"FILTERS_PICKER_TITLE" value:&stru_100662A88 table:@"Main"];
  [(MFMailboxFilterPickerViewController *)self setTitle:v3];

  v6 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:0 target:self action:"doneButtonPressed:"];
  navigationItem = [(MFMailboxFilterPickerViewController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v6];
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  v6 = [viewModel titleForSection:section];

  if (MUISolariumFeatureEnabled())
  {
    localizedUppercaseString = v6;
  }

  else
  {
    localizedUppercaseString = [v6 localizedUppercaseString];
  }

  v8 = localizedUppercaseString;

  return v8;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  numberOfFilterSection = [viewModel numberOfFilterSection];

  return numberOfFilterSection;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  v6 = [viewModel numberOfFiltersForSection:section];

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  v9 = [viewModel selectionTypeAtIndex:pathCopy];

  if (v9)
  {
    if (v9 == 1)
    {
      v10 = [viewCopy dequeueReusableCellWithIdentifier:@"MFMailboxFilterPickerSwitchCell" forIndexPath:pathCopy];
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
    v10 = [viewCopy dequeueReusableCellWithIdentifier:@"MFMailboxFilterPickerCheckmarkCell" forIndexPath:pathCopy];
  }

  viewModel2 = [(MFMailboxFilterPickerViewController *)self viewModel];
  v14 = [viewModel2 filterAtIndexPath:pathCopy];

  [v10 bindWithMailboxFilter:v14];
  [v10 mf_updateBackgroundColorForPopover:{-[MFMailboxFilterPickerViewController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];

  return v10;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  [viewModel selectFilterAtIndexPath:pathCopy];
}

- (id)tableView:(id)view willDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  if ([viewModel canDeselectRowAtIndexPath:pathCopy])
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  [viewModel deselectFilterAtIndexPath:pathCopy];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy mf_updateBackgroundColorForPopover:{-[MFMailboxFilterPickerViewController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (void)doneButtonPressed:(id)pressed
{
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  selectedFilters = [viewModel selectedFilters];

  delegate = [(MFMailboxFilterPickerViewController *)self delegate];
  [delegate mailboxFilterPickerViewController:self didFinishPickingWithSelectedFilters:selectedFilters];
}

- (void)cancelButtonPressed:(id)pressed
{
  delegate = [(MFMailboxFilterPickerViewController *)self delegate];
  [delegate didDismissMailboxFilterPickerViewController:self];
}

- (void)_updateSelectedRows
{
  tableView = [(MFMailboxFilterPickerViewController *)self tableView];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  selected = [viewModel selected];

  v6 = [selected countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(selected);
        }

        [tableView selectRowAtIndexPath:*(*(&v9 + 1) + 8 * v8) animated:0 scrollPosition:0];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [selected countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)mailboxFilterPickerSwitchCell:(id)cell valueDidChange:(BOOL)change
{
  changeCopy = change;
  cellCopy = cell;
  tableView = [(MFMailboxFilterPickerViewController *)self tableView];
  v7 = [tableView indexPathForCell:cellCopy];

  viewModel = [(MFMailboxFilterPickerViewController *)self viewModel];
  if (changeCopy)
  {
    [viewModel selectFilterAtIndexPath:v7];
  }

  else
  {
    [viewModel deselectFilterAtIndexPath:v7];
  }
}

- (MFMailboxFilterPickerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end