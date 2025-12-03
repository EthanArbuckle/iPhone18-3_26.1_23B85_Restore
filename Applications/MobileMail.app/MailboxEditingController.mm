@interface MailboxEditingController
+ (OS_os_log)log;
- (BOOL)_queueMailboxOperation:(id)operation;
- (MailboxEditingController)initWithMailbox:(id)mailbox account:(id)account validAccounts:(id)accounts;
- (MailboxEditingControllerDelegate)delegate;
- (double)tableView:(id)view heightForFooterInSection:(int64_t)section;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)_deleteMailboxButtonTableViewCell;
- (id)createMailboxOperation;
- (id)deleteMailboxOperation;
- (id)moveMailboxOperation;
- (id)renameMailboxOperation;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)_applyChangesAndDismissView;
- (void)_cancelButtonClicked:(id)clicked;
- (void)_confirmDelete:(id)delete;
- (void)_contentSizeCategoryChanged:(id)changed;
- (void)_createMailboxNameCell;
- (void)_updateRowHeight;
- (void)_updateSaveButtonEnabledState;
- (void)dealloc;
- (void)mailboxParentPickerDidSelectMailbox:(id)mailbox;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MailboxEditingController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3BCC;
  block[3] = &unk_10064C4F8;
  block[4] = self;
  if (qword_1006DCFE0 != -1)
  {
    dispatch_once(&qword_1006DCFE0, block);
  }

  v2 = qword_1006DCFD8;

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  [editableTextField setDelegate:0];

  v5.receiver = self;
  v5.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v5 dealloc];
}

- (MailboxEditingController)initWithMailbox:(id)mailbox account:(id)account validAccounts:(id)accounts
{
  mailboxCopy = mailbox;
  accountCopy = account;
  accountsCopy = accounts;
  v19.receiver = self;
  v19.super_class = MailboxEditingController;
  v11 = [(MailboxEditingController *)&v19 initWithStyle:2];
  v12 = v11;
  if (v11)
  {
    [(MailboxEditingController *)v11 setHidesBottomBarWhenPushed:1];
    [(MailboxEditingController *)v12 setMailbox:mailboxCopy];
    if (mailboxCopy)
    {
      v13 = +[MailChangeManager sharedChangeManager];
      rootMailbox = [v13 parentForMailbox:mailboxCopy];
    }

    else
    {
      rootMailbox = [accountCopy rootMailbox];
    }

    [(MailboxEditingController *)v12 setParentMailbox:rootMailbox];
    objc_storeStrong(&v12->_oldParentMailbox, rootMailbox);
    [(MailboxEditingController *)v12 setAccount:accountCopy];
    v15 = [accountsCopy copy];
    validAccounts = v12->_validAccounts;
    v12->_validAccounts = v15;

    [(MailboxEditingController *)v12 _createMailboxNameCell];
    if (mailboxCopy)
    {
      v12->_showDeleteButton = [accountCopy canMailboxBeDeleted:mailboxCopy];
    }

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v12 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v12;
}

- (void)_createMailboxNameCell
{
  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  text = [editableTextField text];

  v4 = [[UITableViewCell alloc] initWithStyle:1000 reuseIdentifier:0];
  mailboxNameCell = self->_mailboxNameCell;
  self->_mailboxNameCell = v4;

  [(UITableViewCell *)self->_mailboxNameCell setTextFieldOffset:0.0];
  [(UITableViewCell *)self->_mailboxNameCell setSelectionStyle:0];
  editableTextField2 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"textChanged:" name:UITextFieldTextDidChangeNotification object:editableTextField2];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MAILBOX_NAME_PLACEHOLDER" value:&stru_100662A88 table:@"Main"];
  [editableTextField2 setPlaceholder:v9];

  [editableTextField2 setClearButtonMode:1];
  [editableTextField2 setReturnKeyType:9];
  [editableTextField2 setEnablesReturnKeyAutomatically:1];
  [editableTextField2 setAutocapitalizationType:2];
  [editableTextField2 _setDataOwnerForPaste:3];
  [editableTextField2 _setDataOwnerForCopy:3];
  [editableTextField2 setText:text];
  [editableTextField2 setDelegate:self];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v20 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"SAVE" value:&stru_100662A88 table:@"Main"];

  v5 = [[UIBarButtonItem alloc] initWithTitle:v4 style:2 target:self action:"_saveButtonClicked:"];
  [v5 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewSaveButton];
  navigationItem = [(MailboxEditingController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v7 = [UIBarButtonItem alloc];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  v10 = [v7 initWithTitle:v9 style:0 target:self action:"_cancelButtonClicked:"];

  [v10 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewCancelButton];
  navigationItem2 = [(MailboxEditingController *)self navigationItem];
  [navigationItem2 setLeftBarButtonItem:v10];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"EDIT_MAILBOX" value:&stru_100662A88 table:@"Main"];

  mailbox = [(MailboxEditingController *)self mailbox];

  if (!mailbox)
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"NEW_MAILBOX" value:&stru_100662A88 table:@"Main"];

    v13 = v16;
  }

  navigationItem3 = [(MailboxEditingController *)self navigationItem];
  [navigationItem3 setTitle:v13];

  navigationItem4 = [(MailboxEditingController *)self navigationItem];
  [navigationItem4 setAccessibilityIdentifier:v13];

  [(MailboxEditingController *)self _updateRowHeight];
  navigationController = [(MailboxEditingController *)self navigationController];
  [navigationController _setClipUnderlapWhileTransitioning:1];
}

