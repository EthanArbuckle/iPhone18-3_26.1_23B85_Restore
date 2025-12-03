@interface MailboxBehaviorMailboxPicker
- (MailboxBehaviorMailboxPicker)initWithNibName:(id)name bundle:(id)bundle;
- (void)mailboxList:(id)list didSelectMailbox:(id)mailbox;
- (void)viewDidLoad;
@end

@implementation MailboxBehaviorMailboxPicker

- (MailboxBehaviorMailboxPicker)initWithNibName:(id)name bundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v12.receiver = self;
  v12.super_class = MailboxBehaviorMailboxPicker;
  v8 = [(MailboxBehaviorMailboxPicker *)&v12 initWithNibName:nameCopy bundle:bundleCopy];
  if (v8)
  {
    v9 = objc_alloc_init(MailboxListViewControllerPrefs);
    mailboxListController = v8->_mailboxListController;
    v8->_mailboxListController = v9;

    [(MailboxBehaviorMailboxPicker *)v8 addChildViewController:v8->_mailboxListController];
    [(MailboxListViewControllerPrefs *)v8->_mailboxListController didMoveToParentViewController:v8];
  }

  return v8;
}

- (void)viewDidLoad
{
  v24.receiver = self;
  v24.super_class = MailboxBehaviorMailboxPicker;
  [(MailboxBehaviorMailboxPicker *)&v24 viewDidLoad];
  specifier = [(MailboxBehaviorMailboxPicker *)self specifier];
  target = [specifier target];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_target, target);
  }

  userInfo = [specifier userInfo];
  v6 = [userInfo objectForKey:@"MailboxType"];
  self->_pickingForType = [v6 intValue];

  account = [(MailboxBehaviorMailboxPickerDelegate *)self->_target account];
  if ([(MailboxBehaviorMailboxPickerDelegate *)self->_target storeMailboxTypeOnServer:self->_pickingForType])
  {
    mailboxListController = self->_mailboxListController;
    v9 = [(MailboxBehaviorMailboxPickerDelegate *)self->_target mailboxUidForType:self->_pickingForType];
    [(MailboxListViewControllerBase *)mailboxListController setSelectedMailbox:v9];
  }

  v10 = objc_alloc_init(MailboxListViewingContext);
  [(MailboxListViewingContext *)v10 setAccount:account];
  [(MailboxListViewingContext *)v10 setSelectionTarget:self];
  [(MailboxListViewingContext *)v10 setType:self->_pickingForType];
  [(MailboxListViewControllerPrefs *)self->_mailboxListController setViewingContext:v10];
  view = [(MailboxBehaviorMailboxPicker *)self view];
  [view bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  view2 = [(MailboxListViewControllerPrefs *)self->_mailboxListController view];
  [view2 setFrame:{v13, v15, v17, v19}];

  tableView = [(MailboxListViewControllerPrefs *)self->_mailboxListController tableView];
  [tableView setUsesVariableMargins:1];

  view3 = [(MailboxBehaviorMailboxPicker *)self view];
  tableView2 = [(MailboxListViewControllerPrefs *)self->_mailboxListController tableView];
  [view3 addSubview:tableView2];

  [(MailboxListViewControllerPrefs *)self->_mailboxListController _loadMailboxes];
}

- (void)mailboxList:(id)list didSelectMailbox:(id)mailbox
{
  listCopy = list;
  mailboxCopy = mailbox;
  target = self->_target;
  if (target)
  {
    [(MailboxBehaviorMailboxPickerDelegate *)target pickerDidChooseMailbox:mailboxCopy forType:self->_pickingForType];
  }

  [(MailboxListViewControllerBase *)self->_mailboxListController setSelectedMailbox:mailboxCopy];
  [(MailboxListViewControllerPrefs *)self->_mailboxListController refreshDisplay];
}

@end