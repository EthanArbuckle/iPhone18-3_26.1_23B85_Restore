@interface CNGeminiPickerController
- (CNGeminiPickerController)initWithGeminiResult:(id)result;
- (id)geminiChannelForIndexPath:(id)path;
- (id)indexPathForGeminiChannel:(id)channel;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancelPicker:(id)picker;
- (void)didPickItem;
- (void)prepareCell:(id)cell atIndexPath:(id)path;
- (void)setGeminiResult:(id)result reload:(BOOL)reload;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CNGeminiPickerController

- (void)viewWillAppear:(BOOL)appear
{
  v23.receiver = self;
  v23.super_class = CNGeminiPickerController;
  [(CNGeminiPickerController *)&v23 viewWillAppear:appear];
  navigationBar = [(CNGeminiPickerController *)self navigationBar];
  [navigationBar _cnui_applyContactStyle];

  tableView = [(UITableViewController *)self->_tableViewController tableView];
  [tableView _cnui_applyContactStyle];

  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"PREFERRED_LINE_PICKER_TITLE" value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
  navigationItem = [(UITableViewController *)self->_tableViewController navigationItem];
  [navigationItem setTitle:v7];

  navigationItem2 = [(UITableViewController *)self->_tableViewController navigationItem];
  [navigationItem2 setLargeTitleDisplayMode:2];

  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPicker_];
    navigationItem3 = [(UITableViewController *)self->_tableViewController navigationItem];
    [navigationItem3 setLeftBarButtonItem:v10];

    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_donePicker_];
    navigationItem4 = [(UITableViewController *)self->_tableViewController navigationItem];
    [navigationItem4 setRightBarButtonItem:v12];
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v14 = +[CNUIColorRepository popoverBackgroundColor];
    tableViewController = [(CNGeminiPickerController *)self tableViewController];
    tableView2 = [tableViewController tableView];
    [tableView2 setBackgroundColor:v14];

    tableView3 = [(UITableViewController *)self->_tableViewController tableView];
    backgroundColor = [tableView3 backgroundColor];
    tableViewController2 = [(CNGeminiPickerController *)self tableViewController];
    tableView4 = [tableViewController2 tableView];
    [tableView4 setSectionIndexBackgroundColor:backgroundColor];
  }

  tableViewController3 = [(CNGeminiPickerController *)self tableViewController];
  tableView5 = [tableViewController3 tableView];
  [tableView5 reloadData];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  viewCopy = view;
  cellCopy = cell;
  [cellCopy _cnui_applyContactStyle];
  if (-[UIViewController ab_shouldUseTransparentBackgroundInPopovers](self, "ab_shouldUseTransparentBackgroundInPopovers") || ([viewCopy backgroundColor], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69DC888], "clearColor"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    tableViewController = [(CNGeminiPickerController *)self tableViewController];
    tableView = [tableViewController tableView];
    backgroundColor = [tableView backgroundColor];
    [cellCopy setBackgroundColor:backgroundColor];
  }

  else
  {
    tableViewController = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
    [cellCopy setBackgroundColor:tableViewController];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    selectedIndexPath = [(CNGeminiPickerController *)self selectedIndexPath];

    if (selectedIndexPath != pathCopy)
    {
      tableViewController = [(CNGeminiPickerController *)self tableViewController];
      tableView = [tableViewController tableView];
      selectedIndexPath2 = [(CNGeminiPickerController *)self selectedIndexPath];
      v11 = [tableView cellForRowAtIndexPath:selectedIndexPath2];
      [v11 setAccessoryType:0];

      tableViewController2 = [(CNGeminiPickerController *)self tableViewController];
      tableView2 = [tableViewController2 tableView];
      v14 = [tableView2 cellForRowAtIndexPath:pathCopy];
      [v14 setAccessoryType:3];

      [(CNGeminiPickerController *)self setSelectedIndexPath:pathCopy];
    }

    indexPathForSelectedRow = [viewCopy indexPathForSelectedRow];
    [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow animated:0];
  }

  else
  {
    [(CNGeminiPickerController *)self setSelectedIndexPath:pathCopy];
    [(CNGeminiPickerController *)self didPickItem];
    indexPathForSelectedRow2 = [viewCopy indexPathForSelectedRow];
    [viewCopy deselectRowAtIndexPath:indexPathForSelectedRow2 animated:0];

    [(CNGeminiPickerController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x1E69DD028;
  if (section)
  {
    v8 = off_1E74DEBD8;
  }

  v9 = [objc_alloc(*v8) initWithStyle:v7 reuseIdentifier:0];
  [(CNGeminiPickerController *)self prepareCell:v9 atIndexPath:pathCopy];
  selectedIndexPath = [(CNGeminiPickerController *)self selectedIndexPath];

  if (selectedIndexPath == pathCopy)
  {
    [v9 setAccessoryType:3];
  }

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (section)
  {
    v7 = @"PREFERRED_LINE_PICKER_ALWAYS_USE_FOOTER";
  }

  else
  {
    v7 = @"PREFERRED_LINE_PICKER_LAST_USED_FOOTER";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:@"PREFERRED_LINE_PICKER_ALWAYS_USE_HEADER" value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  geminiChannels = [(CNGeminiPickerController *)self geminiChannels];
  v5 = [geminiChannels count];

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  geminiChannels = [(CNGeminiPickerController *)self geminiChannels];
  if ([geminiChannels count])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)prepareCell:(id)cell atIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  if ([pathCopy section])
  {
    v7 = [(CNGeminiPickerController *)self geminiChannelForIndexPath:pathCopy];
    isAvailable = [v7 isAvailable];
    v9 = @"PREFERRED_LINE_PICKER_ALWAYS_USE_LABEL_UNAVAILABLE-%@";
    if (isAvailable)
    {
      v9 = @"PREFERRED_LINE_PICKER_ALWAYS_USE_LABEL-%@";
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
    localizedLabel = [v7 localizedLabel];
    v15 = [v10 stringWithFormat:v13, localizedLabel];

    v16 = MEMORY[0x1E695CF50];
    handle = [v7 handle];
    v18 = [v16 phoneNumberWithStringValue:handle];
    formattedInternationalStringValue = [v18 formattedInternationalStringValue];

    v20 = MEMORY[0x1E696AEC0];
    v21 = CNContactsUIBundle();
    v22 = [v21 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

    localizedBadgeLabel = [v7 localizedBadgeLabel];
    v24 = [v20 stringWithFormat:v22, localizedBadgeLabel];

    objc_opt_class();
    v25 = cellCopy;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    [v27 setText:v15 detailText:formattedInternationalStringValue badgeText:v24];
  }

  else
  {
    v7 = CNContactsUIBundle();
    v15 = [v7 localizedStringForKey:@"PREFERRED_LINE_PICKER_LAST_USED_VALUE" value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
    formattedInternationalStringValue = [cellCopy textLabel];
    [formattedInternationalStringValue setText:v15];
  }

  tableViewController = [(CNGeminiPickerController *)self tableViewController];
  tableView = [tableViewController tableView];
  v30 = -[CNGeminiPickerController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", tableView, [pathCopy section]);
  v31 = [pathCopy row] + 1;

  if (v30 == v31)
  {
    [cellCopy setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }
}

- (id)geminiChannelForIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    geminiChannels = [(CNGeminiPickerController *)self geminiChannels];
    v6 = [geminiChannels objectAtIndexedSubscript:{objc_msgSend(pathCopy, "row")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForGeminiChannel:(id)channel
{
  if (!channel)
  {
    v6 = MEMORY[0x1E696AC88];
    goto LABEL_5;
  }

  geminiChannels = [(CNGeminiPickerController *)self geminiChannels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CNGeminiPickerController_indexPathForGeminiChannel___block_invoke;
  v10[3] = &unk_1E74E2028;
  v10[4] = self;
  v5 = [geminiChannels _cn_indexOfFirstObjectPassingTest:v10];

  v6 = MEMORY[0x1E696AC88];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    channel = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_7;
  }

  channel = v5;
  v7 = 1;
LABEL_7:
  v8 = [v6 indexPathForRow:channel inSection:v7];

  return v8;
}

uint64_t __54__CNGeminiPickerController_indexPathForGeminiChannel___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 channelIdentifier];
  v4 = [*(a1 + 32) preferredGeminiChannel];
  v5 = [v4 channelIdentifier];
  v6 = [v3 isEqualToString:v5];

  return v6;
}

- (void)cancelPicker:(id)picker
{
  delegate = [(CNGeminiPickerController *)self delegate];
  [delegate pickerDidCancel:self];
}

- (void)didPickItem
{
  selectedIndexPath = [(CNGeminiPickerController *)self selectedIndexPath];
  v6 = [(CNGeminiPickerController *)self geminiChannelForIndexPath:selectedIndexPath];

  if (v6 && ![v6 isAvailable])
  {
    delegate = [(CNGeminiPickerController *)self delegate];
    [delegate pickerDidCancel:self];
  }

  else
  {
    delegate = [(CNGeminiPickerController *)self delegate];
    senderIdentity = [v6 senderIdentity];
    [delegate picker:self didPickItem:senderIdentity];
  }
}

- (void)setGeminiResult:(id)result reload:(BOOL)reload
{
  reloadCopy = reload;
  resultCopy = result;
  v6 = MEMORY[0x1E695DF70];
  availableChannels = [resultCopy availableChannels];
  v8 = [v6 arrayWithArray:availableChannels];
  geminiChannels = self->_geminiChannels;
  self->_geminiChannels = v8;

  usage = [resultCopy usage];
  if (usage == 1)
  {
    channel = [resultCopy channel];
  }

  else
  {
    channel = 0;
  }

  objc_storeStrong(&self->_preferredGeminiChannel, channel);
  if (usage == 1)
  {
  }

  preferredGeminiChannel = self->_preferredGeminiChannel;
  if (preferredGeminiChannel && ([(CNGeminiChannel *)preferredGeminiChannel isAvailable]& 1) == 0)
  {
    [(NSMutableArray *)self->_geminiChannels addObject:self->_preferredGeminiChannel];
  }

  preferredGeminiChannel = [(CNGeminiPickerController *)self preferredGeminiChannel];
  v14 = [(CNGeminiPickerController *)self indexPathForGeminiChannel:preferredGeminiChannel];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v14;

  if (reloadCopy)
  {
    tableViewController = [(CNGeminiPickerController *)self tableViewController];
    tableView = [tableViewController tableView];
    [tableView reloadData];
  }
}

- (CNGeminiPickerController)initWithGeminiResult:(id)result
{
  resultCopy = result;
  v12.receiver = self;
  v12.super_class = CNGeminiPickerController;
  v5 = [(CNGeminiPickerController *)&v12 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:1];
    tableViewController = v5->_tableViewController;
    v5->_tableViewController = v6;

    tableView = [(UITableViewController *)v5->_tableViewController tableView];
    [tableView setDelegate:v5];
    [tableView setDataSource:v5];
    [(CNGeminiPickerController *)v5 setGeminiResult:resultCopy reload:0];
    tableViewController = [(CNGeminiPickerController *)v5 tableViewController];
    [(CNGeminiPickerController *)v5 pushViewController:tableViewController animated:0];

    v10 = v5;
  }

  return v5;
}

@end