- (void)_updateRowHeight
{
  preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v4 = UITableViewAutomaticDimension;
  }

  else
  {
    +[MailboxTableCell defaultRowHeight];
    v4 = v5;
  }

  tableView = [(MailboxEditingController *)self tableView];
  [tableView setRowHeight:v4];
}

- (void)_contentSizeCategoryChanged:(id)changed
{
  +[MailboxTableCell invalidateCachedLayoutInformation];
  [(MailboxEditingController *)self _updateRowHeight];
  [(MailboxEditingController *)self _createMailboxNameCell];
  deleteMailboxCell = self->_deleteMailboxCell;
  self->_deleteMailboxCell = 0;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v5 traitCollectionDidChange:changeCopy];
  [(MailboxEditingController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v14 viewWillAppear:appear];
  tableView = [(MailboxEditingController *)self tableView];
  [tableView setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxView];
  mf_updatePreferredContentSizeBasedOnTableView = [(MailboxEditingController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MailboxEditingController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];

  [tableView reloadData];
  v7 = [NSIndexPath indexPathForRow:0 inSection:0];
  v8 = [tableView cellForRowAtIndexPath:v7];

  mailboxNameCell = self->_mailboxNameCell;
  if (v8 != mailboxNameCell)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailboxEditingController.m" lineNumber:167 description:@"unexpected cell"];

    mailboxNameCell = self->_mailboxNameCell;
  }

  editableTextField = [(UITableViewCell *)mailboxNameCell editableTextField];
  [editableTextField setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewMailboxNameCell];
  if (self->_mailbox)
  {
    v11 = +[MailChangeManager sharedChangeManager];
    v12 = [v11 displayNameForMailbox:self->_mailbox];
    [editableTextField setText:v12];
  }

  [(MailboxEditingController *)self _updateSaveButtonEnabledState];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v5.receiver = self;
  v5.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v5 viewIsAppearing:appearing];
  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  [editableTextField becomeFirstResponder];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  if (self->_showDeleteButton)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    if ([pathCopy section] == 1)
    {
      if (!self->_parentMailboxCell)
      {
        v6 = [[MailMailboxGroupedPickerTableCell alloc] initWithStyle:0 reuseIdentifier:0];
        parentMailboxCell = self->_parentMailboxCell;
        self->_parentMailboxCell = v6;

        [(MailMailboxGroupedPickerTableCell *)self->_parentMailboxCell setAlwaysDisplayAsTopLevel:1];
        [(MailMailboxGroupedPickerTableCell *)self->_parentMailboxCell setAccessoryType:1];
        [(MailMailboxGroupedPickerTableCell *)self->_parentMailboxCell setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewMailboxPickerButton];
      }

      [(MailboxEditingController *)self _updateParentMailbox];
      _deleteMailboxButtonTableViewCell = self->_parentMailboxCell;
    }

    else
    {
      _deleteMailboxButtonTableViewCell = [(MailboxEditingController *)self _deleteMailboxButtonTableViewCell];
    }

    p_super = &_deleteMailboxButtonTableViewCell->super.super;
  }

  else
  {
    p_super = self->_mailboxNameCell;
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
    [editableTextField setFont:v10];
  }

  return p_super;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section == 1)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"MAILBOX_LOCATION" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)mailboxParentPickerDidSelectMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  [(MailboxEditingController *)self setParentMailbox:?];
  account = [mailboxCopy account];
  [(MailboxEditingController *)self setAccount:account];

  [(MailboxEditingController *)self _updateParentMailbox];
}

