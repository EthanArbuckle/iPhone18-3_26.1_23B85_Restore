@interface CNMeCardSharingOnboardingAudienceViewController
+ (id)headerText;
- (CNMeCardSharingOnboardingAudienceViewController)initWithSelectedSharingAudience:(unint64_t)audience;
- (CNMeCardSharingOnboardingAudienceViewControllerDelegate)delegate;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)handleConfirmButtonTapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation CNMeCardSharingOnboardingAudienceViewController

- (CNMeCardSharingOnboardingAudienceViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  selectedIndex = [(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedIndex];
  -[CNMeCardSharingAudienceDataSource didSelectItemAtIndex:](self->_sharingAudienceDataSource, "didSelectItemAtIndex:", [pathCopy row]);
  v8 = [MEMORY[0x1E696AC88] indexPathForRow:selectedIndex inSection:{objc_msgSend(pathCopy, "section")}];
  LOBYTE(selectedIndex) = [v8 isEqual:pathCopy];
  [viewCopy deselectRowAtIndexPath:pathCopy animated:0];
  if ((selectedIndex & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AC90] indexSetWithIndex:{objc_msgSend(pathCopy, "section")}];
    [viewCopy reloadSections:v9 withRowAnimation:0];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];
  sharingAudienceDataSource = self->_sharingAudienceDataSource;
  v9 = [pathCopy row];

  v10 = [(CNMeCardSharingAudienceDataSource *)sharingAudienceDataSource itemForIndex:v9];
  label = [v10 label];
  textLabel = [v7 textLabel];
  [textLabel setText:label];

  [v7 setSelectionStyle:0];
  accessoryView = [v10 accessoryView];

  if (accessoryView)
  {
    accessoryView2 = [v10 accessoryView];
    [v7 setAccessoryView:accessoryView2];
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

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndex = [(CNMeCardSharingAudienceDataSource *)self->_sharingAudienceDataSource selectedIndex];
  if (selectedIndex == [pathCopy row])
  {
    v7 = 0;
  }

  else
  {
    v7 = pathCopy;
  }

  return v7;
}

- (void)handleConfirmButtonTapped
{
  delegate = [(CNMeCardSharingOnboardingAudienceViewController *)self delegate];
  [delegate meCardSharingOnboardingAudienceViewControllerDidFinish:self withSharingAudience:{-[CNMeCardSharingAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = CNMeCardSharingOnboardingAudienceViewController;
  [(CNMeCardSharingOnboardingViewController *)&v7 viewDidLoad];
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  tableView2 = [(OBTableWelcomeController *)self tableView];
  [tableView2 setDelegate:self];

  tableView3 = [(OBTableWelcomeController *)self tableView];
  [tableView3 setDataSource:self];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChange_ name:*MEMORY[0x1E69DDC48] object:0];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNMeCardSharingOnboardingAudienceViewController;
  [(CNMeCardSharingOnboardingAudienceViewController *)&v4 dealloc];
}

- (CNMeCardSharingOnboardingAudienceViewController)initWithSelectedSharingAudience:(unint64_t)audience
{
  headerText = [objc_opt_class() headerText];
  v11.receiver = self;
  v11.super_class = CNMeCardSharingOnboardingAudienceViewController;
  v6 = [(OBTableWelcomeController *)&v11 initWithTitle:headerText detailText:0 icon:0 adoptTableViewScrollView:0];

  if (v6)
  {
    v7 = [[CNMeCardSharingAudienceDataSource alloc] initWithSelectedSharingAudience:audience];
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