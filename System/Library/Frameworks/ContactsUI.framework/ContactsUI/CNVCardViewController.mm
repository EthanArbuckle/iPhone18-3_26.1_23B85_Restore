@interface CNVCardViewController
- (CNContactNavigationController)contactNavigationController;
- (CNVCardViewController)initWithVCardData:(id)data;
- (CNVCardViewControllerDelegate)delegate;
- (void)contactNavigationControllerDidCancel:(id)cancel;
- (void)contactNavigationControllerDidComplete:(id)complete;
- (void)viewDidLoad;
@end

@implementation CNVCardViewController

- (CNVCardViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CNContactNavigationController)contactNavigationController
{
  [(CNVCardViewController *)self view];

  contacts = [(CNVCardViewController *)self contacts];
  if ([contacts count] < 2)
  {
    firstObject = 0;
    goto LABEL_5;
  }

  childViewControllers = [(CNVCardViewController *)self childViewControllers];
  v5 = [childViewControllers count];

  if (v5 == 1)
  {
    contacts = [(CNVCardViewController *)self childViewControllers];
    firstObject = [contacts firstObject];
LABEL_5:

    goto LABEL_7;
  }

  firstObject = 0;
LABEL_7:

  return firstObject;
}

- (void)contactNavigationControllerDidCancel:(id)cancel
{
  delegate = [(CNVCardViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNVCardViewController *)self delegate];
    [delegate2 vCardViewControllerDidComplete:self];
  }
}

- (void)contactNavigationControllerDidComplete:(id)complete
{
  delegate = [(CNVCardViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(CNVCardViewController *)self delegate];
    [delegate2 vCardViewControllerDidComplete:self];
  }
}

- (void)viewDidLoad
{
  v32[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = CNVCardViewController;
  [(CNVCardViewController *)&v30 viewDidLoad];
  contacts = [(CNVCardViewController *)self contacts];
  v4 = [contacts count];

  if (!v4)
  {
    v9 = objc_alloc(MEMORY[0x1E69DD250]);
    v10 = *MEMORY[0x1E695F058];
    v11 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v13 = *(MEMORY[0x1E695F058] + 24);
    v7 = [v9 initWithFrame:{*MEMORY[0x1E695F058], v11, v12, v13}];
    v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v10, v11, v12, v13}];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v14 setTextAlignment:1];
    v15 = [MEMORY[0x1E69DB878] ab_preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [v14 setFont:v15];

    v16 = +[CNUIColorRepository contactStyleDefaultDisabledTextColor];
    [v14 setTextColor:v16];

    v17 = CNContactsUIBundle();
    v18 = [v17 localizedStringForKey:@"NO_VCARDS_FOUND" value:&stru_1F0CE7398 table:@"Localized"];
    [v14 setText:v18];

    [v14 sizeToFit];
    [(CNContactNavigationController *)v7 addSubview:v14];
    v19 = MEMORY[0x1E696ACD8];
    v20 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
    v32[0] = v20;
    v21 = [MEMORY[0x1E696ACD8] constraintWithItem:v14 attribute:10 relatedBy:0 toItem:v7 attribute:10 multiplier:1.0 constant:0.0];
    v32[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
    [v19 activateConstraints:v22];

    v23 = +[CNUIColorRepository contactStyleDefaultBackgroundColor];
    [(CNContactNavigationController *)v7 setBackgroundColor:v23];

    if (!v7)
    {
      return;
    }

    view = [(CNVCardViewController *)self view];
    [view bounds];
    [(CNContactNavigationController *)v7 setFrame:?];

    [(CNContactNavigationController *)v7 setAutoresizingMask:18];
    view2 = [(CNVCardViewController *)self view];
    [view2 addSubview:v7];

    goto LABEL_9;
  }

  if (v4 == 1)
  {
    contacts2 = [(CNVCardViewController *)self contacts];
    firstObject = [contacts2 firstObject];
    v7 = [CNContactViewController viewControllerForUnknownContact:firstObject];

    v8 = objc_alloc_init(MEMORY[0x1E695CE18]);
    [(CNContactNavigationController *)v7 setContactStore:v8];
  }

  else
  {
    v26 = [CNContactCustomDataSource alloc];
    contacts3 = [(CNVCardViewController *)self contacts];
    v28 = +[CNContactViewController descriptorForRequiredKeys];
    v31 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v8 = [(CNContactCustomDataSource *)v26 initWithContacts:contacts3 keysToFetch:v29];

    [(CNContactCustomDataSource *)v8 setAutoUpdateContacts:0];
    v7 = [[CNContactNavigationController alloc] initWithDataSource:v8];
    [(CNContactNavigationController *)v7 setAllowsCanceling:1];
    [(CNContactNavigationController *)v7 setDelegate:self];
  }

  if (v7)
  {
    [(UIViewController *)self cnui_addChildViewController:v7];
LABEL_9:
  }
}

- (CNVCardViewController)initWithVCardData:(id)data
{
  v13.receiver = self;
  v13.super_class = CNVCardViewController;
  dataCopy = data;
  v4 = [(CNVCardViewController *)&v13 initWithNibName:0 bundle:0];
  v12 = 0;
  v5 = [MEMORY[0x1E695CE30] contactsWithData:dataCopy error:&v12];

  v6 = v12;
  [(CNVCardViewController *)v4 setContacts:v5];

  if (v6)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNVCardViewController.m", 36, 3, @"Error parsing vCard data: %@", v7, v8, v9, v10, v6);
  }

  return v4;
}

@end