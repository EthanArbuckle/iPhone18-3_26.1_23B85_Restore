@interface MailboxEditingController
+ (OS_os_log)log;
- (BOOL)_queueMailboxOperation:(id)a3;
- (MailboxEditingController)initWithMailbox:(id)a3 account:(id)a4 validAccounts:(id)a5;
- (MailboxEditingControllerDelegate)delegate;
- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)_deleteMailboxButtonTableViewCell;
- (id)createMailboxOperation;
- (id)deleteMailboxOperation;
- (id)moveMailboxOperation;
- (id)renameMailboxOperation;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)_applyChangesAndDismissView;
- (void)_cancelButtonClicked:(id)a3;
- (void)_confirmDelete:(id)a3;
- (void)_contentSizeCategoryChanged:(id)a3;
- (void)_createMailboxNameCell;
- (void)_updateRowHeight;
- (void)_updateSaveButtonEnabledState;
- (void)dealloc;
- (void)mailboxParentPickerDidSelectMailbox:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation MailboxEditingController

+ (OS_os_log)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E3BCC;
  block[3] = &unk_10064C4F8;
  block[4] = a1;
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

  v4 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v5 dealloc];
}

- (MailboxEditingController)initWithMailbox:(id)a3 account:(id)a4 validAccounts:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = MailboxEditingController;
  v11 = [(MailboxEditingController *)&v19 initWithStyle:2];
  v12 = v11;
  if (v11)
  {
    [(MailboxEditingController *)v11 setHidesBottomBarWhenPushed:1];
    [(MailboxEditingController *)v12 setMailbox:v8];
    if (v8)
    {
      v13 = +[MailChangeManager sharedChangeManager];
      v14 = [v13 parentForMailbox:v8];
    }

    else
    {
      v14 = [v9 rootMailbox];
    }

    [(MailboxEditingController *)v12 setParentMailbox:v14];
    objc_storeStrong(&v12->_oldParentMailbox, v14);
    [(MailboxEditingController *)v12 setAccount:v9];
    v15 = [v10 copy];
    validAccounts = v12->_validAccounts;
    v12->_validAccounts = v15;

    [(MailboxEditingController *)v12 _createMailboxNameCell];
    if (v8)
    {
      v12->_showDeleteButton = [v9 canMailboxBeDeleted:v8];
    }

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v12 selector:"_contentSizeCategoryChanged:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v12;
}

- (void)_createMailboxNameCell
{
  v3 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v10 = [v3 text];

  v4 = [[UITableViewCell alloc] initWithStyle:1000 reuseIdentifier:0];
  mailboxNameCell = self->_mailboxNameCell;
  self->_mailboxNameCell = v4;

  [(UITableViewCell *)self->_mailboxNameCell setTextFieldOffset:0.0];
  [(UITableViewCell *)self->_mailboxNameCell setSelectionStyle:0];
  v6 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:self selector:"textChanged:" name:UITextFieldTextDidChangeNotification object:v6];

  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"MAILBOX_NAME_PLACEHOLDER" value:&stru_100662A88 table:@"Main"];
  [v6 setPlaceholder:v9];

  [v6 setClearButtonMode:1];
  [v6 setReturnKeyType:9];
  [v6 setEnablesReturnKeyAutomatically:1];
  [v6 setAutocapitalizationType:2];
  [v6 _setDataOwnerForPaste:3];
  [v6 _setDataOwnerForCopy:3];
  [v6 setText:v10];
  [v6 setDelegate:self];
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
  v6 = [(MailboxEditingController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v7 = [UIBarButtonItem alloc];
  v8 = [NSBundle bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"CANCEL" value:&stru_100662A88 table:@"Main"];
  v10 = [v7 initWithTitle:v9 style:0 target:self action:"_cancelButtonClicked:"];

  [v10 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewCancelButton];
  v11 = [(MailboxEditingController *)self navigationItem];
  [v11 setLeftBarButtonItem:v10];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"EDIT_MAILBOX" value:&stru_100662A88 table:@"Main"];

  v14 = [(MailboxEditingController *)self mailbox];

  if (!v14)
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"NEW_MAILBOX" value:&stru_100662A88 table:@"Main"];

    v13 = v16;
  }

  v17 = [(MailboxEditingController *)self navigationItem];
  [v17 setTitle:v13];

  v18 = [(MailboxEditingController *)self navigationItem];
  [v18 setAccessibilityIdentifier:v13];

  [(MailboxEditingController *)self _updateRowHeight];
  v19 = [(MailboxEditingController *)self navigationController];
  [v19 _setClipUnderlapWhileTransitioning:1];
}

- (void)_updateRowHeight
{
  v6 = [UIApp preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    v4 = UITableViewAutomaticDimension;
  }

  else
  {
    +[MailboxTableCell defaultRowHeight];
    v4 = v5;
  }

  v7 = [(MailboxEditingController *)self tableView];
  [v7 setRowHeight:v4];
}

