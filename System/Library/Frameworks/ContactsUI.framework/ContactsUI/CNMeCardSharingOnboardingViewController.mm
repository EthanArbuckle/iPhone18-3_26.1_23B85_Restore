@interface CNMeCardSharingOnboardingViewController
- (id)confirmButtonTitle;
- (void)updateForContentSizeCategoryChange;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNMeCardSharingOnboardingViewController

- (id)confirmButtonTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_DONE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)updateForContentSizeCategoryChange
{
  v2 = [(CNMeCardSharingOnboardingViewController *)self view];
  [v2 setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 reloadData];

  v4 = [(CNMeCardSharingOnboardingViewController *)self view];
  [v4 layoutIfNeeded];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 contentSize];
  v7 = v6;
  v8 = [(CNMeCardSharingOnboardingViewController *)self tableViewHeightConstraint];
  [v8 setConstant:v7];

  v9.receiver = self;
  v9.super_class = CNMeCardSharingOnboardingViewController;
  [(OBTableWelcomeController *)&v9 viewDidLayoutSubviews];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = CNMeCardSharingOnboardingViewController;
  [(OBTableWelcomeController *)&v21 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  v4 = [(CNMeCardSharingOnboardingViewController *)self view];
  [v4 bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(OBTableWelcomeController *)self setTableView:v5];

  v6 = [(OBTableWelcomeController *)self tableView];
  [v6 setShowsVerticalScrollIndicator:0];

  v7 = [(OBTableWelcomeController *)self tableView];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

  v8 = [(OBTableWelcomeController *)self tableView];
  [v8 setScrollEnabled:0];

  v9 = [MEMORY[0x1E69DC888] clearColor];
  v10 = [(OBTableWelcomeController *)self tableView];
  [v10 setBackgroundColor:v9];

  v11 = [MEMORY[0x1E69B7CF8] boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = v11;

  v13 = self->_confirmButton;
  v14 = [(CNMeCardSharingOnboardingViewController *)self confirmButtonTitle];
  [(OBBoldTrayButton *)v13 setTitle:v14 forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_didTapDoneButton_ forControlEvents:64];
  v15 = [(CNMeCardSharingOnboardingViewController *)self buttonTray];
  [v15 addButton:self->_confirmButton];

  v16 = [(OBTableWelcomeController *)self tableView];
  v17 = [v16 heightAnchor];
  v18 = [v17 constraintEqualToConstant:400.0];
  [(CNMeCardSharingOnboardingViewController *)self setTableViewHeightConstraint:v18];

  v19 = [(OBTableWelcomeController *)self tableView];
  v20 = [(CNMeCardSharingOnboardingViewController *)self tableViewHeightConstraint];
  [v19 addConstraint:v20];
}

@end