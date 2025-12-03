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
  view = [(CNMeCardSharingOnboardingViewController *)self view];
  [view setNeedsLayout];
}

- (void)viewDidLayoutSubviews
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  view = [(CNMeCardSharingOnboardingViewController *)self view];
  [view layoutIfNeeded];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 contentSize];
  v7 = v6;
  tableViewHeightConstraint = [(CNMeCardSharingOnboardingViewController *)self tableViewHeightConstraint];
  [tableViewHeightConstraint setConstant:v7];

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
  view = [(CNMeCardSharingOnboardingViewController *)self view];
  [view bounds];
  v5 = [v3 initWithFrame:1 style:?];
  [(OBTableWelcomeController *)self setTableView:v5];

  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView setShowsVerticalScrollIndicator:0];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setScrollEnabled:0];

  clearColor = [MEMORY[0x1E69DC888] clearColor];
  tableView4 = [(OBTableWelcomeController *)self tableView];
  [tableView4 setBackgroundColor:clearColor];

  boldButton = [MEMORY[0x1E69B7CF8] boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = boldButton;

  v13 = self->_confirmButton;
  confirmButtonTitle = [(CNMeCardSharingOnboardingViewController *)self confirmButtonTitle];
  [(OBBoldTrayButton *)v13 setTitle:confirmButtonTitle forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_didTapDoneButton_ forControlEvents:64];
  buttonTray = [(CNMeCardSharingOnboardingViewController *)self buttonTray];
  [buttonTray addButton:self->_confirmButton];

  tableView5 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView5 heightAnchor];
  v18 = [heightAnchor constraintEqualToConstant:400.0];
  [(CNMeCardSharingOnboardingViewController *)self setTableViewHeightConstraint:v18];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  tableViewHeightConstraint = [(CNMeCardSharingOnboardingViewController *)self tableViewHeightConstraint];
  [tableView6 addConstraint:tableViewHeightConstraint];
}

@end