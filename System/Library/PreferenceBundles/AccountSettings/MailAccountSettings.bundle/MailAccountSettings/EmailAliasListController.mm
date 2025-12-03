@interface EmailAliasListController
- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path;
- (BOOL)textFieldShouldReturn:(id)return;
- (EmailAliasListController)init;
- (EmailAliasListControllerDataSource)dataSource;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path;
- (void)startAddingEmailAlias;
- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation EmailAliasListController

- (EmailAliasListController)init
{
  v3.receiver = self;
  v3.super_class = EmailAliasListController;
  return [(EmailAliasListController *)&v3 initWithStyle:1];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = EmailAliasListController;
  [(EmailAliasListController *)&v8 viewDidLoad];
  tableView = [(EmailAliasListController *)self tableView];
  [tableView setAllowsSelectionDuringEditing:1];

  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"EMAIL_ALIAS_LIST_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
  [(EmailAliasListController *)self setTitle:v5];

  if (![(EmailAliasListController *)self disableEmailAliasListChanges])
  {
    editButtonItem = [(EmailAliasListController *)self editButtonItem];
    navigationItem = [(EmailAliasListController *)self navigationItem];
    [navigationItem setRightBarButtonItem:editButtonItem];
  }
}

- (void)viewWillAppear:(BOOL)appear
{
  v15.receiver = self;
  v15.super_class = EmailAliasListController;
  [(EmailAliasListController *)&v15 viewWillAppear:appear];
  if (!self->_emailAliases)
  {
    v4 = objc_alloc_init(NSMutableArray);
    emailAliases = self->_emailAliases;
    self->_emailAliases = v4;
  }

  WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  v7 = self->_emailAliases;
  specifier = [(EmailAliasListController *)self specifier];
  v9 = [WeakRetained emailAliasListController:self emailAliasListForSpecifier:specifier];
  [(NSMutableArray *)v7 setArray:v9];

  specifier2 = [(EmailAliasListController *)self specifier];
  v11 = [WeakRetained emailAliasListController:self defaultEmailAliasForSpecifier:specifier2];

  v12 = [(NSMutableArray *)self->_emailAliases indexOfObject:v11];
  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  self->_indexOfDefaultEmailAlias = v13;
  self->_addingEmailAlias = 0;
  [(EmailAliasListController *)self setEditing:0 animated:0];
  tableView = [(EmailAliasListController *)self tableView];
  [tableView reloadData];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v9.receiver = self;
  v9.super_class = EmailAliasListController;
  [(EmailAliasListController *)&v9 viewWillDisappear:disappear];
  if ([(NSMutableArray *)self->_emailAliases count])
  {
    indexOfDefaultEmailAlias = self->_indexOfDefaultEmailAlias;
    if (indexOfDefaultEmailAlias >= [(NSMutableArray *)self->_emailAliases count])
    {
      v5 = 0;
    }

    else
    {
      v5 = [(NSMutableArray *)self->_emailAliases objectAtIndex:self->_indexOfDefaultEmailAlias];
    }

    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    emailAliases = self->_emailAliases;
    specifier = [(EmailAliasListController *)self specifier];
    [WeakRetained emailAliasListController:self setEmailAliasList:emailAliases defaultEmailAlias:v5 forSpecifier:specifier];
  }
}