- (void)_contentSizeCategoryChanged:(id)a3
{
  +[MailboxTableCell invalidateCachedLayoutInformation];
  [(MailboxEditingController *)self _updateRowHeight];
  [(MailboxEditingController *)self _createMailboxNameCell];
  deleteMailboxCell = self->_deleteMailboxCell;
  self->_deleteMailboxCell = 0;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v5 traitCollectionDidChange:v4];
  [(MailboxEditingController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (void)viewWillAppear:(BOOL)a3
{
  v14.receiver = self;
  v14.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v14 viewWillAppear:a3];
  v5 = [(MailboxEditingController *)self tableView];
  [v5 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxView];
  v6 = [(MailboxEditingController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MailboxEditingController *)self setTableViewObserver:v6];

  [v5 reloadData];
  v7 = [NSIndexPath indexPathForRow:0 inSection:0];
  v8 = [v5 cellForRowAtIndexPath:v7];

  mailboxNameCell = self->_mailboxNameCell;
  if (v8 != mailboxNameCell)
  {
    v13 = +[NSAssertionHandler currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"MailboxEditingController.m" lineNumber:167 description:@"unexpected cell"];

    mailboxNameCell = self->_mailboxNameCell;
  }

  v10 = [(UITableViewCell *)mailboxNameCell editableTextField];
  [v10 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewMailboxNameCell];
  if (self->_mailbox)
  {
    v11 = +[MailChangeManager sharedChangeManager];
    v12 = [v11 displayNameForMailbox:self->_mailbox];
    [v10 setText:v12];
  }

  [(MailboxEditingController *)self _updateSaveButtonEnabledState];
}

- (void)viewIsAppearing:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MailboxEditingController;
  [(MailboxEditingController *)&v5 viewIsAppearing:a3];
  v4 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  [v4 becomeFirstResponder];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v5 = a4;
  if ([v5 section])
  {
    if ([v5 section] == 1)
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
      v8 = self->_parentMailboxCell;
    }

    else
    {
      v8 = [(MailboxEditingController *)self _deleteMailboxButtonTableViewCell];
    }

    p_super = &v8->super.super;
  }

  else
  {
    p_super = self->_mailboxNameCell;
    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v11 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
    [v11 setFont:v10];
  }

  return p_super;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 == 1)
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

- (void)mailboxParentPickerDidSelectMailbox:(id)a3
{
  v5 = a3;
  [(MailboxEditingController *)self setParentMailbox:?];
  v4 = [v5 account];
  [(MailboxEditingController *)self setAccount:v4];

  [(MailboxEditingController *)self _updateParentMailbox];
}

- (void)_updateSaveButtonEnabledState
{
  parentMailbox = self->_parentMailbox;
  v10 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v4 = [v10 text];
  v5 = [v4 length];

  v11 = [(MailboxEditingController *)self navigationItem];
  v6 = [v11 rightBarButtonItem];
  v7 = v6;
  if (v5)
  {
    v8 = parentMailbox == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  [v6 setEnabled:v9];
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
    v11 = [(UITableViewCell *)self->_deleteMailboxCell contentView];
    [v11 addSubview:v6];

    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v6 superview];
    [v6 mf_pinToView:v12 usingLayoutMargins:0];

    deleteMailboxCell = self->_deleteMailboxCell;
  }

  return deleteMailboxCell;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  [v5 sectionHeaderHeight];
  v7 = v6;
  if (a4 == 1)
  {
    v8 = [UIApp preferredContentSizeCategory];
    IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v8);

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