- (void)_updateSaveButtonEnabledState
{
  parentMailbox = self->_parentMailbox;
  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  text = [editableTextField text];
  v5 = [text length];

  navigationItem = [(MailboxEditingController *)self navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  v7 = rightBarButtonItem;
  if (v5)
  {
    v8 = parentMailbox == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  [rightBarButtonItem setEnabled:v9];
}

- (id)_deleteMailboxButtonTableViewCell
{
  deleteMailboxCell = self->_deleteMailboxCell;
  if (!deleteMailboxCell)
  {
    v4 = [[UITableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    v5 = self->_deleteMailboxCell;
    self->_deleteMailboxCell = v4;

    [(UITableViewCell *)self->_deleteMailboxCell setSelectionStyle:0];
    v6 = [UIButton buttonWithType:1];
    v7 = +[UIButtonConfiguration plainButtonConfiguration];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"DELETE_MAILBOX" value:&stru_100662A88 table:@"Main"];
    [v7 setTitle:v9];

    v10 = +[UIColor systemRedColor];
    [v7 setBaseForegroundColor:v10];

    [v6 setConfiguration:v7];
    [v6 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewDeleteMailboxButton];
    [v6 addTarget:self action:"_confirmDelete:" forControlEvents:64];
    contentView = [(UITableViewCell *)self->_deleteMailboxCell contentView];
    [contentView addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    superview = [v6 superview];
    [v6 mf_pinToView:superview usingLayoutMargins:0];

    deleteMailboxCell = self->_deleteMailboxCell;
  }

  return deleteMailboxCell;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  [viewCopy sectionHeaderHeight];
  v7 = v6;
  if (section == 1)
  {
    preferredContentSizeCategory = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

    if (!IsAccessibilityCategory)
    {
      if (+[UIDevice mf_isPadIdiom])
      {
        v7 = 34.0;
      }

      else
      {
        v7 = 26.0;
      }
    }
  }

  return v7;
}

- (double)tableView:(id)view heightForFooterInSection:(int64_t)section
{
  viewCopy = view;
  [viewCopy sectionFooterHeight];
  v7 = v6;
  if (((section == 1) & +[UIDevice mf_isPadIdiom]) != 0)
  {
    v7 = 25.0;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section] == 1)
  {
    v7 = [[MailboxParentPickerController alloc] initWithMailboxUid:self->_mailbox parentMailbox:self->_parentMailbox visibleAccounts:self->_validAccounts];
    [(MailboxParentPickerController *)v7 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewMailboxPickerView];
    [(MailboxParentPickerController *)v7 setMailboxSelectionTarget:self];
    navigationController = [(MailboxEditingController *)self navigationController];
    [navigationController pushViewController:v7 animated:1];

    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy mf_updateBackgroundColorForPopover:{-[MailboxEditingController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (void)_applyChangesAndDismissView
{
  if (self->_isDeletingMailbox)
  {
    deleteMailboxOperation = [(MailboxEditingController *)self deleteMailboxOperation];
    [(MailboxEditingController *)self _queueMailboxOperation:deleteMailboxOperation];

    v4 = 0;
    v5 = 0;
LABEL_3:
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"MVMailboxListHasPendingChangesNotification" object:0];

    goto LABEL_4;
  }

  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v46 = editableTextField;
  if ([editableTextField isEditing])
  {
    [editableTextField resignFirstResponder];
    [editableTextField becomeFirstResponder];
  }

  text = [editableTextField text];
  ef_stringByTrimmingWhitespaceAndDuplicateSpaces = [text ef_stringByTrimmingWhitespaceAndDuplicateSpaces];

  parentMailbox = [(MailboxEditingController *)self parentMailbox];
  if (!parentMailbox)
  {
    parentMailbox = [(MailAccount *)self->_account rootMailbox];
  }

  account = [parentMailbox account];
  rootMailbox = [account rootMailbox];

  v47 = rootMailbox;
  v14 = [parentMailbox pathRelativeToMailbox:rootMailbox];
  v15 = [v14 stringByAppendingPathComponent:ef_stringByTrimmingWhitespaceAndDuplicateSpaces];

  v45 = v15;
  v4 = [(MailAccount *)self->_account mailboxUidForRelativePath:v15 create:0];

  v16 = v4 == 0;
  if (v4)
  {
    v17 = [parentMailbox pathRelativeToMailboxForDisplay:v47];
    v18 = [v17 stringByAppendingPathComponent:ef_stringByTrimmingWhitespaceAndDuplicateSpaces];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"MAILBOX_ALREADY_EXISTS" value:&stru_100662A88 table:@"Main"];

    v4 = [NSString stringWithFormat:v20, v18];
  }

  account = self->_account;
  v48 = 0;
  v22 = [(MailAccount *)account newMailboxNameIsAcceptable:ef_stringByTrimmingWhitespaceAndDuplicateSpaces reasonForFailure:&v48];
  v23 = v48;
  v24 = v23;
  if ((v22 & 1) == 0)
  {
    v25 = v23;

    v16 = 0;
    v4 = v25;
  }

  if (![ef_stringByTrimmingWhitespaceAndDuplicateSpaces length])
  {
    v5 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_36;
  }

  if (self->_mailbox)
  {
    v26 = [(MailAccount *)self->_account _uidNameForPathComponent:ef_stringByTrimmingWhitespaceAndDuplicateSpaces];
    createMailboxOperation = v26;
    name = [(MFMailboxUid *)self->_mailbox name];
    v28 = ([v26 isEqualToString:name] & 1) == 0 && objc_msgSend(v26, "length") != 0;

    parentMailbox2 = [(MailboxEditingController *)self parentMailbox];
    oldParentMailbox = self->_oldParentMailbox;

    v32 = !v16 && (v28 || parentMailbox2 != oldParentMailbox);
    if (v32 == 1)
    {
      v33 = [NSBundle bundleForClass:objc_opt_class()];
      v34 = v33;
      if (v28)
      {
        v35 = @"ERROR_RENAMING_MAILBOX_TITLE";
      }

      else
      {
        v35 = @"ERROR_MOVING_MAILBOX_TITLE";
      }

      v5 = [v33 localizedStringForKey:v35 value:&stru_100662A88 table:@"Main"];
      v28 = 1;
    }

    else
    {
      v43 = v32;
      if (v28)
      {
        renameMailboxOperation = [(MailboxEditingController *)self renameMailboxOperation];
        v37 = [(MailboxEditingController *)self _queueMailboxOperation:renameMailboxOperation];

        if (v37)
        {
          v5 = 0;
          v28 = 0;
          v29 = 1;
        }

        else
        {
          v38 = [NSBundle bundleForClass:objc_opt_class()];
          v5 = [v38 localizedStringForKey:@"ERROR_RENAMING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];

          v42 = _EFLocalizedString();

          v29 = 0;
          v28 = 1;
          v4 = v42;
        }
      }

      else
      {
        v5 = 0;
        v29 = 0;
      }

      if (parentMailbox2 == oldParentMailbox)
      {
        goto LABEL_35;
      }

      [(MailboxEditingController *)self moveMailboxOperation];
      v34 = v32 = v43;
      [(MailboxEditingController *)self _queueMailboxOperation:v34];
    }

    v29 = v32 ^ 1;
  }

  else if (v16)
  {
    createMailboxOperation = [(MailboxEditingController *)self createMailboxOperation];
    [(MailboxEditingController *)self _queueMailboxOperation:?];
    v5 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    createMailboxOperation = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [createMailboxOperation localizedStringForKey:@"ERROR_CREATING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];
    v29 = 0;
    v28 = 1;
  }

LABEL_35:

LABEL_36:
  if (v28)
  {
    delegate = [UIAlertController alertControllerWithTitle:v5 message:v4 preferredStyle:1];
    v39 = [NSBundle bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
    v41 = [UIAlertAction actionWithTitle:v40 style:0 handler:0];
    [delegate addAction:v41];

    [(MailboxEditingController *)self presentViewController:delegate animated:1 completion:0];
    goto LABEL_38;
  }

  if (v29)
  {
    goto LABEL_3;
  }

LABEL_4:
  delegate = [(MailboxEditingController *)self delegate];
  [delegate mailboxEditingControllerDidFinish:self];
LABEL_38:
}

- (void)_cancelButtonClicked:(id)clicked
{
  delegate = [(MailboxEditingController *)self delegate];
  [delegate mailboxEditingControllerDidFinish:self];
}

- (void)_confirmDelete:(id)delete
{
  v4 = +[MailChangeManager sharedChangeManager];
  v5 = [v4 mailboxHasSubMailboxes:self->_mailbox];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = v6;
  if (v5)
  {
    [v6 localizedStringForKey:@"MAILBOX_WITH_SUBMAILBOXES_DELETE_DESCRIPTION_FORMAT" value:&stru_100662A88 table:@"Main"];
  }

  else
  {
    [v6 localizedStringForKey:@"MAILBOX_DELETE_DESCRIPTION_FORMAT" value:&stru_100662A88 table:@"Main"];
  }
  v8 = ;

  v9 = +[MailChangeManager sharedChangeManager];
  v10 = [v9 displayNameForMailbox:self->_mailbox];
  v11 = [NSString stringWithFormat:v8, v10];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"DELETE_MAILBOX" value:&stru_100662A88 table:@"Main"];
  v14 = [UIAlertController alertControllerWithTitle:v13 message:v11 preferredStyle:1];

  v15 = [NSBundle bundleForClass:objc_opt_class()];
  v16 = [v15 localizedStringForKey:@"DELETE" value:&stru_100662A88 table:@"Main"];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000E5D14;
  v21[3] = &unk_10064FCC0;
  v21[4] = self;
  v17 = [UIAlertAction actionWithTitle:v16 style:2 handler:v21];
  [v14 addAction:v17];

  v18 = [NSBundle bundleForClass:objc_opt_class()];
  v19 = [v18 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  v20 = [UIAlertAction actionWithTitle:v19 style:1 handler:0];
  [v14 addAction:v20];

  [(MailboxEditingController *)self presentViewController:v14 animated:1 completion:0];
}

- (BOOL)_queueMailboxOperation:(id)operation
{
  operationCopy = operation;
  v4 = _os_activity_create(&_mh_execute_header, "mailbox operation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  v5 = +[MailboxEditingController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = operationCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Queueing mailbox operation %@", buf, 0xCu);
  }

  v6 = [[MailMailboxChangeSet alloc] initWithOperation:operationCopy];
  v7 = +[MailChangeManager sharedChangeManager];
  [v7 pause];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E5F44;
  v11[3] = &unk_10064FD10;
  v8 = v6;
  v12 = v8;
  v9 = [v7 addChange:v8 currentAndPendingChangesBlock:v11];
  [v7 resume];

  os_activity_scope_leave(&state);
  return v9;
}

- (id)deleteMailboxOperation
{
  v2 = [[MCSDeleteMailboxOperation alloc] initWithMailboxToDelete:self->_mailbox];

  return v2;
}

- (id)renameMailboxOperation
{
  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  text = [editableTextField text];

  ef_stringByTrimmingWhitespaceAndDuplicateSpaces = [text ef_stringByTrimmingWhitespaceAndDuplicateSpaces];
  if ([ef_stringByTrimmingWhitespaceAndDuplicateSpaces length])
  {
    v6 = [[MCSRenameMailboxOperation alloc] initWithMailboxToRename:self->_mailbox toName:ef_stringByTrimmingWhitespaceAndDuplicateSpaces];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)moveMailboxOperation
{
  parentMailbox = [(MailboxEditingController *)self parentMailbox];
  v4 = [[MCSMoveMailboxOperation alloc] initWithMailboxToMove:self->_mailbox toParent:parentMailbox];

  return v4;
}

- (id)createMailboxOperation
{
  editableTextField = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  text = [editableTextField text];

  ef_stringByTrimmingWhitespaceAndDuplicateSpaces = [text ef_stringByTrimmingWhitespaceAndDuplicateSpaces];
  parentMailbox = [(MailboxEditingController *)self parentMailbox];
  if (!parentMailbox)
  {
    parentMailbox = [(MailAccount *)self->_account rootMailbox];
  }

  v7 = [[MCSCreateMailboxOperation alloc] initWithName:ef_stringByTrimmingWhitespaceAndDuplicateSpaces parentMailbox:parentMailbox];

  return v7;
}

- (MailboxEditingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end