- (void)startAddingEmailAlias
{
  self->_addingEmailAlias = 1;
  tableView = [(EmailAliasListController *)self tableView];
  [tableView reloadData];

  tableView2 = [(EmailAliasListController *)self tableView];
  v5 = [NSIndexPath indexPathForRow:[(NSMutableArray *)self->_emailAliases count] inSection:0];
  v8 = [tableView2 cellForRowAtIndexPath:v5];

  editableTextField = [v8 editableTextField];
  [editableTextField setText:&stru_B9FC8];

  editableTextField2 = [v8 editableTextField];
  [editableTextField2 becomeFirstResponder];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [pathCopy row];
  if (v8 >= [(NSMutableArray *)self->_emailAliases count])
  {
    if (self->_addingEmailAlias)
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"Editing"];
      if (!v9)
      {
        v9 = [[UITableViewCell alloc] initWithStyle:1000 reuseIdentifier:@"Editing"];
        editableTextField = [v9 editableTextField];
        [editableTextField setDelegate:self];

        editableTextField2 = [v9 editableTextField];
        [editableTextField2 setAutocapitalizationType:0];

        editableTextField3 = [v9 editableTextField];
        [editableTextField3 setAutocorrectionType:1];

        editableTextField4 = [v9 editableTextField];
        [editableTextField4 setClearButtonMode:1];

        v17 = [UIFont boldSystemFontOfSize:17.0];
        editableTextField5 = [v9 editableTextField];
        [editableTextField5 setFont:v17];

        v19 = +[UIColor labelColor];
        editableTextField6 = [v9 editableTextField];
        [editableTextField6 setTextColor:v19];

        [v9 setTextFieldOffset:0.0];
      }
    }

    else
    {
      v9 = [viewCopy dequeueReusableCellWithIdentifier:@"Add"];
      if (!v9)
      {
        v9 = [objc_alloc(NSClassFromString(@"MFTableViewCell")) initWithStyle:0 reuseIdentifier:@"Add"];
        [v9 setShouldDisableWhileEditing:1];
        v21 = [NSBundle bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"EMAIL_ALIAS_ADD" value:&stru_B9FC8 table:@"AccountPreferences"];
        textLabel = [v9 textLabel];
        [textLabel setText:v22];
      }
    }
  }

  else
  {
    v9 = [viewCopy dequeueReusableCellWithIdentifier:@"Email"];
    if (!v9)
    {
      v9 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:@"Email"];
    }

    v10 = -[NSMutableArray objectAtIndex:](self->_emailAliases, "objectAtIndex:", [pathCopy row]);
    textLabel2 = [v9 textLabel];
    [textLabel2 setText:v10];

    if ([pathCopy row] == self->_indexOfDefaultEmailAlias)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    [v9 setAccessoryType:v12];
  }

  return v9;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [pathCopy row];
  if (v7 >= [(NSMutableArray *)self->_emailAliases count])
  {
    [(EmailAliasListController *)self startAddingEmailAlias];
  }

  else
  {
    v8 = [NSIndexPath indexPathForRow:self->_indexOfDefaultEmailAlias inSection:0];
    if (([v8 isEqual:pathCopy] & 1) == 0)
    {
      v9 = [viewCopy cellForRowAtIndexPath:v8];
      [v9 setAccessoryType:0];

      v10 = [viewCopy cellForRowAtIndexPath:pathCopy];
      [v10 setAccessoryType:3];
    }

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    self->_indexOfDefaultEmailAlias = [pathCopy row];
  }
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = [ECEmailAddress alloc];
  text = [returnCopy text];
  v7 = [v5 initWithString:text];

  if (v7)
  {
    tableView = [(EmailAliasListController *)self tableView];
    [tableView beginUpdates];

    emailAliases = self->_emailAliases;
    text2 = [returnCopy text];
    [(NSMutableArray *)emailAliases addObject:text2];

    self->_addingEmailAlias = 0;
    if (self->_indexOfDefaultEmailAlias == 0x7FFFFFFFFFFFFFFFLL)
    {
      self->_indexOfDefaultEmailAlias = 0;
      tableView2 = [(EmailAliasListController *)self tableView];
      v12 = [NSIndexPath indexPathForRow:self->_indexOfDefaultEmailAlias inSection:0];
      v32 = v12;
      v13 = [NSArray arrayWithObjects:&v32 count:1];
      [tableView2 reloadRowsAtIndexPaths:v13 withRowAnimation:100];
    }

    tableView3 = [(EmailAliasListController *)self tableView];
    v15 = [NSIndexPath indexPathForRow:[(NSMutableArray *)self->_emailAliases count]- 1 inSection:0];
    v31 = v15;
    v16 = [NSArray arrayWithObjects:&v31 count:1];
    [tableView3 reloadRowsAtIndexPaths:v16 withRowAnimation:100];

    tableView4 = [(EmailAliasListController *)self tableView];
    v18 = [NSIndexPath indexPathForRow:[(NSMutableArray *)self->_emailAliases count]- 1 inSection:0];
    v30 = v18;
    v19 = [NSArray arrayWithObjects:&v30 count:1];
    [tableView4 insertRowsAtIndexPaths:v19 withRowAnimation:100];

    tableView5 = [(EmailAliasListController *)self tableView];
    [tableView5 endUpdates];
  }

  else
  {
    v21 = [NSBundle bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_TITLE" value:&stru_B9FC8 table:@"AccountPreferences"];
    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"INVALID_EMAIL_ADDRESS_BODY" value:&stru_B9FC8 table:@"AccountPreferences"];
    v25 = [UIAlertController alertControllerWithTitle:v22 message:v24 preferredStyle:1];

    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"OK" value:&stru_B9FC8 table:@"AccountPreferences"];
    v28 = [UIAlertAction actionWithTitle:v27 style:1 handler:0];
    [v25 addAction:v28];

    [(EmailAliasListController *)self presentViewController:v25 animated:1 completion:0];
  }

  return v7 != 0;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if ([(NSMutableArray *)self->_emailAliases count:view]< 2)
  {
    v10 = 0;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    specifier = [(EmailAliasListController *)self specifier];
    v7 = [WeakRetained emailAliasListController:self accountTypeForSpecifier:specifier];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DEFAULT_EMAIL_EXPLANATION" value:&stru_B9FC8 table:@"AccountPreferences"];

    v10 = [NSString stringWithFormat:v9, v7];
  }

  return v10;
}

