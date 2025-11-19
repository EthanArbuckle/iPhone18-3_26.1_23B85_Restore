@interface PKTextInputDebugSharpenerLogViewController
- (PKTextInputDebugSharpenerLogViewController)initWithSharpenerLog:(id)a3;
- (PKTextInputDebugSharpenerLogViewController)initWithSharpenerLogURL:(id)a3 error:(id *)a4;
- (id)_tableHeaderText;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_configureCell:(id)a3 asDrawingDisplayForEntry:(id)a4;
- (void)_configureCell:(id)a3 withTitle:(id)a4 details:(id)a5;
- (void)_handleActionButton:(id)a3;
- (void)_handleRerunButton:(id)a3;
- (void)_rerunRecognitionForEntryAtIndex:(int64_t)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PKTextInputDebugSharpenerLogViewController

- (PKTextInputDebugSharpenerLogViewController)initWithSharpenerLogURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [[PKTextInputDebugSharpenerLog alloc] initWithContentsOfURL:v6 error:a4];
  if (v7)
  {
    v8 = [(PKTextInputDebugSharpenerLogViewController *)self initWithSharpenerLog:v7];
    v9 = v6;
    self = v8->_sharpenerLogURL;
    v8->_sharpenerLogURL = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKTextInputDebugSharpenerLogViewController)initWithSharpenerLog:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PKTextInputDebugSharpenerLogViewController;
  v6 = [(PKTextInputDebugSharpenerLogViewController *)&v11 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sharpenerLog, a3);
    v8 = [MEMORY[0x1E695DF90] dictionary];
    rerunResultsBySection = v7->__rerunResultsBySection;
    v7->__rerunResultsBySection = v8;
  }

  return v7;
}

- (void)viewDidLoad
{
  v36[2] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = PKTextInputDebugSharpenerLogViewController;
  [(PKTextInputDebugSharpenerLogViewController *)&v34 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [v3 initWithFrame:1 style:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  objc_storeStrong(&self->__mainTableView, v4);
  [v4 setDataSource:self];
  [v4 setDelegate:self];
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v4 setAllowsSelection:0];
  v5 = [(PKTextInputDebugSharpenerLogViewController *)self view];
  [v5 addSubview:v4];

  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"EntryCellText"];
  [v4 registerClass:objc_opt_class() forCellReuseIdentifier:@"EntryCellDrawing"];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [(PKTextInputDebugSharpenerLogViewController *)self set_tableHeaderLabel:v6];
  v7 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
  [v6 setFont:v7];

  [v6 setNumberOfLines:0];
  [v6 setLineBreakMode:0];
  v8 = [(PKTextInputDebugSharpenerLogViewController *)self _tableHeaderText];
  [v6 setText:v8];

  v9 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [v6 setBackgroundColor:v9];

  v33 = v6;
  [v4 setTableHeaderView:v6];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel__handleDoneButton_];
  v36[0] = v10;
  v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:9 target:self action:sel__handleActionButton_];
  v36[1] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
  v13 = [(PKTextInputDebugSharpenerLogViewController *)self navigationItem];
  [v13 setRightBarButtonItems:v12];

  v14 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLogURL];

  if (v14)
  {
    v15 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLogURL];
    v16 = [v15 lastPathComponent];
    v17 = [(PKTextInputDebugSharpenerLogViewController *)self navigationItem];
    [v17 setTitle:v16];
  }

  else
  {
    v15 = [(PKTextInputDebugSharpenerLogViewController *)self navigationItem];
    [v15 setTitle:@"Pencil Sharpener Log"];
  }

  v18 = [(PKTextInputDebugSharpenerLogViewController *)self view];
  v19 = [v18 safeAreaLayoutGuide];

  v32 = [v4 leadingAnchor];
  v31 = [v19 leadingAnchor];
  v30 = [v32 constraintEqualToAnchor:v31 constant:0.0];
  v35[0] = v30;
  v29 = [v4 trailingAnchor];
  v28 = [v19 trailingAnchor];
  v20 = [v29 constraintEqualToAnchor:v28 constant:0.0];
  v35[1] = v20;
  v21 = [v4 topAnchor];
  v22 = [v19 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
  v35[2] = v23;
  v24 = [v4 bottomAnchor];
  v25 = [v19 bottomAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:0.0];
  v35[3] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];

  [MEMORY[0x1E696ACD8] activateConstraints:v27];
}

