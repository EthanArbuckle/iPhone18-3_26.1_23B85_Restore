@interface NavSettingsTracePickerController
+ (Class)_mfMailComposeViewController;
- (NavSettingsTracePickerController)init;
- (id)tracePickerOptionsForTableView:(id)a3 indexPath:(id)a4;
- (void)_showDeleteFileSheet;
- (void)_showDeleteFileSheetForDeleteAll;
- (void)_showDeleteFileSheetForTraceNames:(id)a3;
- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)updateTracePickerOptions;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation NavSettingsTracePickerController

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  if (a4 == 1)
  {
    v6 = -[TracePickerController tracePathForRow:](self, "tracePathForRow:", [a5 row]);
    v8 = v6;
    v7 = [NSArray arrayWithObjects:&v8 count:1];
    [(NavSettingsTracePickerController *)self _showDeleteFileSheetForTraceNames:v7];
  }
}

- (void)mailComposeController:(id)a3 didFinishWithResult:(int64_t)a4 error:(id)a5
{
  if (a5)
  {
    v6 = [a5 description];
    NSLog(@"@@@@ mail error: %@", v6);
  }

  [(NavSettingsTracePickerController *)self dismissViewControllerAnimated:1 completion:0];
  v9 = [(NavSettingsTracePickerController *)self view];
  v7 = [(NavSettingsTracePickerController *)self view];
  v8 = [v7 indexPathForSelectedRow];
  [v9 deselectRowAtIndexPath:v8 animated:1];
}

- (void)_showDeleteFileSheetForTraceNames:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    if ([v4 count] <= 1)
    {
      [(TracePickerController *)self selectedTraceName];
    }

    else
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Delete %d Items?", [v4 count]);
    }
    v5 = ;
    v6 = [UIAlertController alertControllerWithTitle:v5 message:0 preferredStyle:0];
    v7 = [(NavSettingsTracePickerController *)self tableView];
    v8 = [v7 indexPathForSelectedRow];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1009A7EC0;
    v27[3] = &unk_101630B88;
    v27[4] = self;
    v9 = v8;
    v28 = v9;
    v29 = v4;
    v10 = [UIAlertAction actionWithTitle:@"Delete" style:2 handler:v27];
    [v6 addAction:v10];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1009A8004;
    v25[3] = &unk_1016383E0;
    v25[4] = self;
    v26 = v9;
    v11 = v9;
    v12 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v25];
    [v6 addAction:v12];

    v13 = [(NavSettingsTracePickerController *)self tableView];
    v14 = [v13 cellForRowAtIndexPath:v11];

    v15 = [v6 popoverPresentationController];
    [v15 setSourceView:v14];

    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v6 popoverPresentationController];
    [v24 setSourceRect:{v17, v19, v21, v23}];

    [(NavSettingsTracePickerController *)self presentViewController:v6 animated:1 completion:0];
  }
}

- (void)_showDeleteFileSheetForDeleteAll
{
  v9 = objc_alloc_init(NSMutableArray);
  v3 = [(NavSettingsTracePickerController *)self tableView];
  v4 = [v3 numberOfRowsInSection:0];

  if (v4)
  {
    v5 = 0;
    do
    {
      v6 = [(TracePickerController *)self tracePathForRow:v5];
      [v9 addObject:v6];

      ++v5;
      v7 = [(NavSettingsTracePickerController *)self tableView];
      v8 = [v7 numberOfRowsInSection:0];
    }

    while (v5 < v8);
  }

  [(NavSettingsTracePickerController *)self _showDeleteFileSheetForTraceNames:v9];
}

- (void)_showDeleteFileSheet
{
  v3 = [(TracePickerController *)self selectedTracePaths];
  [(NavSettingsTracePickerController *)self _showDeleteFileSheetForTraceNames:v3];
}

