@interface MailboxBehaviorMailboxPicker
- (MailboxBehaviorMailboxPicker)initWithNibName:(id)a3 bundle:(id)a4;
- (void)mailboxList:(id)a3 didSelectMailbox:(id)a4;
- (void)viewDidLoad;
@end

@implementation MailboxBehaviorMailboxPicker

- (MailboxBehaviorMailboxPicker)initWithNibName:(id)a3 bundle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MailboxBehaviorMailboxPicker;
  v8 = [(MailboxBehaviorMailboxPicker *)&v12 initWithNibName:v6 bundle:v7];
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
  v3 = [(MailboxBehaviorMailboxPicker *)self specifier];
  v4 = [v3 target];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_target, v4);
  }

  v5 = [v3 userInfo];
  v6 = [v5 objectForKey:@"MailboxType"];
  self->_pickingForType = [v6 intValue];

  v7 = [(MailboxBehaviorMailboxPickerDelegate *)self->_target account];
  if ([(MailboxBehaviorMailboxPickerDelegate *)self->_target storeMailboxTypeOnServer:self->_pickingForType])
  {
    mailboxListController = self->_mailboxListController;
    v9 = [(MailboxBehaviorMailboxPickerDelegate *)self->_target mailboxUidForType:self->_pickingForType];
    [(MailboxListViewControllerBase *)mailboxListController setSelectedMailbox:v9];
  }

  v10 = objc_alloc_init(MailboxListViewingContext);
  [(MailboxListViewingContext *)v10 setAccount:v7];
  [(MailboxListViewingContext *)v10 setSelectionTarget:self];
  [(MailboxListViewingContext *)v10 setType:self->_pickingForType];
  [(MailboxListViewControllerPrefs *)self->_mailboxListController setViewingContext:v10];
  v11 = [(MailboxBehaviorMailboxPicker *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(MailboxListViewControllerPrefs *)self->_mailboxListController view];
  [v20 setFrame:{v13, v15, v17, v19}];

  v21 = [(MailboxListViewControllerPrefs *)self->_mailboxListController tableView];
  [v21 setUsesVariableMargins:1];

  v22 = [(MailboxBehaviorMailboxPicker *)self view];
  v23 = [(MailboxListViewControllerPrefs *)self->_mailboxListController tableView];
  [v22 addSubview:v23];

  [(MailboxListViewControllerPrefs *)self->_mailboxListController _loadMailboxes];
}

- (void)mailboxList:(id)a3 didSelectMailbox:(id)a4
{
  v8 = a3;
  v6 = a4;
  target = self->_target;
  if (target)
  {
    [(MailboxBehaviorMailboxPickerDelegate *)target pickerDidChooseMailbox:v6 forType:self->_pickingForType];
  }

  [(MailboxListViewControllerBase *)self->_mailboxListController setSelectedMailbox:v6];
  [(MailboxListViewControllerPrefs *)self->_mailboxListController refreshDisplay];
}

@end