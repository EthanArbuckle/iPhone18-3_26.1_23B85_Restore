@interface CNGeminiPickerController
- (CNGeminiPickerController)initWithGeminiResult:(id)a3;
- (id)geminiChannelForIndexPath:(id)a3;
- (id)indexPathForGeminiChannel:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancelPicker:(id)a3;
- (void)didPickItem;
- (void)prepareCell:(id)a3 atIndexPath:(id)a4;
- (void)setGeminiResult:(id)a3 reload:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation CNGeminiPickerController

- (void)viewWillAppear:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = CNGeminiPickerController;
  [(CNGeminiPickerController *)&v23 viewWillAppear:a3];
  v4 = [(CNGeminiPickerController *)self navigationBar];
  [v4 _cnui_applyContactStyle];

  v5 = [(UITableViewController *)self->_tableViewController tableView];
  [v5 _cnui_applyContactStyle];

  v6 = CNContactsUIBundle();
  v7 = [v6 localizedStringForKey:@"PREFERRED_LINE_PICKER_TITLE" value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
  v8 = [(UITableViewController *)self->_tableViewController navigationItem];
  [v8 setTitle:v7];

  v9 = [(UITableViewController *)self->_tableViewController navigationItem];
  [v9 setLargeTitleDisplayMode:2];

  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:sel_cancelPicker_];
    v11 = [(UITableViewController *)self->_tableViewController navigationItem];
    [v11 setLeftBarButtonItem:v10];

    v12 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_donePicker_];
    v13 = [(UITableViewController *)self->_tableViewController navigationItem];
    [v13 setRightBarButtonItem:v12];
  }

  if ([(UIViewController *)self ab_shouldUseTransparentBackgroundInPopovers])
  {
    v14 = +[CNUIColorRepository popoverBackgroundColor];
    v15 = [(CNGeminiPickerController *)self tableViewController];
    v16 = [v15 tableView];
    [v16 setBackgroundColor:v14];

    v17 = [(UITableViewController *)self->_tableViewController tableView];
    v18 = [v17 backgroundColor];
    v19 = [(CNGeminiPickerController *)self tableViewController];
    v20 = [v19 tableView];
    [v20 setSectionIndexBackgroundColor:v18];
  }

  v21 = [(CNGeminiPickerController *)self tableViewController];
  v22 = [v21 tableView];
  [v22 reloadData];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v14 = a3;
  v7 = a4;
  [v7 _cnui_applyContactStyle];
  if (-[UIViewController ab_shouldUseTransparentBackgroundInPopovers](self, "ab_shouldUseTransparentBackgroundInPopovers") || ([v14 backgroundColor], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E69DC888], "clearColor"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqual:", v9), v9, v8, v10))
  {
    v11 = [(CNGeminiPickerController *)self tableViewController];
    v12 = [v11 tableView];
    v13 = [v12 backgroundColor];
    [v7 setBackgroundColor:v13];
  }

  else
  {
    v11 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
    [v7 setBackgroundColor:v11];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v17 = a4;
  v6 = a3;
  if ([(UIViewController *)self ab_shouldShowNavBarButtons])
  {
    v7 = [(CNGeminiPickerController *)self selectedIndexPath];

    if (v7 != v17)
    {
      v8 = [(CNGeminiPickerController *)self tableViewController];
      v9 = [v8 tableView];
      v10 = [(CNGeminiPickerController *)self selectedIndexPath];
      v11 = [v9 cellForRowAtIndexPath:v10];
      [v11 setAccessoryType:0];

      v12 = [(CNGeminiPickerController *)self tableViewController];
      v13 = [v12 tableView];
      v14 = [v13 cellForRowAtIndexPath:v17];
      [v14 setAccessoryType:3];

      [(CNGeminiPickerController *)self setSelectedIndexPath:v17];
    }

    v15 = [v6 indexPathForSelectedRow];
    [v6 deselectRowAtIndexPath:v15 animated:0];
  }

  else
  {
    [(CNGeminiPickerController *)self setSelectedIndexPath:v17];
    [(CNGeminiPickerController *)self didPickItem];
    v16 = [v6 indexPathForSelectedRow];
    [v6 deselectRowAtIndexPath:v16 animated:0];

    [(CNGeminiPickerController *)self dismissViewControllerAnimated:1 completion:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [v5 section];
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  v8 = 0x1E69DD028;
  if (v6)
  {
    v8 = off_1E74DEBD8;
  }

  v9 = [objc_alloc(*v8) initWithStyle:v7 reuseIdentifier:0];
  [(CNGeminiPickerController *)self prepareCell:v9 atIndexPath:v5];
  v10 = [(CNGeminiPickerController *)self selectedIndexPath];

  if (v10 == v5)
  {
    [v9 setAccessoryType:3];
  }

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  v5 = CNContactsUIBundle();
  v6 = v5;
  if (a4)
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

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
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

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v4 = [(CNGeminiPickerController *)self geminiChannels];
  v5 = [v4 count];

  return v5;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(CNGeminiPickerController *)self geminiChannels];
  if ([v3 count])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)prepareCell:(id)a3 atIndexPath:(id)a4
{
  v32 = a3;
  v6 = a4;
  if ([v6 section])
  {
    v7 = [(CNGeminiPickerController *)self geminiChannelForIndexPath:v6];
    v8 = [v7 isAvailable];
    v9 = @"PREFERRED_LINE_PICKER_ALWAYS_USE_LABEL_UNAVAILABLE-%@";
    if (v8)
    {
      v9 = @"PREFERRED_LINE_PICKER_ALWAYS_USE_LABEL-%@";
    }

    v10 = MEMORY[0x1E696AEC0];
    v11 = v9;
    v12 = CNContactsUIBundle();
    v13 = [v12 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
    v14 = [v7 localizedLabel];
    v15 = [v10 stringWithFormat:v13, v14];

    v16 = MEMORY[0x1E695CF50];
    v17 = [v7 handle];
    v18 = [v16 phoneNumberWithStringValue:v17];
    v19 = [v18 formattedInternationalStringValue];

    v20 = MEMORY[0x1E696AEC0];
    v21 = CNContactsUIBundle();
    v22 = [v21 localizedStringForKey:v11 value:&stru_1F0CE7398 table:@"Localized-GEMINI"];

    v23 = [v7 localizedBadgeLabel];
    v24 = [v20 stringWithFormat:v22, v23];

    objc_opt_class();
    v25 = v32;
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;

    [v27 setText:v15 detailText:v19 badgeText:v24];
  }

  else
  {
    v7 = CNContactsUIBundle();
    v15 = [v7 localizedStringForKey:@"PREFERRED_LINE_PICKER_LAST_USED_VALUE" value:&stru_1F0CE7398 table:@"Localized-GEMINI"];
    v19 = [v32 textLabel];
    [v19 setText:v15];
  }

  v28 = [(CNGeminiPickerController *)self tableViewController];
  v29 = [v28 tableView];
  v30 = -[CNGeminiPickerController tableView:numberOfRowsInSection:](self, "tableView:numberOfRowsInSection:", v29, [v6 section]);
  v31 = [v6 row] + 1;

  if (v30 == v31)
  {
    [v32 setSeparatorInset:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
  }
}

- (id)geminiChannelForIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section] == 1)
  {
    v5 = [(CNGeminiPickerController *)self geminiChannels];
    v6 = [v5 objectAtIndexedSubscript:{objc_msgSend(v4, "row")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForGeminiChannel:(id)a3
{
  if (!a3)
  {
    v6 = MEMORY[0x1E696AC88];
    goto LABEL_5;
  }

  v4 = [(CNGeminiPickerController *)self geminiChannels];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__CNGeminiPickerController_indexPathForGeminiChannel___block_invoke;
  v10[3] = &unk_1E74E2028;
  v10[4] = self;
  v5 = [v4 _cn_indexOfFirstObjectPassingTest:v10];

  v6 = MEMORY[0x1E696AC88];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    a3 = 0;
LABEL_5:
    v7 = 0;
    goto LABEL_7;
  }

  a3 = v5;
  v7 = 1;
LABEL_7:
  v8 = [v6 indexPathForRow:a3 inSection:v7];

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

- (void)cancelPicker:(id)a3
{
  v4 = [(CNGeminiPickerController *)self delegate];
  [v4 pickerDidCancel:self];
}

- (void)didPickItem
{
  v3 = [(CNGeminiPickerController *)self selectedIndexPath];
  v6 = [(CNGeminiPickerController *)self geminiChannelForIndexPath:v3];

  if (v6 && ![v6 isAvailable])
  {
    v4 = [(CNGeminiPickerController *)self delegate];
    [v4 pickerDidCancel:self];
  }

  else
  {
    v4 = [(CNGeminiPickerController *)self delegate];
    v5 = [v6 senderIdentity];
    [v4 picker:self didPickItem:v5];
  }
}

- (void)setGeminiResult:(id)a3 reload:(BOOL)a4
{
  v4 = a4;
  v18 = a3;
  v6 = MEMORY[0x1E695DF70];
  v7 = [v18 availableChannels];
  v8 = [v6 arrayWithArray:v7];
  geminiChannels = self->_geminiChannels;
  self->_geminiChannels = v8;

  v10 = [v18 usage];
  if (v10 == 1)
  {
    v11 = [v18 channel];
  }

  else
  {
    v11 = 0;
  }

  objc_storeStrong(&self->_preferredGeminiChannel, v11);
  if (v10 == 1)
  {
  }

  preferredGeminiChannel = self->_preferredGeminiChannel;
  if (preferredGeminiChannel && ([(CNGeminiChannel *)preferredGeminiChannel isAvailable]& 1) == 0)
  {
    [(NSMutableArray *)self->_geminiChannels addObject:self->_preferredGeminiChannel];
  }

  v13 = [(CNGeminiPickerController *)self preferredGeminiChannel];
  v14 = [(CNGeminiPickerController *)self indexPathForGeminiChannel:v13];
  selectedIndexPath = self->_selectedIndexPath;
  self->_selectedIndexPath = v14;

  if (v4)
  {
    v16 = [(CNGeminiPickerController *)self tableViewController];
    v17 = [v16 tableView];
    [v17 reloadData];
  }
}

- (CNGeminiPickerController)initWithGeminiResult:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CNGeminiPickerController;
  v5 = [(CNGeminiPickerController *)&v12 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E69DD038]) initWithStyle:1];
    tableViewController = v5->_tableViewController;
    v5->_tableViewController = v6;

    v8 = [(UITableViewController *)v5->_tableViewController tableView];
    [v8 setDelegate:v5];
    [v8 setDataSource:v5];
    [(CNGeminiPickerController *)v5 setGeminiResult:v4 reload:0];
    v9 = [(CNGeminiPickerController *)v5 tableViewController];
    [(CNGeminiPickerController *)v5 pushViewController:v9 animated:0];

    v10 = v5;
  }

  return v5;
}

@end