- (id)tracePickerOptionsForTableView:(id)a3 indexPath:(id)a4
{
  v5 = a4;
  v6 = [UIAlertController alertControllerWithTitle:self->super._selectedTraceName message:0 preferredStyle:0];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v7 = [(TracePickerController *)self myFileSheetTracePickerOptions];
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v8)
  {

    goto LABEL_21;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v36;
  v23 = v29;
  v24 = v26;
  v21 = v34;
  v22 = v31;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v36 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = [*(*(&v35 + 1) + 8 * i) integerValue];
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v26[0] = sub_1009A8880;
          v26[1] = &unk_1016383E0;
          v26[2] = self;
          v27 = v5;
          v16 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:v25];
          [v6 addAction:v16];

          v15 = v27;
        }

        else
        {
          if (v13 != 4)
          {
            continue;
          }

          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v29[0] = sub_1009A8878;
          v29[1] = &unk_10165F220;
          v29[2] = self;
          v15 = [UIAlertAction actionWithTitle:@"Delete" style:2 handler:v28];
          [v6 addAction:v15];
        }
      }

      else if (v13)
      {
        if (v13 != 2)
        {
          continue;
        }

        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v31[0] = sub_1009A85D4;
        v31[1] = &unk_1016383E0;
        v31[2] = self;
        v32 = v5;
        v14 = [UIAlertAction actionWithTitle:@"Share" style:0 handler:v30];
        [v6 addAction:v14];

        v15 = v32;
      }

      else
      {
        v33[0] = _NSConcreteStackBlock;
        v33[1] = 3221225472;
        v34[0] = sub_1009A8570;
        v34[1] = &unk_10165F220;
        v34[2] = self;
        v15 = [UIAlertAction actionWithTitle:@"Play" style:0 handler:v33];
        [v6 addAction:v15];
        v10 = 1;
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
  }

  while (v9);

  if ((v10 & 1) == 0)
  {
LABEL_21:
    v17 = +[GEOCountryConfiguration sharedConfiguration];
    v18 = [v17 currentCountrySupportsNavigation];

    if (v18)
    {
      v19 = @"This device is already providing navigation. End the navigation to play this trace.";
    }

    else
    {
      v19 = @"This device does not support navigation.";
    }

    [v6 setMessage:v19];
  }

  return v6;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v8.receiver = self;
  v8.super_class = NavSettingsTracePickerController;
  [NavSettingsTracePickerController setEditing:"setEditing:animated:" animated:?];
  v7 = [(NavSettingsTracePickerController *)self tableView];
  [v7 setEditing:v5 animated:v4];

  [(UIToolbar *)self->_toolbar setHidden:[(NavSettingsTracePickerController *)self isEditing]^ 1];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = NavSettingsTracePickerController;
  [(NavSettingsTracePickerController *)&v5 viewWillDisappear:a3];
  [(UIToolbar *)self->_toolbar removeFromSuperview];
  toolbar = self->_toolbar;
  self->_toolbar = 0;
}

- (void)viewWillAppear:(BOOL)a3
{
  v25.receiver = self;
  v25.super_class = NavSettingsTracePickerController;
  [(TracePickerController *)&v25 viewWillAppear:a3];
  v4 = [UIToolbar alloc];
  v5 = [(NavSettingsTracePickerController *)self navigationController];
  v6 = [v5 view];
  [v6 frame];
  MaxY = CGRectGetMaxY(v27);
  v8 = [(NavSettingsTracePickerController *)self navigationController];
  v9 = [v8 view];
  [v9 frame];
  v10 = MaxY + -44.0 - CGRectGetMinY(v28);
  v11 = [(NavSettingsTracePickerController *)self tableView];
  [v11 frame];
  v12 = [v4 initWithFrame:{0.0, v10}];
  toolbar = self->_toolbar;
  self->_toolbar = v12;

  v14 = [[UIBarButtonItem alloc] initWithTitle:@"Delete All" style:0 target:self action:"_showDeleteFileSheetForDeleteAll"];
  deleteAllButtonItem = self->_deleteAllButtonItem;
  self->_deleteAllButtonItem = v14;

  v16 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:16 target:self action:"_showDeleteFileSheet"];
  deleteButtonItem = self->_deleteButtonItem;
  self->_deleteButtonItem = v16;

  v18 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v19 = self->_deleteAllButtonItem;
  v26[0] = v18;
  v26[1] = v19;
  v20 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:5 target:0 action:0];
  v21 = self->_deleteButtonItem;
  v26[2] = v20;
  v26[3] = v21;
  v22 = [NSArray arrayWithObjects:v26 count:4];

  [(UIToolbar *)self->_toolbar setItems:v22];
  v23 = [(NavSettingsTracePickerController *)self navigationController];
  v24 = [v23 view];
  [v24 addSubview:self->_toolbar];

  [(UIToolbar *)self->_toolbar setHidden:[(NavSettingsTracePickerController *)self isEditing]^ 1];
}

- (void)updateTracePickerOptions
{
  v5 = [[NSMutableArray alloc] initWithCapacity:5];
  v3 = +[UIApplication sharedMapsDelegate];
  v4 = [v3 canPlayTrace];

  if (v4)
  {
    [v5 addObject:&off_1016E7E98];
  }

  [v5 addObject:&off_1016E7EB0];
  [v5 addObject:&off_1016E7EC8];
  [v5 addObject:&off_1016E7EE0];
  [(TracePickerController *)self setMyFileSheetTracePickerOptions:v5];
}

- (NavSettingsTracePickerController)init
{
  v8.receiver = self;
  v8.super_class = NavSettingsTracePickerController;
  v2 = [(TracePickerController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = [(NavSettingsTracePickerController *)v2 tableView];
    [v4 setAllowsMultipleSelectionDuringEditing:1];

    v5 = [(NavSettingsTracePickerController *)v3 editButtonItem];
    v6 = [(NavSettingsTracePickerController *)v3 navigationItem];
    [v6 setRightBarButtonItem:v5];
  }

  return v3;
}

+ (Class)_mfMailComposeViewController
{
  if (qword_10195E000 != -1)
  {
    dispatch_once(&qword_10195E000, &stru_101630B60);
  }

  v3 = qword_10195DFF8;

  return v3;
}

@end