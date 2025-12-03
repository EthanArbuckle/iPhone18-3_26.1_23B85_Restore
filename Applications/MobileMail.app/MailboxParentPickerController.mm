@interface MailboxParentPickerController
- (MailboxParentPickerController)initWithMailboxUid:(id)uid parentMailbox:(id)mailbox visibleAccounts:(id)accounts;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation MailboxParentPickerController

- (MailboxParentPickerController)initWithMailboxUid:(id)uid parentMailbox:(id)mailbox visibleAccounts:(id)accounts
{
  uidCopy = uid;
  mailboxCopy = mailbox;
  accountsCopy = accounts;
  v19.receiver = self;
  v19.super_class = MailboxParentPickerController;
  v11 = [(MailboxParentPickerController *)&v19 initWithStyle:2];
  if (v11)
  {
    v12 = [[MailboxParentPickerTableController alloc] initWithMailboxUid:uidCopy parentMailbox:mailboxCopy visibleAccounts:accountsCopy];
    tableController = v11->_tableController;
    v11->_tableController = v12;

    v14 = [NSBundle bundleForClass:objc_opt_class()];
    v15 = [v14 localizedStringForKey:@"MAILBOX_LOCATION" value:&stru_100662A88 table:@"Main"];
    navigationItem = [(MailboxParentPickerController *)v11 navigationItem];
    [navigationItem setTitle:v15];

    tableView = [(MailboxParentPickerController *)v11 tableView];
    [tableView setEstimatedRowHeight:75.0];
  }

  return v11;
}

- (void)viewWillAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = MailboxParentPickerController;
  [(MailboxParentPickerController *)&v9 viewWillAppear:appear];
  mf_updatePreferredContentSizeBasedOnTableView = [(MailboxParentPickerController *)self mf_updatePreferredContentSizeBasedOnTableView];
  [(MailboxParentPickerController *)self setTableViewObserver:mf_updatePreferredContentSizeBasedOnTableView];

  indexOfParentMailbox = [(MailboxParentPickerTableController *)self->_tableController indexOfParentMailbox];
  if (indexOfParentMailbox != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = indexOfParentMailbox;
    tableView = [(MailboxParentPickerController *)self tableView];
    v8 = [NSIndexPath indexPathForRow:v6 inSection:0];
    [tableView scrollToRowAtIndexPath:v8 atScrollPosition:0 animated:0];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = MailboxParentPickerController;
  [(MailboxParentPickerController *)&v5 traitCollectionDidChange:changeCopy];
  [(MailboxParentPickerController *)self mf_updateTableViewBackgroundColorForPopover];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v4 = [(MailboxParentPickerTableController *)self->_tableController tableView:view cellForRowAtIndexPath:path];

  return v4;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  [(MailboxParentPickerTableController *)self->_tableController tableView:viewCopy didSelectRowAtIndexPath:pathCopy tableViewPath:pathCopy];
  navigationController = [(MailboxParentPickerController *)self navigationController];
  v8 = [navigationController popViewControllerAnimated:1];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  [cellCopy mf_updateBackgroundColorForPopover:{-[MailboxParentPickerController mf_supportsPopoverPresentation](self, "mf_supportsPopoverPresentation")}];
  [cellCopy setAccessibilityIdentifier:MSAccessibilityIdentifierMailEditMailboxViewMailboxPickerViewMailboxCell];
}

@end