- (void)viewDidLayoutSubviews
{
  v18.receiver = self;
  v18.super_class = PKTextInputDebugSharpenerLogViewController;
  [(PKTextInputDebugSharpenerLogViewController *)&v18 viewDidLayoutSubviews];
  v3 = [(PKTextInputDebugSharpenerLogViewController *)self _tableHeaderLabel];
  [v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = [(PKTextInputDebugSharpenerLogViewController *)self _tableHeaderLabel];
  v9 = [v8 superview];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = [(PKTextInputDebugSharpenerLogViewController *)self _tableHeaderLabel];
  [v14 sizeThatFits:{v11, v13}];
  v16 = v15;

  v17 = [(PKTextInputDebugSharpenerLogViewController *)self _tableHeaderLabel];
  [v17 setFrame:{v5, v7, v11, v16}];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
  v4 = [v3 logEntries];
  v5 = [v4 count];

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(PKTextInputDebugSharpenerLogViewController *)self _rerunResultsBySection];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
  v9 = [v8 logEntries];
  v10 = [v9 objectAtIndexedSubscript:{objc_msgSend(v6, "section")}];

  if ([v6 row])
  {
    v11 = [v7 dequeueReusableCellWithIdentifier:@"EntryCellText"];

    v12 = [(PKTextInputDebugSharpenerLogViewController *)self _rerunResultsBySection];
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "section")}];
    v14 = [v12 objectForKeyedSubscript:v13];

    if ([v6 row] == 1 && v14)
    {
      [(PKTextInputDebugSharpenerLogViewController *)self _configureCell:v11 withTitle:@"Rerun Result" details:v14];
    }

    else
    {
      v19 = [v10 mediumDescription];
      [(PKTextInputDebugSharpenerLogViewController *)self _configureCell:v11 withTitle:0 details:v19];
    }
  }

  else
  {
    v15 = [v7 dequeueReusableCellWithIdentifier:@"EntryCellDrawing"];

    v16 = MEMORY[0x1E69DC738];
    v17 = MEMORY[0x1E69DCAB8];
    v11 = v15;
    v18 = [v17 systemImageNamed:@"arrow.clockwise.circle"];
    v14 = [v16 systemButtonWithImage:v18 target:self action:sel__handleRerunButton_];

    [v14 setTag:{objc_msgSend(v6, "section")}];
    [v11 setAccessoryView:v14];
    [(PKTextInputDebugSharpenerLogViewController *)self _configureCell:v11 asDrawingDisplayForEntry:v10];
  }

  return v11;
}

- (void)_configureCell:(id)a3 withTitle:(id)a4 details:(id)a5
{
  v7 = MEMORY[0x1E69DB878];
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v7 boldSystemFontOfSize:12.0];
  v12 = [v10 textLabel];
  [v12 setFont:v11];

  v13 = [v10 textLabel];
  [v13 setText:v9];

  v14 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
  v15 = [v10 detailTextLabel];
  [v15 setFont:v14];

  v16 = [v10 detailTextLabel];
  [v16 setNumberOfLines:0];

  v17 = [v10 detailTextLabel];
  [v17 setLineBreakMode:0];

  v18 = [v10 detailTextLabel];

  [v18 setText:v8];
}

- (void)_configureCell:(id)a3 asDrawingDisplayForEntry:(id)a4
{
  v5 = a3;
  v6 = [a4 inputDrawing];
  [v5 setDrawing:v6];
}

- (id)_tableHeaderText
{
  v2 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
  v3 = [v2 metadataDictionary];
  v4 = [v3 description];
  v5 = [v4 mutableCopy];

  if ([v5 length] >= 5)
  {
    [v5 replaceOccurrencesOfString:@"{\n" withString:&stru_1F476BD20 options:0 range:{0, 2}];
    [v5 replaceOccurrencesOfString:@"\n}" withString:&stru_1F476BD20 options:0 range:{objc_msgSend(v5, "length") - 2, 2}];
  }

  [v5 insertString:@"\n" atIndex:0];

  return v5;
}

