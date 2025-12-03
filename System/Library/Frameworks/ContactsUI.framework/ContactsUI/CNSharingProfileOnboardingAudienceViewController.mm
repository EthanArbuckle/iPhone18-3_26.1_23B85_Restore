@interface CNSharingProfileOnboardingAudienceViewController
+ (id)descriptorForRequiredKeys;
+ (id)headerText;
- (BOOL)textFieldShouldReturn:(id)return;
- (CNSharingProfileOnboardingAudienceControllerDelegate)delegate;
- (CNSharingProfileOnboardingAudienceViewController)initWithContact:(id)contact selectedSharingAudience:(unint64_t)audience;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)cellForNameInTableView:(id)view;
- (id)confirmButtonTitle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)familyNameDidChange:(id)change;
- (void)givenNameDidChange:(id)change;
- (void)handleConfirmButtonTapped:(id)tapped;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)textFieldDidEndEditing:(id)editing;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfirmButtonEnabledState;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CNSharingProfileOnboardingAudienceViewController

- (CNSharingProfileOnboardingAudienceControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_givenNameField text];
  [(CNMutableContact *)self->_contact setGivenName:text];

  text2 = [(UITextField *)self->_familyNameField text];
  [(CNMutableContact *)self->_contact setFamilyName:text2];
}

- (BOOL)textFieldShouldReturn:(id)return
{
  returnCopy = return;
  v5 = returnCopy;
  nameOrder = self->_nameOrder;
  if ((nameOrder != 2 || self->_familyNameField == returnCopy) && self->_givenNameField == returnCopy)
  {
    if (nameOrder == 2)
    {
      v7 = &OBJC_IVAR___CNSharingProfileOnboardingAudienceViewController__givenNameField;
    }

    else
    {
      v7 = &OBJC_IVAR___CNSharingProfileOnboardingAudienceViewController__familyNameField;
    }

    [*(&self->super.super.super.super.super.super.isa + *v7) becomeFirstResponder];
  }

  else
  {
    [(UITextField *)returnCopy resignFirstResponder];
  }

  return 0;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  selectedIndex = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource selectedIndex];
  -[CNSharingProfileAudienceDataSource didSelectItemAtIndex:](self->_sharingAudienceDataSource, "didSelectItemAtIndex:", [pathCopy row]);
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
  viewCopy = view;
  if ([pathCopy section])
  {
    v8 = [viewCopy dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:pathCopy];

    viewCopy = -[CNSharingProfileAudienceDataSource itemForIndex:](self->_sharingAudienceDataSource, "itemForIndex:", [pathCopy row]);
    label = [viewCopy label];
    textLabel = [v8 textLabel];
    [textLabel setText:label];

    [v8 setSelectionStyle:0];
    accessoryView = [viewCopy accessoryView];

    if (accessoryView)
    {
      accessoryView2 = [viewCopy accessoryView];
      [v8 setAccessoryView:accessoryView2];
    }

    else
    {
      [v8 setAccessoryView:0];
    }

    if ([viewCopy isSelected])
    {
      v13 = 3;
    }

    else
    {
      v13 = 0;
    }

    [v8 setAccessoryType:v13];
  }

  else
  {
    v8 = [(CNSharingProfileOnboardingAudienceViewController *)self cellForNameInTableView:viewCopy];
  }

  return v8;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  selectedIndex = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource selectedIndex];
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

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section] || objc_msgSend(pathCopy, "row"))
  {
    v6 = *MEMORY[0x1E69DE3D0];
  }

  else
  {
    font = [(UITextField *)self->_givenNameField font];
    [font lineHeight];
    v6 = v9 * 2.0 + 20.0;

    +[CNSharingProfileOnboardingNameCell desiredMinimumCellHeight];
    if (v6 < v10)
    {
      v6 = v10;
    }
  }

  return v6;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource sectionFooterLabel:view];
  }

  return v6;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section < 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource sectionHeaderLabel:view];
  }

  return v6;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section)
  {
    return [(CNSharingProfileAudienceDataSource *)self->_sharingAudienceDataSource numberOfItems];
  }

  else
  {
    return 1;
  }
}