- (int64_t)tableView:(id)view editingStyleForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = 0;
  if (![(EmailAliasListController *)self disableEmailAliasListChanges])
  {
    v6 = [pathCopy row];
    if (v6 < [(NSMutableArray *)self->_emailAliases count]&& [(NSMutableArray *)self->_emailAliases count]> 1)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)tableView:(id)view commitEditingStyle:(int64_t)style forRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v10 = pathCopy;
  if (style == 2)
  {
    [(EmailAliasListController *)self startAddingEmailAlias];
  }

  else if (style == 1)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_6A3A8;
    v13[3] = &unk_B91C8;
    v13[4] = self;
    v14 = pathCopy;
    v15 = viewCopy;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_6A4A0;
    v11[3] = &unk_B9AC0;
    v12 = v15;
    [v12 _performBatchUpdates:v13 completion:v11];
  }
}

- (BOOL)tableView:(id)view canMoveRowAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy row];
  LOBYTE(self) = v6 < [(NSMutableArray *)self->_emailAliases count];

  return self;
}

- (id)tableView:(id)view targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v7 = [indexPathCopy row];
  v8 = indexPathCopy;
  if (v7 > [(NSMutableArray *)self->_emailAliases count]- 1)
  {
    v8 = [NSIndexPath indexPathForRow:[(NSMutableArray *)self->_emailAliases count]- 1 inSection:0];
  }

  return v8;
}

- (void)tableView:(id)view moveRowAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  viewCopy = view;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (self->_indexOfDefaultEmailAlias == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [(NSMutableArray *)self->_emailAliases objectAtIndex:?];
  }

  -[NSMutableArray ef_moveObjectAtIndex:toIndex:](self->_emailAliases, "ef_moveObjectAtIndex:toIndex:", [pathCopy row], objc_msgSend(indexPathCopy, "row"));
  self->_indexOfDefaultEmailAlias = [(NSMutableArray *)self->_emailAliases indexOfObject:v10];
}

- (EmailAliasListControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end