- (void)_handleActionButton:(id)a3
{
  v32[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
  v6 = [v5 logEntries];

  if (v6)
  {
    v7 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
    v30 = 0;
    v8 = [v7 writeLogToTemporaryDirectoryWithContentLevel:2 excludeEntyIndexes:0 error:&v30];
    v9 = v30;

    if (v8)
    {
      v10 = objc_alloc(MEMORY[0x1E69CD9F8]);
      v32[0] = v8;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
      v12 = [v10 initWithActivityItems:v11 applicationActivities:0];

      v13 = *MEMORY[0x1E69CDAD8];
      v31[0] = *MEMORY[0x1E69CDAC0];
      v31[1] = v13;
      v14 = *MEMORY[0x1E69CDA80];
      v31[2] = *MEMORY[0x1E69CDAE8];
      v31[3] = v14;
      v15 = *MEMORY[0x1E69CDA70];
      v31[4] = *MEMORY[0x1E69CDAF8];
      v31[5] = v15;
      v16 = *MEMORY[0x1E69CDAE0];
      v31[6] = *MEMORY[0x1E69CDAC8];
      v31[7] = v16;
      v17 = *MEMORY[0x1E69CDAB8];
      v31[8] = *MEMORY[0x1E69CDAD0];
      v31[9] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:10];
      [v12 setExcludedActivityTypes:v18];

      [v12 setModalPresentationStyle:7];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [v12 popoverPresentationController];
        [v19 setBarButtonItem:v4];
      }

      [(PKTextInputDebugSharpenerLogViewController *)self presentViewController:v12 animated:1 completion:0];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __66__PKTextInputDebugSharpenerLogViewController__handleActionButton___block_invoke;
      v26[3] = &unk_1E82D7120;
      v27 = v9;
      v28 = self;
      v29 = v8;
      [v12 setCompletionWithItemsHandler:v26];
    }

    else
    {
      v20 = MEMORY[0x1E69DC650];
      v21 = [v9 localizedDescription];
      v12 = [v20 alertControllerWithTitle:@"Error Saving Log Data" message:v21 preferredStyle:1];

      v22 = MEMORY[0x1E69DC648];
      v23 = _PencilKitBundle();
      v24 = [v23 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];
      v25 = [v22 actionWithTitle:v24 style:1 handler:0];
      [v12 addAction:v25];

      [(PKTextInputDebugSharpenerLogViewController *)self presentViewController:v12 animated:1 completion:0];
    }
  }
}

void __66__PKTextInputDebugSharpenerLogViewController__handleActionButton___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v6 = MEMORY[0x1E69DC650];
    v7 = [*(a1 + 32) localizedDescription];
    v8 = [v6 alertControllerWithTitle:@"Error Sharing File" message:v7 preferredStyle:1];

    v9 = MEMORY[0x1E69DC648];
    v10 = _PencilKitBundle();
    v11 = [v10 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];
    v12 = [v9 actionWithTitle:v11 style:1 handler:0];
    [v8 addAction:v12];

    [*(a1 + 40) presentViewController:v8 animated:1 completion:0];
  }

  v13 = [MEMORY[0x1E696AC08] defaultManager];
  [v13 removeItemAtURL:*(a1 + 48) error:0];
}

- (void)_handleRerunButton:(id)a3
{
  v5 = a3;
  v4 = [(PKTextInputDebugSharpenerLogViewController *)self _currentEntryRerun];

  if (!v4)
  {
    -[PKTextInputDebugSharpenerLogViewController _rerunRecognitionForEntryAtIndex:](self, "_rerunRecognitionForEntryAtIndex:", [v5 tag]);
  }
}