- (id)cellForNameInTableView:(id)view
{
  viewCopy = view;
  v5 = +[CNSharingProfileOnboardingNameCell cellIdentifier];
  v6 = [viewCopy dequeueReusableCellWithIdentifier:v5];

  [v6 setGivenNameField:self->_givenNameField familyNameField:self->_familyNameField];
  givenName = [(CNMutableContact *)self->_contact givenName];
  [v6 setGivenName:givenName];

  familyName = [(CNMutableContact *)self->_contact familyName];
  [v6 setFamilyName:familyName];

  [v6 setNameOrder:self->_nameOrder];
  v9 = objc_alloc(MEMORY[0x1E69DCAB8]);
  thumbnailImageData = [(CNMutableContact *)self->_contact thumbnailImageData];
  v11 = [v9 initWithData:thumbnailImageData];

  [v6 setAvatarImage:v11];

  return v6;
}

- (void)handleConfirmButtonTapped:(id)tapped
{
  delegate = [(CNSharingProfileOnboardingAudienceViewController *)self delegate];
  [delegate audienceController:self didFinishWithContact:self->_contact sharingAudience:{-[CNSharingProfileAudienceDataSource selectedSharingAudience](self->_sharingAudienceDataSource, "selectedSharingAudience")}];
}

- (id)confirmButtonTitle
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_DONE" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

- (void)contentSizeCategoryDidChange:(id)change
{
  tableView = [(OBTableWelcomeController *)self tableView];
  [tableView reloadData];

  view = [(CNSharingProfileOnboardingAudienceViewController *)self view];
  [view setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = CNSharingProfileOnboardingAudienceViewController;
  [(CNSharingProfileOnboardingAudienceViewController *)&v6 traitCollectionDidChange:change];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(CNSharingProfileOnboardingAudienceViewController *)self setShouldAdjustButtonTrayForKeyboard:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1];
}

