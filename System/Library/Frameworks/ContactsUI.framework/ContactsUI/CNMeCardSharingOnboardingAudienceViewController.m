@interface CNMeCardSharingOnboardingAudienceViewController
+ (id)headerText;
- (CNMeCardSharingOnboardingAudienceViewController)initWithSelectedSharingAudience:(unint64_t)a3;
- (CNMeCardSharingOnboardingAudienceViewControllerDelegate)delegate;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (void)dealloc;
- (void)handleConfirmButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CNMeCardSharingOnboardingAudienceViewController

- (CNMeCardSharingOnboardingAudienceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedIndex];
  -[CNMeCardSharingAudienceDataSource didSelectItemAtIndex:](self->_sharingAudienceDataSource, "didSelectItemAtIndex:", [v6 row]);
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:v7 inSection:{objc_msgSend(v6, "section")}];
  LOBYTE(v7) = [v8 isEqual:v6];
  [v10 deselectRowAtIndexPath:v6 animated:0];
  if ((v7 & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(v6, "section")}];
    [v10 reloadSections:v9 withRowAnimation:0];
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:v6];
  sharingAudienceDataSource = self->_sharingAudienceDataSource;
  v9 = [v6 row];

  v10 = [(CNMeCardSharingAudienceDataSource *)sharingAudienceDataSource itemForIndex:v9];
  v11 = [v10 label];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  [v7 setSelectionStyle:0];
  v13 = [v10 accessoryView];

  if (v13)
  {
    v14 = [v10 accessoryView];
    [v7 setAccessoryView:v14];
  }

  else
  {
    [v7 setAccessoryView:0];
  }

  if ([v10 isSelected])
  {
    v15 = 3;
  }

  else
  {
    v15 = 0;
  }

  [v7 setAccessoryType:v15];

  return v7;
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedIndex];
  if (v6 == [v5 row])
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)handleConfirmButtonTapped
{
  v3 = [(CNMeCardSharingOnboardingAudienceViewController *)self delegate];
  [v3 meCardSharingOnboardingAudienceViewControllerDidFinish:self withSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CNMeCardSharingOnboardingAudienceViewController;
  [(CNMeCardSharingOnboardingViewController *)&v7 viewDidLoad];
  v3 = [(OBTableWelcomeController *)self tableView];
  [v3 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  v4 = [(OBTableWelcomeController *)self tableView];
  [v4 setDelegate:self];

  v5 = [(OBTableWelcomeController *)self tableView];
  [v5 setDataSource:self];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNMeCardSharingOnboardingAudienceViewController;
  [(CNMeCardSharingOnboardingAudienceViewController *)&v4 dealloc];
}

- (CNMeCardSharingOnboardingAudienceViewController)initWithSelectedSharingAudience:(unint64_t)a3
{
  v5 = [objc_opt_class() headerText];
  v11.receiver = self;
  v11.super_class = CNMeCardSharingOnboardingAudienceViewController;
  v6 = [(OBTableWelcomeController *)&v11 initWithTitle:v5 detailText:0 icon:0 adoptTableViewScrollView:0];

  if (v6)
  {
    v7 = [[CNMeCardSharingAudienceDataSource alloc] initWithSelectedSharingAudience:a3];
    sharingAudienceDataSource = v6->_sharingAudienceDataSource;
    v6->_sharingAudienceDataSource = v7;

    v9 = v6;
  }

  return v6;
}

+ (id)headerText
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_ONBOARDING_CHOOSE_SHARING_AUDIENCE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

@end