- (double)tableView:(id)a3 heightForFooterInSection:(int64_t)a4
{
  v5 = a3;
  [v5 sectionFooterHeight];
  v7 = v6;
  if (((a4 == 1) & +[UIDevice mf_isPadIdiom]) != 0)
  {
    v7 = 25.0;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([v6 section] == 1)
  {
    v7 = [[MailboxParentPickerController alloc] initWithMailboxUid:self->_mailbox parentMailbox:self->_parentMailbox visibleAccounts:self->_validAccounts];
    [(MailboxParentPickerController *)v7 setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewMailboxPickerView];
    [(MailboxParentPickerController *)v7 setMailboxSelectionTarget:self];
    v8 = [(MailboxEditingController *)self navigationController];
    [v8 pushViewController:v7 animated:1];

    [v9 deselectRowAtIndexPath:v6 animated:1];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v6 = a4;
  [v6 mf_updateBackgroundColorForPopover:{-[MailboxEditingController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
}

- (void)_applyChangesAndDismissView
{
  if (self->_isDeletingMailbox)
  {
    v3 = [(MailboxEditingController *)self deleteMailboxOperation];
    [(MailboxEditingController *)self _queueMailboxOperation:v3];

    v4 = 0;
    v5 = 0;
LABEL_3:
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"MVMailboxListHasPendingChangesNotification" object:0];

    goto LABEL_4;
  }

  v8 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v46 = v8;
  if ([v8 isEditing])
  {
    [v8 resignFirstResponder];
    [v8 becomeFirstResponder];
  }

  v9 = [v8 text];
  v10 = [v9 ef_stringByTrimmingWhitespaceAndDuplicateSpaces];

  v11 = [(MailboxEditingController *)self parentMailbox];
  if (!v11)
  {
    v11 = [(MailAccount *)self->_account rootMailbox];
  }

  v12 = [v11 account];
  v13 = [v12 rootMailbox];

  v47 = v13;
  v14 = [v11 pathRelativeToMailbox:v13];
  v15 = [v14 stringByAppendingPathComponent:v10];

  v45 = v15;
  v4 = [(MailAccount *)self->_account mailboxUidForRelativePath:v15 create:0];

  v16 = v4 == 0;
  if (v4)
  {
    v17 = [v11 pathRelativeToMailboxForDisplay:v47];
    v18 = [v17 stringByAppendingPathComponent:v10];

    v19 = [NSBundle bundleForClass:objc_opt_class()];
    v20 = [v19 localizedStringForKey:@"MAILBOX_ALREADY_EXISTS" value:&stru_100662A88 table:@"Main"];

    v4 = [NSString stringWithFormat:v20, v18];
  }

  account = self->_account;
  v48 = 0;
  v22 = [(MailAccount *)account newMailboxNameIsAcceptable:v10 reasonForFailure:&v48];
  v23 = v48;
  v24 = v23;
  if ((v22 & 1) == 0)
  {
    v25 = v23;

    v16 = 0;
    v4 = v25;
  }

  if (![v10 length])
  {
    v5 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_36;
  }

  if (self->_mailbox)
  {
    v26 = [(MailAccount *)self->_account _uidNameForPathComponent:v10];
    v44 = v26;
    v27 = [(MFMailboxUid *)self->_mailbox name];
    v28 = ([v26 isEqualToString:v27] & 1) == 0 && objc_msgSend(v26, "length") != 0;

    v30 = [(MailboxEditingController *)self parentMailbox];
    oldParentMailbox = self->_oldParentMailbox;

    v32 = !v16 && (v28 || v30 != oldParentMailbox);
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
        v36 = [(MailboxEditingController *)self renameMailboxOperation];
        v37 = [(MailboxEditingController *)self _queueMailboxOperation:v36];

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

      if (v30 == oldParentMailbox)
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
    v44 = [(MailboxEditingController *)self createMailboxOperation];
    [(MailboxEditingController *)self _queueMailboxOperation:?];
    v5 = 0;
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v44 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v44 localizedStringForKey:@"ERROR_CREATING_MAILBOX_TITLE" value:&stru_100662A88 table:@"Main"];
    v29 = 0;
    v28 = 1;
  }

LABEL_35:

LABEL_36:
  if (v28)
  {
    v7 = [UIAlertController alertControllerWithTitle:v5 message:v4 preferredStyle:1];
    v39 = [NSBundle bundleForClass:objc_opt_class()];
    v40 = [v39 localizedStringForKey:@"OK" value:&stru_100662A88 table:@"Main"];
    v41 = [UIAlertAction actionWithTitle:v40 style:0 handler:0];
    [v7 addAction:v41];

    [(MailboxEditingController *)self presentViewController:v7 animated:1 completion:0];
    goto LABEL_38;
  }

  if (v29)
  {
    goto LABEL_3;
  }

LABEL_4:
  v7 = [(MailboxEditingController *)self delegate];
  [v7 mailboxEditingControllerDidFinish:self];
LABEL_38:
}

- (void)_cancelButtonClicked:(id)a3
{
  v4 = [(MailboxEditingController *)self delegate];
  [v4 mailboxEditingControllerDidFinish:self];
}

- (void)_confirmDelete:(id)a3
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

- (BOOL)_queueMailboxOperation:(id)a3
{
  v3 = a3;
  v4 = _os_activity_create(&_mh_execute_header, "mailbox operation", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  v5 = +[MailboxEditingController log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Queueing mailbox operation %@", buf, 0xCu);
  }

  v6 = [[MailMailboxChangeSet alloc] initWithOperation:v3];
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
  v3 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v4 = [v3 text];

  v5 = [v4 ef_stringByTrimmingWhitespaceAndDuplicateSpaces];
  if ([v5 length])
  {
    v6 = [[MCSRenameMailboxOperation alloc] initWithMailboxToRename:self->_mailbox toName:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)moveMailboxOperation
{
  v3 = [(MailboxEditingController *)self parentMailbox];
  v4 = [[MCSMoveMailboxOperation alloc] initWithMailboxToMove:self->_mailbox toParent:v3];

  return v4;
}

- (id)createMailboxOperation
{
  v3 = [(UITableViewCell *)self->_mailboxNameCell editableTextField];
  v4 = [v3 text];

  v5 = [v4 ef_stringByTrimmingWhitespaceAndDuplicateSpaces];
  v6 = [(MailboxEditingController *)self parentMailbox];
  if (!v6)
  {
    v6 = [(MailAccount *)self->_account rootMailbox];
  }

  v7 = [[MCSCreateMailboxOperation alloc] initWithName:v5 parentMailbox:v6];

  return v7;
}

- (MailboxEditingControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end