- (void)updateConfirmButtonEnabledState
{
  v3 = *MEMORY[0x1E6996568];
  givenName = [(CNMutableContact *)self->_contact givenName];
  if ((*(v3 + 16))(v3, givenName))
  {
    familyName = [(CNMutableContact *)self->_contact familyName];
    v6 = (*(v3 + 16))(v3, familyName) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  confirmButton = self->_confirmButton;

  [(OBBoldTrayButton *)confirmButton setEnabled:v6];
}

- (void)familyNameDidChange:(id)change
{
  text = [change text];
  [(CNMutableContact *)self->_contact setFamilyName:text];

  [(CNSharingProfileOnboardingAudienceViewController *)self updateConfirmButtonEnabledState];
}

- (void)givenNameDidChange:(id)change
{
  text = [change text];
  [(CNMutableContact *)self->_contact setGivenName:text];

  [(CNSharingProfileOnboardingAudienceViewController *)self updateConfirmButtonEnabledState];
}

- (void)viewDidLayoutSubviews
{
  tableView = [(OBTableWelcomeController *)self tableView];
  window = [tableView window];

  if (window)
  {
    view = [(CNSharingProfileOnboardingAudienceViewController *)self view];
    [view layoutIfNeeded];

    tableView2 = [(OBTableWelcomeController *)self tableView];
    [tableView2 contentSize];
    v8 = v7;
    tableViewHeightConstraint = [(CNSharingProfileOnboardingAudienceViewController *)self tableViewHeightConstraint];
    [tableViewHeightConstraint setConstant:v8];
  }

  v10.receiver = self;
  v10.super_class = CNSharingProfileOnboardingAudienceViewController;
  [(OBTableWelcomeController *)&v10 viewDidLayoutSubviews];
}

- (void)viewDidLoad
{
  v62.receiver = self;
  v62.super_class = CNSharingProfileOnboardingAudienceViewController;
  [(OBTableWelcomeController *)&v62 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x1E69DD020]);
  view = [(CNSharingProfileOnboardingAudienceViewController *)self view];
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

  tableView5 = [(OBTableWelcomeController *)self tableView];
  [tableView5 setKeyboardDismissMode:2];

  tableView6 = [(OBTableWelcomeController *)self tableView];
  [tableView6 registerClass:objc_opt_class() forCellReuseIdentifier:@"Cell"];

  tableView7 = [(OBTableWelcomeController *)self tableView];
  v14 = objc_opt_class();
  v15 = +[CNSharingProfileOnboardingNameCell cellIdentifier];
  [tableView7 registerClass:v14 forCellReuseIdentifier:v15];

  tableView8 = [(OBTableWelcomeController *)self tableView];
  [tableView8 setDelegate:self];

  tableView9 = [(OBTableWelcomeController *)self tableView];
  [tableView9 setDataSource:self];

  boldButton = [MEMORY[0x1E69B7CF8] boldButton];
  confirmButton = self->_confirmButton;
  self->_confirmButton = boldButton;

  v20 = self->_confirmButton;
  confirmButtonTitle = [(CNSharingProfileOnboardingAudienceViewController *)self confirmButtonTitle];
  [(OBBoldTrayButton *)v20 setTitle:confirmButtonTitle forState:0];

  [(OBBoldTrayButton *)self->_confirmButton addTarget:self action:sel_handleConfirmButtonTapped_ forControlEvents:64];
  [(CNSharingProfileOnboardingAudienceViewController *)self updateConfirmButtonEnabledState];
  buttonTray = [(CNSharingProfileOnboardingAudienceViewController *)self buttonTray];
  [buttonTray addButton:self->_confirmButton];

  [(CNSharingProfileOnboardingAudienceViewController *)self setShouldAdjustScrollViewInsetForKeyboard:1];
  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(CNSharingProfileOnboardingAudienceViewController *)self setShouldAdjustButtonTrayForKeyboard:(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) != 1];
  tableView10 = [(OBTableWelcomeController *)self tableView];
  heightAnchor = [tableView10 heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:400.0];
  [(CNSharingProfileOnboardingAudienceViewController *)self setTableViewHeightConstraint:v27];

  tableView11 = [(OBTableWelcomeController *)self tableView];
  tableViewHeightConstraint = [(CNSharingProfileOnboardingAudienceViewController *)self tableViewHeightConstraint];
  [tableView11 addConstraint:tableViewHeightConstraint];

  v30 = objc_alloc(MEMORY[0x1E69DD0B0]);
  v31 = *MEMORY[0x1E695F058];
  v32 = *(MEMORY[0x1E695F058] + 8);
  v33 = *(MEMORY[0x1E695F058] + 16);
  v34 = *(MEMORY[0x1E695F058] + 24);
  v35 = [v30 initWithFrame:{*MEMORY[0x1E695F058], v32, v33, v34}];
  givenNameField = self->_givenNameField;
  self->_givenNameField = v35;

  givenName = [(CNMutableContact *)self->_contact givenName];
  [(UITextField *)self->_givenNameField setText:givenName];

  v38 = *MEMORY[0x1E69DDCF8];
  v39 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UITextField *)self->_givenNameField setFont:v39];

  [(UITextField *)self->_givenNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_givenNameField setAutocorrectionType:1];
  v40 = CNContactsUIBundle();
  v41 = [v40 localizedStringForKey:@"SHARING_GIVEN_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_givenNameField setPlaceholder:v41];

  [(UITextField *)self->_givenNameField addTarget:self action:sel_givenNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_givenNameField setDelegate:self];
  v42 = [objc_alloc(MEMORY[0x1E69DD0B0]) initWithFrame:{v31, v32, v33, v34}];
  familyNameField = self->_familyNameField;
  self->_familyNameField = v42;

  familyName = [(CNMutableContact *)self->_contact familyName];
  [(UITextField *)self->_familyNameField setText:familyName];

  v45 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v38];
  [(UITextField *)self->_familyNameField setFont:v45];

  [(UITextField *)self->_familyNameField setAdjustsFontForContentSizeCategory:1];
  [(UITextField *)self->_familyNameField setAutocorrectionType:1];
  v46 = CNContactsUIBundle();
  v47 = [v46 localizedStringForKey:@"SHARING_FAMILY_NAME_PLACEHOLDER" value:&stru_1F0CE7398 table:@"Localized"];
  [(UITextField *)self->_familyNameField setPlaceholder:v47];

  [(UITextField *)self->_familyNameField addTarget:self action:sel_familyNameDidChange_ forControlEvents:0x20000];
  [(UITextField *)self->_familyNameField setDelegate:self];
  v48 = objc_alloc_init(MEMORY[0x1E696ADF0]);
  givenName2 = [(CNMutableContact *)self->_contact givenName];
  if (!givenName2 || (v50 = givenName2, [(CNMutableContact *)self->_contact familyName], v51 = objc_claimAutoreleasedReturnValue(), v51, v50, !v51))
  {
    v52 = objc_alloc_init(MEMORY[0x1E696ADF0]);

    givenName3 = [(CNMutableContact *)self->_contact givenName];
    [v52 setGivenName:givenName3];

    familyName2 = [(CNMutableContact *)self->_contact familyName];
    [v52 setFamilyName:familyName2];

    v48 = v52;
  }

  self->_nameOrder = [MEMORY[0x1E696ADF8] _nameOrderWithOverridesForComponents:v48 options:0];
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v56 = *MEMORY[0x1E69DDC48];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __63__CNSharingProfileOnboardingAudienceViewController_viewDidLoad__block_invoke;
  v59[3] = &unk_1E74E45D0;
  objc_copyWeak(&v60, &location);
  v57 = [defaultCenter addObserverForName:v56 object:0 queue:0 usingBlock:v59];
  traitCollectionChangeToken = self->_traitCollectionChangeToken;
  self->_traitCollectionChangeToken = v57;

  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
}

