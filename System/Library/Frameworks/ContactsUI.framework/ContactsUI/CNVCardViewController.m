@interface CNVCardViewController
- (CNContactNavigationController)contactNavigationController;
- (CNVCardViewController)initWithVCardData:(id)a3;
- (CNVCardViewControllerDelegate)delegate;
- (void)contactNavigationControllerDidCancel:(id)a3;
- (void)contactNavigationControllerDidComplete:(id)a3;
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

  v3 = [(CNVCardViewController *)self contacts];
  if ([v3 count] < 2)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v4 = [(CNVCardViewController *)self childViewControllers];
  v5 = [v4 count];

  if (v5 == 1)
  {
    v3 = [(CNVCardViewController *)self childViewControllers];
    v6 = [v3 firstObject];
LABEL_5:

    goto LABEL_7;
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (void)contactNavigationControllerDidCancel:(id)a3
{
  v4 = [(CNVCardViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNVCardViewController *)self delegate];
    [v6 vCardViewControllerDidComplete:self];
  }
}

- (void)contactNavigationControllerDidComplete:(id)a3
{
  v4 = [(CNVCardViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CNVCardViewController *)self delegate];
    [v6 vCardViewControllerDidComplete:self];
  }
}

- (void)viewDidLoad
{
  v32[2] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = CNVCardViewController;
  [(CNVCardViewController *)&v30 viewDidLoad];
  v3 = [(CNVCardViewController *)self contacts];
  v4 = [v3 count];

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

    v24 = [(CNVCardViewController *)self view];
    [v24 bounds];
    [(CNContactNavigationController *)v7 setFrame:?];

    [(CNContactNavigationController *)v7 setAutoresizingMask:18];
    v25 = [(CNVCardViewController *)self view];
    [v25 addSubview:v7];

    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v5 = [(CNVCardViewController *)self contacts];
    v6 = [v5 firstObject];
    v7 = [CNContactViewController viewControllerForUnknownContact:v6];

    v8 = objc_alloc_init(MEMORY[0x1E695CE18]);
    [(CNContactNavigationController *)v7 setContactStore:v8];
  }

  else
  {
    v26 = [CNContactCustomDataSource alloc];
    v27 = [(CNVCardViewController *)self contacts];
    v28 = +[CNContactViewController descriptorForRequiredKeys];
    v31 = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v8 = [(CNContactCustomDataSource *)v26 initWithContacts:v27 keysToFetch:v29];

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

- (CNVCardViewController)initWithVCardData:(id)a3
{
  v13.receiver = self;
  v13.super_class = CNVCardViewController;
  v3 = a3;
  v4 = [(CNVCardViewController *)&v13 initWithNibName:0 bundle:0];
  v12 = 0;
  v5 = [MEMORY[0x1E695CE30] contactsWithData:v3 error:&v12];

  v6 = v12;
  [(CNVCardViewController *)v4 setContacts:v5];

  if (v6)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNVCardViewController.m", 36, 3, @"Error parsing vCard data: %@", v7, v8, v9, v10, v6);
  }

  return v4;
}

@end