- (void)_rerunRecognitionForEntryAtIndex:(int64_t)a3
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
    v6 = [v5 logEntries];
    v7 = [v6 count];

    if (v7 > a3)
    {
      v8 = [(PKTextInputDebugSharpenerLogViewController *)self sharpenerLog];
      v9 = [v8 logEntries];
      v10 = [v9 objectAtIndexedSubscript:a3];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = 0;
        v11 = [[PKTextInputDebugArchivedLogEntry alloc] initWithRecordingLogEntry:v10 error:&v22];
        v12 = v22;
        if (!v11)
        {
          goto LABEL_10;
        }

LABEL_8:
        v13 = [[PKTextInputDebugLogEntryRerun alloc] initWithLogEntry:v11];
        [(PKTextInputDebugSharpenerLogViewController *)self set_currentEntryRerun:v13];

        v14 = [(PKTextInputDebugSharpenerLogViewController *)self _currentEntryRerun];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __79__PKTextInputDebugSharpenerLogViewController__rerunRecognitionForEntryAtIndex___block_invoke;
        v21[3] = &unk_1E82D7198;
        v21[4] = self;
        v21[5] = a3;
        [v14 runWithCompletion:v21];

LABEL_11:
        return;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        v12 = 0;
        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = 0;
      }

LABEL_10:
      NSLog(&cfstr_ErrorLoadingEn.isa, v12);
      v15 = MEMORY[0x1E69DC650];
      v16 = [v12 localizedDescription];
      v11 = [v15 alertControllerWithTitle:@"Error Loading Archived Entry Data" message:v16 preferredStyle:1];

      v17 = MEMORY[0x1E69DC648];
      v18 = _PencilKitBundle();
      v19 = [v18 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];
      v20 = [v17 actionWithTitle:v19 style:1 handler:0];
      [(PKTextInputDebugArchivedLogEntry *)v11 addAction:v20];

      [(PKTextInputDebugSharpenerLogViewController *)self presentViewController:v11 animated:1 completion:0];
      goto LABEL_11;
    }
  }
}

void __79__PKTextInputDebugSharpenerLogViewController__rerunRecognitionForEntryAtIndex___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        v13 = 0;
        do
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [PKTextInputDebugLogEntry mediumDescriptionForResultQueryItem:*(*(&v28 + 1) + 8 * v13)];
          [v8 addObject:v14];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);
    }

    v15 = [v8 componentsJoinedByString:@"\n\n"];
    v16 = [*(a1 + 32) _rerunResultsBySection];
    v17 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
    [v16 setObject:v15 forKeyedSubscript:v17];

    v18 = [*(a1 + 32) _mainTableView];
    [v18 reloadData];

    v19 = dispatch_time(0, 50000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKTextInputDebugSharpenerLogViewController__rerunRecognitionForEntryAtIndex___block_invoke_2;
    block[3] = &unk_1E82D7170;
    v20 = *(a1 + 40);
    block[4] = *(a1 + 32);
    block[5] = v20;
    dispatch_after(v19, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    NSLog(&cfstr_ErrorReRunning.isa, v6);
    v21 = MEMORY[0x1E69DC650];
    v22 = [v7 localizedDescription];
    v8 = [v21 alertControllerWithTitle:@"Error Re-Running Recognition" message:v22 preferredStyle:1];

    v23 = MEMORY[0x1E69DC648];
    v24 = _PencilKitBundle();
    v25 = [v24 localizedStringForKey:@"Done" value:@"Done" table:@"Localizable"];
    v26 = [v23 actionWithTitle:v25 style:1 handler:0];
    [v8 addAction:v26];

    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  [*(a1 + 32) set_currentEntryRerun:0];
}

void __79__PKTextInputDebugSharpenerLogViewController__rerunRecognitionForEntryAtIndex___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _mainTableView];
  v3 = [MEMORY[0x1E696AC88] indexPathForRow:1 inSection:*(a1 + 40)];
  v4 = [v2 cellForRowAtIndexPath:v3];

  v5 = [MEMORY[0x1E69DC888] colorWithRed:0.850980392 green:0.949019608 blue:1.0 alpha:1.0];
  [v4 setBackgroundColor:v5];

  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PKTextInputDebugSharpenerLogViewController__rerunRecognitionForEntryAtIndex___block_invoke_3;
  v8[3] = &unk_1E82D7148;
  v9 = v4;
  v7 = v4;
  [v6 animateWithDuration:v8 animations:2.0];
}

void __79__PKTextInputDebugSharpenerLogViewController__rerunRecognitionForEntryAtIndex___block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DC888] systemBackgroundColor];
  [*(a1 + 32) setBackgroundColor:v2];
}

@end