void __63__CNSharingProfileOnboardingAudienceViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained contentSizeCategoryDidChange:v3];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = CNSharingProfileOnboardingAudienceViewController;
  [(CNSharingProfileOnboardingAudienceViewController *)&v4 dealloc];
}

- (CNSharingProfileOnboardingAudienceViewController)initWithContact:(id)contact selectedSharingAudience:(unint64_t)audience
{
  contactCopy = contact;
  headerText = [objc_opt_class() headerText];
  v15.receiver = self;
  v15.super_class = CNSharingProfileOnboardingAudienceViewController;
  v8 = [(OBTableWelcomeController *)&v15 initWithTitle:headerText detailText:0 icon:0 adoptTableViewScrollView:0];

  if (v8)
  {
    v9 = [[CNSharingProfileAudienceDataSource alloc] initWithSelectedSharingAudience:audience];
    sharingAudienceDataSource = v8->_sharingAudienceDataSource;
    v8->_sharingAudienceDataSource = v9;

    v11 = [contactCopy mutableCopy];
    contact = v8->_contact;
    v8->_contact = v11;

    v13 = v8;
  }

  return v8;
}

+ (id)headerText
{
  v2 = CNContactsUIBundle();
  v3 = [v2 localizedStringForKey:@"SHARING_SET_UP_NAME_AND_PHOTO_SHARING" value:&stru_1F0CE7398 table:@"Localized"];

  return v3;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1_35599 != -1)
  {
    dispatch_once(&descriptorForRequiredKeys_cn_once_token_1_35599, &__block_literal_global_35600);
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1_35601;

  return v3;
}

void __77__CNSharingProfileOnboardingAudienceViewController_descriptorForRequiredKeys__block_invoke()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695C230];
  v6[0] = *MEMORY[0x1E695C240];
  v6[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v2 = MEMORY[0x1E695CD58];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[CNSharingProfileOnboardingAudienceViewController descriptorForRequiredKeys]_block_invoke"];
  v4 = [v2 descriptorWithKeyDescriptors:v1 description:v3];

  v5 = descriptorForRequiredKeys_cn_once_object_1_35601;
  descriptorForRequiredKeys_cn_once_object_1_35601 = v4;
}

@end